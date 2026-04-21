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
@print_ls_colors = internal unnamed_addr global i1 false, align 1, !dbg !671
@.str.15 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !224
@.str.16 = private unnamed_addr constant [15 x i8] c"H. Peter Anvin\00", align 1, !dbg !229
@optind = external local_unnamed_addr global i32, align 4
@.str.17 = private unnamed_addr constant [92 x i8] c"the options to output non shell syntax,\0Aand to select a shell syntax are mutually exclusive\00", align 1, !dbg !234
@.str.18 = private unnamed_addr constant [70 x i8] c"options --print-database and --print-ls-colors are mutually exclusive\00", align 1, !dbg !239
@.str.19 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1, !dbg !241
@.str.20 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1, !dbg !246
@.str.21 = private unnamed_addr constant [60 x i8] c"file operands cannot be combined with --print-database (-p)\00", align 1, !dbg !248
@G_line = internal constant [5616 x i8] c"# Configuration file for dircolors, a utility to help you set the\00# LS_COLORS environment variable used by GNU ls with the --color option.\00# Copyright (C) 1996-2026 Free Software Foundation, Inc.\00# Copying and distribution of this file, with or without modification,\00# are permitted provided the copyright notice and this notice are preserved.\00#\00# The keywords COLOR, OPTIONS, and EIGHTBIT (honored by the\00# slackware version of dircolors) are recognized but ignored.\00# Global config options can be specified before TERM or COLORTERM entries\00# ===================================================================\00# Terminal filters\00# ===================================================================\00# Below are TERM or COLORTERM entries, which can be glob patterns, which\00# restrict following config to systems with matching environment variables.\00COLORTERM ?*\00TERM Eterm\00TERM ansi\00TERM *color*\00TERM con[0-9]*x[0-9]*\00TERM cons25\00TERM console\00TERM cygwin\00TERM *direct*\00TERM dtterm\00TERM gnome\00TERM hurd\00TERM jfbterm\00TERM konsole\00TERM kterm\00TERM linux\00TERM linux-c\00TERM mlterm\00TERM putty\00TERM rxvt*\00TERM screen*\00TERM st\00TERM terminator\00TERM tmux*\00TERM vt100\00TERM vt220\00TERM xterm*\00# ===================================================================\00# Basic file attributes\00# ===================================================================\00# Below are the color init strings for the basic file types.\00# One can use codes for 256 or more colors supported by modern terminals.\00# The default color codes use the capabilities of an 8 color terminal\00# with some additional attributes as per the following codes:\00# Attribute codes:\00# 00=none 01=bold 04=underscore 05=blink 07=reverse 08=concealed\00# Text color codes:\00# 30=black 31=red 32=green 33=yellow 34=blue 35=magenta 36=cyan 37=white\00# Background color codes:\00# 40=black 41=red 42=green 43=yellow 44=blue 45=magenta 46=cyan 47=white\00#NORMAL 00 # no color code at all\00#FILE 00 # regular file: use no color at all\00RESET 0 # reset to \22normal\22 color\00DIR 01;34 # directory\00LINK 01;36 # symbolic link. (If you set this to 'target' instead of a\00 # numerical value, the color is as for the file pointed to.)\00MULTIHARDLINK 00 # regular file with more than one link\00FIFO 40;33 # pipe\00SOCK 01;35 # socket\00DOOR 01;35 # door\00BLK 40;33;01 # block device driver\00CHR 40;33;01 # character device driver\00ORPHAN 40;31;01 # symlink to nonexistent file, or non-stat'able file ...\00MISSING 00 # ... and the files they point to\00SETUID 37;41 # regular file that is setuid (u+s)\00SETGID 30;43 # regular file that is setgid (g+s)\00CAPABILITY 00 # regular file with capability (very expensive to lookup)\00STICKY_OTHER_WRITABLE 30;42 # dir that is sticky and other-writable (+t,o+w)\00OTHER_WRITABLE 34;42 # dir that is other-writable (o+w) and not sticky\00STICKY 37;44 # dir with the sticky bit set (+t) and not other-writable\00# This is for regular files with execute permission:\00EXEC 01;32\00# ===================================================================\00# File extension attributes\00# ===================================================================\00# List any file extensions like '.gz' or '.tar' that you would like ls\00# to color below. Put the suffix, a space, and the color init string.\00# (and any comments you want to add after a '#').\00# Suffixes are matched case insensitively, but if you define different\00# init strings for separate cases, those will be honored.\00#\00# If you use DOS-style suffixes, you may want to uncomment the following:\00#.cmd 01;32 # executables (bright green)\00#.exe 01;32\00#.com 01;32\00#.btm 01;32\00#.bat 01;32\00# Or if you want to color scripts even if they do not have the\00# executable bit actually set.\00#.sh 01;32\00#.csh 01;32\00# archives or compressed (bright red)\00.7z 01;31\00.ace 01;31\00.alz 01;31\00.apk 01;31\00.arc 01;31\00.arj 01;31\00.bz 01;31\00.bz2 01;31\00.cab 01;31\00.cpio 01;31\00.crate 01;31\00.deb 01;31\00.drpm 01;31\00.dwm 01;31\00.dz 01;31\00.ear 01;31\00.egg 01;31\00.esd 01;31\00.gz 01;31\00.jar 01;31\00.lha 01;31\00.lrz 01;31\00.lz 01;31\00.lz4 01;31\00.lzh 01;31\00.lzma 01;31\00.lzo 01;31\00.pyz 01;31\00.rar 01;31\00.rpm 01;31\00.rz 01;31\00.sar 01;31\00.swm 01;31\00.t7z 01;31\00.tar 01;31\00.taz 01;31\00.tbz 01;31\00.tbz2 01;31\00.tgz 01;31\00.tlz 01;31\00.txz 01;31\00.tz 01;31\00.tzo 01;31\00.tzst 01;31\00.udeb 01;31\00.war 01;31\00.whl 01;31\00.wim 01;31\00.xz 01;31\00.z 01;31\00.zip 01;31\00.zoo 01;31\00.zst 01;31\00# image formats\00.avif 01;35\00.jpg 01;35\00.jpeg 01;35\00.jxl 01;35\00.mjpg 01;35\00.mjpeg 01;35\00.gif 01;35\00.bmp 01;35\00.pbm 01;35\00.pgm 01;35\00.ppm 01;35\00.tga 01;35\00.xbm 01;35\00.xpm 01;35\00.tif 01;35\00.tiff 01;35\00.png 01;35\00.svg 01;35\00.svgz 01;35\00.mng 01;35\00.pcx 01;35\00.mov 01;35\00.mpg 01;35\00.mpeg 01;35\00.m2v 01;35\00.mkv 01;35\00.webm 01;35\00.webp 01;35\00.ogm 01;35\00.mp4 01;35\00.m4v 01;35\00.mp4v 01;35\00.vob 01;35\00.qt 01;35\00.nuv 01;35\00.wmv 01;35\00.asf 01;35\00.rm 01;35\00.rmvb 01;35\00.flc 01;35\00.avi 01;35\00.fli 01;35\00.flv 01;35\00.gl 01;35\00.dl 01;35\00.xcf 01;35\00.xwd 01;35\00.yuv 01;35\00.cgm 01;35\00.emf 01;35\00# https://wiki.xiph.org/MIME_Types_and_File_Extensions\00.ogv 01;35\00.ogx 01;35\00# audio formats\00.aac 00;36\00.au 00;36\00.flac 00;36\00.m4a 00;36\00.mid 00;36\00.midi 00;36\00.mka 00;36\00.mp3 00;36\00.mpc 00;36\00.ogg 00;36\00.ra 00;36\00.wav 00;36\00# https://wiki.xiph.org/MIME_Types_and_File_Extensions\00.oga 00;36\00.opus 00;36\00.spx 00;36\00.xspf 00;36\00# backup files\00*~ 00;90\00*# 00;90\00.bak 00;90\00.crdownload 00;90\00.dpkg-dist 00;90\00.dpkg-new 00;90\00.dpkg-old 00;90\00.dpkg-tmp 00;90\00.old 00;90\00.orig 00;90\00.part 00;90\00.rej 00;90\00.rpmnew 00;90\00.rpmorig 00;90\00.rpmsave 00;90\00.swp 00;90\00.tmp 00;90\00.ucf-dist 00;90\00.ucf-new 00;90\00.ucf-old 00;90\00#\00# Subsequent TERM or COLORTERM entries, can be used to add / override\00# config specific to those matching environment variables.\00", align 1, !dbg !483
@.str.22 = private unnamed_addr constant [62 x i8] c"no SHELL environment variable, and no shell type option given\00", align 1, !dbg !253
@lsc_obstack = internal global %struct.obstack zeroinitializer, align 8, !dbg !275
@.str.23 = private unnamed_addr constant [12 x i8] c"LS_COLORS='\00", align 1, !dbg !255
@.str.24 = private unnamed_addr constant [21 x i8] c"';\0Aexport LS_COLORS\0A\00", align 1, !dbg !260
@.str.25 = private unnamed_addr constant [19 x i8] c"setenv LS_COLORS '\00", align 1, !dbg !265
@.str.26 = private unnamed_addr constant [3 x i8] c"'\0A\00", align 1, !dbg !270
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !328
@.str.27 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1, !dbg !358
@.str.28 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1, !dbg !363
@.str.29 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1, !dbg !365
@.str.30 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1, !dbg !367
@.str.44 = private unnamed_addr constant [7 x i8] c"--help\00", align 1, !dbg !407
@.str.45 = private unnamed_addr constant [10 x i8] c"--version\00", align 1, !dbg !409
@.str.46 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1, !dbg !411
@.str.47 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !413
@.str.48 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1, !dbg !418
@.str.49 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1, !dbg !420
@.str.50 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1, !dbg !425
@.str.51 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1, !dbg !427
@.str.52 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1, !dbg !429
@.str.53 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1, !dbg !431
@.str.57 = private unnamed_addr constant [4 x i8] c"en_\00", align 1, !dbg !445
@.str.58 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1, !dbg !447
@.str.59 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1, !dbg !452
@.str.60 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1, !dbg !457
@.str.61 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1, !dbg !462
@.str.62 = private unnamed_addr constant [13 x i8] c"bourne-shell\00", align 1, !dbg !464
@.str.63 = private unnamed_addr constant [3 x i8] c"sh\00", align 1, !dbg !469
@.str.64 = private unnamed_addr constant [4 x i8] c"csh\00", align 1, !dbg !471
@.str.65 = private unnamed_addr constant [8 x i8] c"c-shell\00", align 1, !dbg !473
@.str.66 = private unnamed_addr constant [15 x i8] c"print-database\00", align 1, !dbg !475
@.str.67 = private unnamed_addr constant [16 x i8] c"print-ls-colors\00", align 1, !dbg !477
@.str.68 = private unnamed_addr constant [5 x i8] c"help\00", align 1, !dbg !479
@.str.69 = private unnamed_addr constant [8 x i8] c"version\00", align 1, !dbg !481
@.str.70 = private unnamed_addr constant [6 x i8] c"SHELL\00", align 1, !dbg !489
@.str.71 = private unnamed_addr constant [5 x i8] c"tcsh\00", align 1, !dbg !491
@.str.72 = private unnamed_addr constant [5 x i8] c"none\00", align 1, !dbg !493
@.str.73 = private unnamed_addr constant [10 x i8] c"COLORTERM\00", align 1, !dbg !495
@.str.74 = private unnamed_addr constant [15 x i8] c"%s: read error\00", align 1, !dbg !497
@.str.75 = private unnamed_addr constant [44 x i8] c"%s:%td: invalid line;  missing second token\00", align 1, !dbg !499
@.str.76 = private unnamed_addr constant [8 x i8] c"OPTIONS\00", align 1, !dbg !504
@.str.77 = private unnamed_addr constant [6 x i8] c"COLOR\00", align 1, !dbg !506
@.str.78 = private unnamed_addr constant [9 x i8] c"EIGHTBIT\00", align 1, !dbg !508
@slack_codes = internal unnamed_addr constant [38 x ptr] [ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr null], align 8, !dbg !599
@ls_codes = internal unnamed_addr constant [38 x ptr] [ptr @.str.119, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.123, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.128, ptr @.str.129, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.132, ptr @.str.133, ptr @.str.133, ptr @.str.134, ptr @.str.134, ptr @.str.135, ptr @.str.135, ptr @.str.136, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.138, ptr @.str.139, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr null], align 8, !dbg !653
@.str.79 = private unnamed_addr constant [32 x i8] c"%s:%td: unrecognized keyword %s\00", align 1, !dbg !513
@.str.80 = private unnamed_addr constant [11 x i8] c"<internal>\00", align 1, !dbg !518
@.str.81 = private unnamed_addr constant [3 x i8] c"\1B[\00", align 1, !dbg !523
@.str.82 = private unnamed_addr constant [7 x i8] c"NORMAL\00", align 1, !dbg !525
@.str.83 = private unnamed_addr constant [5 x i8] c"NORM\00", align 1, !dbg !527
@.str.84 = private unnamed_addr constant [5 x i8] c"FILE\00", align 1, !dbg !529
@.str.85 = private unnamed_addr constant [6 x i8] c"RESET\00", align 1, !dbg !531
@.str.86 = private unnamed_addr constant [4 x i8] c"DIR\00", align 1, !dbg !533
@.str.87 = private unnamed_addr constant [4 x i8] c"LNK\00", align 1, !dbg !535
@.str.88 = private unnamed_addr constant [5 x i8] c"LINK\00", align 1, !dbg !537
@.str.89 = private unnamed_addr constant [8 x i8] c"SYMLINK\00", align 1, !dbg !539
@.str.90 = private unnamed_addr constant [7 x i8] c"ORPHAN\00", align 1, !dbg !541
@.str.91 = private unnamed_addr constant [8 x i8] c"MISSING\00", align 1, !dbg !543
@.str.92 = private unnamed_addr constant [5 x i8] c"FIFO\00", align 1, !dbg !545
@.str.93 = private unnamed_addr constant [5 x i8] c"PIPE\00", align 1, !dbg !547
@.str.94 = private unnamed_addr constant [5 x i8] c"SOCK\00", align 1, !dbg !549
@.str.95 = private unnamed_addr constant [4 x i8] c"BLK\00", align 1, !dbg !551
@.str.96 = private unnamed_addr constant [6 x i8] c"BLOCK\00", align 1, !dbg !553
@.str.97 = private unnamed_addr constant [4 x i8] c"CHR\00", align 1, !dbg !555
@.str.98 = private unnamed_addr constant [5 x i8] c"CHAR\00", align 1, !dbg !557
@.str.99 = private unnamed_addr constant [5 x i8] c"DOOR\00", align 1, !dbg !559
@.str.100 = private unnamed_addr constant [5 x i8] c"EXEC\00", align 1, !dbg !561
@.str.101 = private unnamed_addr constant [5 x i8] c"LEFT\00", align 1, !dbg !563
@.str.102 = private unnamed_addr constant [9 x i8] c"LEFTCODE\00", align 1, !dbg !565
@.str.103 = private unnamed_addr constant [6 x i8] c"RIGHT\00", align 1, !dbg !567
@.str.104 = private unnamed_addr constant [10 x i8] c"RIGHTCODE\00", align 1, !dbg !569
@.str.105 = private unnamed_addr constant [4 x i8] c"END\00", align 1, !dbg !571
@.str.106 = private unnamed_addr constant [8 x i8] c"ENDCODE\00", align 1, !dbg !573
@.str.107 = private unnamed_addr constant [5 x i8] c"SUID\00", align 1, !dbg !575
@.str.108 = private unnamed_addr constant [7 x i8] c"SETUID\00", align 1, !dbg !577
@.str.109 = private unnamed_addr constant [5 x i8] c"SGID\00", align 1, !dbg !579
@.str.110 = private unnamed_addr constant [7 x i8] c"SETGID\00", align 1, !dbg !581
@.str.111 = private unnamed_addr constant [7 x i8] c"STICKY\00", align 1, !dbg !583
@.str.112 = private unnamed_addr constant [15 x i8] c"OTHER_WRITABLE\00", align 1, !dbg !585
@.str.113 = private unnamed_addr constant [4 x i8] c"OWR\00", align 1, !dbg !587
@.str.114 = private unnamed_addr constant [22 x i8] c"STICKY_OTHER_WRITABLE\00", align 1, !dbg !589
@.str.115 = private unnamed_addr constant [4 x i8] c"OWT\00", align 1, !dbg !591
@.str.116 = private unnamed_addr constant [11 x i8] c"CAPABILITY\00", align 1, !dbg !593
@.str.117 = private unnamed_addr constant [14 x i8] c"MULTIHARDLINK\00", align 1, !dbg !595
@.str.118 = private unnamed_addr constant [9 x i8] c"CLRTOEOL\00", align 1, !dbg !597
@.str.119 = private unnamed_addr constant [3 x i8] c"no\00", align 1, !dbg !605
@.str.120 = private unnamed_addr constant [3 x i8] c"fi\00", align 1, !dbg !607
@.str.121 = private unnamed_addr constant [3 x i8] c"rs\00", align 1, !dbg !609
@.str.122 = private unnamed_addr constant [3 x i8] c"di\00", align 1, !dbg !611
@.str.123 = private unnamed_addr constant [3 x i8] c"ln\00", align 1, !dbg !613
@.str.124 = private unnamed_addr constant [3 x i8] c"or\00", align 1, !dbg !615
@.str.125 = private unnamed_addr constant [3 x i8] c"mi\00", align 1, !dbg !617
@.str.126 = private unnamed_addr constant [3 x i8] c"pi\00", align 1, !dbg !619
@.str.127 = private unnamed_addr constant [3 x i8] c"so\00", align 1, !dbg !621
@.str.128 = private unnamed_addr constant [3 x i8] c"bd\00", align 1, !dbg !623
@.str.129 = private unnamed_addr constant [3 x i8] c"cd\00", align 1, !dbg !625
@.str.130 = private unnamed_addr constant [3 x i8] c"do\00", align 1, !dbg !627
@.str.131 = private unnamed_addr constant [3 x i8] c"ex\00", align 1, !dbg !629
@.str.132 = private unnamed_addr constant [3 x i8] c"lc\00", align 1, !dbg !631
@.str.133 = private unnamed_addr constant [3 x i8] c"rc\00", align 1, !dbg !633
@.str.134 = private unnamed_addr constant [3 x i8] c"ec\00", align 1, !dbg !635
@.str.135 = private unnamed_addr constant [3 x i8] c"su\00", align 1, !dbg !637
@.str.136 = private unnamed_addr constant [3 x i8] c"sg\00", align 1, !dbg !639
@.str.137 = private unnamed_addr constant [3 x i8] c"st\00", align 1, !dbg !641
@.str.138 = private unnamed_addr constant [3 x i8] c"ow\00", align 1, !dbg !643
@.str.139 = private unnamed_addr constant [3 x i8] c"tw\00", align 1, !dbg !645
@.str.140 = private unnamed_addr constant [3 x i8] c"ca\00", align 1, !dbg !647
@.str.141 = private unnamed_addr constant [3 x i8] c"mh\00", align 1, !dbg !649
@.str.142 = private unnamed_addr constant [3 x i8] c"cl\00", align 1, !dbg !651
@.str.143 = private unnamed_addr constant [2 x i8] c"-\00", align 1, !dbg !655
@.str.144 = private unnamed_addr constant [2 x i8] c"r\00", align 1, !dbg !657
@stdin = external local_unnamed_addr global ptr, align 8
@.str.145 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !659
@.str.31 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1, !dbg !672
@Version = dso_local local_unnamed_addr global ptr @.str.31, align 8, !dbg !675
@file_name = internal unnamed_addr global ptr null, align 8, !dbg !679
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !692
@.str.38 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !684
@.str.1.39 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !686
@.str.2.40 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !688
@.str.3.41 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !690
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !694
@.str.42 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !700
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !737
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !702
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
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !836
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !850
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !888
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !895
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !852
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !897
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !840
@.str.10.178 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !857
@.str.11.176 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !859
@.str.12.179 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !861
@.str.13.177 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !863
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !865
@.str.186 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !900
@.str.1.187 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !903
@.str.2.188 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !905
@.str.3.189 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !907
@.str.4.190 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !909
@.str.5.191 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !911
@.str.6.192 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !916
@.str.7.193 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !921
@.str.8.194 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !923
@.str.9.195 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !928
@.str.10.196 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !933
@.str.11.197 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !935
@.str.12.198 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !940
@.str.13.199 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !942
@.str.14.200 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !944
@.str.15.201 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !949
@.str.16.202 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !954
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.207 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !956
@.str.18.208 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !958
@.str.19.209 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !960
@.str.20.210 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !962
@.str.21.211 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !964
@.str.22.212 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !966
@.str.23.213 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !968
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !973
@exit_failure = dso_local global i32 1, align 4, !dbg !981
@.str.228 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !987
@.str.1.226 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !990
@.str.2.227 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !992
@.str.233 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !994
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !997
@.str.238 = private unnamed_addr constant [2 x i8] c"C\00", align 1, !dbg !1012
@.str.1.239 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !1015

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !1093 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1097, metadata !DIExpression()), !dbg !1098
  %2 = icmp eq i32 %0, 0, !dbg !1099
  br i1 %2, label %8, label %3, !dbg !1101

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !1102, !tbaa !1104
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #38, !dbg !1102
  %6 = load ptr, ptr @program_name, align 8, !dbg !1102, !tbaa !1104
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #38, !dbg !1102
  br label %38, !dbg !1102

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #38, !dbg !1108
  %10 = load ptr, ptr @program_name, align 8, !dbg !1108, !tbaa !1104
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #38, !dbg !1108
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #38, !dbg !1110
  %13 = load ptr, ptr @stdout, align 8, !dbg !1110, !tbaa !1104
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !1110
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #38, !dbg !1111
  tail call fastcc void @oputs_(ptr noundef %15), !dbg !1111
  %16 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #38, !dbg !1112
  tail call fastcc void @oputs_(ptr noundef %16), !dbg !1112
  %17 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #38, !dbg !1113
  tail call fastcc void @oputs_(ptr noundef %17), !dbg !1113
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #38, !dbg !1114
  tail call fastcc void @oputs_(ptr noundef %18), !dbg !1114
  %19 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #38, !dbg !1115
  tail call fastcc void @oputs_(ptr noundef %19), !dbg !1115
  %20 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #38, !dbg !1116
  tail call fastcc void @oputs_(ptr noundef %20), !dbg !1116
  %21 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 5) #38, !dbg !1117
  %22 = load ptr, ptr @stdout, align 8, !dbg !1117, !tbaa !1104
  %23 = tail call i32 @fputs_unlocked(ptr noundef %21, ptr noundef %22), !dbg !1117
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1118, metadata !DIExpression()), !dbg !1135
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1130, metadata !DIExpression()), !dbg !1135
  call void @llvm.dbg.value(metadata ptr poison, metadata !1130, metadata !DIExpression()), !dbg !1135
  tail call void @emit_bug_reporting_address() #38, !dbg !1137
  %24 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #38, !dbg !1138
  call void @llvm.dbg.value(metadata ptr %24, metadata !1133, metadata !DIExpression()), !dbg !1135
  %25 = icmp eq ptr %24, null, !dbg !1139
  br i1 %25, label %33, label %26, !dbg !1141

26:                                               ; preds = %8
  %27 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %24, ptr noundef nonnull dereferenceable(4) @.str.57, i64 noundef 3) #39, !dbg !1142
  %28 = icmp eq i32 %27, 0, !dbg !1142
  br i1 %28, label %33, label %29, !dbg !1143

29:                                               ; preds = %26
  %30 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.58, i32 noundef 5) #38, !dbg !1144
  %31 = load ptr, ptr @stdout, align 8, !dbg !1144, !tbaa !1104
  %32 = tail call i32 @fputs_unlocked(ptr noundef %30, ptr noundef %31), !dbg !1144
  br label %33, !dbg !1146

33:                                               ; preds = %8, %26, %29
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1130, metadata !DIExpression()), !dbg !1135
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1134, metadata !DIExpression()), !dbg !1135
  %34 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.59, i32 noundef 5) #38, !dbg !1147
  %35 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %34, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.3) #38, !dbg !1147
  %36 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.60, i32 noundef 5) #38, !dbg !1148
  %37 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %36, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.61) #38, !dbg !1148
  br label %38

38:                                               ; preds = %33, %3
  tail call void @exit(i32 noundef %0) #40, !dbg !1149
  unreachable, !dbg !1149
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1150 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !1155 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !1161 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !1164 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !330 {
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !334, metadata !DIExpression()), !dbg !1167
  call void @llvm.dbg.value(metadata ptr %0, metadata !335, metadata !DIExpression()), !dbg !1167
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !1168, !tbaa !1169
  %3 = icmp eq i32 %2, -1, !dbg !1171
  br i1 %3, label %4, label %16, !dbg !1172

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.27) #38, !dbg !1173
  call void @llvm.dbg.value(metadata ptr %5, metadata !336, metadata !DIExpression()), !dbg !1174
  %6 = icmp eq ptr %5, null, !dbg !1175
  br i1 %6, label %14, label %7, !dbg !1176

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !1177, !tbaa !1178
  %9 = icmp eq i8 %8, 0, !dbg !1177
  br i1 %9, label %14, label %10, !dbg !1179

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !1180, metadata !DIExpression()), !dbg !1187
  call void @llvm.dbg.value(metadata ptr @.str.28, metadata !1186, metadata !DIExpression()), !dbg !1187
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.28) #39, !dbg !1189
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
  %20 = load ptr, ptr @stdout, align 8, !dbg !1196, !tbaa !1104
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !1196
  br label %122, !dbg !1198

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !339, metadata !DIExpression()), !dbg !1167
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.29) #39, !dbg !1199
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !1200
  call void @llvm.dbg.value(metadata ptr %24, metadata !340, metadata !DIExpression()), !dbg !1167
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #39, !dbg !1201
  call void @llvm.dbg.value(metadata ptr %25, metadata !341, metadata !DIExpression()), !dbg !1167
  %26 = icmp eq ptr %25, null, !dbg !1202
  br i1 %26, label %54, label %27, !dbg !1203

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !1204
  br i1 %28, label %54, label %29, !dbg !1205

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata ptr %24, metadata !342, metadata !DIExpression()), !dbg !1206
  call void @llvm.dbg.value(metadata i64 0, metadata !346, metadata !DIExpression()), !dbg !1206
  %30 = icmp ult ptr %24, %25, !dbg !1207
  br i1 %30, label %31, label %52, !dbg !1208

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #41, !dbg !1167
  %33 = load ptr, ptr %32, align 8, !tbaa !1104
  br label %34, !dbg !1208

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  call void @llvm.dbg.value(metadata ptr %35, metadata !342, metadata !DIExpression()), !dbg !1206
  call void @llvm.dbg.value(metadata i64 %36, metadata !346, metadata !DIExpression()), !dbg !1206
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !1209
  call void @llvm.dbg.value(metadata ptr %37, metadata !342, metadata !DIExpression()), !dbg !1206
  %38 = load i8, ptr %35, align 1, !dbg !1209, !tbaa !1178
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !1209
  %41 = load i16, ptr %40, align 2, !dbg !1209, !tbaa !1210
  %42 = freeze i16 %41, !dbg !1212
  %43 = lshr i16 %42, 13, !dbg !1212
  %44 = and i16 %43, 1, !dbg !1212
  %45 = zext i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !1213
  call void @llvm.dbg.value(metadata i64 %46, metadata !346, metadata !DIExpression()), !dbg !1206
  %47 = icmp ult ptr %37, %25, !dbg !1207
  %48 = icmp ult i64 %46, 2, !dbg !1214
  %49 = select i1 %47, i1 %48, i1 false, !dbg !1214
  br i1 %49, label %34, label %50, !dbg !1208, !llvm.loop !1215

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !1217
  br i1 %51, label %52, label %54, !dbg !1219

52:                                               ; preds = %29, %50
  %53 = phi i1 [ %51, %50 ], [ true, %29 ]
  br label %54, !dbg !1219

54:                                               ; preds = %52, %50, %22, %27
  %55 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %52 ], [ %24, %50 ], !dbg !1167
  %56 = phi i1 [ true, %27 ], [ false, %22 ], [ %53, %52 ], [ %51, %50 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !339, metadata !DIExpression()), !dbg !1167
  call void @llvm.dbg.value(metadata ptr %55, metadata !341, metadata !DIExpression()), !dbg !1167
  %57 = tail call i64 @strcspn(ptr noundef %55, ptr noundef nonnull @.str.30) #39, !dbg !1220
  call void @llvm.dbg.value(metadata i64 %57, metadata !347, metadata !DIExpression()), !dbg !1167
  %58 = getelementptr inbounds i8, ptr %55, i64 %57, !dbg !1221
  call void @llvm.dbg.value(metadata ptr %58, metadata !348, metadata !DIExpression()), !dbg !1167
  br label %59, !dbg !1222

59:                                               ; preds = %90, %54
  %60 = phi ptr [ %58, %54 ], [ %91, %90 ], !dbg !1167
  %61 = phi i1 [ %56, %54 ], [ %69, %90 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !339, metadata !DIExpression()), !dbg !1167
  call void @llvm.dbg.value(metadata ptr %60, metadata !348, metadata !DIExpression()), !dbg !1167
  %62 = load i8, ptr %60, align 1, !dbg !1223, !tbaa !1178
  switch i8 %62, label %68 [
    i8 0, label %92
    i8 10, label %92
    i8 45, label %63
  ], !dbg !1224

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1225
  %65 = load i8, ptr %64, align 1, !dbg !1228, !tbaa !1178
  %66 = icmp ne i8 %65, 45, !dbg !1229
  %67 = select i1 %66, i1 %61, i1 false, !dbg !1230
  br label %68, !dbg !1230

68:                                               ; preds = %63, %59
  %69 = phi i1 [ %61, %59 ], [ %67, %63 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !339, metadata !DIExpression()), !dbg !1167
  %70 = tail call ptr @__ctype_b_loc() #41, !dbg !1231
  %71 = load ptr, ptr %70, align 8, !dbg !1231, !tbaa !1104
  %72 = zext i8 %62 to i64
  %73 = getelementptr inbounds i16, ptr %71, i64 %72, !dbg !1231
  %74 = load i16, ptr %73, align 2, !dbg !1231, !tbaa !1210
  %75 = and i16 %74, 8192, !dbg !1231
  %76 = icmp eq i16 %75, 0, !dbg !1231
  br i1 %76, label %90, label %77, !dbg !1233

77:                                               ; preds = %68
  %78 = icmp eq i8 %62, 9, !dbg !1234
  br i1 %78, label %92, label %79, !dbg !1237

79:                                               ; preds = %77
  %80 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1238
  %81 = load i8, ptr %80, align 1, !dbg !1238, !tbaa !1178
  %82 = zext i8 %81 to i64
  %83 = getelementptr inbounds i16, ptr %71, i64 %82, !dbg !1238
  %84 = load i16, ptr %83, align 2, !dbg !1238, !tbaa !1210
  %85 = and i16 %84, 8192, !dbg !1238
  %86 = icmp eq i16 %85, 0, !dbg !1238
  %87 = icmp eq i8 %81, 45
  %88 = select i1 %69, i1 true, i1 %87
  %89 = select i1 %86, i1 %88, i1 false, !dbg !1239
  br i1 %89, label %90, label %92, !dbg !1239

90:                                               ; preds = %79, %68
  %91 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1240
  call void @llvm.dbg.value(metadata ptr %91, metadata !348, metadata !DIExpression()), !dbg !1167
  br label %59, !dbg !1222, !llvm.loop !1241

92:                                               ; preds = %59, %59, %77, %79
  %93 = ptrtoint ptr %24 to i64, !dbg !1243
  %94 = load ptr, ptr @stdout, align 8, !dbg !1243, !tbaa !1104
  %95 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %94), !dbg !1243
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1180, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1180, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1180, metadata !DIExpression()), !dbg !1248
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1180, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1180, metadata !DIExpression()), !dbg !1252
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1180, metadata !DIExpression()), !dbg !1254
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1180, metadata !DIExpression()), !dbg !1256
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1180, metadata !DIExpression()), !dbg !1258
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1180, metadata !DIExpression()), !dbg !1260
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1180, metadata !DIExpression()), !dbg !1262
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !353, metadata !DIExpression()), !dbg !1167
  %96 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(7) @.str.44, i64 noundef 6) #39, !dbg !1264
  %97 = icmp eq i32 %96, 0, !dbg !1264
  br i1 %97, label %101, label %98, !dbg !1266

98:                                               ; preds = %92
  %99 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(10) @.str.45, i64 noundef 9) #39, !dbg !1267
  %100 = icmp eq i32 %99, 0, !dbg !1267
  br i1 %100, label %101, label %104, !dbg !1268

101:                                              ; preds = %98, %92
  %102 = trunc i64 %57 to i32, !dbg !1269
  %103 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %102, ptr noundef %55) #38, !dbg !1269
  br label %107, !dbg !1271

104:                                              ; preds = %98
  %105 = trunc i64 %57 to i32, !dbg !1272
  %106 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.3, i32 noundef %105, ptr noundef %55) #38, !dbg !1272
  br label %107

107:                                              ; preds = %104, %101
  %108 = load ptr, ptr @stdout, align 8, !dbg !1274, !tbaa !1104
  %109 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.50, ptr noundef %108), !dbg !1274
  %110 = load ptr, ptr @stdout, align 8, !dbg !1275, !tbaa !1104
  %111 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.51, ptr noundef %110), !dbg !1275
  %112 = ptrtoint ptr %60 to i64, !dbg !1276
  %113 = sub i64 %112, %93, !dbg !1276
  %114 = load ptr, ptr @stdout, align 8, !dbg !1276, !tbaa !1104
  %115 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %113, ptr noundef %114), !dbg !1276
  %116 = load ptr, ptr @stdout, align 8, !dbg !1277, !tbaa !1104
  %117 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.52, ptr noundef %116), !dbg !1277
  %118 = load ptr, ptr @stdout, align 8, !dbg !1278, !tbaa !1104
  %119 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.53, ptr noundef %118), !dbg !1278
  %120 = load ptr, ptr @stdout, align 8, !dbg !1279, !tbaa !1104
  %121 = tail call i32 @fputs_unlocked(ptr noundef nonnull %60, ptr noundef %120), !dbg !1279
  br label %122, !dbg !1280

122:                                              ; preds = %107, %19
  ret void, !dbg !1280
}

; Function Attrs: nounwind
declare !dbg !1281 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1285 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !1289 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1291 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1294 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1297 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1300 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1303 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1309 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1310 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !1316 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1321, metadata !DIExpression()), !dbg !1349
  call void @llvm.dbg.value(metadata ptr %1, metadata !1322, metadata !DIExpression()), !dbg !1349
  call void @llvm.dbg.value(metadata i8 1, metadata !1323, metadata !DIExpression()), !dbg !1349
  call void @llvm.dbg.value(metadata i32 2, metadata !1325, metadata !DIExpression()), !dbg !1349
  call void @llvm.dbg.value(metadata i8 0, metadata !1326, metadata !DIExpression()), !dbg !1349
  %3 = load ptr, ptr %1, align 8, !dbg !1350, !tbaa !1104
  tail call void @set_program_name(ptr noundef %3) #38, !dbg !1351
  %4 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.11) #38, !dbg !1352
  %5 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13) #38, !dbg !1353
  %6 = tail call ptr @textdomain(ptr noundef nonnull @.str.12) #38, !dbg !1354
  %7 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #38, !dbg !1355
  br label %8, !dbg !1356

8:                                                ; preds = %18, %2
  %9 = phi i1 [ true, %18 ], [ false, %2 ]
  %10 = phi i32 [ %12, %18 ], [ 2, %2 ]
  br label %11, !dbg !1356

11:                                               ; preds = %16, %8
  %12 = phi i32 [ %10, %8 ], [ %17, %16 ]
  br label %13, !dbg !1356

13:                                               ; preds = %11, %19
  call void @llvm.dbg.value(metadata i32 %12, metadata !1325, metadata !DIExpression()), !dbg !1349
  call void @llvm.dbg.value(metadata i8 poison, metadata !1326, metadata !DIExpression()), !dbg !1349
  %14 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.14, ptr noundef nonnull @long_options, ptr noundef null) #38, !dbg !1357
  call void @llvm.dbg.value(metadata i32 %14, metadata !1324, metadata !DIExpression()), !dbg !1349
  switch i32 %14, label %25 [
    i32 -1, label %26
    i32 98, label %16
    i32 99, label %15
    i32 112, label %18
    i32 256, label %19
    i32 -2, label %20
    i32 -3, label %21
  ], !dbg !1356, !llvm.loop !1358

15:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i32 1, metadata !1325, metadata !DIExpression()), !dbg !1349
  br label %16, !dbg !1360

16:                                               ; preds = %13, %15
  %17 = phi i32 [ 1, %15 ], [ 0, %13 ]
  br label %11, !dbg !1356, !llvm.loop !1358

18:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i8 1, metadata !1326, metadata !DIExpression()), !dbg !1349
  br label %8, !dbg !1362, !llvm.loop !1358

19:                                               ; preds = %13
  store i1 true, ptr @print_ls_colors, align 1, !dbg !1363
  br label %13, !dbg !1364, !llvm.loop !1358

20:                                               ; preds = %13
  tail call void @usage(i32 noundef 0) #42, !dbg !1365
  unreachable, !dbg !1365

21:                                               ; preds = %13
  %22 = load ptr, ptr @stdout, align 8, !dbg !1366, !tbaa !1104
  %23 = load ptr, ptr @Version, align 8, !dbg !1366, !tbaa !1104
  %24 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.16) #38, !dbg !1366
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %22, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.15, ptr noundef %23, ptr noundef %24, ptr noundef null) #38, !dbg !1366
  tail call void @exit(i32 noundef 0) #40, !dbg !1366
  unreachable, !dbg !1366

25:                                               ; preds = %13
  tail call void @usage(i32 noundef 1) #42, !dbg !1367
  unreachable, !dbg !1367

26:                                               ; preds = %13
  %27 = load i32, ptr @optind, align 4, !dbg !1368, !tbaa !1169
  %28 = sub nsw i32 %0, %27, !dbg !1369
  call void @llvm.dbg.value(metadata i32 %28, metadata !1321, metadata !DIExpression()), !dbg !1349
  %29 = sext i32 %27 to i64, !dbg !1370
  %30 = getelementptr inbounds ptr, ptr %1, i64 %29, !dbg !1370
  call void @llvm.dbg.value(metadata ptr %30, metadata !1322, metadata !DIExpression()), !dbg !1349
  %31 = load i1, ptr @print_ls_colors, align 1, !dbg !1371
  %32 = or i1 %9, %31, !dbg !1373
  %33 = icmp ne i32 %12, 2
  %34 = select i1 %32, i1 %33, i1 false, !dbg !1374
  br i1 %34, label %35, label %37, !dbg !1374

35:                                               ; preds = %26
  %36 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.17, i32 noundef 5) #38, !dbg !1375
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %36) #38, !dbg !1375
  tail call void @usage(i32 noundef 1) #42, !dbg !1377
  unreachable, !dbg !1377

37:                                               ; preds = %26
  %38 = xor i1 %9, true, !dbg !1378
  %39 = select i1 %9, i1 %31, i1 false, !dbg !1378
  br i1 %39, label %40, label %42, !dbg !1378

40:                                               ; preds = %37
  %41 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.18, i32 noundef 5) #38, !dbg !1380
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %41) #38, !dbg !1380
  tail call void @usage(i32 noundef 1) #42, !dbg !1382
  unreachable, !dbg !1382

42:                                               ; preds = %37
  %43 = zext i1 %38 to i32, !dbg !1383
  %44 = icmp sgt i32 %28, %43, !dbg !1385
  br i1 %44, label %45, label %56, !dbg !1386

45:                                               ; preds = %42
  %46 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.19, i32 noundef 5) #38, !dbg !1387
  %47 = zext i1 %38 to i64
  %48 = getelementptr inbounds ptr, ptr %30, i64 %47, !dbg !1387
  %49 = load ptr, ptr %48, align 8, !dbg !1387, !tbaa !1104
  %50 = tail call ptr @quote(ptr noundef %49) #38, !dbg !1387
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %46, ptr noundef %50) #38, !dbg !1387
  br i1 %9, label %51, label %55, !dbg !1389

51:                                               ; preds = %45
  %52 = load ptr, ptr @stderr, align 8, !dbg !1390, !tbaa !1104
  %53 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.21, i32 noundef 5) #38, !dbg !1390
  %54 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %52, i32 noundef 1, ptr noundef nonnull @.str.20, ptr noundef %53) #38, !dbg !1390
  br label %55, !dbg !1390

55:                                               ; preds = %51, %45
  tail call void @usage(i32 noundef 1) #42, !dbg !1392
  unreachable, !dbg !1392

56:                                               ; preds = %42
  br i1 %9, label %57, label %66, !dbg !1393

57:                                               ; preds = %56, %57
  %58 = phi ptr [ %62, %57 ], [ @G_line, %56 ]
  call void @llvm.dbg.value(metadata ptr %58, metadata !1327, metadata !DIExpression()), !dbg !1394
  %59 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) %58), !dbg !1395
  %60 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %58) #39, !dbg !1397
  %61 = add i64 %60, 1, !dbg !1398
  %62 = getelementptr inbounds i8, ptr %58, i64 %61, !dbg !1399
  call void @llvm.dbg.value(metadata ptr %62, metadata !1327, metadata !DIExpression()), !dbg !1394
  %63 = ptrtoint ptr %62 to i64, !dbg !1400
  %64 = sub i64 %63, ptrtoint (ptr @G_line to i64), !dbg !1400
  %65 = icmp ult i64 %64, 5616, !dbg !1401
  br i1 %65, label %57, label %138, !dbg !1402, !llvm.loop !1403

66:                                               ; preds = %56
  %67 = select i1 %33, i1 true, i1 %31, !dbg !1405
  br i1 %67, label %84, label %68, !dbg !1405

68:                                               ; preds = %66
  %69 = tail call ptr @getenv(ptr noundef nonnull @.str.70) #38, !dbg !1407
  call void @llvm.dbg.value(metadata ptr %69, metadata !1412, metadata !DIExpression()), !dbg !1415
  %70 = icmp eq ptr %69, null, !dbg !1416
  br i1 %70, label %82, label %71, !dbg !1418

71:                                               ; preds = %68
  %72 = load i8, ptr %69, align 1, !dbg !1419, !tbaa !1178
  %73 = icmp eq i8 %72, 0, !dbg !1420
  br i1 %73, label %82, label %74, !dbg !1421

74:                                               ; preds = %71
  %75 = tail call ptr @last_component(ptr noundef nonnull %69) #39, !dbg !1422
  call void @llvm.dbg.value(metadata ptr %75, metadata !1412, metadata !DIExpression()), !dbg !1415
  call void @llvm.dbg.value(metadata ptr %75, metadata !1180, metadata !DIExpression()), !dbg !1423
  call void @llvm.dbg.value(metadata ptr @.str.64, metadata !1186, metadata !DIExpression()), !dbg !1423
  %76 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %75, ptr noundef nonnull dereferenceable(4) @.str.64) #39, !dbg !1426
  %77 = icmp eq i32 %76, 0, !dbg !1427
  br i1 %77, label %84, label %78, !dbg !1428

78:                                               ; preds = %74
  call void @llvm.dbg.value(metadata ptr %75, metadata !1180, metadata !DIExpression()), !dbg !1429
  call void @llvm.dbg.value(metadata ptr @.str.71, metadata !1186, metadata !DIExpression()), !dbg !1429
  %79 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %75, ptr noundef nonnull dereferenceable(5) @.str.71) #39, !dbg !1431
  %80 = icmp eq i32 %79, 0, !dbg !1432
  %81 = zext i1 %80 to i32, !dbg !1433
  br label %84, !dbg !1433

82:                                               ; preds = %71, %68
  call void @llvm.dbg.value(metadata i32 2, metadata !1325, metadata !DIExpression()), !dbg !1349
  %83 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.22, i32 noundef 5) #38, !dbg !1434
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %83) #38, !dbg !1434
  unreachable, !dbg !1434

84:                                               ; preds = %66, %78, %74
  %85 = phi i32 [ %12, %66 ], [ 1, %74 ], [ %81, %78 ], !dbg !1349
  call void @llvm.dbg.value(metadata i32 %85, metadata !1325, metadata !DIExpression()), !dbg !1349
  %86 = tail call i32 @rpl_obstack_begin(ptr noundef nonnull @lsc_obstack, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @malloc, ptr noundef nonnull @free) #38, !dbg !1436
  %87 = icmp eq i32 %27, %0, !dbg !1437
  br i1 %87, label %88, label %90, !dbg !1439

88:                                               ; preds = %84
  %89 = tail call fastcc i1 @dc_parse_stream(ptr noundef null, ptr noundef null), !dbg !1440
  call void @llvm.dbg.value(metadata i1 %89, metadata !1323, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1349
  call void @llvm.dbg.value(metadata i1 %100, metadata !1323, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1349
  br i1 %89, label %109, label %138, !dbg !1441

90:                                               ; preds = %84
  %91 = load ptr, ptr %30, align 8, !dbg !1442, !tbaa !1104
  call void @llvm.dbg.value(metadata ptr %91, metadata !1443, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.value(metadata ptr %91, metadata !1180, metadata !DIExpression()), !dbg !1451
  call void @llvm.dbg.value(metadata ptr @.str.143, metadata !1186, metadata !DIExpression()), !dbg !1451
  %92 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %91, ptr noundef nonnull dereferenceable(2) @.str.143) #39, !dbg !1454
  %93 = icmp eq i32 %92, 0, !dbg !1455
  br i1 %93, label %98, label %94, !dbg !1456

94:                                               ; preds = %90
  %95 = load ptr, ptr @stdin, align 8, !dbg !1457, !tbaa !1104
  %96 = tail call ptr @freopen_safer(ptr noundef %91, ptr noundef nonnull @.str.144, ptr noundef %95) #38, !dbg !1458
  %97 = icmp eq ptr %96, null, !dbg !1459
  br i1 %97, label %104, label %98, !dbg !1460

98:                                               ; preds = %94, %90
  %99 = load ptr, ptr @stdin, align 8, !dbg !1461, !tbaa !1104
  %100 = tail call fastcc i1 @dc_parse_stream(ptr noundef %99, ptr noundef %91), !dbg !1462
  call void @llvm.dbg.value(metadata i1 %100, metadata !1448, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1449
  %101 = load ptr, ptr @stdin, align 8, !dbg !1463, !tbaa !1104
  %102 = tail call i32 @rpl_fclose(ptr noundef %101) #38, !dbg !1465
  %103 = icmp eq i32 %102, 0, !dbg !1466
  br i1 %103, label %108, label %104, !dbg !1467

104:                                              ; preds = %94, %98
  %105 = tail call ptr @__errno_location() #41, !dbg !1449
  %106 = load i32, ptr %105, align 4, !dbg !1449, !tbaa !1169
  %107 = tail call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %91) #38, !dbg !1449
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %106, ptr noundef nonnull @.str.145, ptr noundef %107) #38, !dbg !1449
  call void @llvm.dbg.value(metadata i1 false, metadata !1323, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1349
  br label %138, !dbg !1441

108:                                              ; preds = %98
  call void @llvm.dbg.value(metadata i1 %100, metadata !1323, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1349
  br i1 %100, label %109, label %138, !dbg !1441

109:                                              ; preds = %88, %108
  call void @llvm.dbg.value(metadata ptr @lsc_obstack, metadata !1334, metadata !DIExpression()), !dbg !1468
  %110 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1469, !tbaa !1470
  %111 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 2), align 8, !dbg !1469, !tbaa !1473
  %112 = ptrtoint ptr %110 to i64, !dbg !1469
  %113 = ptrtoint ptr %111 to i64, !dbg !1469
  %114 = sub i64 %112, %113, !dbg !1469
  call void @llvm.dbg.value(metadata i64 %114, metadata !1330, metadata !DIExpression()), !dbg !1474
  call void @llvm.dbg.value(metadata ptr @lsc_obstack, metadata !1339, metadata !DIExpression()), !dbg !1475
  call void @llvm.dbg.value(metadata ptr %111, metadata !1342, metadata !DIExpression()), !dbg !1475
  %115 = icmp eq ptr %110, %111, !dbg !1476
  br i1 %115, label %116, label %119, !dbg !1478

116:                                              ; preds = %109
  %117 = load i8, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 10), align 8, !dbg !1476
  %118 = or i8 %117, 2, !dbg !1476
  store i8 %118, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 10), align 8, !dbg !1476
  br label %119, !dbg !1476

119:                                              ; preds = %116, %109
  %120 = sub i64 0, %112, !dbg !1478
  %121 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 6), align 8, !dbg !1478, !tbaa !1479
  %122 = and i64 %121, %120, !dbg !1478
  %123 = getelementptr inbounds i8, ptr %110, i64 %122, !dbg !1478
  store ptr %123, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1478, !tbaa !1470
  store ptr %123, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 2), align 8, !dbg !1478, !tbaa !1473
  call void @llvm.dbg.value(metadata ptr %111, metadata !1338, metadata !DIExpression()), !dbg !1474
  %124 = icmp eq i32 %85, 0, !dbg !1480
  %125 = select i1 %124, ptr @.str.24, ptr @.str.26
  call void @llvm.dbg.value(metadata ptr %125, metadata !1344, metadata !DIExpression()), !dbg !1474
  call void @llvm.dbg.value(metadata ptr poison, metadata !1343, metadata !DIExpression()), !dbg !1474
  %126 = load i1, ptr @print_ls_colors, align 1, !dbg !1482
  br i1 %126, label %131, label %127, !dbg !1484

127:                                              ; preds = %119
  %128 = select i1 %124, ptr @.str.23, ptr @.str.25
  call void @llvm.dbg.value(metadata ptr %128, metadata !1343, metadata !DIExpression()), !dbg !1474
  %129 = load ptr, ptr @stdout, align 8, !dbg !1485, !tbaa !1104
  %130 = tail call i32 @fputs_unlocked(ptr noundef nonnull %128, ptr noundef %129), !dbg !1485
  br label %131, !dbg !1485

131:                                              ; preds = %127, %119
  %132 = load ptr, ptr @stdout, align 8, !dbg !1486, !tbaa !1104
  %133 = tail call i64 @fwrite_unlocked(ptr noundef %111, i64 noundef 1, i64 noundef %114, ptr noundef %132), !dbg !1486
  %134 = load i1, ptr @print_ls_colors, align 1, !dbg !1487
  br i1 %134, label %138, label %135, !dbg !1489

135:                                              ; preds = %131
  %136 = load ptr, ptr @stdout, align 8, !dbg !1490, !tbaa !1104
  %137 = tail call i32 @fputs_unlocked(ptr noundef nonnull %125, ptr noundef %136), !dbg !1490
  br label %138, !dbg !1490

138:                                              ; preds = %57, %88, %104, %131, %135, %108
  %139 = phi i32 [ 1, %108 ], [ 0, %135 ], [ 0, %131 ], [ 1, %104 ], [ 1, %88 ], [ 0, %57 ]
  call void @llvm.dbg.value(metadata i1 poison, metadata !1323, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1349
  ret i32 %139, !dbg !1491
}

; Function Attrs: nounwind
declare !dbg !1492 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1495 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1496 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1499 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !1505 noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1508 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) #11

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !1511 void @free(ptr allocptr nocapture noundef) #12

; Function Attrs: nounwind uwtable
define internal fastcc i1 @dc_parse_stream(ptr noundef %0, ptr noundef %1) unnamed_addr #10 !dbg !109 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !174, metadata !DIExpression()), !dbg !1512
  call void @llvm.dbg.value(metadata ptr %1, metadata !175, metadata !DIExpression()), !dbg !1512
  call void @llvm.dbg.value(metadata i64 0, metadata !176, metadata !DIExpression()), !dbg !1512
  call void @llvm.dbg.value(metadata ptr @G_line, metadata !180, metadata !DIExpression()), !dbg !1512
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #38, !dbg !1513
  call void @llvm.dbg.value(metadata ptr null, metadata !181, metadata !DIExpression()), !dbg !1512
  store ptr null, ptr %3, align 8, !dbg !1514, !tbaa !1104
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #38, !dbg !1515
  call void @llvm.dbg.value(metadata i64 0, metadata !182, metadata !DIExpression()), !dbg !1512
  store i64 0, ptr %4, align 8, !dbg !1516, !tbaa !1517
  call void @llvm.dbg.value(metadata i8 1, metadata !186, metadata !DIExpression()), !dbg !1512
  call void @llvm.dbg.value(metadata i32 3, metadata !187, metadata !DIExpression()), !dbg !1512
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.27) #38, !dbg !1518
  call void @llvm.dbg.value(metadata ptr %5, metadata !184, metadata !DIExpression()), !dbg !1512
  %6 = icmp eq ptr %5, null, !dbg !1519
  br i1 %6, label %10, label %7, !dbg !1521

7:                                                ; preds = %2
  %8 = load i8, ptr %5, align 1, !dbg !1522, !tbaa !1178
  %9 = icmp eq i8 %8, 0, !dbg !1523
  br i1 %9, label %10, label %11, !dbg !1524

10:                                               ; preds = %7, %2
  call void @llvm.dbg.value(metadata ptr @.str.72, metadata !184, metadata !DIExpression()), !dbg !1512
  br label %11, !dbg !1525

11:                                               ; preds = %10, %7
  %12 = phi ptr [ @.str.72, %10 ], [ %5, %7 ], !dbg !1512
  call void @llvm.dbg.value(metadata ptr %12, metadata !184, metadata !DIExpression()), !dbg !1512
  %13 = tail call ptr @getenv(ptr noundef nonnull @.str.73) #38, !dbg !1526
  call void @llvm.dbg.value(metadata ptr %13, metadata !185, metadata !DIExpression()), !dbg !1512
  %14 = icmp eq ptr %13, null, !dbg !1527
  %15 = select i1 %14, ptr @.str.11, ptr %13, !dbg !1529
  call void @llvm.dbg.value(metadata ptr %15, metadata !185, metadata !DIExpression()), !dbg !1512
  %16 = icmp eq ptr %0, null
  %17 = icmp eq ptr %1, null
  br label %18, !dbg !1530

18:                                               ; preds = %156, %11
  %19 = phi i64 [ %27, %156 ], [ 0, %11 ]
  %20 = phi ptr [ %52, %156 ], [ @G_line, %11 ]
  %21 = phi i1 [ %158, %156 ], [ true, %11 ]
  %22 = phi i32 [ %159, %156 ], [ 3, %11 ]
  br label %24, !dbg !1531

23:                                               ; preds = %54, %54
  br label %24, !dbg !1531

24:                                               ; preds = %18, %23
  %25 = phi i64 [ %27, %23 ], [ %19, %18 ], !dbg !1512
  %26 = phi ptr [ %52, %23 ], [ %20, %18 ], !dbg !1532
  call void @llvm.dbg.value(metadata i32 %22, metadata !187, metadata !DIExpression()), !dbg !1512
  call void @llvm.dbg.value(metadata i8 poison, metadata !186, metadata !DIExpression()), !dbg !1512
  call void @llvm.dbg.value(metadata ptr %26, metadata !180, metadata !DIExpression()), !dbg !1512
  call void @llvm.dbg.value(metadata i64 %25, metadata !176, metadata !DIExpression()), !dbg !1512
  %27 = add nuw nsw i64 %25, 1, !dbg !1533
  call void @llvm.dbg.value(metadata i64 %27, metadata !176, metadata !DIExpression()), !dbg !1512
  br i1 %16, label %45, label %28, !dbg !1531

28:                                               ; preds = %24
  call void @llvm.dbg.value(metadata ptr %3, metadata !181, metadata !DIExpression(DW_OP_deref)), !dbg !1512
  call void @llvm.dbg.value(metadata ptr %4, metadata !182, metadata !DIExpression(DW_OP_deref)), !dbg !1512
  call void @llvm.dbg.value(metadata ptr %3, metadata !1534, metadata !DIExpression()), !dbg !1543
  call void @llvm.dbg.value(metadata ptr %4, metadata !1541, metadata !DIExpression()), !dbg !1543
  call void @llvm.dbg.value(metadata ptr %0, metadata !1542, metadata !DIExpression()), !dbg !1543
  %29 = call i64 @__getdelim(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 10, ptr noundef nonnull %0) #38, !dbg !1548
  %30 = icmp slt i64 %29, 1, !dbg !1549
  br i1 %30, label %31, label %43, !dbg !1550

31:                                               ; preds = %28
  call void @llvm.dbg.value(metadata ptr %0, metadata !1551, metadata !DIExpression()), !dbg !1556
  %32 = load i32, ptr %0, align 8, !dbg !1560, !tbaa !1561
  %33 = and i32 %32, 32, !dbg !1563
  %34 = icmp eq i32 %33, 0, !dbg !1563
  br i1 %34, label %40, label %35, !dbg !1564

35:                                               ; preds = %31
  %36 = tail call ptr @__errno_location() #41, !dbg !1565
  %37 = load i32, ptr %36, align 4, !dbg !1565, !tbaa !1169
  %38 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.74, i32 noundef 5) #38, !dbg !1565
  %39 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %1) #38, !dbg !1565
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %37, ptr noundef %38, ptr noundef %39) #38, !dbg !1565
  call void @llvm.dbg.value(metadata i8 0, metadata !186, metadata !DIExpression()), !dbg !1512
  br label %40, !dbg !1567

40:                                               ; preds = %35, %31
  %41 = phi i1 [ false, %35 ], [ %21, %31 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !186, metadata !DIExpression()), !dbg !1512
  %42 = load ptr, ptr %3, align 8, !dbg !1568, !tbaa !1104
  call void @llvm.dbg.value(metadata ptr %42, metadata !181, metadata !DIExpression()), !dbg !1512
  call void @free(ptr noundef %42) #38, !dbg !1569
  br label %160, !dbg !1570

43:                                               ; preds = %28
  %44 = load ptr, ptr %3, align 8, !dbg !1571, !tbaa !1104
  call void @llvm.dbg.value(metadata ptr %44, metadata !181, metadata !DIExpression()), !dbg !1512
  call void @llvm.dbg.value(metadata ptr %44, metadata !183, metadata !DIExpression()), !dbg !1512
  br label %51, !dbg !1572

45:                                               ; preds = %24
  %46 = icmp eq ptr %26, getelementptr inbounds ([5616 x i8], ptr @G_line, i64 1, i64 0), !dbg !1573
  br i1 %46, label %160, label %47, !dbg !1576

47:                                               ; preds = %45
  call void @llvm.dbg.value(metadata ptr %26, metadata !183, metadata !DIExpression()), !dbg !1512
  %48 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %26) #39, !dbg !1577
  %49 = add i64 %48, 1, !dbg !1578
  %50 = getelementptr inbounds i8, ptr %26, i64 %49, !dbg !1579
  call void @llvm.dbg.value(metadata ptr %50, metadata !180, metadata !DIExpression()), !dbg !1512
  br label %51

51:                                               ; preds = %47, %43
  %52 = phi ptr [ %26, %43 ], [ %50, %47 ], !dbg !1512
  %53 = phi ptr [ %44, %43 ], [ %26, %47 ], !dbg !1580
  call void @llvm.dbg.value(metadata ptr %53, metadata !183, metadata !DIExpression()), !dbg !1512
  call void @llvm.dbg.value(metadata ptr %52, metadata !180, metadata !DIExpression()), !dbg !1512
  call void @llvm.dbg.value(metadata ptr %53, metadata !1581, metadata !DIExpression()), !dbg !1591
  call void @llvm.dbg.value(metadata ptr undef, metadata !1586, metadata !DIExpression()), !dbg !1591
  call void @llvm.dbg.value(metadata ptr undef, metadata !1587, metadata !DIExpression()), !dbg !1591
  call void @llvm.dbg.value(metadata ptr %53, metadata !1588, metadata !DIExpression()), !dbg !1591
  br label %54, !dbg !1593

54:                                               ; preds = %57, %51
  %55 = phi ptr [ %53, %51 ], [ %58, %57 ], !dbg !1595
  call void @llvm.dbg.value(metadata ptr %55, metadata !1588, metadata !DIExpression()), !dbg !1591
  %56 = load i8, ptr %55, align 1, !dbg !1596, !tbaa !1178
  call void @llvm.dbg.value(metadata i8 %56, metadata !1598, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1604
  switch i8 %56, label %59 [
    i8 32, label %57
    i8 9, label %57
    i8 10, label %57
    i8 11, label %57
    i8 12, label %57
    i8 13, label %57
    i8 0, label %23
    i8 35, label %23
  ], !dbg !1606, !llvm.loop !1607

57:                                               ; preds = %54, %54, %54, %54, %54, %54
  %58 = getelementptr inbounds i8, ptr %55, i64 1, !dbg !1609
  call void @llvm.dbg.value(metadata ptr %58, metadata !1588, metadata !DIExpression()), !dbg !1591
  br label %54, !dbg !1610, !llvm.loop !1611

59:                                               ; preds = %54, %62
  %60 = phi i8 [ %64, %62 ], [ %56, %54 ], !dbg !1614
  %61 = phi ptr [ %63, %62 ], [ %55, %54 ], !dbg !1591
  call void @llvm.dbg.value(metadata ptr %61, metadata !1588, metadata !DIExpression()), !dbg !1591
  call void @llvm.dbg.value(metadata i8 %60, metadata !1598, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1615
  switch i8 %60, label %62 [
    i8 32, label %65
    i8 9, label %65
    i8 10, label %65
    i8 11, label %65
    i8 12, label %65
    i8 13, label %65
    i8 0, label %65
  ], !dbg !1617

62:                                               ; preds = %59
  %63 = getelementptr inbounds i8, ptr %61, i64 1, !dbg !1618
  call void @llvm.dbg.value(metadata ptr %63, metadata !1588, metadata !DIExpression()), !dbg !1591
  %64 = load i8, ptr %63, align 1, !dbg !1614, !tbaa !1178
  br label %59, !dbg !1620, !llvm.loop !1621

65:                                               ; preds = %59, %59, %59, %59, %59, %59, %59
  %66 = ptrtoint ptr %61 to i64, !dbg !1623
  %67 = ptrtoint ptr %55 to i64, !dbg !1623
  %68 = sub i64 %66, %67, !dbg !1623
  %69 = call noalias nonnull ptr @ximemdup0(ptr noundef nonnull %55, i64 noundef %68) #38, !dbg !1624
  %70 = load i8, ptr %61, align 1, !dbg !1625, !tbaa !1178
  %71 = icmp eq i8 %70, 0, !dbg !1627
  br i1 %71, label %89, label %72, !dbg !1628

72:                                               ; preds = %65, %76
  %73 = phi ptr [ %74, %76 ], [ %61, %65 ], !dbg !1591
  call void @llvm.dbg.value(metadata ptr %73, metadata !1588, metadata !DIExpression()), !dbg !1591
  %74 = getelementptr inbounds i8, ptr %73, i64 1, !dbg !1629
  call void @llvm.dbg.value(metadata ptr %74, metadata !1588, metadata !DIExpression()), !dbg !1591
  %75 = load i8, ptr %74, align 1, !dbg !1631, !tbaa !1178
  call void @llvm.dbg.value(metadata i8 %75, metadata !1598, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1632
  switch i8 %75, label %77 [
    i8 32, label %76
    i8 9, label %76
    i8 10, label %76
    i8 11, label %76
    i8 12, label %76
    i8 13, label %76
    i8 0, label %89
    i8 35, label %89
  ], !dbg !1634

76:                                               ; preds = %72, %72, %72, %72, %72, %72
  br label %72, !dbg !1591, !llvm.loop !1635

77:                                               ; preds = %72, %81
  %78 = phi i8 [ %83, %81 ], [ %75, %72 ], !dbg !1638
  %79 = phi ptr [ %82, %81 ], [ %74, %72 ], !dbg !1591
  call void @llvm.dbg.value(metadata ptr %79, metadata !1588, metadata !DIExpression()), !dbg !1591
  switch i8 %78, label %81 [
    i8 0, label %80
    i8 35, label %80
  ], !dbg !1639

80:                                               ; preds = %77, %77
  br label %84, !dbg !1640

81:                                               ; preds = %77
  %82 = getelementptr inbounds i8, ptr %79, i64 1, !dbg !1642
  call void @llvm.dbg.value(metadata ptr %82, metadata !1588, metadata !DIExpression()), !dbg !1591
  %83 = load i8, ptr %82, align 1, !dbg !1638, !tbaa !1178
  br label %77, !dbg !1643, !llvm.loop !1644

84:                                               ; preds = %88, %80
  %85 = phi ptr [ %79, %80 ], [ %86, %88 ]
  %86 = getelementptr inbounds i8, ptr %85, i64 -1, !dbg !1646
  call void @llvm.dbg.value(metadata ptr %86, metadata !1588, metadata !DIExpression()), !dbg !1591
  %87 = load i8, ptr %86, align 1, !dbg !1647, !tbaa !1178
  call void @llvm.dbg.value(metadata i8 %87, metadata !1598, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1649
  switch i8 %87, label %92 [
    i8 32, label %88
    i8 9, label %88
    i8 10, label %88
    i8 11, label %88
    i8 12, label %88
    i8 13, label %88
  ], !dbg !1651

88:                                               ; preds = %84, %84, %84, %84, %84, %84
  br label %84, !dbg !1646, !llvm.loop !1652

89:                                               ; preds = %72, %72, %65
  call void @llvm.dbg.value(metadata ptr %69, metadata !188, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata ptr undef, metadata !190, metadata !DIExpression()), !dbg !1654
  %90 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.75, i32 noundef 5) #38, !dbg !1655
  %91 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %1) #38, !dbg !1655
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %90, ptr noundef %91, i64 noundef %27) #38, !dbg !1655
  call void @llvm.dbg.value(metadata i8 0, metadata !186, metadata !DIExpression()), !dbg !1512
  call void @llvm.dbg.value(metadata ptr undef, metadata !188, metadata !DIExpression()), !dbg !1654
  br label %156, !dbg !1658, !llvm.loop !1607

92:                                               ; preds = %84
  call void @llvm.dbg.value(metadata ptr %85, metadata !1588, metadata !DIExpression()), !dbg !1591
  %93 = ptrtoint ptr %85 to i64, !dbg !1659
  %94 = ptrtoint ptr %74 to i64, !dbg !1659
  %95 = sub i64 %93, %94, !dbg !1659
  %96 = call noalias nonnull ptr @ximemdup0(ptr noundef nonnull %74, i64 noundef %95) #38, !dbg !1660
  call void @llvm.dbg.value(metadata ptr %69, metadata !188, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata ptr undef, metadata !190, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8 0, metadata !191, metadata !DIExpression()), !dbg !1654
  %97 = call i32 @c_strcasecmp(ptr noundef nonnull %69, ptr noundef nonnull @.str.27) #39, !dbg !1661
  %98 = icmp eq i32 %97, 0, !dbg !1662
  br i1 %98, label %99, label %105, !dbg !1663

99:                                               ; preds = %92
  %100 = icmp eq i32 %22, 2, !dbg !1664
  br i1 %100, label %153, label %101, !dbg !1667

101:                                              ; preds = %99
  %102 = call i32 @fnmatch(ptr noundef nonnull %96, ptr noundef nonnull %12, i32 noundef 0) #38, !dbg !1668
  %103 = icmp eq i32 %102, 0, !dbg !1669
  %104 = select i1 %103, i32 2, i32 0, !dbg !1668
  call void @llvm.dbg.value(metadata i32 %104, metadata !187, metadata !DIExpression()), !dbg !1512
  br label %153, !dbg !1670

105:                                              ; preds = %92
  %106 = call i32 @c_strcasecmp(ptr noundef nonnull %69, ptr noundef nonnull @.str.73) #39, !dbg !1671
  %107 = icmp eq i32 %106, 0, !dbg !1672
  %108 = icmp eq i32 %22, 2, !dbg !1673
  br i1 %107, label %109, label %114, !dbg !1674

109:                                              ; preds = %105
  br i1 %108, label %153, label %110, !dbg !1675

110:                                              ; preds = %109
  %111 = call i32 @fnmatch(ptr noundef nonnull %96, ptr noundef %15, i32 noundef 0) #38, !dbg !1677
  %112 = icmp eq i32 %111, 0, !dbg !1679
  %113 = select i1 %112, i32 2, i32 0, !dbg !1677
  call void @llvm.dbg.value(metadata i32 %113, metadata !187, metadata !DIExpression()), !dbg !1512
  br label %153, !dbg !1680

114:                                              ; preds = %105
  %115 = select i1 %108, i32 1, i32 %22, !dbg !1681
  call void @llvm.dbg.value(metadata i32 %115, metadata !187, metadata !DIExpression()), !dbg !1512
  %116 = icmp eq i32 %115, 0, !dbg !1682
  br i1 %116, label %153, label %117, !dbg !1683

117:                                              ; preds = %114
  %118 = load i8, ptr %69, align 1, !dbg !1684, !tbaa !1178
  switch i8 %118, label %121 [
    i8 46, label %119
    i8 42, label %120
  ], !dbg !1685

119:                                              ; preds = %117
  call fastcc void @append_entry(i8 noundef 42, ptr noundef nonnull %69, ptr noundef nonnull %96), !dbg !1686
  br label %153, !dbg !1686

120:                                              ; preds = %117
  call fastcc void @append_entry(i8 noundef 0, ptr noundef nonnull %69, ptr noundef nonnull %96), !dbg !1687
  br label %153, !dbg !1687

121:                                              ; preds = %117
  %122 = call i32 @c_strcasecmp(ptr noundef nonnull %69, ptr noundef nonnull @.str.76) #39, !dbg !1688
  %123 = icmp eq i32 %122, 0, !dbg !1689
  br i1 %123, label %153, label %124, !dbg !1690

124:                                              ; preds = %121
  %125 = call i32 @c_strcasecmp(ptr noundef nonnull %69, ptr noundef nonnull @.str.77) #39, !dbg !1691
  %126 = icmp eq i32 %125, 0, !dbg !1692
  br i1 %126, label %153, label %127, !dbg !1693

127:                                              ; preds = %124
  %128 = call i32 @c_strcasecmp(ptr noundef nonnull %69, ptr noundef nonnull @.str.78) #39, !dbg !1694
  %129 = icmp eq i32 %128, 0, !dbg !1695
  br i1 %129, label %153, label %130, !dbg !1696

130:                                              ; preds = %127, %136
  %131 = phi i64 [ %137, %136 ], [ 0, %127 ]
  call void @llvm.dbg.value(metadata i64 %131, metadata !192, metadata !DIExpression()), !dbg !1697
  %132 = getelementptr inbounds [38 x ptr], ptr @slack_codes, i64 0, i64 %131, !dbg !1698
  %133 = load ptr, ptr %132, align 8, !dbg !1698, !tbaa !1104
  call void @llvm.dbg.value(metadata ptr undef, metadata !188, metadata !DIExpression()), !dbg !1654
  %134 = call i32 @c_strcasecmp(ptr noundef nonnull %69, ptr noundef %133) #39, !dbg !1701
  %135 = icmp eq i32 %134, 0, !dbg !1703
  br i1 %135, label %139, label %136, !dbg !1704

136:                                              ; preds = %130
  %137 = add nuw nsw i64 %131, 1, !dbg !1705
  call void @llvm.dbg.value(metadata i64 %137, metadata !192, metadata !DIExpression()), !dbg !1697
  %138 = icmp eq i64 %137, 37, !dbg !1706
  br i1 %138, label %143, label %130, !dbg !1707, !llvm.loop !1708

139:                                              ; preds = %130
  %140 = and i64 %131, 4294967295, !dbg !1698
  %141 = getelementptr inbounds [38 x ptr], ptr @ls_codes, i64 0, i64 %140, !dbg !1710
  %142 = load ptr, ptr %141, align 8, !dbg !1710, !tbaa !1104
  call void @llvm.dbg.value(metadata ptr undef, metadata !190, metadata !DIExpression()), !dbg !1654
  call fastcc void @append_entry(i8 noundef 0, ptr noundef %142, ptr noundef nonnull %96), !dbg !1712
  br label %153, !dbg !1712

143:                                              ; preds = %136
  call void @llvm.dbg.value(metadata i8 poison, metadata !191, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i32 %115, metadata !187, metadata !DIExpression()), !dbg !1512
  %144 = icmp ult i32 %115, 3
  br i1 %144, label %145, label %153, !dbg !1713

145:                                              ; preds = %143
  %146 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.79, i32 noundef 5) #38, !dbg !1715
  br i1 %17, label %149, label %147, !dbg !1715

147:                                              ; preds = %145
  %148 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef nonnull %1) #38, !dbg !1715
  br label %151, !dbg !1715

149:                                              ; preds = %145
  %150 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.80, i32 noundef 5) #38, !dbg !1715
  br label %151, !dbg !1715

151:                                              ; preds = %149, %147
  %152 = phi ptr [ %148, %147 ], [ %150, %149 ], !dbg !1715
  call void @llvm.dbg.value(metadata ptr undef, metadata !188, metadata !DIExpression()), !dbg !1654
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %146, ptr noundef %152, i64 noundef %27, ptr noundef nonnull %69) #38, !dbg !1715
  call void @llvm.dbg.value(metadata i8 0, metadata !186, metadata !DIExpression()), !dbg !1512
  br label %153, !dbg !1717

153:                                              ; preds = %114, %139, %127, %124, %121, %120, %119, %109, %110, %99, %101, %151, %143
  %154 = phi i32 [ %115, %151 ], [ %22, %143 ], [ 0, %114 ], [ %115, %139 ], [ %115, %127 ], [ %115, %124 ], [ %115, %121 ], [ %115, %120 ], [ %115, %119 ], [ 2, %109 ], [ %113, %110 ], [ 2, %99 ], [ %104, %101 ]
  %155 = phi i1 [ false, %151 ], [ %21, %143 ], [ %21, %114 ], [ %21, %139 ], [ %21, %127 ], [ %21, %124 ], [ %21, %121 ], [ %21, %120 ], [ %21, %119 ], [ %21, %109 ], [ %21, %110 ], [ %21, %99 ], [ %21, %101 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !186, metadata !DIExpression()), !dbg !1512
  call void @llvm.dbg.value(metadata ptr undef, metadata !188, metadata !DIExpression()), !dbg !1654
  call void @free(ptr noundef nonnull %69) #38, !dbg !1718
  call void @llvm.dbg.value(metadata ptr undef, metadata !190, metadata !DIExpression()), !dbg !1654
  br label %156, !dbg !1608

156:                                              ; preds = %89, %153
  %157 = phi ptr [ %96, %153 ], [ %69, %89 ]
  %158 = phi i1 [ %155, %153 ], [ false, %89 ]
  %159 = phi i32 [ %154, %153 ], [ %22, %89 ]
  call void @free(ptr noundef nonnull %157) #38, !dbg !1654
  br label %18

160:                                              ; preds = %45, %40
  %161 = phi i1 [ %41, %40 ], [ %21, %45 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #38, !dbg !1719
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #38, !dbg !1719
  ret i1 %161, !dbg !1720
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1721 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #13

declare !dbg !1725 i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !1730 i32 @fnmatch(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @append_entry(i8 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #10 !dbg !1734 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1738, metadata !DIExpression()), !dbg !1764
  call void @llvm.dbg.value(metadata ptr %1, metadata !1739, metadata !DIExpression()), !dbg !1764
  call void @llvm.dbg.value(metadata ptr %2, metadata !1740, metadata !DIExpression()), !dbg !1764
  %4 = load i1, ptr @print_ls_colors, align 1, !dbg !1765
  br i1 %4, label %5, label %14, !dbg !1766

5:                                                ; preds = %3
  tail call fastcc void @append_quoted(ptr noundef nonnull @.str.81), !dbg !1767
  tail call fastcc void @append_quoted(ptr noundef %2), !dbg !1768
  call void @llvm.dbg.value(metadata ptr @lsc_obstack, metadata !1741, metadata !DIExpression()), !dbg !1769
  call void @llvm.dbg.value(metadata ptr @lsc_obstack, metadata !1745, metadata !DIExpression()), !dbg !1770
  %6 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 4), align 8, !dbg !1771, !tbaa !1772
  %7 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1771, !tbaa !1470
  %8 = icmp eq ptr %6, %7, !dbg !1773
  br i1 %8, label %9, label %11, !dbg !1774

9:                                                ; preds = %5
  tail call void @rpl_obstack_newchunk(ptr noundef nonnull @lsc_obstack, i64 noundef 1) #38, !dbg !1773
  %10 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1774, !tbaa !1470
  br label %11, !dbg !1773

11:                                               ; preds = %9, %5
  %12 = phi ptr [ %10, %9 ], [ %7, %5 ], !dbg !1774
  %13 = getelementptr inbounds i8, ptr %12, i64 1, !dbg !1774
  store ptr %13, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1774, !tbaa !1470
  store i8 109, ptr %12, align 1, !dbg !1774, !tbaa !1178
  br label %14, !dbg !1775

14:                                               ; preds = %11, %3
  %15 = icmp eq i8 %0, 0, !dbg !1776
  br i1 %15, label %25, label %16, !dbg !1777

16:                                               ; preds = %14
  call void @llvm.dbg.value(metadata ptr @lsc_obstack, metadata !1748, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata ptr @lsc_obstack, metadata !1751, metadata !DIExpression()), !dbg !1779
  %17 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 4), align 8, !dbg !1780, !tbaa !1772
  %18 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1780, !tbaa !1470
  %19 = icmp eq ptr %17, %18, !dbg !1781
  br i1 %19, label %20, label %22, !dbg !1782

20:                                               ; preds = %16
  tail call void @rpl_obstack_newchunk(ptr noundef nonnull @lsc_obstack, i64 noundef 1) #38, !dbg !1781
  %21 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1782, !tbaa !1470
  br label %22, !dbg !1781

22:                                               ; preds = %20, %16
  %23 = phi ptr [ %21, %20 ], [ %18, %16 ], !dbg !1782
  %24 = getelementptr inbounds i8, ptr %23, i64 1, !dbg !1782
  store ptr %24, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1782, !tbaa !1470
  store i8 %0, ptr %23, align 1, !dbg !1782, !tbaa !1178
  br label %25, !dbg !1783

25:                                               ; preds = %22, %14
  tail call fastcc void @append_quoted(ptr noundef %1), !dbg !1784
  call void @llvm.dbg.value(metadata ptr @lsc_obstack, metadata !1754, metadata !DIExpression()), !dbg !1785
  call void @llvm.dbg.value(metadata ptr @lsc_obstack, metadata !1756, metadata !DIExpression()), !dbg !1786
  %26 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 4), align 8, !dbg !1787, !tbaa !1772
  %27 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1787, !tbaa !1470
  %28 = icmp eq ptr %26, %27, !dbg !1788
  br i1 %28, label %29, label %31, !dbg !1789

29:                                               ; preds = %25
  tail call void @rpl_obstack_newchunk(ptr noundef nonnull @lsc_obstack, i64 noundef 1) #38, !dbg !1788
  %30 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1789, !tbaa !1470
  br label %31, !dbg !1788

31:                                               ; preds = %29, %25
  %32 = phi ptr [ %30, %29 ], [ %27, %25 ], !dbg !1789
  %33 = load i1, ptr @print_ls_colors, align 1, !dbg !1789
  %34 = select i1 %33, i8 9, i8 61, !dbg !1789
  %35 = getelementptr inbounds i8, ptr %32, i64 1, !dbg !1789
  store ptr %35, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1789, !tbaa !1470
  store i8 %34, ptr %32, align 1, !dbg !1789, !tbaa !1178
  tail call fastcc void @append_quoted(ptr noundef %2), !dbg !1790
  %36 = load i1, ptr @print_ls_colors, align 1, !dbg !1791
  br i1 %36, label %37, label %38, !dbg !1793

37:                                               ; preds = %31
  tail call fastcc void @append_quoted(ptr noundef nonnull @.str.52), !dbg !1794
  br label %38, !dbg !1794

38:                                               ; preds = %37, %31
  call void @llvm.dbg.value(metadata ptr @lsc_obstack, metadata !1759, metadata !DIExpression()), !dbg !1795
  call void @llvm.dbg.value(metadata ptr @lsc_obstack, metadata !1761, metadata !DIExpression()), !dbg !1796
  %39 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 4), align 8, !dbg !1797, !tbaa !1772
  %40 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1797, !tbaa !1470
  %41 = icmp eq ptr %39, %40, !dbg !1798
  br i1 %41, label %42, label %44, !dbg !1799

42:                                               ; preds = %38
  tail call void @rpl_obstack_newchunk(ptr noundef nonnull @lsc_obstack, i64 noundef 1) #38, !dbg !1798
  %43 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1799, !tbaa !1470
  br label %44, !dbg !1798

44:                                               ; preds = %42, %38
  %45 = phi ptr [ %43, %42 ], [ %40, %38 ], !dbg !1799
  %46 = load i1, ptr @print_ls_colors, align 1, !dbg !1799
  %47 = select i1 %46, i8 10, i8 58, !dbg !1799
  %48 = getelementptr inbounds i8, ptr %45, i64 1, !dbg !1799
  store ptr %48, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1799, !tbaa !1470
  store i8 %47, ptr %45, align 1, !dbg !1799, !tbaa !1178
  ret void, !dbg !1800
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #13

; Function Attrs: nounwind uwtable
define internal fastcc void @append_quoted(ptr nocapture noundef readonly %0) unnamed_addr #10 !dbg !1801 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1803, metadata !DIExpression()), !dbg !1834
  call void @llvm.dbg.value(metadata i8 1, metadata !1804, metadata !DIExpression()), !dbg !1834
  call void @llvm.dbg.value(metadata i8 poison, metadata !1804, metadata !DIExpression()), !dbg !1834
  %2 = load i8, ptr %0, align 1, !dbg !1835, !tbaa !1178
  %3 = icmp eq i8 %2, 0, !dbg !1836
  br i1 %3, label %61, label %4, !dbg !1837

4:                                                ; preds = %1, %54
  %5 = phi i8 [ %59, %54 ], [ %2, %1 ]
  %6 = phi ptr [ %58, %54 ], [ %0, %1 ]
  %7 = phi i1 [ %48, %54 ], [ true, %1 ]
  call void @llvm.dbg.value(metadata ptr %6, metadata !1803, metadata !DIExpression()), !dbg !1834
  %8 = load i1, ptr @print_ls_colors, align 1, !dbg !1838
  br i1 %8, label %47, label %9, !dbg !1839

9:                                                ; preds = %4
  switch i8 %5, label %47 [
    i8 39, label %10
    i8 92, label %35
    i8 94, label %35
    i8 58, label %37
    i8 61, label %37
  ], !dbg !1840

10:                                               ; preds = %9
  call void @llvm.dbg.value(metadata ptr @lsc_obstack, metadata !1805, metadata !DIExpression()), !dbg !1841
  call void @llvm.dbg.value(metadata ptr @lsc_obstack, metadata !1810, metadata !DIExpression()), !dbg !1842
  %11 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 4), align 8, !dbg !1843, !tbaa !1772
  %12 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1843, !tbaa !1470
  %13 = icmp eq ptr %11, %12, !dbg !1844
  br i1 %13, label %14, label %16, !dbg !1845

14:                                               ; preds = %10
  tail call void @rpl_obstack_newchunk(ptr noundef nonnull @lsc_obstack, i64 noundef 1) #38, !dbg !1844
  %15 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1845, !tbaa !1470
  br label %16, !dbg !1844

16:                                               ; preds = %14, %10
  %17 = phi ptr [ %15, %14 ], [ %12, %10 ], !dbg !1845
  %18 = getelementptr inbounds i8, ptr %17, i64 1, !dbg !1845
  store ptr %18, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1845, !tbaa !1470
  store i8 39, ptr %17, align 1, !dbg !1845, !tbaa !1178
  call void @llvm.dbg.value(metadata ptr @lsc_obstack, metadata !1813, metadata !DIExpression()), !dbg !1846
  call void @llvm.dbg.value(metadata ptr @lsc_obstack, metadata !1815, metadata !DIExpression()), !dbg !1847
  %19 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 4), align 8, !dbg !1848, !tbaa !1772
  %20 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1848, !tbaa !1470
  %21 = icmp eq ptr %19, %20, !dbg !1849
  br i1 %21, label %22, label %24, !dbg !1850

22:                                               ; preds = %16
  tail call void @rpl_obstack_newchunk(ptr noundef nonnull @lsc_obstack, i64 noundef 1) #38, !dbg !1849
  %23 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1850, !tbaa !1470
  br label %24, !dbg !1849

24:                                               ; preds = %22, %16
  %25 = phi ptr [ %23, %22 ], [ %20, %16 ], !dbg !1850
  %26 = getelementptr inbounds i8, ptr %25, i64 1, !dbg !1850
  store ptr %26, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1850, !tbaa !1470
  store i8 92, ptr %25, align 1, !dbg !1850, !tbaa !1178
  call void @llvm.dbg.value(metadata ptr @lsc_obstack, metadata !1818, metadata !DIExpression()), !dbg !1851
  call void @llvm.dbg.value(metadata ptr @lsc_obstack, metadata !1820, metadata !DIExpression()), !dbg !1852
  %27 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 4), align 8, !dbg !1853, !tbaa !1772
  %28 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1853, !tbaa !1470
  %29 = icmp eq ptr %27, %28, !dbg !1854
  br i1 %29, label %30, label %32, !dbg !1855

30:                                               ; preds = %24
  tail call void @rpl_obstack_newchunk(ptr noundef nonnull @lsc_obstack, i64 noundef 1) #38, !dbg !1854
  %31 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1855, !tbaa !1470
  br label %32, !dbg !1854

32:                                               ; preds = %30, %24
  %33 = phi ptr [ %31, %30 ], [ %28, %24 ], !dbg !1855
  %34 = getelementptr inbounds i8, ptr %33, i64 1, !dbg !1855
  store ptr %34, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1855, !tbaa !1470
  store i8 39, ptr %33, align 1, !dbg !1855, !tbaa !1178
  call void @llvm.dbg.value(metadata i8 1, metadata !1804, metadata !DIExpression()), !dbg !1834
  br label %47, !dbg !1856

35:                                               ; preds = %9, %9
  %36 = xor i1 %7, true, !dbg !1857
  call void @llvm.dbg.value(metadata i1 %36, metadata !1804, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1834
  br label %47, !dbg !1858

37:                                               ; preds = %9, %9
  br i1 %7, label %38, label %47, !dbg !1859

38:                                               ; preds = %37
  call void @llvm.dbg.value(metadata ptr @lsc_obstack, metadata !1823, metadata !DIExpression()), !dbg !1860
  call void @llvm.dbg.value(metadata ptr @lsc_obstack, metadata !1826, metadata !DIExpression()), !dbg !1861
  %39 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 4), align 8, !dbg !1862, !tbaa !1772
  %40 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1862, !tbaa !1470
  %41 = icmp eq ptr %39, %40, !dbg !1863
  br i1 %41, label %42, label %44, !dbg !1864

42:                                               ; preds = %38
  tail call void @rpl_obstack_newchunk(ptr noundef nonnull @lsc_obstack, i64 noundef 1) #38, !dbg !1863
  %43 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1864, !tbaa !1470
  br label %44, !dbg !1863

44:                                               ; preds = %42, %38
  %45 = phi ptr [ %43, %42 ], [ %40, %38 ], !dbg !1864
  %46 = getelementptr inbounds i8, ptr %45, i64 1, !dbg !1864
  store ptr %46, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1864, !tbaa !1470
  store i8 92, ptr %45, align 1, !dbg !1864, !tbaa !1178
  br label %47, !dbg !1865

47:                                               ; preds = %9, %44, %37, %32, %35, %4
  %48 = phi i1 [ %7, %4 ], [ %36, %35 ], [ true, %32 ], [ true, %37 ], [ true, %44 ], [ true, %9 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1804, metadata !DIExpression()), !dbg !1834
  call void @llvm.dbg.value(metadata ptr @lsc_obstack, metadata !1829, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata ptr @lsc_obstack, metadata !1831, metadata !DIExpression()), !dbg !1867
  %49 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 4), align 8, !dbg !1868, !tbaa !1772
  %50 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1868, !tbaa !1470
  %51 = icmp eq ptr %49, %50, !dbg !1869
  br i1 %51, label %52, label %54, !dbg !1870

52:                                               ; preds = %47
  tail call void @rpl_obstack_newchunk(ptr noundef nonnull @lsc_obstack, i64 noundef 1) #38, !dbg !1869
  %53 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1870, !tbaa !1470
  br label %54, !dbg !1869

54:                                               ; preds = %52, %47
  %55 = phi ptr [ %53, %52 ], [ %50, %47 ], !dbg !1870
  %56 = load i8, ptr %6, align 1, !dbg !1870, !tbaa !1178
  %57 = getelementptr inbounds i8, ptr %55, i64 1, !dbg !1870
  store ptr %57, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1870, !tbaa !1470
  store i8 %56, ptr %55, align 1, !dbg !1870, !tbaa !1178
  %58 = getelementptr inbounds i8, ptr %6, i64 1, !dbg !1871
  call void @llvm.dbg.value(metadata ptr %58, metadata !1803, metadata !DIExpression()), !dbg !1834
  call void @llvm.dbg.value(metadata i8 poison, metadata !1804, metadata !DIExpression()), !dbg !1834
  %59 = load i8, ptr %58, align 1, !dbg !1835, !tbaa !1178
  %60 = icmp eq i8 %59, 0, !dbg !1836
  br i1 %60, label %61, label %4, !dbg !1837, !llvm.loop !1872

61:                                               ; preds = %54, %1
  ret void, !dbg !1874
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @last_component(ptr noundef readonly %0) local_unnamed_addr #14 !dbg !1875 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1877, metadata !DIExpression()), !dbg !1882
  call void @llvm.dbg.value(metadata ptr %0, metadata !1878, metadata !DIExpression()), !dbg !1882
  br label %2, !dbg !1883

2:                                                ; preds = %2, %1
  %3 = phi ptr [ %0, %1 ], [ %6, %2 ], !dbg !1882
  call void @llvm.dbg.value(metadata ptr %3, metadata !1878, metadata !DIExpression()), !dbg !1882
  %4 = load i8, ptr %3, align 1, !dbg !1884, !tbaa !1178
  %5 = icmp eq i8 %4, 47, !dbg !1884
  %6 = getelementptr inbounds i8, ptr %3, i64 1, !dbg !1885
  call void @llvm.dbg.value(metadata ptr %6, metadata !1878, metadata !DIExpression()), !dbg !1882
  br i1 %5, label %2, label %7, !dbg !1883, !llvm.loop !1886

7:                                                ; preds = %2, %15
  %8 = phi i8 [ %19, %15 ], [ %4, %2 ], !dbg !1887
  %9 = phi ptr [ %16, %15 ], [ %3, %2 ], !dbg !1889
  %10 = phi i1 [ %17, %15 ], [ false, %2 ]
  %11 = phi ptr [ %18, %15 ], [ %3, %2 ], !dbg !1890
  call void @llvm.dbg.value(metadata ptr %11, metadata !1880, metadata !DIExpression()), !dbg !1891
  call void @llvm.dbg.value(metadata i8 poison, metadata !1879, metadata !DIExpression()), !dbg !1882
  call void @llvm.dbg.value(metadata ptr %9, metadata !1878, metadata !DIExpression()), !dbg !1882
  switch i8 %8, label %13 [
    i8 0, label %12
    i8 47, label %15
  ], !dbg !1892

12:                                               ; preds = %7
  ret ptr %9, !dbg !1893

13:                                               ; preds = %7
  %14 = select i1 %10, ptr %11, ptr %9, !dbg !1894
  br label %15, !dbg !1894

15:                                               ; preds = %13, %7
  %16 = phi ptr [ %9, %7 ], [ %14, %13 ], !dbg !1882
  %17 = phi i1 [ true, %7 ], [ false, %13 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1879, metadata !DIExpression()), !dbg !1882
  call void @llvm.dbg.value(metadata ptr %16, metadata !1878, metadata !DIExpression()), !dbg !1882
  %18 = getelementptr inbounds i8, ptr %11, i64 1, !dbg !1897
  call void @llvm.dbg.value(metadata ptr %18, metadata !1880, metadata !DIExpression()), !dbg !1891
  %19 = load i8, ptr %18, align 1, !dbg !1887, !tbaa !1178
  br label %7, !dbg !1898, !llvm.loop !1899
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @base_len(ptr nocapture noundef readonly %0) local_unnamed_addr #15 !dbg !1901 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1905, metadata !DIExpression()), !dbg !1908
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #39, !dbg !1909
  call void @llvm.dbg.value(metadata i64 %2, metadata !1906, metadata !DIExpression()), !dbg !1908
  %3 = icmp ne i64 %2, 0, !dbg !1911
  %4 = zext i1 %3 to i64, !dbg !1911
  br label %5, !dbg !1911

5:                                                ; preds = %8, %1
  %6 = phi i64 [ %2, %1 ], [ %9, %8 ], !dbg !1912
  call void @llvm.dbg.value(metadata i64 %6, metadata !1906, metadata !DIExpression()), !dbg !1908
  %7 = icmp ugt i64 %6, 1, !dbg !1913
  br i1 %7, label %8, label %13, !dbg !1915

8:                                                ; preds = %5
  %9 = add i64 %6, -1, !dbg !1916
  %10 = getelementptr inbounds i8, ptr %0, i64 %9, !dbg !1916
  %11 = load i8, ptr %10, align 1, !dbg !1916, !tbaa !1178
  %12 = icmp eq i8 %11, 47, !dbg !1916
  br i1 %12, label %5, label %13, !dbg !1917, !llvm.loop !1918

13:                                               ; preds = %5, %8
  %14 = phi i64 [ %4, %5 ], [ %6, %8 ], !dbg !1912
  call void @llvm.dbg.value(metadata i64 0, metadata !1907, metadata !DIExpression()), !dbg !1908
  ret i64 %14, !dbg !1920
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @c_strcasecmp(ptr noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #14 !dbg !1921 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1923, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata ptr %1, metadata !1924, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata ptr %0, metadata !1925, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata ptr %1, metadata !1926, metadata !DIExpression()), !dbg !1932
  %3 = icmp eq ptr %0, %1, !dbg !1933
  br i1 %3, label %48, label %4, !dbg !1935

4:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %0, metadata !1925, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata ptr %1, metadata !1926, metadata !DIExpression()), !dbg !1932
  %5 = load i8, ptr %0, align 1, !dbg !1936, !tbaa !1178
  %6 = zext i8 %5 to i32, !dbg !1936
  call void @llvm.dbg.value(metadata i32 %6, metadata !1937, metadata !DIExpression()), !dbg !1942
  %7 = add nsw i32 %6, -65, !dbg !1944
  %8 = icmp ult i32 %7, 26, !dbg !1944
  %9 = add nuw nsw i32 %6, 32, !dbg !1944
  %10 = select i1 %8, i32 %9, i32 %6, !dbg !1944
  call void @llvm.dbg.value(metadata i32 %10, metadata !1927, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1945
  %11 = load i8, ptr %1, align 1, !dbg !1946, !tbaa !1178
  %12 = zext i8 %11 to i32, !dbg !1946
  call void @llvm.dbg.value(metadata i32 %12, metadata !1937, metadata !DIExpression()), !dbg !1947
  %13 = add nsw i32 %12, -65, !dbg !1949
  %14 = icmp ult i32 %13, 26, !dbg !1949
  %15 = add nuw nsw i32 %12, 32, !dbg !1949
  %16 = select i1 %14, i32 %15, i32 %12, !dbg !1949
  call void @llvm.dbg.value(metadata i32 %16, metadata !1931, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1945
  %17 = and i32 %10, 255, !dbg !1950
  %18 = icmp ne i32 %17, 0, !dbg !1952
  %19 = and i32 %16, 255
  %20 = icmp eq i32 %17, %19
  %21 = select i1 %18, i1 %20, i1 false, !dbg !1953
  br i1 %21, label %26, label %22, !dbg !1953

22:                                               ; preds = %26, %4
  %23 = phi i32 [ %17, %4 ], [ %43, %26 ], !dbg !1950
  %24 = phi i32 [ %19, %4 ], [ %45, %26 ]
  %25 = sub nsw i32 %23, %24, !dbg !1954
  br label %48

26:                                               ; preds = %4, %26
  %27 = phi ptr [ %29, %26 ], [ %0, %4 ]
  %28 = phi ptr [ %30, %26 ], [ %1, %4 ]
  call void @llvm.dbg.value(metadata ptr %27, metadata !1925, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata ptr %28, metadata !1926, metadata !DIExpression()), !dbg !1932
  %29 = getelementptr inbounds i8, ptr %27, i64 1, !dbg !1957
  call void @llvm.dbg.value(metadata ptr %29, metadata !1925, metadata !DIExpression()), !dbg !1932
  %30 = getelementptr inbounds i8, ptr %28, i64 1, !dbg !1958
  call void @llvm.dbg.value(metadata ptr %30, metadata !1926, metadata !DIExpression()), !dbg !1932
  %31 = load i8, ptr %29, align 1, !dbg !1936, !tbaa !1178
  %32 = zext i8 %31 to i32, !dbg !1936
  call void @llvm.dbg.value(metadata i32 %32, metadata !1937, metadata !DIExpression()), !dbg !1942
  %33 = add nsw i32 %32, -65, !dbg !1944
  %34 = icmp ult i32 %33, 26, !dbg !1944
  %35 = add nuw nsw i32 %32, 32, !dbg !1944
  %36 = select i1 %34, i32 %35, i32 %32, !dbg !1944
  call void @llvm.dbg.value(metadata i32 %36, metadata !1927, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1945
  %37 = load i8, ptr %30, align 1, !dbg !1946, !tbaa !1178
  %38 = zext i8 %37 to i32, !dbg !1946
  call void @llvm.dbg.value(metadata i32 %38, metadata !1937, metadata !DIExpression()), !dbg !1947
  %39 = add nsw i32 %38, -65, !dbg !1949
  %40 = icmp ult i32 %39, 26, !dbg !1949
  %41 = add nuw nsw i32 %38, 32, !dbg !1949
  %42 = select i1 %40, i32 %41, i32 %38, !dbg !1949
  call void @llvm.dbg.value(metadata i32 %42, metadata !1931, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1945
  %43 = and i32 %36, 255, !dbg !1950
  %44 = icmp ne i32 %43, 0, !dbg !1952
  %45 = and i32 %42, 255
  %46 = icmp eq i32 %43, %45
  %47 = select i1 %44, i1 %46, i1 false, !dbg !1953
  br i1 %47, label %26, label %22, !dbg !1953, !llvm.loop !1959

48:                                               ; preds = %22, %2
  %49 = phi i32 [ %25, %22 ], [ 0, %2 ], !dbg !1932
  ret i32 %49, !dbg !1962
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #16 !dbg !1963 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1965, metadata !DIExpression()), !dbg !1966
  store ptr %0, ptr @file_name, align 8, !dbg !1967, !tbaa !1104
  ret void, !dbg !1968
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #16 !dbg !1969 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1973, metadata !DIExpression()), !dbg !1974
  store i8 %2, ptr @ignore_EPIPE, align 4, !dbg !1975, !tbaa !1976
  ret void, !dbg !1978
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1979 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1984, !tbaa !1104
  %2 = tail call i32 @close_stream(ptr noundef %1) #38, !dbg !1985
  %3 = icmp eq i32 %2, 0, !dbg !1986
  br i1 %3, label %22, label %4, !dbg !1987

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 4, !dbg !1988, !tbaa !1976, !range !1989, !noundef !1154
  %6 = icmp eq i8 %5, 0, !dbg !1988
  br i1 %6, label %11, label %7, !dbg !1990

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #41, !dbg !1991
  %9 = load i32, ptr %8, align 4, !dbg !1991, !tbaa !1169
  %10 = icmp eq i32 %9, 32, !dbg !1992
  br i1 %10, label %22, label %11, !dbg !1993

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.1.39, i32 noundef 5) #38, !dbg !1994
  call void @llvm.dbg.value(metadata ptr %12, metadata !1981, metadata !DIExpression()), !dbg !1995
  %13 = load ptr, ptr @file_name, align 8, !dbg !1996, !tbaa !1104
  %14 = icmp eq ptr %13, null, !dbg !1996
  %15 = tail call ptr @__errno_location() #41, !dbg !1998
  %16 = load i32, ptr %15, align 4, !dbg !1998, !tbaa !1169
  br i1 %14, label %19, label %17, !dbg !1999

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #38, !dbg !2000
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.40, ptr noundef %18, ptr noundef %12) #38, !dbg !2000
  br label %20, !dbg !2000

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.41, ptr noundef %12) #38, !dbg !2001
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !2002, !tbaa !1169
  tail call void @_exit(i32 noundef %21) #40, !dbg !2003
  unreachable, !dbg !2003

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !2004, !tbaa !1104
  %24 = tail call i32 @close_stream(ptr noundef %23) #38, !dbg !2006
  %25 = icmp eq i32 %24, 0, !dbg !2007
  br i1 %25, label %28, label %26, !dbg !2008

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !2009, !tbaa !1169
  tail call void @_exit(i32 noundef %27) #40, !dbg !2010
  unreachable, !dbg !2010

28:                                               ; preds = %22
  ret void, !dbg !2011
}

; Function Attrs: noreturn
declare !dbg !2012 void @_exit(i32 noundef) local_unnamed_addr #17

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #18 !dbg !2014 {
  %5 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2018, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata i32 %1, metadata !2019, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.value(metadata ptr %2, metadata !2020, metadata !DIExpression()), !dbg !2022
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2021, metadata !DIExpression()), !dbg !2023
  tail call fastcc void @flush_stdout(), !dbg !2024
  %6 = load ptr, ptr @error_print_progname, align 8, !dbg !2025, !tbaa !1104
  %7 = icmp eq ptr %6, null, !dbg !2025
  br i1 %7, label %9, label %8, !dbg !2027

8:                                                ; preds = %4
  tail call void %6() #38, !dbg !2028
  br label %13, !dbg !2028

9:                                                ; preds = %4
  %10 = load ptr, ptr @stderr, align 8, !dbg !2029, !tbaa !1104
  %11 = tail call ptr @getprogname() #39, !dbg !2029
  %12 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %10, i32 noundef 1, ptr noundef nonnull @.str.42, ptr noundef %11) #38, !dbg !2029
  br label %13

13:                                               ; preds = %9, %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #38, !dbg !2031
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !2031, !tbaa.struct !2032
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5), !dbg !2031
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #38, !dbg !2031
  ret void, !dbg !2033
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !2034 {
  call void @llvm.dbg.value(metadata i32 1, metadata !2036, metadata !DIExpression()), !dbg !2037
  call void @llvm.dbg.value(metadata i32 1, metadata !2038, metadata !DIExpression()), !dbg !2041
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #38, !dbg !2044
  %2 = icmp slt i32 %1, 0, !dbg !2045
  br i1 %2, label %6, label %3, !dbg !2046

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !2047, !tbaa !1104
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #38, !dbg !2047
  br label %6, !dbg !2047

6:                                                ; preds = %3, %0
  ret void, !dbg !2048
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #19

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr nocapture noundef readonly %3) unnamed_addr #10 !dbg !2049 {
  %5 = alloca [1024 x i8], align 1
  %6 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2051, metadata !DIExpression()), !dbg !2055
  call void @llvm.dbg.value(metadata i32 %1, metadata !2052, metadata !DIExpression()), !dbg !2055
  call void @llvm.dbg.value(metadata ptr %2, metadata !2053, metadata !DIExpression()), !dbg !2055
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2054, metadata !DIExpression()), !dbg !2056
  %7 = load ptr, ptr @stderr, align 8, !dbg !2057, !tbaa !1104
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #38, !dbg !2058, !noalias !2102
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !2106
  call void @llvm.dbg.value(metadata ptr %7, metadata !2098, metadata !DIExpression()), !dbg !2107
  call void @llvm.dbg.value(metadata ptr %2, metadata !2099, metadata !DIExpression()), !dbg !2107
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2100, metadata !DIExpression()), !dbg !2108
  %8 = call i32 @__vfprintf_chk(ptr noundef %7, i32 noundef 1, ptr noundef nonnull %2, ptr noundef nonnull %6) #38, !dbg !2058
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #38, !dbg !2058, !noalias !2102
  %9 = load i32, ptr @error_message_count, align 4, !dbg !2109, !tbaa !1169
  %10 = add i32 %9, 1, !dbg !2109
  store i32 %10, ptr @error_message_count, align 4, !dbg !2109, !tbaa !1169
  %11 = icmp eq i32 %1, 0, !dbg !2110
  br i1 %11, label %21, label %12, !dbg !2112

12:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !2113, metadata !DIExpression()), !dbg !2121
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #38, !dbg !2123
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2117, metadata !DIExpression()), !dbg !2124
  %13 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #38, !dbg !2125
  call void @llvm.dbg.value(metadata ptr %13, metadata !2116, metadata !DIExpression()), !dbg !2121
  %14 = icmp eq ptr %13, null, !dbg !2126
  br i1 %14, label %15, label %17, !dbg !2128

15:                                               ; preds = %12
  %16 = call ptr @dcgettext(ptr noundef nonnull @.str.4.43, ptr noundef nonnull @.str.5.44, i32 noundef 5) #38, !dbg !2129
  call void @llvm.dbg.value(metadata ptr %16, metadata !2116, metadata !DIExpression()), !dbg !2121
  br label %17, !dbg !2130

17:                                               ; preds = %12, %15
  %18 = phi ptr [ %13, %12 ], [ %16, %15 ], !dbg !2121
  call void @llvm.dbg.value(metadata ptr %18, metadata !2116, metadata !DIExpression()), !dbg !2121
  %19 = load ptr, ptr @stderr, align 8, !dbg !2131, !tbaa !1104
  %20 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %19, i32 noundef 1, ptr noundef nonnull @.str.6.45, ptr noundef %18) #38, !dbg !2131
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #38, !dbg !2132
  br label %21, !dbg !2133

21:                                               ; preds = %17, %4
  %22 = load ptr, ptr @stderr, align 8, !dbg !2134, !tbaa !1104
  call void @llvm.dbg.value(metadata i32 10, metadata !2135, metadata !DIExpression()), !dbg !2141
  call void @llvm.dbg.value(metadata ptr %22, metadata !2140, metadata !DIExpression()), !dbg !2141
  %23 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 5, !dbg !2143
  %24 = load ptr, ptr %23, align 8, !dbg !2143, !tbaa !2144
  %25 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 6, !dbg !2143
  %26 = load ptr, ptr %25, align 8, !dbg !2143, !tbaa !2145
  %27 = icmp ult ptr %24, %26, !dbg !2143
  br i1 %27, label %30, label %28, !dbg !2143, !prof !2146

28:                                               ; preds = %21
  %29 = call i32 @__overflow(ptr noundef nonnull %22, i32 noundef 10) #38, !dbg !2143
  br label %32, !dbg !2143

30:                                               ; preds = %21
  %31 = getelementptr inbounds i8, ptr %24, i64 1, !dbg !2143
  store ptr %31, ptr %23, align 8, !dbg !2143, !tbaa !2144
  store i8 10, ptr %24, align 1, !dbg !2143, !tbaa !1178
  br label %32, !dbg !2143

32:                                               ; preds = %28, %30
  %33 = load ptr, ptr @stderr, align 8, !dbg !2147, !tbaa !1104
  %34 = call i32 @fflush_unlocked(ptr noundef %33) #38, !dbg !2147
  %35 = icmp eq i32 %0, 0, !dbg !2148
  br i1 %35, label %37, label %36, !dbg !2150

36:                                               ; preds = %32
  call void @exit(i32 noundef %0) #40, !dbg !2151
  unreachable, !dbg !2151

37:                                               ; preds = %32
  ret void, !dbg !2152
}

declare !dbg !2153 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !2156 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !2159 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !2162 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !2165 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !2169 {
  %4 = alloca %struct.__va_list, align 8
  %5 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2173, metadata !DIExpression()), !dbg !2177
  call void @llvm.dbg.value(metadata i32 %1, metadata !2174, metadata !DIExpression()), !dbg !2177
  call void @llvm.dbg.value(metadata ptr %2, metadata !2175, metadata !DIExpression()), !dbg !2177
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #38, !dbg !2178
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2176, metadata !DIExpression()), !dbg !2179
  call void @llvm.va_start(ptr nonnull %4), !dbg !2180
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #38, !dbg !2181
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !dbg !2181, !tbaa.struct !2032
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5) #43, !dbg !2181
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #38, !dbg !2181
  call void @llvm.va_end(ptr nonnull %4), !dbg !2182
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #38, !dbg !2183
  ret void, !dbg !2183
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #20

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #18 !dbg !704 {
  %7 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !721, metadata !DIExpression()), !dbg !2184
  call void @llvm.dbg.value(metadata i32 %1, metadata !722, metadata !DIExpression()), !dbg !2184
  call void @llvm.dbg.value(metadata ptr %2, metadata !723, metadata !DIExpression()), !dbg !2184
  call void @llvm.dbg.value(metadata i32 %3, metadata !724, metadata !DIExpression()), !dbg !2184
  call void @llvm.dbg.value(metadata ptr %4, metadata !725, metadata !DIExpression()), !dbg !2184
  call void @llvm.dbg.declare(metadata ptr %5, metadata !726, metadata !DIExpression()), !dbg !2185
  %8 = load i32, ptr @error_one_per_line, align 4, !dbg !2186, !tbaa !1169
  %9 = icmp eq i32 %8, 0, !dbg !2186
  br i1 %9, label %24, label %10, !dbg !2188

10:                                               ; preds = %6
  %11 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !2189, !tbaa !1169
  %12 = icmp eq i32 %11, %3, !dbg !2192
  br i1 %12, label %13, label %23, !dbg !2193

13:                                               ; preds = %10
  %14 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !2194, !tbaa !1104
  %15 = icmp eq ptr %14, %2, !dbg !2195
  br i1 %15, label %37, label %16, !dbg !2196

16:                                               ; preds = %13
  %17 = icmp ne ptr %14, null, !dbg !2197
  %18 = icmp ne ptr %2, null
  %19 = and i1 %18, %17, !dbg !2198
  br i1 %19, label %20, label %23, !dbg !2198

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %2) #39, !dbg !2199
  %22 = icmp eq i32 %21, 0, !dbg !2200
  br i1 %22, label %37, label %23, !dbg !2201

23:                                               ; preds = %20, %16, %10
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !2202, !tbaa !1104
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !2203, !tbaa !1169
  br label %24, !dbg !2204

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !2205
  %25 = load ptr, ptr @error_print_progname, align 8, !dbg !2206, !tbaa !1104
  %26 = icmp eq ptr %25, null, !dbg !2206
  br i1 %26, label %28, label %27, !dbg !2208

27:                                               ; preds = %24
  tail call void %25() #38, !dbg !2209
  br label %32, !dbg !2209

28:                                               ; preds = %24
  %29 = load ptr, ptr @stderr, align 8, !dbg !2210, !tbaa !1104
  %30 = tail call ptr @getprogname() #39, !dbg !2210
  %31 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %29, i32 noundef 1, ptr noundef nonnull @.str.1.48, ptr noundef %30) #38, !dbg !2210
  br label %32

32:                                               ; preds = %28, %27
  %33 = load ptr, ptr @stderr, align 8, !dbg !2212, !tbaa !1104
  %34 = icmp eq ptr %2, null, !dbg !2212
  %35 = select i1 %34, ptr @.str.3.49, ptr @.str.2.50, !dbg !2212
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %33, i32 noundef 1, ptr noundef nonnull %35, ptr noundef %2, i32 noundef %3) #38, !dbg !2212
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #38, !dbg !2213
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !2213, !tbaa.struct !2032
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef nonnull %7), !dbg !2213
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #38, !dbg !2213
  br label %37, !dbg !2214

37:                                               ; preds = %13, %20, %32
  ret void, !dbg !2214
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !2215 {
  %6 = alloca %struct.__va_list, align 8
  %7 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2219, metadata !DIExpression()), !dbg !2225
  call void @llvm.dbg.value(metadata i32 %1, metadata !2220, metadata !DIExpression()), !dbg !2225
  call void @llvm.dbg.value(metadata ptr %2, metadata !2221, metadata !DIExpression()), !dbg !2225
  call void @llvm.dbg.value(metadata i32 %3, metadata !2222, metadata !DIExpression()), !dbg !2225
  call void @llvm.dbg.value(metadata ptr %4, metadata !2223, metadata !DIExpression()), !dbg !2225
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #38, !dbg !2226
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2224, metadata !DIExpression()), !dbg !2227
  call void @llvm.va_start(ptr nonnull %6), !dbg !2228
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #38, !dbg !2229
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !2229, !tbaa.struct !2032
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %7) #43, !dbg !2229
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #38, !dbg !2229
  call void @llvm.va_end(ptr nonnull %6), !dbg !2230
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #38, !dbg !2231
  ret void, !dbg !2231
}

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !2232 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2270, metadata !DIExpression()), !dbg !2274
  call void @llvm.dbg.value(metadata i32 0, metadata !2271, metadata !DIExpression()), !dbg !2274
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #38, !dbg !2275
  call void @llvm.dbg.value(metadata i32 %2, metadata !2272, metadata !DIExpression()), !dbg !2274
  %3 = icmp slt i32 %2, 0, !dbg !2276
  br i1 %3, label %4, label %6, !dbg !2278

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !2279
  br label %24, !dbg !2280

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #38, !dbg !2281
  %8 = icmp eq i32 %7, 0, !dbg !2281
  br i1 %8, label %13, label %9, !dbg !2283

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #38, !dbg !2284
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #38, !dbg !2285
  %12 = icmp eq i64 %11, -1, !dbg !2286
  br i1 %12, label %16, label %13, !dbg !2287

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #38, !dbg !2288
  %15 = icmp eq i32 %14, 0, !dbg !2288
  br i1 %15, label %16, label %18, !dbg !2289

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 0, metadata !2271, metadata !DIExpression()), !dbg !2274
  call void @llvm.dbg.value(metadata i32 0, metadata !2273, metadata !DIExpression()), !dbg !2274
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !2290
  call void @llvm.dbg.value(metadata i32 %17, metadata !2273, metadata !DIExpression()), !dbg !2274
  br label %24, !dbg !2291

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #41, !dbg !2292
  %20 = load i32, ptr %19, align 4, !dbg !2292, !tbaa !1169
  call void @llvm.dbg.value(metadata i32 %20, metadata !2271, metadata !DIExpression()), !dbg !2274
  call void @llvm.dbg.value(metadata i32 0, metadata !2273, metadata !DIExpression()), !dbg !2274
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !2290
  call void @llvm.dbg.value(metadata i32 %21, metadata !2273, metadata !DIExpression()), !dbg !2274
  %22 = icmp eq i32 %20, 0, !dbg !2293
  br i1 %22, label %24, label %23, !dbg !2291

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !2295, !tbaa !1169
  call void @llvm.dbg.value(metadata i32 -1, metadata !2273, metadata !DIExpression()), !dbg !2274
  br label %24, !dbg !2297

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !2274
  ret i32 %25, !dbg !2298
}

; Function Attrs: nofree nounwind
declare !dbg !2299 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !2300 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !2301 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2303 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !2306 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2344, metadata !DIExpression()), !dbg !2345
  %2 = icmp eq ptr %0, null, !dbg !2346
  br i1 %2, label %6, label %3, !dbg !2348

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #38, !dbg !2349
  %5 = icmp eq i32 %4, 0, !dbg !2349
  br i1 %5, label %6, label %8, !dbg !2350

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !2351
  br label %16, !dbg !2352

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !2353, metadata !DIExpression()), !dbg !2358
  %9 = load i32, ptr %0, align 8, !dbg !2360, !tbaa !1561
  %10 = and i32 %9, 256, !dbg !2362
  %11 = icmp eq i32 %10, 0, !dbg !2362
  br i1 %11, label %14, label %12, !dbg !2363

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #38, !dbg !2364
  br label %14, !dbg !2364

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !2365
  br label %16, !dbg !2366

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !2345
  ret i32 %17, !dbg !2367
}

; Function Attrs: nofree nounwind
declare !dbg !2368 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local ptr @freopen_safer(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2) local_unnamed_addr #10 !dbg !2369 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2407, metadata !DIExpression()), !dbg !2414
  call void @llvm.dbg.value(metadata ptr %1, metadata !2408, metadata !DIExpression()), !dbg !2414
  call void @llvm.dbg.value(metadata ptr %2, metadata !2409, metadata !DIExpression()), !dbg !2414
  call void @llvm.dbg.value(metadata i8 0, metadata !2410, metadata !DIExpression()), !dbg !2414
  call void @llvm.dbg.value(metadata i8 0, metadata !2411, metadata !DIExpression()), !dbg !2414
  call void @llvm.dbg.value(metadata i8 0, metadata !2412, metadata !DIExpression()), !dbg !2414
  %4 = tail call i32 @fileno(ptr noundef nonnull %2) #38, !dbg !2415
  switch i32 %4, label %5 [
    i32 2, label %8
    i32 1, label %14
    i32 0, label %57
  ], !dbg !2416

5:                                                ; preds = %3
  %6 = tail call i32 @dup2(i32 noundef 2, i32 noundef 2) #38, !dbg !2417
  %7 = icmp eq i32 %6, 2, !dbg !2420
  br label %8, !dbg !2421

8:                                                ; preds = %3, %5
  %9 = phi i1 [ true, %3 ], [ %7, %5 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2412, metadata !DIExpression()), !dbg !2414
  %10 = tail call i32 @dup2(i32 noundef 1, i32 noundef 1) #38, !dbg !2422
  %11 = icmp ne i32 %10, 1, !dbg !2424
  call void @llvm.dbg.value(metadata i8 poison, metadata !2411, metadata !DIExpression()), !dbg !2414
  %12 = tail call i32 @dup2(i32 noundef 0, i32 noundef 0) #38, !dbg !2425
  %13 = icmp eq i32 %12, 0, !dbg !2427
  br i1 %13, label %17, label %18, !dbg !2428

14:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i8 0, metadata !2412, metadata !DIExpression()), !dbg !2414
  call void @llvm.dbg.value(metadata i8 poison, metadata !2411, metadata !DIExpression()), !dbg !2414
  %15 = tail call i32 @dup2(i32 noundef 0, i32 noundef 0) #38, !dbg !2425
  %16 = icmp eq i32 %15, 0, !dbg !2427
  br i1 %16, label %57, label %18, !dbg !2428

17:                                               ; preds = %8
  call void @llvm.dbg.value(metadata i8 poison, metadata !2412, metadata !DIExpression()), !dbg !2414
  call void @llvm.dbg.value(metadata i8 poison, metadata !2411, metadata !DIExpression()), !dbg !2414
  call void @llvm.dbg.value(metadata i8 poison, metadata !2410, metadata !DIExpression()), !dbg !2414
  br i1 %11, label %29, label %40, !dbg !2429

18:                                               ; preds = %14, %8
  %19 = phi i1 [ true, %14 ], [ %9, %8 ]
  %20 = phi i1 [ false, %14 ], [ %11, %8 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2412, metadata !DIExpression()), !dbg !2414
  call void @llvm.dbg.value(metadata i8 poison, metadata !2411, metadata !DIExpression()), !dbg !2414
  call void @llvm.dbg.value(metadata i8 poison, metadata !2410, metadata !DIExpression()), !dbg !2414
  call void @llvm.dbg.value(metadata i32 0, metadata !2432, metadata !DIExpression()), !dbg !2436
  %21 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull @.str.146, i32 noundef 0) #38, !dbg !2438
  call void @llvm.dbg.value(metadata i32 %21, metadata !2435, metadata !DIExpression()), !dbg !2436
  %22 = icmp slt i32 %21, 1, !dbg !2439
  br i1 %22, label %26, label %23, !dbg !2439

23:                                               ; preds = %18
  %24 = tail call i32 @close(i32 noundef %21) #38, !dbg !2440
  %25 = tail call ptr @__errno_location() #41, !dbg !2445
  store i32 9, ptr %25, align 4, !dbg !2446, !tbaa !1169
  call void @llvm.dbg.value(metadata ptr null, metadata !2409, metadata !DIExpression()), !dbg !2414
  call void @llvm.dbg.value(metadata i32 %69, metadata !2413, metadata !DIExpression()), !dbg !2414
  br i1 %19, label %77, label %70, !dbg !2447

26:                                               ; preds = %18
  %27 = icmp eq i32 %21, 0, !dbg !2448
  br i1 %27, label %28, label %64, !dbg !2449

28:                                               ; preds = %26
  br i1 %20, label %29, label %40, !dbg !2429

29:                                               ; preds = %17, %28
  %30 = phi i1 [ %9, %17 ], [ %19, %28 ]
  %31 = phi i1 [ false, %17 ], [ true, %28 ]
  call void @llvm.dbg.value(metadata i32 1, metadata !2432, metadata !DIExpression()), !dbg !2450
  %32 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull @.str.146, i32 noundef 0) #38, !dbg !2452
  call void @llvm.dbg.value(metadata i32 %32, metadata !2435, metadata !DIExpression()), !dbg !2450
  %33 = icmp eq i32 %32, 1, !dbg !2453
  %34 = icmp slt i32 %32, 0
  %35 = or i1 %34, %33, !dbg !2454
  br i1 %35, label %39, label %36, !dbg !2454

36:                                               ; preds = %29
  %37 = tail call i32 @close(i32 noundef %32) #38, !dbg !2455
  %38 = tail call ptr @__errno_location() #41, !dbg !2456
  store i32 9, ptr %38, align 4, !dbg !2457, !tbaa !1169
  br label %39, !dbg !2458

39:                                               ; preds = %29, %36
  br i1 %33, label %40, label %64, !dbg !2459

40:                                               ; preds = %17, %39, %28
  %41 = phi i1 [ %9, %17 ], [ %30, %39 ], [ %19, %28 ]
  %42 = phi i1 [ false, %17 ], [ %31, %39 ], [ true, %28 ]
  %43 = phi i1 [ false, %17 ], [ true, %39 ], [ false, %28 ]
  br i1 %41, label %57, label %44, !dbg !2460

44:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i32 2, metadata !2432, metadata !DIExpression()), !dbg !2462
  %45 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull @.str.146, i32 noundef 0) #38, !dbg !2464
  call void @llvm.dbg.value(metadata i32 %45, metadata !2435, metadata !DIExpression()), !dbg !2462
  %46 = icmp eq i32 %45, 2, !dbg !2465
  %47 = icmp slt i32 %45, 0
  %48 = or i1 %47, %46, !dbg !2466
  br i1 %48, label %52, label %49, !dbg !2466

49:                                               ; preds = %44
  %50 = tail call i32 @close(i32 noundef %45) #38, !dbg !2467
  %51 = tail call ptr @__errno_location() #41, !dbg !2468
  store i32 9, ptr %51, align 4, !dbg !2469, !tbaa !1169
  br label %52, !dbg !2470

52:                                               ; preds = %44, %49
  br i1 %46, label %57, label %53, !dbg !2471

53:                                               ; preds = %52
  call void @llvm.dbg.value(metadata ptr null, metadata !2409, metadata !DIExpression()), !dbg !2414
  %54 = tail call ptr @__errno_location() #41, !dbg !2472
  %55 = load i32, ptr %54, align 4, !dbg !2472, !tbaa !1169
  call void @llvm.dbg.value(metadata i32 %55, metadata !2413, metadata !DIExpression()), !dbg !2414
  %56 = tail call i32 @close(i32 noundef 2) #38, !dbg !2473
  br i1 %43, label %83, label %89, !dbg !2475

57:                                               ; preds = %14, %3, %52, %40
  %58 = phi i1 [ true, %52 ], [ false, %40 ], [ false, %3 ], [ false, %14 ]
  %59 = phi i1 [ %43, %52 ], [ %43, %40 ], [ false, %3 ], [ false, %14 ]
  %60 = phi i1 [ %42, %52 ], [ %42, %40 ], [ false, %3 ], [ false, %14 ]
  %61 = tail call ptr @freopen(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2) #38, !dbg !2476
  call void @llvm.dbg.value(metadata ptr null, metadata !2409, metadata !DIExpression()), !dbg !2414
  %62 = tail call ptr @__errno_location() #41, !dbg !2472
  %63 = load i32, ptr %62, align 4, !dbg !2472, !tbaa !1169
  call void @llvm.dbg.value(metadata i32 %69, metadata !2413, metadata !DIExpression()), !dbg !2414
  br i1 %58, label %70, label %77, !dbg !2447

64:                                               ; preds = %39, %26
  %65 = phi i1 [ %19, %26 ], [ %30, %39 ]
  %66 = phi i1 [ %20, %26 ], [ true, %39 ]
  %67 = phi i1 [ true, %26 ], [ %31, %39 ]
  call void @llvm.dbg.value(metadata ptr null, metadata !2409, metadata !DIExpression()), !dbg !2414
  %68 = tail call ptr @__errno_location() #41, !dbg !2472
  %69 = load i32, ptr %68, align 4, !dbg !2472, !tbaa !1169
  call void @llvm.dbg.value(metadata i32 %69, metadata !2413, metadata !DIExpression()), !dbg !2414
  br i1 %65, label %77, label %70, !dbg !2447

70:                                               ; preds = %23, %57, %64
  %71 = phi i32 [ %69, %64 ], [ %63, %57 ], [ 9, %23 ]
  %72 = phi ptr [ %68, %64 ], [ %62, %57 ], [ %25, %23 ]
  %73 = phi ptr [ null, %64 ], [ %61, %57 ], [ null, %23 ]
  %74 = phi i1 [ %67, %64 ], [ %60, %57 ], [ true, %23 ]
  %75 = phi i1 [ %66, %64 ], [ %59, %57 ], [ %20, %23 ]
  %76 = tail call i32 @close(i32 noundef 2) #38, !dbg !2473
  br i1 %75, label %83, label %89, !dbg !2475

77:                                               ; preds = %23, %57, %64
  %78 = phi i32 [ %69, %64 ], [ %63, %57 ], [ 9, %23 ]
  %79 = phi ptr [ %68, %64 ], [ %62, %57 ], [ %25, %23 ]
  %80 = phi ptr [ null, %64 ], [ %61, %57 ], [ null, %23 ]
  %81 = phi i1 [ %67, %64 ], [ %60, %57 ], [ true, %23 ]
  %82 = phi i1 [ %66, %64 ], [ %59, %57 ], [ %20, %23 ]
  br i1 %82, label %83, label %89, !dbg !2475

83:                                               ; preds = %53, %70, %77
  %84 = phi i1 [ %74, %70 ], [ %81, %77 ], [ %42, %53 ]
  %85 = phi ptr [ %73, %70 ], [ %80, %77 ], [ null, %53 ]
  %86 = phi ptr [ %72, %70 ], [ %79, %77 ], [ %54, %53 ]
  %87 = phi i32 [ %71, %70 ], [ %78, %77 ], [ %55, %53 ]
  %88 = tail call i32 @close(i32 noundef 1) #38, !dbg !2477
  br i1 %84, label %94, label %99, !dbg !2479

89:                                               ; preds = %53, %70, %77
  %90 = phi i1 [ %74, %70 ], [ %81, %77 ], [ %42, %53 ]
  %91 = phi ptr [ %73, %70 ], [ %80, %77 ], [ null, %53 ]
  %92 = phi ptr [ %72, %70 ], [ %79, %77 ], [ %54, %53 ]
  %93 = phi i32 [ %71, %70 ], [ %78, %77 ], [ %55, %53 ]
  br i1 %90, label %94, label %99, !dbg !2479

94:                                               ; preds = %83, %89
  %95 = phi i32 [ %87, %83 ], [ %93, %89 ]
  %96 = phi ptr [ %86, %83 ], [ %92, %89 ]
  %97 = phi ptr [ %85, %83 ], [ %91, %89 ]
  %98 = tail call i32 @close(i32 noundef 0) #38, !dbg !2480
  br label %99, !dbg !2480

99:                                               ; preds = %83, %94, %89
  %100 = phi i32 [ %87, %83 ], [ %95, %94 ], [ %93, %89 ]
  %101 = phi ptr [ %86, %83 ], [ %96, %94 ], [ %92, %89 ]
  %102 = phi ptr [ %85, %83 ], [ %97, %94 ], [ %91, %89 ]
  %103 = icmp eq ptr %102, null, !dbg !2482
  br i1 %103, label %104, label %105, !dbg !2484

104:                                              ; preds = %99
  store i32 %100, ptr %101, align 4, !dbg !2485, !tbaa !1169
  br label %105, !dbg !2486

105:                                              ; preds = %104, %99
  ret ptr %102, !dbg !2487
}

; Function Attrs: nounwind
declare !dbg !2488 i32 @dup2(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree
declare !dbg !2491 noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #21

declare !dbg !2494 i32 @close(i32 noundef) local_unnamed_addr #3

declare !dbg !2495 ptr @freopen(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !2499 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2538, metadata !DIExpression()), !dbg !2544
  call void @llvm.dbg.value(metadata i64 %1, metadata !2539, metadata !DIExpression()), !dbg !2544
  call void @llvm.dbg.value(metadata i32 %2, metadata !2540, metadata !DIExpression()), !dbg !2544
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !2545
  %5 = load ptr, ptr %4, align 8, !dbg !2545, !tbaa !2546
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !2547
  %7 = load ptr, ptr %6, align 8, !dbg !2547, !tbaa !2548
  %8 = icmp eq ptr %5, %7, !dbg !2549
  br i1 %8, label %9, label %27, !dbg !2550

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !2551
  %11 = load ptr, ptr %10, align 8, !dbg !2551, !tbaa !2144
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !2552
  %13 = load ptr, ptr %12, align 8, !dbg !2552, !tbaa !2553
  %14 = icmp eq ptr %11, %13, !dbg !2554
  br i1 %14, label %15, label %27, !dbg !2555

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !2556
  %17 = load ptr, ptr %16, align 8, !dbg !2556, !tbaa !2557
  %18 = icmp eq ptr %17, null, !dbg !2558
  br i1 %18, label %19, label %27, !dbg !2559

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #38, !dbg !2560
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #38, !dbg !2561
  call void @llvm.dbg.value(metadata i64 %21, metadata !2541, metadata !DIExpression()), !dbg !2562
  %22 = icmp eq i64 %21, -1, !dbg !2563
  br i1 %22, label %29, label %23, !dbg !2565

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !2566, !tbaa !1561
  %25 = and i32 %24, -17, !dbg !2566
  store i32 %25, ptr %0, align 8, !dbg !2566, !tbaa !1561
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !2567
  store i64 %21, ptr %26, align 8, !dbg !2568, !tbaa !2569
  br label %29, !dbg !2570

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !2571
  br label %29, !dbg !2572

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !2544
  ret i32 %30, !dbg !2573
}

; Function Attrs: nofree nounwind
declare !dbg !2574 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #22 !dbg !2577 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !2580, !tbaa !1104
  ret ptr %1, !dbg !2581
}

; Function Attrs: noreturn nounwind uwtable
define internal void @print_and_abort() #0 !dbg !2582 {
  %1 = load ptr, ptr @stderr, align 8, !dbg !2583, !tbaa !1104
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.151, ptr noundef nonnull @.str.2.152, i32 noundef 5) #38, !dbg !2583
  %3 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.153, ptr noundef %2) #38, !dbg !2583
  %4 = load volatile i32, ptr @exit_failure, align 4, !dbg !2584, !tbaa !1169
  tail call void @exit(i32 noundef %4) #40, !dbg !2585
  unreachable, !dbg !2585
}

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_obstack_begin(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !2586 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2624, metadata !DIExpression()), !dbg !2629
  call void @llvm.dbg.value(metadata i64 %1, metadata !2625, metadata !DIExpression()), !dbg !2629
  call void @llvm.dbg.value(metadata i64 %2, metadata !2626, metadata !DIExpression()), !dbg !2629
  call void @llvm.dbg.value(metadata ptr %3, metadata !2627, metadata !DIExpression()), !dbg !2629
  call void @llvm.dbg.value(metadata ptr %4, metadata !2628, metadata !DIExpression()), !dbg !2629
  %6 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 7, !dbg !2630
  store ptr %3, ptr %6, align 8, !dbg !2631, !tbaa !1178
  %7 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 8, !dbg !2632
  store ptr %4, ptr %7, align 8, !dbg !2633, !tbaa !1178
  %8 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 10, !dbg !2634
  %9 = load i8, ptr %8, align 8, !dbg !2635
  %10 = and i8 %9, -2, !dbg !2635
  store i8 %10, ptr %8, align 8, !dbg !2635
  call void @llvm.dbg.value(metadata ptr %0, metadata !2636, metadata !DIExpression()), !dbg !2650
  call void @llvm.dbg.value(metadata i64 %1, metadata !2641, metadata !DIExpression()), !dbg !2650
  call void @llvm.dbg.value(metadata i64 %2, metadata !2642, metadata !DIExpression()), !dbg !2650
  %11 = icmp eq i64 %2, 0, !dbg !2652
  call void @llvm.dbg.value(metadata i64 poison, metadata !2642, metadata !DIExpression()), !dbg !2650
  %12 = add i64 %2, -1, !dbg !2654
  %13 = select i1 %11, i64 15, i64 %12, !dbg !2654
  call void @llvm.dbg.value(metadata ptr undef, metadata !2655, metadata !DIExpression()), !dbg !2662
  call void @llvm.dbg.value(metadata i64 %13, metadata !2660, metadata !DIExpression()), !dbg !2662
  call void @llvm.dbg.value(metadata i64 16, metadata !2661, metadata !DIExpression()), !dbg !2662
  %14 = and i64 %13, -16, !dbg !2664
  %15 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %14, i64 16), !dbg !2664
  %16 = extractvalue { i64, i1 } %15, 1, !dbg !2664
  %17 = extractvalue { i64, i1 } %15, 0, !dbg !2664
  call void @llvm.dbg.value(metadata i1 %16, metadata !2645, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2650
  call void @llvm.dbg.value(metadata i64 %1, metadata !2646, metadata !DIExpression()), !dbg !2650
  call void @llvm.dbg.value(metadata i64 %17, metadata !2644, metadata !DIExpression()), !dbg !2650
  %18 = icmp ugt i64 %17, %1, !dbg !2665
  %19 = tail call i64 @llvm.umax.i64(i64 %17, i64 4000), !dbg !2666
  %20 = select i1 %18, i64 %19, i64 %1, !dbg !2666
  call void @llvm.dbg.value(metadata i64 %20, metadata !2646, metadata !DIExpression()), !dbg !2650
  store i64 %20, ptr %0, align 8, !dbg !2667, !tbaa !2668
  %21 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 6, !dbg !2669
  store i64 %13, ptr %21, align 8, !dbg !2670, !tbaa !1479
  br i1 %16, label %22, label %24, !dbg !2671

22:                                               ; preds = %5
  %23 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 1, !dbg !2672
  store ptr null, ptr %23, align 8, !dbg !2673, !tbaa !2674
  call void @llvm.dbg.value(metadata ptr null, metadata !2643, metadata !DIExpression()), !dbg !2650
  br label %28, !dbg !2675

24:                                               ; preds = %5
  call void @llvm.dbg.value(metadata ptr %0, metadata !2676, metadata !DIExpression()), !dbg !2682
  call void @llvm.dbg.value(metadata i64 %20, metadata !2681, metadata !DIExpression()), !dbg !2682
  %25 = tail call ptr %3(i64 noundef %20) #38, !dbg !2684
  %26 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 1, !dbg !2672
  store ptr %25, ptr %26, align 8, !dbg !2673, !tbaa !2674
  call void @llvm.dbg.value(metadata ptr %25, metadata !2643, metadata !DIExpression()), !dbg !2650
  %27 = icmp eq ptr %25, null, !dbg !2686
  br i1 %27, label %28, label %30, !dbg !2675

28:                                               ; preds = %24, %22
  %29 = load ptr, ptr @obstack_alloc_failed_handler, align 8, !dbg !2688, !tbaa !1104
  tail call void %29() #40, !dbg !2689
  unreachable, !dbg !2689

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct._obstack_chunk, ptr %25, i64 0, i32 2, !dbg !2690
  %32 = ptrtoint ptr %31 to i64, !dbg !2690
  %33 = sub i64 0, %32, !dbg !2690
  %34 = and i64 %13, %33, !dbg !2690
  %35 = getelementptr inbounds i8, ptr %31, i64 %34, !dbg !2690
  %36 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 2, !dbg !2691
  store ptr %35, ptr %36, align 8, !dbg !2692, !tbaa !1473
  %37 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 3, !dbg !2693
  store ptr %35, ptr %37, align 8, !dbg !2694, !tbaa !1470
  %38 = getelementptr inbounds i8, ptr %25, i64 %20, !dbg !2695
  %39 = sub i64 0, %13, !dbg !2695
  %40 = getelementptr inbounds i8, ptr %38, i64 %39, !dbg !2695
  %41 = ptrtoint ptr %40 to i64, !dbg !2695
  %42 = sub i64 0, %41, !dbg !2695
  %43 = and i64 %13, %42, !dbg !2695
  %44 = getelementptr inbounds i8, ptr %40, i64 %43, !dbg !2695
  store ptr %44, ptr %25, align 8, !dbg !2696, !tbaa !1104
  %45 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 4, !dbg !2697
  store ptr %44, ptr %45, align 8, !dbg !2698, !tbaa !1772
  %46 = getelementptr inbounds %struct._obstack_chunk, ptr %25, i64 0, i32 1, !dbg !2699
  store ptr null, ptr %46, align 8, !dbg !2700, !tbaa !1104
  %47 = load i8, ptr %8, align 8, !dbg !2701
  %48 = and i8 %47, -7, !dbg !2702
  store i8 %48, ptr %8, align 8, !dbg !2702
  ret i32 1, !dbg !2703
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_obstack_begin_1(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #10 !dbg !2704 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2708, metadata !DIExpression()), !dbg !2714
  call void @llvm.dbg.value(metadata i64 %1, metadata !2709, metadata !DIExpression()), !dbg !2714
  call void @llvm.dbg.value(metadata i64 %2, metadata !2710, metadata !DIExpression()), !dbg !2714
  call void @llvm.dbg.value(metadata ptr %3, metadata !2711, metadata !DIExpression()), !dbg !2714
  call void @llvm.dbg.value(metadata ptr %4, metadata !2712, metadata !DIExpression()), !dbg !2714
  call void @llvm.dbg.value(metadata ptr %5, metadata !2713, metadata !DIExpression()), !dbg !2714
  %7 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 7, !dbg !2715
  store ptr %3, ptr %7, align 8, !dbg !2716, !tbaa !1178
  %8 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 8, !dbg !2717
  store ptr %4, ptr %8, align 8, !dbg !2718, !tbaa !1178
  %9 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 9, !dbg !2719
  store ptr %5, ptr %9, align 8, !dbg !2720, !tbaa !2721
  %10 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 10, !dbg !2722
  %11 = load i8, ptr %10, align 8, !dbg !2723
  %12 = or i8 %11, 1, !dbg !2723
  store i8 %12, ptr %10, align 8, !dbg !2723
  call void @llvm.dbg.value(metadata ptr %0, metadata !2636, metadata !DIExpression()), !dbg !2724
  call void @llvm.dbg.value(metadata i64 %1, metadata !2641, metadata !DIExpression()), !dbg !2724
  call void @llvm.dbg.value(metadata i64 %2, metadata !2642, metadata !DIExpression()), !dbg !2724
  %13 = icmp eq i64 %2, 0, !dbg !2726
  call void @llvm.dbg.value(metadata i64 poison, metadata !2642, metadata !DIExpression()), !dbg !2724
  %14 = add i64 %2, -1, !dbg !2727
  %15 = select i1 %13, i64 15, i64 %14, !dbg !2727
  call void @llvm.dbg.value(metadata ptr undef, metadata !2655, metadata !DIExpression()), !dbg !2728
  call void @llvm.dbg.value(metadata i64 %15, metadata !2660, metadata !DIExpression()), !dbg !2728
  call void @llvm.dbg.value(metadata i64 16, metadata !2661, metadata !DIExpression()), !dbg !2728
  %16 = and i64 %15, -16, !dbg !2730
  %17 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %16, i64 16), !dbg !2730
  %18 = extractvalue { i64, i1 } %17, 1, !dbg !2730
  %19 = extractvalue { i64, i1 } %17, 0, !dbg !2730
  call void @llvm.dbg.value(metadata i1 %18, metadata !2645, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2724
  call void @llvm.dbg.value(metadata i64 %1, metadata !2646, metadata !DIExpression()), !dbg !2724
  call void @llvm.dbg.value(metadata i64 %19, metadata !2644, metadata !DIExpression()), !dbg !2724
  %20 = icmp ugt i64 %19, %1, !dbg !2731
  %21 = tail call i64 @llvm.umax.i64(i64 %19, i64 4000), !dbg !2732
  %22 = select i1 %20, i64 %21, i64 %1, !dbg !2732
  call void @llvm.dbg.value(metadata i64 %22, metadata !2646, metadata !DIExpression()), !dbg !2724
  store i64 %22, ptr %0, align 8, !dbg !2733, !tbaa !2668
  %23 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 6, !dbg !2734
  store i64 %15, ptr %23, align 8, !dbg !2735, !tbaa !1479
  br i1 %18, label %24, label %26, !dbg !2736

24:                                               ; preds = %6
  %25 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 1, !dbg !2737
  store ptr null, ptr %25, align 8, !dbg !2738, !tbaa !2674
  call void @llvm.dbg.value(metadata ptr null, metadata !2643, metadata !DIExpression()), !dbg !2724
  br label %30, !dbg !2739

26:                                               ; preds = %6
  call void @llvm.dbg.value(metadata ptr %0, metadata !2676, metadata !DIExpression()), !dbg !2740
  call void @llvm.dbg.value(metadata i64 %22, metadata !2681, metadata !DIExpression()), !dbg !2740
  %27 = tail call ptr %3(ptr noundef %5, i64 noundef %22) #38, !dbg !2742
  %28 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 1, !dbg !2737
  store ptr %27, ptr %28, align 8, !dbg !2738, !tbaa !2674
  call void @llvm.dbg.value(metadata ptr %27, metadata !2643, metadata !DIExpression()), !dbg !2724
  %29 = icmp eq ptr %27, null, !dbg !2743
  br i1 %29, label %30, label %32, !dbg !2739

30:                                               ; preds = %26, %24
  %31 = load ptr, ptr @obstack_alloc_failed_handler, align 8, !dbg !2744, !tbaa !1104
  tail call void %31() #40, !dbg !2745
  unreachable, !dbg !2745

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct._obstack_chunk, ptr %27, i64 0, i32 2, !dbg !2746
  %34 = ptrtoint ptr %33 to i64, !dbg !2746
  %35 = sub i64 0, %34, !dbg !2746
  %36 = and i64 %15, %35, !dbg !2746
  %37 = getelementptr inbounds i8, ptr %33, i64 %36, !dbg !2746
  %38 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 2, !dbg !2747
  store ptr %37, ptr %38, align 8, !dbg !2748, !tbaa !1473
  %39 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 3, !dbg !2749
  store ptr %37, ptr %39, align 8, !dbg !2750, !tbaa !1470
  %40 = getelementptr inbounds i8, ptr %27, i64 %22, !dbg !2751
  %41 = sub i64 0, %15, !dbg !2751
  %42 = getelementptr inbounds i8, ptr %40, i64 %41, !dbg !2751
  %43 = ptrtoint ptr %42 to i64, !dbg !2751
  %44 = sub i64 0, %43, !dbg !2751
  %45 = and i64 %15, %44, !dbg !2751
  %46 = getelementptr inbounds i8, ptr %42, i64 %45, !dbg !2751
  store ptr %46, ptr %27, align 8, !dbg !2752, !tbaa !1104
  %47 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 4, !dbg !2753
  store ptr %46, ptr %47, align 8, !dbg !2754, !tbaa !1772
  %48 = getelementptr inbounds %struct._obstack_chunk, ptr %27, i64 0, i32 1, !dbg !2755
  store ptr null, ptr %48, align 8, !dbg !2756, !tbaa !1104
  %49 = load i8, ptr %10, align 8, !dbg !2757
  %50 = and i8 %49, -7, !dbg !2758
  store i8 %50, ptr %10, align 8, !dbg !2758
  ret i32 1, !dbg !2759
}

; Function Attrs: nounwind uwtable
define dso_local void @rpl_obstack_newchunk(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2760 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2764, metadata !DIExpression()), !dbg !2773
  call void @llvm.dbg.value(metadata i64 %1, metadata !2765, metadata !DIExpression()), !dbg !2773
  %3 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 1, !dbg !2774
  %4 = load ptr, ptr %3, align 8, !dbg !2774, !tbaa !2674
  call void @llvm.dbg.value(metadata ptr %4, metadata !2766, metadata !DIExpression()), !dbg !2773
  %5 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 3, !dbg !2775
  %6 = load ptr, ptr %5, align 8, !dbg !2775, !tbaa !1470
  %7 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 2, !dbg !2776
  %8 = load ptr, ptr %7, align 8, !dbg !2776, !tbaa !1473
  %9 = ptrtoint ptr %6 to i64, !dbg !2777
  %10 = ptrtoint ptr %8 to i64, !dbg !2777
  %11 = sub i64 %9, %10, !dbg !2777
  call void @llvm.dbg.value(metadata i64 %11, metadata !2767, metadata !DIExpression()), !dbg !2773
  call void @llvm.dbg.value(metadata i8 0, metadata !2770, metadata !DIExpression()), !dbg !2773
  %12 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %11, i64 %1), !dbg !2778
  %13 = extractvalue { i64, i1 } %12, 1, !dbg !2778
  %14 = extractvalue { i64, i1 } %12, 0, !dbg !2778
  call void @llvm.dbg.value(metadata i64 %14, metadata !2768, metadata !DIExpression()), !dbg !2773
  call void @llvm.dbg.value(metadata i1 %13, metadata !2770, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2773
  %15 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 6, !dbg !2779
  %16 = load i64, ptr %15, align 8, !dbg !2779, !tbaa !1479
  call void @llvm.dbg.value(metadata ptr undef, metadata !2655, metadata !DIExpression()), !dbg !2780
  call void @llvm.dbg.value(metadata i64 %16, metadata !2660, metadata !DIExpression()), !dbg !2780
  call void @llvm.dbg.value(metadata i64 %14, metadata !2661, metadata !DIExpression()), !dbg !2780
  %17 = sub i64 0, %14, !dbg !2782
  %18 = and i64 %16, %17, !dbg !2782
  %19 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %18, i64 %14), !dbg !2782
  %20 = extractvalue { i64, i1 } %19, 1, !dbg !2782
  %21 = extractvalue { i64, i1 } %19, 0, !dbg !2782
  %22 = or i1 %13, %20, !dbg !2783
  call void @llvm.dbg.value(metadata i1 %22, metadata !2770, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2773
  call void @llvm.dbg.value(metadata i64 %21, metadata !2768, metadata !DIExpression()), !dbg !2773
  %23 = add i64 %16, 16, !dbg !2784
  %24 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %21, i64 %23), !dbg !2784
  %25 = extractvalue { i64, i1 } %24, 1, !dbg !2784
  %26 = extractvalue { i64, i1 } %24, 0, !dbg !2784
  call void @llvm.dbg.value(metadata i64 %26, metadata !2768, metadata !DIExpression()), !dbg !2773
  %27 = or i1 %22, %25, !dbg !2785
  call void @llvm.dbg.value(metadata i1 %27, metadata !2770, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2773
  %28 = lshr i64 %11, 3, !dbg !2786
  %29 = add nuw nsw i64 %28, 100, !dbg !2786
  %30 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %26, i64 %29), !dbg !2786
  %31 = extractvalue { i64, i1 } %30, 1, !dbg !2786
  %32 = extractvalue { i64, i1 } %30, 0, !dbg !2786
  call void @llvm.dbg.value(metadata i64 %32, metadata !2769, metadata !DIExpression()), !dbg !2773
  %33 = select i1 %31, i64 %26, i64 %32, !dbg !2788
  call void @llvm.dbg.value(metadata i64 %33, metadata !2769, metadata !DIExpression()), !dbg !2773
  %34 = load i64, ptr %0, align 8, !dbg !2789, !tbaa !2668
  %35 = tail call i64 @llvm.umax.i64(i64 %33, i64 %34), !dbg !2791
  call void @llvm.dbg.value(metadata i64 %35, metadata !2769, metadata !DIExpression()), !dbg !2773
  br i1 %27, label %52, label %36, !dbg !2792

36:                                               ; preds = %2
  call void @llvm.dbg.value(metadata ptr %0, metadata !2676, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.value(metadata i64 %35, metadata !2681, metadata !DIExpression()), !dbg !2793
  %37 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 10, !dbg !2795
  %38 = load i8, ptr %37, align 8, !dbg !2795
  %39 = and i8 %38, 1, !dbg !2795
  %40 = icmp eq i8 %39, 0, !dbg !2796
  %41 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 7, !dbg !2797
  %42 = load ptr, ptr %41, align 8, !dbg !2797, !tbaa !1178
  br i1 %40, label %47, label %43, !dbg !2798

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 9, !dbg !2799
  %45 = load ptr, ptr %44, align 8, !dbg !2799, !tbaa !2721
  %46 = tail call ptr %42(ptr noundef %45, i64 noundef %35) #38, !dbg !2800
  br label %49, !dbg !2801

47:                                               ; preds = %36
  %48 = tail call ptr %42(i64 noundef %35) #38, !dbg !2802
  br label %49, !dbg !2803

49:                                               ; preds = %47, %43
  %50 = phi ptr [ %46, %43 ], [ %48, %47 ], !dbg !2792
  call void @llvm.dbg.value(metadata ptr %50, metadata !2771, metadata !DIExpression()), !dbg !2773
  %51 = icmp eq ptr %50, null, !dbg !2804
  br i1 %51, label %52, label %54, !dbg !2806

52:                                               ; preds = %2, %49
  %53 = load ptr, ptr @obstack_alloc_failed_handler, align 8, !dbg !2807, !tbaa !1104
  tail call void %53() #40, !dbg !2808
  unreachable, !dbg !2808

54:                                               ; preds = %49
  store ptr %50, ptr %3, align 8, !dbg !2809, !tbaa !2674
  %55 = getelementptr inbounds %struct._obstack_chunk, ptr %50, i64 0, i32 1, !dbg !2810
  store ptr %4, ptr %55, align 8, !dbg !2811, !tbaa !1104
  %56 = getelementptr inbounds i8, ptr %50, i64 %35, !dbg !2812
  %57 = load i64, ptr %15, align 8, !dbg !2812, !tbaa !1479
  %58 = sub i64 0, %57, !dbg !2812
  %59 = getelementptr inbounds i8, ptr %56, i64 %58, !dbg !2812
  %60 = ptrtoint ptr %59 to i64, !dbg !2812
  %61 = sub i64 0, %60, !dbg !2812
  %62 = and i64 %57, %61, !dbg !2812
  %63 = getelementptr inbounds i8, ptr %59, i64 %62, !dbg !2812
  %64 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 4, !dbg !2813
  store ptr %63, ptr %64, align 8, !dbg !2814, !tbaa !1772
  store ptr %63, ptr %50, align 8, !dbg !2815, !tbaa !1104
  %65 = getelementptr inbounds %struct._obstack_chunk, ptr %50, i64 0, i32 2, !dbg !2816
  %66 = ptrtoint ptr %65 to i64, !dbg !2816
  %67 = sub i64 0, %66, !dbg !2816
  %68 = and i64 %57, %67, !dbg !2816
  %69 = getelementptr inbounds i8, ptr %65, i64 %68, !dbg !2816
  call void @llvm.dbg.value(metadata ptr %69, metadata !2772, metadata !DIExpression()), !dbg !2773
  %70 = load ptr, ptr %7, align 8, !dbg !2817, !tbaa !1473
  call void @llvm.dbg.value(metadata ptr %69, metadata !2818, metadata !DIExpression()), !dbg !2827
  call void @llvm.dbg.value(metadata ptr %70, metadata !2825, metadata !DIExpression()), !dbg !2827
  call void @llvm.dbg.value(metadata i64 %11, metadata !2826, metadata !DIExpression()), !dbg !2827
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %69, ptr noundef nonnull align 1 %70, i64 noundef %11, i1 noundef false) #38, !dbg !2829
  %71 = load i8, ptr %37, align 8, !dbg !2830
  %72 = and i8 %71, 2, !dbg !2832
  %73 = icmp eq i8 %72, 0, !dbg !2832
  br i1 %73, label %74, label %95, !dbg !2833

74:                                               ; preds = %54
  %75 = load ptr, ptr %7, align 8, !dbg !2834, !tbaa !1473
  %76 = getelementptr inbounds %struct._obstack_chunk, ptr %4, i64 0, i32 2, !dbg !2835
  %77 = ptrtoint ptr %76 to i64, !dbg !2835
  %78 = sub i64 0, %77, !dbg !2835
  %79 = load i64, ptr %15, align 8, !dbg !2835, !tbaa !1479
  %80 = and i64 %79, %78, !dbg !2835
  %81 = getelementptr inbounds i8, ptr %76, i64 %80, !dbg !2835
  %82 = icmp eq ptr %75, %81, !dbg !2836
  br i1 %82, label %83, label %95, !dbg !2837

83:                                               ; preds = %74
  %84 = getelementptr inbounds %struct._obstack_chunk, ptr %4, i64 0, i32 1, !dbg !2838
  %85 = load ptr, ptr %84, align 8, !dbg !2838, !tbaa !1104
  store ptr %85, ptr %55, align 8, !dbg !2840, !tbaa !1104
  call void @llvm.dbg.value(metadata ptr %0, metadata !2841, metadata !DIExpression()), !dbg !2847
  call void @llvm.dbg.value(metadata ptr %4, metadata !2846, metadata !DIExpression()), !dbg !2847
  %86 = load i8, ptr %37, align 8, !dbg !2849
  %87 = and i8 %86, 1, !dbg !2849
  %88 = icmp eq i8 %87, 0, !dbg !2851
  %89 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 8, !dbg !2852
  %90 = load ptr, ptr %89, align 8, !dbg !2852, !tbaa !1178
  br i1 %88, label %94, label %91, !dbg !2853

91:                                               ; preds = %83
  %92 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 9, !dbg !2854
  %93 = load ptr, ptr %92, align 8, !dbg !2854, !tbaa !2721
  tail call void %90(ptr noundef %93, ptr noundef nonnull %4) #38, !dbg !2855
  br label %95, !dbg !2855

94:                                               ; preds = %83
  tail call void %90(ptr noundef nonnull %4) #38, !dbg !2856
  br label %95

95:                                               ; preds = %94, %91, %74, %54
  store ptr %69, ptr %7, align 8, !dbg !2857, !tbaa !1473
  %96 = getelementptr inbounds i8, ptr %69, i64 %11, !dbg !2858
  store ptr %96, ptr %5, align 8, !dbg !2859, !tbaa !1470
  %97 = load i8, ptr %37, align 8, !dbg !2860
  %98 = and i8 %97, -3, !dbg !2860
  store i8 %98, ptr %37, align 8, !dbg !2860
  ret void, !dbg !2861
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @rpl_obstack_allocated_p(ptr nocapture noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #14 !dbg !2862 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2866, metadata !DIExpression()), !dbg !2871
  call void @llvm.dbg.value(metadata ptr %1, metadata !2867, metadata !DIExpression()), !dbg !2871
  %3 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 1, !dbg !2872
  call void @llvm.dbg.value(metadata ptr poison, metadata !2868, metadata !DIExpression()), !dbg !2871
  %4 = load ptr, ptr %3, align 8, !dbg !2871, !tbaa !1104
  call void @llvm.dbg.value(metadata ptr %4, metadata !2868, metadata !DIExpression()), !dbg !2871
  %5 = icmp eq ptr %4, null, !dbg !2873
  br i1 %5, label %16, label %6, !dbg !2874

6:                                                ; preds = %2, %12
  %7 = phi ptr [ %14, %12 ], [ %4, %2 ]
  %8 = icmp ult ptr %7, %1, !dbg !2875
  br i1 %8, label %9, label %12, !dbg !2876

9:                                                ; preds = %6
  %10 = load ptr, ptr %7, align 8, !dbg !2877, !tbaa !1104
  %11 = icmp ult ptr %10, %1, !dbg !2878
  br i1 %11, label %12, label %16, !dbg !2879

12:                                               ; preds = %6, %9
  %13 = getelementptr inbounds %struct._obstack_chunk, ptr %7, i64 0, i32 1, !dbg !2880
  call void @llvm.dbg.value(metadata ptr poison, metadata !2869, metadata !DIExpression()), !dbg !2881
  call void @llvm.dbg.value(metadata ptr poison, metadata !2868, metadata !DIExpression()), !dbg !2871
  %14 = load ptr, ptr %13, align 8, !dbg !2871, !tbaa !1104
  call void @llvm.dbg.value(metadata ptr %14, metadata !2868, metadata !DIExpression()), !dbg !2871
  %15 = icmp eq ptr %14, null, !dbg !2873
  br i1 %15, label %16, label %6, !dbg !2874, !llvm.loop !2882

16:                                               ; preds = %9, %12, %2
  %17 = phi i32 [ 0, %2 ], [ 0, %12 ], [ 1, %9 ], !dbg !2873
  ret i32 %17, !dbg !2884
}

; Function Attrs: nounwind uwtable
define dso_local void @rpl_obstack_free(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2885 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2887, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata ptr %1, metadata !2888, metadata !DIExpression()), !dbg !2892
  %3 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 1, !dbg !2893
  %4 = load ptr, ptr %3, align 8, !dbg !2893, !tbaa !2674
  call void @llvm.dbg.value(metadata ptr %4, metadata !2889, metadata !DIExpression()), !dbg !2892
  %5 = icmp eq ptr %4, null, !dbg !2894
  br i1 %5, label %35, label %6, !dbg !2895

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 10
  %8 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 8
  %9 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 9
  br label %10, !dbg !2895

10:                                               ; preds = %6, %26
  %11 = phi ptr [ %4, %6 ], [ %18, %26 ]
  call void @llvm.dbg.value(metadata ptr %11, metadata !2889, metadata !DIExpression()), !dbg !2892
  %12 = icmp ult ptr %11, %1, !dbg !2896
  br i1 %12, label %13, label %16, !dbg !2897

13:                                               ; preds = %10
  %14 = load ptr, ptr %11, align 8, !dbg !2898, !tbaa !1104
  %15 = icmp ult ptr %14, %1, !dbg !2899
  br i1 %15, label %16, label %30, !dbg !2900

16:                                               ; preds = %10, %13
  %17 = getelementptr inbounds %struct._obstack_chunk, ptr %11, i64 0, i32 1, !dbg !2901
  %18 = load ptr, ptr %17, align 8, !dbg !2901, !tbaa !1104
  call void @llvm.dbg.value(metadata ptr %18, metadata !2890, metadata !DIExpression()), !dbg !2902
  call void @llvm.dbg.value(metadata ptr %0, metadata !2841, metadata !DIExpression()), !dbg !2903
  call void @llvm.dbg.value(metadata ptr %11, metadata !2846, metadata !DIExpression()), !dbg !2903
  %19 = load i8, ptr %7, align 8, !dbg !2905
  %20 = and i8 %19, 1, !dbg !2905
  %21 = icmp eq i8 %20, 0, !dbg !2906
  %22 = load ptr, ptr %8, align 8, !dbg !2907, !tbaa !1178
  br i1 %21, label %25, label %23, !dbg !2908

23:                                               ; preds = %16
  %24 = load ptr, ptr %9, align 8, !dbg !2909, !tbaa !2721
  tail call void %22(ptr noundef %24, ptr noundef nonnull %11) #38, !dbg !2910
  br label %26, !dbg !2910

25:                                               ; preds = %16
  tail call void %22(ptr noundef nonnull %11) #38, !dbg !2911
  br label %26

26:                                               ; preds = %23, %25
  call void @llvm.dbg.value(metadata ptr %18, metadata !2889, metadata !DIExpression()), !dbg !2892
  %27 = load i8, ptr %7, align 8, !dbg !2912
  %28 = or i8 %27, 2, !dbg !2912
  store i8 %28, ptr %7, align 8, !dbg !2912
  %29 = icmp eq ptr %18, null, !dbg !2894
  br i1 %29, label %35, label %10, !dbg !2895, !llvm.loop !2913

30:                                               ; preds = %13
  %31 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 3, !dbg !2915
  store ptr %1, ptr %31, align 8, !dbg !2918, !tbaa !1470
  %32 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 2, !dbg !2919
  store ptr %1, ptr %32, align 8, !dbg !2920, !tbaa !1473
  %33 = load ptr, ptr %11, align 8, !dbg !2921, !tbaa !1104
  %34 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 4, !dbg !2922
  store ptr %33, ptr %34, align 8, !dbg !2923, !tbaa !1772
  store ptr %11, ptr %3, align 8, !dbg !2924, !tbaa !2674
  br label %38, !dbg !2925

35:                                               ; preds = %26, %2
  %36 = icmp eq ptr %1, null, !dbg !2926
  br i1 %36, label %38, label %37, !dbg !2928

37:                                               ; preds = %35
  tail call void @abort() #40, !dbg !2929
  unreachable, !dbg !2929

38:                                               ; preds = %35, %30
  ret void, !dbg !2930
}

; Function Attrs: noreturn nounwind
declare !dbg !2931 void @abort() local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @rpl_obstack_memory_used(ptr nocapture noundef readonly %0) local_unnamed_addr #14 !dbg !2932 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2936, metadata !DIExpression()), !dbg !2940
  call void @llvm.dbg.value(metadata i64 0, metadata !2937, metadata !DIExpression()), !dbg !2940
  %2 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 1, !dbg !2941
  call void @llvm.dbg.value(metadata ptr poison, metadata !2938, metadata !DIExpression()), !dbg !2942
  %3 = load ptr, ptr %2, align 8, !dbg !2943, !tbaa !1104
  call void @llvm.dbg.value(metadata ptr %3, metadata !2938, metadata !DIExpression()), !dbg !2942
  call void @llvm.dbg.value(metadata i64 0, metadata !2937, metadata !DIExpression()), !dbg !2940
  %4 = icmp eq ptr %3, null, !dbg !2944
  br i1 %4, label %5, label %7, !dbg !2946

5:                                                ; preds = %7, %1
  %6 = phi i64 [ 0, %1 ], [ %14, %7 ], !dbg !2940
  ret i64 %6, !dbg !2947

7:                                                ; preds = %1, %7
  %8 = phi ptr [ %16, %7 ], [ %3, %1 ]
  %9 = phi i64 [ %14, %7 ], [ 0, %1 ]
  call void @llvm.dbg.value(metadata i64 %9, metadata !2937, metadata !DIExpression()), !dbg !2940
  %10 = load ptr, ptr %8, align 8, !dbg !2948, !tbaa !1104
  %11 = ptrtoint ptr %10 to i64, !dbg !2950
  %12 = ptrtoint ptr %8 to i64, !dbg !2950
  %13 = sub i64 %9, %12, !dbg !2950
  %14 = add i64 %13, %11, !dbg !2951
  call void @llvm.dbg.value(metadata i64 %14, metadata !2937, metadata !DIExpression()), !dbg !2940
  %15 = getelementptr inbounds %struct._obstack_chunk, ptr %8, i64 0, i32 1, !dbg !2952
  call void @llvm.dbg.value(metadata ptr poison, metadata !2938, metadata !DIExpression()), !dbg !2942
  %16 = load ptr, ptr %15, align 8, !dbg !2943, !tbaa !1104
  call void @llvm.dbg.value(metadata ptr %16, metadata !2938, metadata !DIExpression()), !dbg !2942
  %17 = icmp eq ptr %16, null, !dbg !2944
  br i1 %17, label %5, label %7, !dbg !2946, !llvm.loop !2953
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #23 !dbg !2955 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2957, metadata !DIExpression()), !dbg !2960
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #39, !dbg !2961
  call void @llvm.dbg.value(metadata ptr %2, metadata !2958, metadata !DIExpression()), !dbg !2960
  %3 = icmp eq ptr %2, null, !dbg !2962
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !2962
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !2962
  call void @llvm.dbg.value(metadata ptr %5, metadata !2959, metadata !DIExpression()), !dbg !2960
  %6 = ptrtoint ptr %5 to i64, !dbg !2963
  %7 = ptrtoint ptr %0 to i64, !dbg !2963
  %8 = sub i64 %6, %7, !dbg !2963
  %9 = icmp sgt i64 %8, 6, !dbg !2965
  br i1 %9, label %10, label %19, !dbg !2966

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !2967
  call void @llvm.dbg.value(metadata ptr %11, metadata !2968, metadata !DIExpression()), !dbg !2975
  call void @llvm.dbg.value(metadata ptr @.str.162, metadata !2973, metadata !DIExpression()), !dbg !2975
  call void @llvm.dbg.value(metadata i64 7, metadata !2974, metadata !DIExpression()), !dbg !2975
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.162, i64 7), !dbg !2977
  %13 = icmp eq i32 %12, 0, !dbg !2978
  br i1 %13, label %14, label %19, !dbg !2979

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata ptr %5, metadata !2957, metadata !DIExpression()), !dbg !2960
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.163, i64 noundef 3) #39, !dbg !2980
  %16 = icmp eq i32 %15, 0, !dbg !2983
  %17 = select i1 %16, i64 3, i64 0, !dbg !2984
  %18 = getelementptr i8, ptr %5, i64 %17, !dbg !2984
  br label %19, !dbg !2984

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !2960
  call void @llvm.dbg.value(metadata ptr %21, metadata !2959, metadata !DIExpression()), !dbg !2960
  call void @llvm.dbg.value(metadata ptr %20, metadata !2957, metadata !DIExpression()), !dbg !2960
  store ptr %20, ptr @program_name, align 8, !dbg !2985, !tbaa !1104
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !2986, !tbaa !1104
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !2987, !tbaa !1104
  ret void, !dbg !2988
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2989 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #24

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !775 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.__mbstate_t, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !782, metadata !DIExpression()), !dbg !2990
  call void @llvm.dbg.value(metadata ptr %1, metadata !783, metadata !DIExpression()), !dbg !2990
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #38, !dbg !2991
  call void @llvm.dbg.value(metadata ptr %5, metadata !784, metadata !DIExpression()), !dbg !2990
  %6 = icmp eq ptr %5, %0, !dbg !2992
  br i1 %6, label %7, label %14, !dbg !2994

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #38, !dbg !2995
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #38, !dbg !2996
  call void @llvm.dbg.declare(metadata ptr %4, metadata !790, metadata !DIExpression()), !dbg !2997
  call void @llvm.dbg.value(metadata ptr %4, metadata !2998, metadata !DIExpression()), !dbg !3005
  call void @llvm.dbg.value(metadata ptr %4, metadata !3007, metadata !DIExpression()), !dbg !3014
  call void @llvm.dbg.value(metadata i32 0, metadata !3012, metadata !DIExpression()), !dbg !3014
  call void @llvm.dbg.value(metadata i64 8, metadata !3013, metadata !DIExpression()), !dbg !3014
  store i64 0, ptr %4, align 8, !dbg !3016
  call void @llvm.dbg.value(metadata ptr %3, metadata !785, metadata !DIExpression(DW_OP_deref)), !dbg !2990
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #38, !dbg !3017
  %9 = icmp eq i64 %8, 2, !dbg !3019
  %10 = load i32, ptr %3, align 4
  call void @llvm.dbg.value(metadata i32 %10, metadata !785, metadata !DIExpression()), !dbg !2990
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !3020
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !2990
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #38, !dbg !3021
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #38, !dbg !3021
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !2990
  ret ptr %15, !dbg !3021
}

; Function Attrs: nounwind
declare !dbg !3022 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !3028 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3033, metadata !DIExpression()), !dbg !3036
  %2 = tail call ptr @__errno_location() #41, !dbg !3037
  %3 = load i32, ptr %2, align 4, !dbg !3037, !tbaa !1169
  call void @llvm.dbg.value(metadata i32 %3, metadata !3034, metadata !DIExpression()), !dbg !3036
  %4 = icmp eq ptr %0, null, !dbg !3038
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !3038
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef %5, i64 noundef 56) #44, !dbg !3039
  call void @llvm.dbg.value(metadata ptr %6, metadata !3035, metadata !DIExpression()), !dbg !3036
  store i32 %3, ptr %2, align 4, !dbg !3040, !tbaa !1169
  ret ptr %6, !dbg !3041
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #14 !dbg !3042 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3048, metadata !DIExpression()), !dbg !3049
  %2 = icmp eq ptr %0, null, !dbg !3050
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !3050
  %4 = load i32, ptr %3, align 8, !dbg !3051, !tbaa !3052
  ret i32 %4, !dbg !3054
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #25 !dbg !3055 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3059, metadata !DIExpression()), !dbg !3061
  call void @llvm.dbg.value(metadata i32 %1, metadata !3060, metadata !DIExpression()), !dbg !3061
  %3 = icmp eq ptr %0, null, !dbg !3062
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !3062
  store i32 %1, ptr %4, align 8, !dbg !3063, !tbaa !3052
  ret void, !dbg !3064
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #26 !dbg !3065 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3069, metadata !DIExpression()), !dbg !3077
  call void @llvm.dbg.value(metadata i8 %1, metadata !3070, metadata !DIExpression()), !dbg !3077
  call void @llvm.dbg.value(metadata i32 %2, metadata !3071, metadata !DIExpression()), !dbg !3077
  call void @llvm.dbg.value(metadata i8 %1, metadata !3072, metadata !DIExpression()), !dbg !3077
  %4 = icmp eq ptr %0, null, !dbg !3078
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !3078
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !3079
  %7 = lshr i8 %1, 5, !dbg !3080
  %8 = zext i8 %7 to i64, !dbg !3080
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !3081
  call void @llvm.dbg.value(metadata ptr %9, metadata !3073, metadata !DIExpression()), !dbg !3077
  %10 = and i8 %1, 31, !dbg !3082
  %11 = zext i8 %10 to i32, !dbg !3082
  call void @llvm.dbg.value(metadata i32 %11, metadata !3075, metadata !DIExpression()), !dbg !3077
  %12 = load i32, ptr %9, align 4, !dbg !3083, !tbaa !1169
  %13 = lshr i32 %12, %11, !dbg !3084
  %14 = and i32 %13, 1, !dbg !3085
  call void @llvm.dbg.value(metadata i32 %14, metadata !3076, metadata !DIExpression()), !dbg !3077
  %15 = xor i32 %13, %2, !dbg !3086
  %16 = and i32 %15, 1, !dbg !3086
  %17 = shl nuw i32 %16, %11, !dbg !3087
  %18 = xor i32 %17, %12, !dbg !3088
  store i32 %18, ptr %9, align 4, !dbg !3088, !tbaa !1169
  ret i32 %14, !dbg !3089
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #26 !dbg !3090 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3094, metadata !DIExpression()), !dbg !3097
  call void @llvm.dbg.value(metadata i32 %1, metadata !3095, metadata !DIExpression()), !dbg !3097
  %3 = icmp eq ptr %0, null, !dbg !3098
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !3100
  call void @llvm.dbg.value(metadata ptr %4, metadata !3094, metadata !DIExpression()), !dbg !3097
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !3101
  %6 = load i32, ptr %5, align 4, !dbg !3101, !tbaa !3102
  call void @llvm.dbg.value(metadata i32 %6, metadata !3096, metadata !DIExpression()), !dbg !3097
  store i32 %1, ptr %5, align 4, !dbg !3103, !tbaa !3102
  ret i32 %6, !dbg !3104
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3105 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3109, metadata !DIExpression()), !dbg !3112
  call void @llvm.dbg.value(metadata ptr %1, metadata !3110, metadata !DIExpression()), !dbg !3112
  call void @llvm.dbg.value(metadata ptr %2, metadata !3111, metadata !DIExpression()), !dbg !3112
  %4 = icmp eq ptr %0, null, !dbg !3113
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !3115
  call void @llvm.dbg.value(metadata ptr %5, metadata !3109, metadata !DIExpression()), !dbg !3112
  store i32 10, ptr %5, align 8, !dbg !3116, !tbaa !3052
  %6 = icmp ne ptr %1, null, !dbg !3117
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !3119
  br i1 %8, label %10, label %9, !dbg !3119

9:                                                ; preds = %3
  tail call void @abort() #40, !dbg !3120
  unreachable, !dbg !3120

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3121
  store ptr %1, ptr %11, align 8, !dbg !3122, !tbaa !3123
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3124
  store ptr %2, ptr %12, align 8, !dbg !3125, !tbaa !3126
  ret void, !dbg !3127
}

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !3128 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3132, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i64 %1, metadata !3133, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata ptr %2, metadata !3134, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i64 %3, metadata !3135, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata ptr %4, metadata !3136, metadata !DIExpression()), !dbg !3140
  %6 = icmp eq ptr %4, null, !dbg !3141
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !3141
  call void @llvm.dbg.value(metadata ptr %7, metadata !3137, metadata !DIExpression()), !dbg !3140
  %8 = tail call ptr @__errno_location() #41, !dbg !3142
  %9 = load i32, ptr %8, align 4, !dbg !3142, !tbaa !1169
  call void @llvm.dbg.value(metadata i32 %9, metadata !3138, metadata !DIExpression()), !dbg !3140
  %10 = load i32, ptr %7, align 8, !dbg !3143, !tbaa !3052
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !3144
  %12 = load i32, ptr %11, align 4, !dbg !3144, !tbaa !3102
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !3145
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !3146
  %15 = load ptr, ptr %14, align 8, !dbg !3146, !tbaa !3123
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !3147
  %17 = load ptr, ptr %16, align 8, !dbg !3147, !tbaa !3126
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !3148
  call void @llvm.dbg.value(metadata i64 %18, metadata !3139, metadata !DIExpression()), !dbg !3140
  store i32 %9, ptr %8, align 4, !dbg !3149, !tbaa !1169
  ret i64 %18, !dbg !3150
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !3151 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.__mbstate_t, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.__mbstate_t, align 8
  %14 = alloca %struct.__mbstate_t, align 8
  %15 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !3157, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i64 %1, metadata !3158, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata ptr %2, metadata !3159, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i64 %3, metadata !3160, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i32 %4, metadata !3161, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i32 %5, metadata !3162, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata ptr %6, metadata !3163, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata ptr %7, metadata !3164, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata ptr %8, metadata !3165, metadata !DIExpression()), !dbg !3219
  %16 = tail call i64 @__ctype_get_mb_cur_max() #38, !dbg !3220
  %17 = icmp eq i64 %16, 1, !dbg !3221
  call void @llvm.dbg.value(metadata i1 %17, metadata !3166, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3219
  call void @llvm.dbg.value(metadata i64 0, metadata !3167, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i64 0, metadata !3168, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata ptr null, metadata !3169, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i64 0, metadata !3170, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i8 0, metadata !3171, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i32 %5, metadata !3172, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3219
  call void @llvm.dbg.value(metadata i8 0, metadata !3173, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i8 1, metadata !3174, metadata !DIExpression()), !dbg !3219
  %18 = and i32 %5, 2, !dbg !3222
  %19 = icmp ne i32 %18, 0, !dbg !3222
  %20 = getelementptr inbounds i8, ptr %2, i64 1
  %21 = and i32 %5, 4
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 1
  %24 = icmp eq i32 %23, 0
  %25 = icmp ne ptr %6, null
  %26 = icmp eq ptr %6, null
  br label %27, !dbg !3222

27:                                               ; preds = %591, %9
  %28 = phi i32 [ %4, %9 ], [ 2, %591 ]
  %29 = phi ptr [ %7, %9 ], [ %104, %591 ]
  %30 = phi ptr [ %8, %9 ], [ %105, %591 ]
  %31 = phi i64 [ %3, %9 ], [ %123, %591 ]
  %32 = phi i64 [ 0, %9 ], [ %125, %591 ], !dbg !3223
  %33 = phi ptr [ null, %9 ], [ %107, %591 ], !dbg !3224
  %34 = phi i64 [ 0, %9 ], [ %108, %591 ], !dbg !3225
  %35 = phi i1 [ false, %9 ], [ %109, %591 ]
  %36 = phi i1 [ %19, %9 ], [ false, %591 ]
  %37 = phi i1 [ false, %9 ], [ %126, %591 ]
  %38 = phi i1 [ true, %9 ], [ false, %591 ]
  %39 = phi i64 [ %1, %9 ], [ %125, %591 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !3158, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i8 poison, metadata !3174, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i8 poison, metadata !3173, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i8 poison, metadata !3172, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i8 poison, metadata !3171, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i64 %34, metadata !3170, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata ptr %33, metadata !3169, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i64 %32, metadata !3168, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i64 0, metadata !3167, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i64 %31, metadata !3160, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata ptr %30, metadata !3165, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata ptr %29, metadata !3164, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i32 %28, metadata !3161, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.label(metadata !3212), !dbg !3226
  call void @llvm.dbg.value(metadata i8 0, metadata !3175, metadata !DIExpression()), !dbg !3219
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
  ], !dbg !3227

40:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !3172, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i32 5, metadata !3161, metadata !DIExpression()), !dbg !3219
  br label %102, !dbg !3228

41:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !3172, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i32 5, metadata !3161, metadata !DIExpression()), !dbg !3219
  br i1 %36, label %102, label %42, !dbg !3228

42:                                               ; preds = %41
  %43 = icmp eq i64 %39, 0, !dbg !3229
  br i1 %43, label %102, label %44, !dbg !3233

44:                                               ; preds = %42
  store i8 34, ptr %0, align 1, !dbg !3229, !tbaa !1178
  br label %102, !dbg !3229

45:                                               ; preds = %27, %27
  call void @llvm.dbg.value(metadata ptr @.str.11.176, metadata !871, metadata !DIExpression()), !dbg !3234
  call void @llvm.dbg.value(metadata i32 %28, metadata !872, metadata !DIExpression()), !dbg !3234
  %46 = call ptr @dcgettext(ptr noundef nonnull @.str.13.177, ptr noundef nonnull @.str.11.176, i32 noundef 5) #38, !dbg !3238
  call void @llvm.dbg.value(metadata ptr %46, metadata !873, metadata !DIExpression()), !dbg !3234
  %47 = icmp eq ptr %46, @.str.11.176, !dbg !3239
  br i1 %47, label %48, label %57, !dbg !3241

48:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #38, !dbg !3242
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #38, !dbg !3243
  call void @llvm.dbg.declare(metadata ptr %13, metadata !875, metadata !DIExpression()), !dbg !3244
  call void @llvm.dbg.value(metadata ptr %13, metadata !3245, metadata !DIExpression()), !dbg !3251
  call void @llvm.dbg.value(metadata ptr %13, metadata !3253, metadata !DIExpression()), !dbg !3258
  call void @llvm.dbg.value(metadata i32 0, metadata !3256, metadata !DIExpression()), !dbg !3258
  call void @llvm.dbg.value(metadata i64 8, metadata !3257, metadata !DIExpression()), !dbg !3258
  store i64 0, ptr %13, align 8, !dbg !3260
  call void @llvm.dbg.value(metadata ptr %12, metadata !874, metadata !DIExpression(DW_OP_deref)), !dbg !3234
  %49 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #38, !dbg !3261
  %50 = icmp eq i64 %49, 3, !dbg !3263
  %51 = load i32, ptr %12, align 4
  call void @llvm.dbg.value(metadata i32 %51, metadata !874, metadata !DIExpression()), !dbg !3234
  %52 = icmp eq i32 %51, 8216
  %53 = select i1 %50, i1 %52, i1 false, !dbg !3264
  %54 = icmp eq i32 %28, 9, !dbg !3264
  %55 = select i1 %54, ptr @.str.10.178, ptr @.str.12.179, !dbg !3264
  %56 = select i1 %53, ptr @gettext_quote.quote, ptr %55, !dbg !3264
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #38, !dbg !3265
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #38, !dbg !3265
  br label %57

57:                                               ; preds = %45, %48
  %58 = phi ptr [ %56, %48 ], [ %46, %45 ], !dbg !3234
  call void @llvm.dbg.value(metadata ptr %58, metadata !3164, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata ptr @.str.12.179, metadata !871, metadata !DIExpression()), !dbg !3266
  call void @llvm.dbg.value(metadata i32 %28, metadata !872, metadata !DIExpression()), !dbg !3266
  %59 = call ptr @dcgettext(ptr noundef nonnull @.str.13.177, ptr noundef nonnull @.str.12.179, i32 noundef 5) #38, !dbg !3268
  call void @llvm.dbg.value(metadata ptr %59, metadata !873, metadata !DIExpression()), !dbg !3266
  %60 = icmp eq ptr %59, @.str.12.179, !dbg !3269
  br i1 %60, label %61, label %70, !dbg !3270

61:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #38, !dbg !3271
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #38, !dbg !3272
  call void @llvm.dbg.declare(metadata ptr %11, metadata !875, metadata !DIExpression()), !dbg !3273
  call void @llvm.dbg.value(metadata ptr %11, metadata !3245, metadata !DIExpression()), !dbg !3274
  call void @llvm.dbg.value(metadata ptr %11, metadata !3253, metadata !DIExpression()), !dbg !3276
  call void @llvm.dbg.value(metadata i32 0, metadata !3256, metadata !DIExpression()), !dbg !3276
  call void @llvm.dbg.value(metadata i64 8, metadata !3257, metadata !DIExpression()), !dbg !3276
  store i64 0, ptr %11, align 8, !dbg !3278
  call void @llvm.dbg.value(metadata ptr %10, metadata !874, metadata !DIExpression(DW_OP_deref)), !dbg !3266
  %62 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #38, !dbg !3279
  %63 = icmp eq i64 %62, 3, !dbg !3280
  %64 = load i32, ptr %10, align 4
  call void @llvm.dbg.value(metadata i32 %64, metadata !874, metadata !DIExpression()), !dbg !3266
  %65 = icmp eq i32 %64, 8216
  %66 = select i1 %63, i1 %65, i1 false, !dbg !3281
  %67 = icmp eq i32 %28, 9, !dbg !3281
  %68 = select i1 %67, ptr @.str.10.178, ptr @.str.12.179, !dbg !3281
  %69 = select i1 %66, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %68, !dbg !3281
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #38, !dbg !3282
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #38, !dbg !3282
  br label %70

70:                                               ; preds = %61, %57, %27
  %71 = phi ptr [ %29, %27 ], [ %58, %57 ], [ %58, %61 ]
  %72 = phi ptr [ %30, %27 ], [ %59, %57 ], [ %69, %61 ]
  call void @llvm.dbg.value(metadata ptr %72, metadata !3165, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata ptr %71, metadata !3164, metadata !DIExpression()), !dbg !3219
  br i1 %36, label %88, label %73, !dbg !3283

73:                                               ; preds = %70
  call void @llvm.dbg.value(metadata ptr %71, metadata !3176, metadata !DIExpression()), !dbg !3284
  call void @llvm.dbg.value(metadata i64 0, metadata !3167, metadata !DIExpression()), !dbg !3219
  %74 = load i8, ptr %71, align 1, !dbg !3285, !tbaa !1178
  %75 = icmp eq i8 %74, 0, !dbg !3287
  br i1 %75, label %88, label %76, !dbg !3287

76:                                               ; preds = %73, %83
  %77 = phi i8 [ %86, %83 ], [ %74, %73 ]
  %78 = phi ptr [ %85, %83 ], [ %71, %73 ]
  %79 = phi i64 [ %84, %83 ], [ 0, %73 ]
  call void @llvm.dbg.value(metadata ptr %78, metadata !3176, metadata !DIExpression()), !dbg !3284
  call void @llvm.dbg.value(metadata i64 %79, metadata !3167, metadata !DIExpression()), !dbg !3219
  %80 = icmp ult i64 %79, %39, !dbg !3288
  br i1 %80, label %81, label %83, !dbg !3291

81:                                               ; preds = %76
  %82 = getelementptr inbounds i8, ptr %0, i64 %79, !dbg !3288
  store i8 %77, ptr %82, align 1, !dbg !3288, !tbaa !1178
  br label %83, !dbg !3288

83:                                               ; preds = %81, %76
  %84 = add i64 %79, 1, !dbg !3291
  call void @llvm.dbg.value(metadata i64 %84, metadata !3167, metadata !DIExpression()), !dbg !3219
  %85 = getelementptr inbounds i8, ptr %78, i64 1, !dbg !3292
  call void @llvm.dbg.value(metadata ptr %85, metadata !3176, metadata !DIExpression()), !dbg !3284
  %86 = load i8, ptr %85, align 1, !dbg !3285, !tbaa !1178
  %87 = icmp eq i8 %86, 0, !dbg !3287
  br i1 %87, label %88, label %76, !dbg !3287, !llvm.loop !3293

88:                                               ; preds = %83, %73, %70
  %89 = phi i64 [ 0, %70 ], [ 0, %73 ], [ %84, %83 ], !dbg !3295
  call void @llvm.dbg.value(metadata i64 %89, metadata !3167, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i8 1, metadata !3171, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata ptr %72, metadata !3169, metadata !DIExpression()), !dbg !3219
  %90 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %72) #39, !dbg !3296
  call void @llvm.dbg.value(metadata i64 %90, metadata !3170, metadata !DIExpression()), !dbg !3219
  br label %102, !dbg !3297

91:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !3171, metadata !DIExpression()), !dbg !3219
  br label %93, !dbg !3298

92:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !3172, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i8 poison, metadata !3171, metadata !DIExpression()), !dbg !3219
  br i1 %36, label %102, label %96, !dbg !3299

93:                                               ; preds = %91, %27
  %94 = phi i1 [ true, %91 ], [ %35, %27 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !3172, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i8 poison, metadata !3171, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i32 2, metadata !3161, metadata !DIExpression()), !dbg !3219
  br label %102, !dbg !3300

95:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !3172, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i8 poison, metadata !3171, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i32 2, metadata !3161, metadata !DIExpression()), !dbg !3219
  br i1 %36, label %102, label %96, !dbg !3300

96:                                               ; preds = %92, %95
  %97 = phi i1 [ %35, %95 ], [ true, %92 ]
  %98 = icmp eq i64 %39, 0, !dbg !3301
  br i1 %98, label %102, label %99, !dbg !3305

99:                                               ; preds = %96
  store i8 39, ptr %0, align 1, !dbg !3301, !tbaa !1178
  br label %102, !dbg !3301

100:                                              ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !3172, metadata !DIExpression()), !dbg !3219
  br label %102, !dbg !3306

101:                                              ; preds = %27
  call void @abort() #40, !dbg !3307
  unreachable, !dbg !3307

102:                                              ; preds = %92, %93, %40, %95, %99, %96, %27, %41, %44, %42, %100, %88
  %103 = phi i32 [ 0, %100 ], [ %28, %88 ], [ 5, %42 ], [ 5, %44 ], [ 5, %41 ], [ %28, %27 ], [ 2, %96 ], [ 2, %99 ], [ 2, %95 ], [ 5, %40 ], [ 2, %93 ], [ 2, %92 ]
  %104 = phi ptr [ %29, %100 ], [ %71, %88 ], [ %29, %42 ], [ %29, %44 ], [ %29, %41 ], [ %29, %27 ], [ %29, %96 ], [ %29, %99 ], [ %29, %95 ], [ %29, %40 ], [ %29, %93 ], [ %29, %92 ]
  %105 = phi ptr [ %30, %100 ], [ %72, %88 ], [ %30, %42 ], [ %30, %44 ], [ %30, %41 ], [ %30, %27 ], [ %30, %96 ], [ %30, %99 ], [ %30, %95 ], [ %30, %40 ], [ %30, %93 ], [ %30, %92 ]
  %106 = phi i64 [ 0, %100 ], [ %89, %88 ], [ 1, %42 ], [ 1, %44 ], [ 0, %41 ], [ 0, %27 ], [ 1, %96 ], [ 1, %99 ], [ 0, %95 ], [ 0, %40 ], [ 0, %93 ], [ 0, %92 ], !dbg !3295
  %107 = phi ptr [ %33, %100 ], [ %72, %88 ], [ @.str.10.178, %42 ], [ @.str.10.178, %44 ], [ @.str.10.178, %41 ], [ %33, %27 ], [ @.str.12.179, %96 ], [ @.str.12.179, %99 ], [ @.str.12.179, %95 ], [ @.str.10.178, %40 ], [ @.str.12.179, %93 ], [ @.str.12.179, %92 ], !dbg !3219
  %108 = phi i64 [ %34, %100 ], [ %90, %88 ], [ 1, %42 ], [ 1, %44 ], [ 1, %41 ], [ %34, %27 ], [ 1, %96 ], [ 1, %99 ], [ 1, %95 ], [ 1, %40 ], [ 1, %93 ], [ 1, %92 ], !dbg !3219
  %109 = phi i1 [ %35, %100 ], [ true, %88 ], [ true, %42 ], [ true, %44 ], [ true, %41 ], [ true, %27 ], [ %97, %96 ], [ %97, %99 ], [ %35, %95 ], [ true, %40 ], [ %94, %93 ], [ %35, %92 ]
  %110 = phi i1 [ false, %100 ], [ %36, %88 ], [ false, %42 ], [ false, %44 ], [ true, %41 ], [ false, %27 ], [ false, %96 ], [ false, %99 ], [ true, %95 ], [ true, %40 ], [ true, %93 ], [ true, %92 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !3172, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i8 poison, metadata !3171, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i64 %108, metadata !3170, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata ptr %107, metadata !3169, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i64 %106, metadata !3167, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata ptr %105, metadata !3165, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata ptr %104, metadata !3164, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i32 %103, metadata !3161, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i64 0, metadata !3181, metadata !DIExpression()), !dbg !3308
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
  br label %122, !dbg !3309

122:                                              ; preds = %569, %102
  %123 = phi i64 [ %31, %102 ], [ %570, %569 ]
  %124 = phi i64 [ %106, %102 ], [ %571, %569 ], !dbg !3295
  %125 = phi i64 [ %32, %102 ], [ %572, %569 ], !dbg !3223
  %126 = phi i1 [ %37, %102 ], [ %573, %569 ]
  %127 = phi i1 [ %38, %102 ], [ %574, %569 ]
  %128 = phi i1 [ false, %102 ], [ %575, %569 ]
  %129 = phi i64 [ 0, %102 ], [ %578, %569 ], !dbg !3310
  %130 = phi i64 [ %39, %102 ], [ %577, %569 ]
  call void @llvm.dbg.value(metadata i64 %130, metadata !3158, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i64 %129, metadata !3181, metadata !DIExpression()), !dbg !3308
  call void @llvm.dbg.value(metadata i8 poison, metadata !3175, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i8 poison, metadata !3174, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i8 poison, metadata !3173, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i64 %125, metadata !3168, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i64 %124, metadata !3167, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i64 %123, metadata !3160, metadata !DIExpression()), !dbg !3219
  %131 = icmp eq i64 %123, -1, !dbg !3311
  br i1 %131, label %132, label %136, !dbg !3312

132:                                              ; preds = %122
  %133 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !3313
  %134 = load i8, ptr %133, align 1, !dbg !3313, !tbaa !1178
  %135 = icmp eq i8 %134, 0, !dbg !3314
  br i1 %135, label %579, label %138, !dbg !3315

136:                                              ; preds = %122
  %137 = icmp eq i64 %129, %123, !dbg !3316
  br i1 %137, label %579, label %138, !dbg !3315

138:                                              ; preds = %132, %136
  call void @llvm.dbg.value(metadata i8 0, metadata !3183, metadata !DIExpression()), !dbg !3317
  call void @llvm.dbg.value(metadata i8 0, metadata !3186, metadata !DIExpression()), !dbg !3317
  call void @llvm.dbg.value(metadata i8 0, metadata !3187, metadata !DIExpression()), !dbg !3317
  br i1 %114, label %139, label %152, !dbg !3318

139:                                              ; preds = %138
  %140 = add i64 %129, %108, !dbg !3320
  %141 = select i1 %131, i1 %115, i1 false, !dbg !3321
  br i1 %141, label %142, label %144, !dbg !3321

142:                                              ; preds = %139
  %143 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #39, !dbg !3322
  call void @llvm.dbg.value(metadata i64 %143, metadata !3160, metadata !DIExpression()), !dbg !3219
  br label %144, !dbg !3323

144:                                              ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %123, %139 ], !dbg !3323
  call void @llvm.dbg.value(metadata i64 %145, metadata !3160, metadata !DIExpression()), !dbg !3219
  %146 = icmp ugt i64 %140, %145, !dbg !3324
  br i1 %146, label %152, label %147, !dbg !3325

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !3326
  call void @llvm.dbg.value(metadata ptr %148, metadata !3327, metadata !DIExpression()), !dbg !3332
  call void @llvm.dbg.value(metadata ptr %107, metadata !3330, metadata !DIExpression()), !dbg !3332
  call void @llvm.dbg.value(metadata i64 %108, metadata !3331, metadata !DIExpression()), !dbg !3332
  %149 = call i32 @bcmp(ptr %148, ptr %107, i64 %108), !dbg !3334
  %150 = icmp eq i32 %149, 0, !dbg !3335
  %151 = and i1 %150, %110, !dbg !3336
  br i1 %151, label %630, label %152, !dbg !3336

152:                                              ; preds = %147, %144, %138
  %153 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %123, %138 ]
  %154 = phi i1 [ %150, %147 ], [ false, %144 ], [ false, %138 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !3183, metadata !DIExpression()), !dbg !3317
  call void @llvm.dbg.value(metadata i64 %153, metadata !3160, metadata !DIExpression()), !dbg !3219
  %155 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !3337
  %156 = load i8, ptr %155, align 1, !dbg !3337, !tbaa !1178
  call void @llvm.dbg.value(metadata i8 %156, metadata !3188, metadata !DIExpression()), !dbg !3317
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
  ], !dbg !3338

157:                                              ; preds = %152
  br i1 %109, label %158, label %204, !dbg !3339

158:                                              ; preds = %157
  br i1 %110, label %619, label %159, !dbg !3340

159:                                              ; preds = %158
  call void @llvm.dbg.value(metadata i8 1, metadata !3186, metadata !DIExpression()), !dbg !3317
  %160 = select i1 %111, i1 true, i1 %128, !dbg !3344
  br i1 %160, label %177, label %161, !dbg !3344

161:                                              ; preds = %159
  %162 = icmp ult i64 %124, %130, !dbg !3346
  br i1 %162, label %163, label %165, !dbg !3350

163:                                              ; preds = %161
  %164 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !3346
  store i8 39, ptr %164, align 1, !dbg !3346, !tbaa !1178
  br label %165, !dbg !3346

165:                                              ; preds = %163, %161
  %166 = add i64 %124, 1, !dbg !3350
  call void @llvm.dbg.value(metadata i64 %166, metadata !3167, metadata !DIExpression()), !dbg !3219
  %167 = icmp ult i64 %166, %130, !dbg !3351
  br i1 %167, label %168, label %170, !dbg !3354

168:                                              ; preds = %165
  %169 = getelementptr inbounds i8, ptr %0, i64 %166, !dbg !3351
  store i8 36, ptr %169, align 1, !dbg !3351, !tbaa !1178
  br label %170, !dbg !3351

170:                                              ; preds = %168, %165
  %171 = add i64 %124, 2, !dbg !3354
  call void @llvm.dbg.value(metadata i64 %171, metadata !3167, metadata !DIExpression()), !dbg !3219
  %172 = icmp ult i64 %171, %130, !dbg !3355
  br i1 %172, label %173, label %175, !dbg !3358

173:                                              ; preds = %170
  %174 = getelementptr inbounds i8, ptr %0, i64 %171, !dbg !3355
  store i8 39, ptr %174, align 1, !dbg !3355, !tbaa !1178
  br label %175, !dbg !3355

175:                                              ; preds = %173, %170
  %176 = add i64 %124, 3, !dbg !3358
  call void @llvm.dbg.value(metadata i64 %176, metadata !3167, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i8 1, metadata !3175, metadata !DIExpression()), !dbg !3219
  br label %177, !dbg !3359

177:                                              ; preds = %159, %175
  %178 = phi i64 [ %176, %175 ], [ %124, %159 ], !dbg !3219
  %179 = phi i1 [ true, %175 ], [ %128, %159 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !3175, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i64 %178, metadata !3167, metadata !DIExpression()), !dbg !3219
  %180 = icmp ult i64 %178, %130, !dbg !3360
  br i1 %180, label %181, label %183, !dbg !3363

181:                                              ; preds = %177
  %182 = getelementptr inbounds i8, ptr %0, i64 %178, !dbg !3360
  store i8 92, ptr %182, align 1, !dbg !3360, !tbaa !1178
  br label %183, !dbg !3360

183:                                              ; preds = %181, %177
  %184 = add i64 %178, 1, !dbg !3363
  call void @llvm.dbg.value(metadata i64 %184, metadata !3167, metadata !DIExpression()), !dbg !3219
  br i1 %111, label %185, label %482, !dbg !3364

185:                                              ; preds = %183
  %186 = add i64 %129, 1, !dbg !3366
  %187 = icmp ult i64 %186, %153, !dbg !3367
  br i1 %187, label %188, label %439, !dbg !3368

188:                                              ; preds = %185
  %189 = getelementptr inbounds i8, ptr %2, i64 %186, !dbg !3369
  %190 = load i8, ptr %189, align 1, !dbg !3369, !tbaa !1178
  %191 = add i8 %190, -48, !dbg !3370
  %192 = icmp ult i8 %191, 10, !dbg !3370
  br i1 %192, label %193, label %439, !dbg !3370

193:                                              ; preds = %188
  %194 = icmp ult i64 %184, %130, !dbg !3371
  br i1 %194, label %195, label %197, !dbg !3375

195:                                              ; preds = %193
  %196 = getelementptr inbounds i8, ptr %0, i64 %184, !dbg !3371
  store i8 48, ptr %196, align 1, !dbg !3371, !tbaa !1178
  br label %197, !dbg !3371

197:                                              ; preds = %195, %193
  %198 = add i64 %178, 2, !dbg !3375
  call void @llvm.dbg.value(metadata i64 %198, metadata !3167, metadata !DIExpression()), !dbg !3219
  %199 = icmp ult i64 %198, %130, !dbg !3376
  br i1 %199, label %200, label %202, !dbg !3379

200:                                              ; preds = %197
  %201 = getelementptr inbounds i8, ptr %0, i64 %198, !dbg !3376
  store i8 48, ptr %201, align 1, !dbg !3376, !tbaa !1178
  br label %202, !dbg !3376

202:                                              ; preds = %200, %197
  %203 = add i64 %178, 3, !dbg !3379
  call void @llvm.dbg.value(metadata i64 %203, metadata !3167, metadata !DIExpression()), !dbg !3219
  br label %439, !dbg !3380

204:                                              ; preds = %157
  br i1 %24, label %450, label %569, !dbg !3381

205:                                              ; preds = %152
  switch i32 %103, label %439 [
    i32 2, label %206
    i32 5, label %207
  ], !dbg !3382

206:                                              ; preds = %205
  br i1 %110, label %621, label %439, !dbg !3383

207:                                              ; preds = %205
  br i1 %22, label %439, label %208, !dbg !3385

208:                                              ; preds = %207
  %209 = add i64 %129, 2, !dbg !3387
  %210 = icmp ult i64 %209, %153, !dbg !3388
  br i1 %210, label %211, label %439, !dbg !3389

211:                                              ; preds = %208
  %212 = add i64 %129, 1, !dbg !3390
  %213 = getelementptr inbounds i8, ptr %2, i64 %212, !dbg !3391
  %214 = load i8, ptr %213, align 1, !dbg !3391, !tbaa !1178
  %215 = icmp eq i8 %214, 63, !dbg !3392
  br i1 %215, label %216, label %439, !dbg !3393

216:                                              ; preds = %211
  %217 = getelementptr inbounds i8, ptr %2, i64 %209, !dbg !3394
  %218 = load i8, ptr %217, align 1, !dbg !3394, !tbaa !1178
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
  ], !dbg !3395

219:                                              ; preds = %216, %216, %216, %216, %216, %216, %216, %216, %216
  br i1 %110, label %621, label %220, !dbg !3396

220:                                              ; preds = %219
  call void @llvm.dbg.value(metadata i8 %218, metadata !3188, metadata !DIExpression()), !dbg !3317
  call void @llvm.dbg.value(metadata i64 %209, metadata !3181, metadata !DIExpression()), !dbg !3308
  %221 = icmp ult i64 %124, %130, !dbg !3398
  br i1 %221, label %222, label %224, !dbg !3401

222:                                              ; preds = %220
  %223 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !3398
  store i8 63, ptr %223, align 1, !dbg !3398, !tbaa !1178
  br label %224, !dbg !3398

224:                                              ; preds = %222, %220
  %225 = add i64 %124, 1, !dbg !3401
  call void @llvm.dbg.value(metadata i64 %225, metadata !3167, metadata !DIExpression()), !dbg !3219
  %226 = icmp ult i64 %225, %130, !dbg !3402
  br i1 %226, label %227, label %229, !dbg !3405

227:                                              ; preds = %224
  %228 = getelementptr inbounds i8, ptr %0, i64 %225, !dbg !3402
  store i8 34, ptr %228, align 1, !dbg !3402, !tbaa !1178
  br label %229, !dbg !3402

229:                                              ; preds = %227, %224
  %230 = add i64 %124, 2, !dbg !3405
  call void @llvm.dbg.value(metadata i64 %230, metadata !3167, metadata !DIExpression()), !dbg !3219
  %231 = icmp ult i64 %230, %130, !dbg !3406
  br i1 %231, label %232, label %234, !dbg !3409

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, ptr %0, i64 %230, !dbg !3406
  store i8 34, ptr %233, align 1, !dbg !3406, !tbaa !1178
  br label %234, !dbg !3406

234:                                              ; preds = %232, %229
  %235 = add i64 %124, 3, !dbg !3409
  call void @llvm.dbg.value(metadata i64 %235, metadata !3167, metadata !DIExpression()), !dbg !3219
  %236 = icmp ult i64 %235, %130, !dbg !3410
  br i1 %236, label %237, label %239, !dbg !3413

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, ptr %0, i64 %235, !dbg !3410
  store i8 63, ptr %238, align 1, !dbg !3410, !tbaa !1178
  br label %239, !dbg !3410

239:                                              ; preds = %237, %234
  %240 = add i64 %124, 4, !dbg !3413
  call void @llvm.dbg.value(metadata i64 %240, metadata !3167, metadata !DIExpression()), !dbg !3219
  br label %439, !dbg !3414

241:                                              ; preds = %152
  br label %251, !dbg !3415

242:                                              ; preds = %152
  br label %251, !dbg !3416

243:                                              ; preds = %152
  br label %249, !dbg !3417

244:                                              ; preds = %152
  br label %249, !dbg !3418

245:                                              ; preds = %152
  br label %251, !dbg !3419

246:                                              ; preds = %152
  br i1 %116, label %247, label %248, !dbg !3420

247:                                              ; preds = %246
  br i1 %110, label %621, label %529, !dbg !3421

248:                                              ; preds = %246
  br i1 %118, label %529, label %251, !dbg !3424

249:                                              ; preds = %152, %244, %243
  %250 = phi i8 [ 116, %244 ], [ 114, %243 ], [ 110, %152 ], !dbg !3426
  call void @llvm.dbg.label(metadata !3213), !dbg !3427
  br i1 %119, label %621, label %251, !dbg !3428

251:                                              ; preds = %248, %249, %152, %245, %242, %241
  %252 = phi i8 [ %250, %249 ], [ 118, %245 ], [ 102, %242 ], [ 98, %241 ], [ 97, %152 ], [ 92, %248 ], !dbg !3426
  call void @llvm.dbg.label(metadata !3215), !dbg !3430
  br i1 %109, label %493, label %450, !dbg !3431

253:                                              ; preds = %152, %152
  switch i64 %153, label %439 [
    i64 -1, label %254
    i64 1, label %257
  ], !dbg !3432

254:                                              ; preds = %253
  %255 = load i8, ptr %20, align 1, !dbg !3433, !tbaa !1178
  %256 = icmp eq i8 %255, 0, !dbg !3435
  br i1 %256, label %257, label %439, !dbg !3436

257:                                              ; preds = %253, %254, %152, %152
  %258 = icmp eq i64 %129, 0, !dbg !3437
  br i1 %258, label %259, label %439, !dbg !3439

259:                                              ; preds = %257, %152
  call void @llvm.dbg.value(metadata i8 1, metadata !3187, metadata !DIExpression()), !dbg !3317
  br label %260, !dbg !3440

260:                                              ; preds = %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %259
  %261 = phi i1 [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ true, %259 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !3187, metadata !DIExpression()), !dbg !3317
  br i1 %116, label %262, label %439, !dbg !3441

262:                                              ; preds = %260
  br i1 %110, label %621, label %439, !dbg !3443

263:                                              ; preds = %152
  call void @llvm.dbg.value(metadata i8 1, metadata !3173, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i8 1, metadata !3187, metadata !DIExpression()), !dbg !3317
  br i1 %116, label %264, label %439, !dbg !3444

264:                                              ; preds = %263
  br i1 %110, label %621, label %265, !dbg !3445

265:                                              ; preds = %264
  %266 = icmp eq i64 %130, 0, !dbg !3448
  %267 = icmp ne i64 %125, 0
  %268 = select i1 %266, i1 true, i1 %267, !dbg !3450
  %269 = select i1 %268, i64 %125, i64 %130, !dbg !3450
  %270 = select i1 %268, i64 %130, i64 0, !dbg !3450
  call void @llvm.dbg.value(metadata i64 %270, metadata !3158, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i64 %269, metadata !3168, metadata !DIExpression()), !dbg !3219
  %271 = icmp ult i64 %124, %270, !dbg !3451
  br i1 %271, label %272, label %274, !dbg !3454

272:                                              ; preds = %265
  %273 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !3451
  store i8 39, ptr %273, align 1, !dbg !3451, !tbaa !1178
  br label %274, !dbg !3451

274:                                              ; preds = %272, %265
  %275 = add i64 %124, 1, !dbg !3454
  call void @llvm.dbg.value(metadata i64 %275, metadata !3167, metadata !DIExpression()), !dbg !3219
  %276 = icmp ult i64 %275, %270, !dbg !3455
  br i1 %276, label %277, label %279, !dbg !3458

277:                                              ; preds = %274
  %278 = getelementptr inbounds i8, ptr %0, i64 %275, !dbg !3455
  store i8 92, ptr %278, align 1, !dbg !3455, !tbaa !1178
  br label %279, !dbg !3455

279:                                              ; preds = %277, %274
  %280 = add i64 %124, 2, !dbg !3458
  call void @llvm.dbg.value(metadata i64 %280, metadata !3167, metadata !DIExpression()), !dbg !3219
  %281 = icmp ult i64 %280, %270, !dbg !3459
  br i1 %281, label %282, label %284, !dbg !3462

282:                                              ; preds = %279
  %283 = getelementptr inbounds i8, ptr %0, i64 %280, !dbg !3459
  store i8 39, ptr %283, align 1, !dbg !3459, !tbaa !1178
  br label %284, !dbg !3459

284:                                              ; preds = %282, %279
  %285 = add i64 %124, 3, !dbg !3462
  call void @llvm.dbg.value(metadata i64 %285, metadata !3167, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i8 0, metadata !3175, metadata !DIExpression()), !dbg !3219
  br label %439, !dbg !3463

286:                                              ; preds = %152
  br i1 %17, label %287, label %295, !dbg !3464

287:                                              ; preds = %286
  call void @llvm.dbg.value(metadata i64 1, metadata !3189, metadata !DIExpression()), !dbg !3465
  %288 = tail call ptr @__ctype_b_loc() #41, !dbg !3466
  %289 = load ptr, ptr %288, align 8, !dbg !3466, !tbaa !1104
  %290 = zext i8 %156 to i64
  %291 = getelementptr inbounds i16, ptr %289, i64 %290, !dbg !3466
  %292 = load i16, ptr %291, align 2, !dbg !3466, !tbaa !1210
  %293 = and i16 %292, 16384, !dbg !3466
  %294 = icmp ne i16 %293, 0, !dbg !3468
  call void @llvm.dbg.value(metadata i1 %294, metadata !3192, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3465
  br label %337, !dbg !3469

295:                                              ; preds = %286
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #38, !dbg !3470
  call void @llvm.dbg.declare(metadata ptr %14, metadata !3193, metadata !DIExpression()), !dbg !3471
  call void @llvm.dbg.value(metadata ptr %14, metadata !3245, metadata !DIExpression()), !dbg !3472
  call void @llvm.dbg.value(metadata ptr %14, metadata !3253, metadata !DIExpression()), !dbg !3474
  call void @llvm.dbg.value(metadata i32 0, metadata !3256, metadata !DIExpression()), !dbg !3474
  call void @llvm.dbg.value(metadata i64 8, metadata !3257, metadata !DIExpression()), !dbg !3474
  store i64 0, ptr %14, align 8, !dbg !3476
  call void @llvm.dbg.value(metadata i64 0, metadata !3189, metadata !DIExpression()), !dbg !3465
  call void @llvm.dbg.value(metadata i8 1, metadata !3192, metadata !DIExpression()), !dbg !3465
  %296 = icmp eq i64 %153, -1, !dbg !3477
  br i1 %296, label %297, label %299, !dbg !3479

297:                                              ; preds = %295
  %298 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #39, !dbg !3480
  call void @llvm.dbg.value(metadata i64 %298, metadata !3160, metadata !DIExpression()), !dbg !3219
  br label %299, !dbg !3481

299:                                              ; preds = %295, %297
  %300 = phi i64 [ %298, %297 ], [ %153, %295 ], !dbg !3317
  call void @llvm.dbg.value(metadata i64 %300, metadata !3160, metadata !DIExpression()), !dbg !3219
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #38, !dbg !3482
  %301 = sub i64 %300, %129, !dbg !3483
  call void @llvm.dbg.value(metadata ptr %15, metadata !3196, metadata !DIExpression(DW_OP_deref)), !dbg !3484
  %302 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %155, i64 noundef %301, ptr noundef nonnull %14) #38, !dbg !3485
  call void @llvm.dbg.value(metadata i64 %302, metadata !3200, metadata !DIExpression()), !dbg !3484
  switch i64 %302, label %316 [
    i64 0, label %332
    i64 -1, label %305
    i64 -2, label %303
  ], !dbg !3486

303:                                              ; preds = %299
  call void @llvm.dbg.value(metadata i64 0, metadata !3189, metadata !DIExpression()), !dbg !3465
  %304 = icmp ugt i64 %300, %129, !dbg !3487
  br i1 %304, label %306, label %332, !dbg !3489

305:                                              ; preds = %299
  call void @llvm.dbg.value(metadata i8 0, metadata !3192, metadata !DIExpression()), !dbg !3465
  br label %332, !dbg !3490

306:                                              ; preds = %303, %312
  %307 = phi i64 [ %314, %312 ], [ %129, %303 ]
  %308 = phi i64 [ %313, %312 ], [ 0, %303 ]
  call void @llvm.dbg.value(metadata i64 %308, metadata !3189, metadata !DIExpression()), !dbg !3465
  %309 = getelementptr inbounds i8, ptr %2, i64 %307, !dbg !3492
  %310 = load i8, ptr %309, align 1, !dbg !3492, !tbaa !1178
  %311 = icmp eq i8 %310, 0, !dbg !3489
  br i1 %311, label %332, label %312, !dbg !3493

312:                                              ; preds = %306
  %313 = add i64 %308, 1, !dbg !3494
  call void @llvm.dbg.value(metadata i64 %313, metadata !3189, metadata !DIExpression()), !dbg !3465
  %314 = add i64 %313, %129, !dbg !3495
  %315 = icmp eq i64 %313, %301, !dbg !3487
  br i1 %315, label %332, label %306, !dbg !3489, !llvm.loop !3496

316:                                              ; preds = %299
  %317 = icmp ugt i64 %302, 1
  %318 = and i1 %116, %317, !dbg !3497
  %319 = and i1 %318, %110, !dbg !3497
  call void @llvm.dbg.value(metadata i64 1, metadata !3201, metadata !DIExpression()), !dbg !3498
  br i1 %319, label %320, label %328, !dbg !3497

320:                                              ; preds = %316, %325
  %321 = phi i64 [ %326, %325 ], [ 1, %316 ]
  call void @llvm.dbg.value(metadata i64 %321, metadata !3201, metadata !DIExpression()), !dbg !3498
  %322 = add i64 %321, %129, !dbg !3499
  %323 = getelementptr inbounds i8, ptr %2, i64 %322, !dbg !3501
  %324 = load i8, ptr %323, align 1, !dbg !3501, !tbaa !1178
  switch i8 %324, label %325 [
    i8 91, label %335
    i8 92, label %335
    i8 94, label %335
    i8 96, label %335
    i8 124, label %335
  ], !dbg !3502

325:                                              ; preds = %320
  %326 = add nuw i64 %321, 1, !dbg !3503
  call void @llvm.dbg.value(metadata i64 %326, metadata !3201, metadata !DIExpression()), !dbg !3498
  %327 = icmp eq i64 %326, %302, !dbg !3504
  br i1 %327, label %328, label %320, !dbg !3505, !llvm.loop !3506

328:                                              ; preds = %325, %316
  %329 = load i32, ptr %15, align 4, !dbg !3508, !tbaa !1169
  call void @llvm.dbg.value(metadata i32 %329, metadata !3196, metadata !DIExpression()), !dbg !3484
  call void @llvm.dbg.value(metadata i32 %329, metadata !3510, metadata !DIExpression()), !dbg !3518
  %330 = call i32 @iswprint(i32 noundef %329) #38, !dbg !3520
  %331 = icmp ne i32 %330, 0, !dbg !3521
  call void @llvm.dbg.value(metadata i8 poison, metadata !3192, metadata !DIExpression()), !dbg !3465
  call void @llvm.dbg.value(metadata i64 %302, metadata !3189, metadata !DIExpression()), !dbg !3465
  br label %332, !dbg !3522

332:                                              ; preds = %306, %312, %303, %305, %328, %299
  %333 = phi i64 [ %302, %299 ], [ %302, %328 ], [ 0, %305 ], [ 0, %303 ], [ %308, %306 ], [ %301, %312 ]
  %334 = phi i1 [ true, %299 ], [ %331, %328 ], [ false, %305 ], [ false, %303 ], [ false, %312 ], [ false, %306 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !3192, metadata !DIExpression()), !dbg !3465
  call void @llvm.dbg.value(metadata i64 %333, metadata !3189, metadata !DIExpression()), !dbg !3465
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #38, !dbg !3523
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #38, !dbg !3524
  br label %337

335:                                              ; preds = %320, %320, %320, %320, %320
  call void @llvm.dbg.value(metadata i8 poison, metadata !3192, metadata !DIExpression()), !dbg !3465
  call void @llvm.dbg.value(metadata i64 0, metadata !3189, metadata !DIExpression()), !dbg !3465
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #38, !dbg !3523
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #38, !dbg !3524
  call void @llvm.dbg.label(metadata !3218), !dbg !3525
  %336 = select i1 %109, i32 4, i32 2, !dbg !3526
  br label %626, !dbg !3526

337:                                              ; preds = %332, %287
  %338 = phi i64 [ %153, %287 ], [ %300, %332 ], !dbg !3317
  %339 = phi i64 [ 1, %287 ], [ %333, %332 ], !dbg !3528
  %340 = phi i1 [ %294, %287 ], [ %334, %332 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !3192, metadata !DIExpression()), !dbg !3465
  call void @llvm.dbg.value(metadata i64 %339, metadata !3189, metadata !DIExpression()), !dbg !3465
  call void @llvm.dbg.value(metadata i64 %338, metadata !3160, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i1 %340, metadata !3187, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3317
  %341 = icmp ult i64 %339, 2, !dbg !3529
  %342 = select i1 %120, i1 true, i1 %340
  %343 = select i1 %341, i1 %342, i1 false, !dbg !3530
  br i1 %343, label %439, label %344, !dbg !3530

344:                                              ; preds = %337
  %345 = add i64 %339, %129, !dbg !3531
  call void @llvm.dbg.value(metadata i64 %345, metadata !3209, metadata !DIExpression()), !dbg !3532
  br label %346, !dbg !3533

346:                                              ; preds = %433, %344
  %347 = phi i64 [ %124, %344 ], [ %434, %433 ], !dbg !3219
  %348 = phi i1 [ %128, %344 ], [ %429, %433 ]
  %349 = phi i64 [ %129, %344 ], [ %410, %433 ], !dbg !3308
  %350 = phi i1 [ %154, %344 ], [ %407, %433 ]
  %351 = phi i8 [ 0, %344 ], [ %408, %433 ], !dbg !3534
  %352 = phi i8 [ %156, %344 ], [ %436, %433 ], !dbg !3317
  call void @llvm.dbg.value(metadata i8 %352, metadata !3188, metadata !DIExpression()), !dbg !3317
  call void @llvm.dbg.value(metadata i8 %351, metadata !3186, metadata !DIExpression()), !dbg !3317
  call void @llvm.dbg.value(metadata i8 poison, metadata !3183, metadata !DIExpression()), !dbg !3317
  call void @llvm.dbg.value(metadata i64 %349, metadata !3181, metadata !DIExpression()), !dbg !3308
  call void @llvm.dbg.value(metadata i8 poison, metadata !3175, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i64 %347, metadata !3167, metadata !DIExpression()), !dbg !3219
  br i1 %342, label %397, label %353, !dbg !3535

353:                                              ; preds = %346
  br i1 %110, label %621, label %354, !dbg !3540

354:                                              ; preds = %353
  call void @llvm.dbg.value(metadata i8 1, metadata !3186, metadata !DIExpression()), !dbg !3317
  %355 = select i1 %111, i1 true, i1 %348, !dbg !3543
  br i1 %355, label %372, label %356, !dbg !3543

356:                                              ; preds = %354
  %357 = icmp ult i64 %347, %130, !dbg !3545
  br i1 %357, label %358, label %360, !dbg !3549

358:                                              ; preds = %356
  %359 = getelementptr inbounds i8, ptr %0, i64 %347, !dbg !3545
  store i8 39, ptr %359, align 1, !dbg !3545, !tbaa !1178
  br label %360, !dbg !3545

360:                                              ; preds = %358, %356
  %361 = add i64 %347, 1, !dbg !3549
  call void @llvm.dbg.value(metadata i64 %361, metadata !3167, metadata !DIExpression()), !dbg !3219
  %362 = icmp ult i64 %361, %130, !dbg !3550
  br i1 %362, label %363, label %365, !dbg !3553

363:                                              ; preds = %360
  %364 = getelementptr inbounds i8, ptr %0, i64 %361, !dbg !3550
  store i8 36, ptr %364, align 1, !dbg !3550, !tbaa !1178
  br label %365, !dbg !3550

365:                                              ; preds = %363, %360
  %366 = add i64 %347, 2, !dbg !3553
  call void @llvm.dbg.value(metadata i64 %366, metadata !3167, metadata !DIExpression()), !dbg !3219
  %367 = icmp ult i64 %366, %130, !dbg !3554
  br i1 %367, label %368, label %370, !dbg !3557

368:                                              ; preds = %365
  %369 = getelementptr inbounds i8, ptr %0, i64 %366, !dbg !3554
  store i8 39, ptr %369, align 1, !dbg !3554, !tbaa !1178
  br label %370, !dbg !3554

370:                                              ; preds = %368, %365
  %371 = add i64 %347, 3, !dbg !3557
  call void @llvm.dbg.value(metadata i64 %371, metadata !3167, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i8 1, metadata !3175, metadata !DIExpression()), !dbg !3219
  br label %372, !dbg !3558

372:                                              ; preds = %354, %370
  %373 = phi i64 [ %371, %370 ], [ %347, %354 ], !dbg !3219
  %374 = phi i1 [ true, %370 ], [ %348, %354 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !3175, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i64 %373, metadata !3167, metadata !DIExpression()), !dbg !3219
  %375 = icmp ult i64 %373, %130, !dbg !3559
  br i1 %375, label %376, label %378, !dbg !3562

376:                                              ; preds = %372
  %377 = getelementptr inbounds i8, ptr %0, i64 %373, !dbg !3559
  store i8 92, ptr %377, align 1, !dbg !3559, !tbaa !1178
  br label %378, !dbg !3559

378:                                              ; preds = %376, %372
  %379 = add i64 %373, 1, !dbg !3562
  call void @llvm.dbg.value(metadata i64 %379, metadata !3167, metadata !DIExpression()), !dbg !3219
  %380 = icmp ult i64 %379, %130, !dbg !3563
  br i1 %380, label %381, label %385, !dbg !3566

381:                                              ; preds = %378
  %382 = lshr i8 %352, 6
  %383 = or i8 %382, 48, !dbg !3563
  %384 = getelementptr inbounds i8, ptr %0, i64 %379, !dbg !3563
  store i8 %383, ptr %384, align 1, !dbg !3563, !tbaa !1178
  br label %385, !dbg !3563

385:                                              ; preds = %381, %378
  %386 = add i64 %373, 2, !dbg !3566
  call void @llvm.dbg.value(metadata i64 %386, metadata !3167, metadata !DIExpression()), !dbg !3219
  %387 = icmp ult i64 %386, %130, !dbg !3567
  br i1 %387, label %388, label %393, !dbg !3570

388:                                              ; preds = %385
  %389 = lshr i8 %352, 3
  %390 = and i8 %389, 7, !dbg !3567
  %391 = or i8 %390, 48, !dbg !3567
  %392 = getelementptr inbounds i8, ptr %0, i64 %386, !dbg !3567
  store i8 %391, ptr %392, align 1, !dbg !3567, !tbaa !1178
  br label %393, !dbg !3567

393:                                              ; preds = %388, %385
  %394 = add i64 %373, 3, !dbg !3570
  call void @llvm.dbg.value(metadata i64 %394, metadata !3167, metadata !DIExpression()), !dbg !3219
  %395 = and i8 %352, 7, !dbg !3571
  %396 = or i8 %395, 48, !dbg !3572
  call void @llvm.dbg.value(metadata i8 %396, metadata !3188, metadata !DIExpression()), !dbg !3317
  br label %404, !dbg !3573

397:                                              ; preds = %346
  br i1 %350, label %398, label %404, !dbg !3574

398:                                              ; preds = %397
  %399 = icmp ult i64 %347, %130, !dbg !3575
  br i1 %399, label %400, label %402, !dbg !3580

400:                                              ; preds = %398
  %401 = getelementptr inbounds i8, ptr %0, i64 %347, !dbg !3575
  store i8 92, ptr %401, align 1, !dbg !3575, !tbaa !1178
  br label %402, !dbg !3575

402:                                              ; preds = %400, %398
  %403 = add i64 %347, 1, !dbg !3580
  call void @llvm.dbg.value(metadata i64 %403, metadata !3167, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i8 0, metadata !3183, metadata !DIExpression()), !dbg !3317
  br label %404, !dbg !3581

404:                                              ; preds = %397, %402, %393
  %405 = phi i64 [ %403, %402 ], [ %347, %397 ], [ %394, %393 ], !dbg !3219
  %406 = phi i1 [ %348, %402 ], [ %348, %397 ], [ %374, %393 ]
  %407 = phi i1 [ false, %402 ], [ false, %397 ], [ %350, %393 ]
  %408 = phi i8 [ %351, %402 ], [ %351, %397 ], [ 1, %393 ], !dbg !3317
  %409 = phi i8 [ %352, %402 ], [ %352, %397 ], [ %396, %393 ], !dbg !3317
  call void @llvm.dbg.value(metadata i8 %409, metadata !3188, metadata !DIExpression()), !dbg !3317
  call void @llvm.dbg.value(metadata i8 %408, metadata !3186, metadata !DIExpression()), !dbg !3317
  call void @llvm.dbg.value(metadata i8 poison, metadata !3183, metadata !DIExpression()), !dbg !3317
  call void @llvm.dbg.value(metadata i8 poison, metadata !3175, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i64 %405, metadata !3167, metadata !DIExpression()), !dbg !3219
  %410 = add i64 %349, 1, !dbg !3582
  %411 = icmp ugt i64 %345, %410, !dbg !3584
  %412 = and i8 %408, 1
  br i1 %411, label %413, label %437, !dbg !3585

413:                                              ; preds = %404
  %414 = icmp eq i8 %412, 0, !dbg !3586
  %415 = select i1 %406, i1 %414, i1 false, !dbg !3586
  br i1 %415, label %416, label %427, !dbg !3586

416:                                              ; preds = %413
  %417 = icmp ult i64 %405, %130, !dbg !3589
  br i1 %417, label %418, label %420, !dbg !3593

418:                                              ; preds = %416
  %419 = getelementptr inbounds i8, ptr %0, i64 %405, !dbg !3589
  store i8 39, ptr %419, align 1, !dbg !3589, !tbaa !1178
  br label %420, !dbg !3589

420:                                              ; preds = %418, %416
  %421 = add i64 %405, 1, !dbg !3593
  call void @llvm.dbg.value(metadata i64 %421, metadata !3167, metadata !DIExpression()), !dbg !3219
  %422 = icmp ult i64 %421, %130, !dbg !3594
  br i1 %422, label %423, label %425, !dbg !3597

423:                                              ; preds = %420
  %424 = getelementptr inbounds i8, ptr %0, i64 %421, !dbg !3594
  store i8 39, ptr %424, align 1, !dbg !3594, !tbaa !1178
  br label %425, !dbg !3594

425:                                              ; preds = %423, %420
  %426 = add i64 %405, 2, !dbg !3597
  call void @llvm.dbg.value(metadata i64 %426, metadata !3167, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i8 0, metadata !3175, metadata !DIExpression()), !dbg !3219
  br label %427, !dbg !3598

427:                                              ; preds = %413, %425
  %428 = phi i64 [ %426, %425 ], [ %405, %413 ], !dbg !3599
  %429 = phi i1 [ false, %425 ], [ %406, %413 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !3175, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i64 %428, metadata !3167, metadata !DIExpression()), !dbg !3219
  %430 = icmp ult i64 %428, %130, !dbg !3600
  br i1 %430, label %431, label %433, !dbg !3603

431:                                              ; preds = %427
  %432 = getelementptr inbounds i8, ptr %0, i64 %428, !dbg !3600
  store i8 %409, ptr %432, align 1, !dbg !3600, !tbaa !1178
  br label %433, !dbg !3600

433:                                              ; preds = %431, %427
  %434 = add i64 %428, 1, !dbg !3603
  call void @llvm.dbg.value(metadata i64 %434, metadata !3167, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i64 %410, metadata !3181, metadata !DIExpression()), !dbg !3308
  %435 = getelementptr inbounds i8, ptr %2, i64 %410, !dbg !3604
  %436 = load i8, ptr %435, align 1, !dbg !3604, !tbaa !1178
  call void @llvm.dbg.value(metadata i8 %436, metadata !3188, metadata !DIExpression()), !dbg !3317
  br label %346, !dbg !3605, !llvm.loop !3606

437:                                              ; preds = %404
  call void @llvm.dbg.value(metadata i8 %409, metadata !3188, metadata !DIExpression()), !dbg !3317
  call void @llvm.dbg.value(metadata i1 %340, metadata !3187, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3317
  call void @llvm.dbg.value(metadata i8 %408, metadata !3186, metadata !DIExpression()), !dbg !3317
  call void @llvm.dbg.value(metadata i8 poison, metadata !3183, metadata !DIExpression()), !dbg !3317
  call void @llvm.dbg.value(metadata i64 %349, metadata !3181, metadata !DIExpression()), !dbg !3308
  call void @llvm.dbg.value(metadata i8 poison, metadata !3175, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i64 %405, metadata !3167, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i64 %338, metadata !3160, metadata !DIExpression()), !dbg !3219
  %438 = icmp ne i8 %412, 0
  br label %529

439:                                              ; preds = %337, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %253, %185, %188, %202, %263, %284, %260, %262, %257, %254, %205, %206, %239, %216, %211, %208, %207
  %440 = phi i64 [ %153, %284 ], [ %153, %263 ], [ %153, %262 ], [ %153, %260 ], [ %153, %257 ], [ -1, %254 ], [ %153, %205 ], [ %153, %216 ], [ %153, %239 ], [ %153, %211 ], [ %153, %208 ], [ %153, %207 ], [ %153, %206 ], [ %153, %202 ], [ %153, %188 ], [ %153, %185 ], [ %153, %253 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %338, %337 ], !dbg !3609
  %441 = phi i64 [ %285, %284 ], [ %124, %263 ], [ %124, %262 ], [ %124, %260 ], [ %124, %257 ], [ %124, %254 ], [ %124, %205 ], [ %124, %216 ], [ %240, %239 ], [ %124, %211 ], [ %124, %208 ], [ %124, %207 ], [ %124, %206 ], [ %203, %202 ], [ %184, %188 ], [ %184, %185 ], [ %124, %253 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %337 ], !dbg !3219
  %442 = phi i64 [ %269, %284 ], [ %125, %263 ], [ %125, %262 ], [ %125, %260 ], [ %125, %257 ], [ %125, %254 ], [ %125, %205 ], [ %125, %216 ], [ %125, %239 ], [ %125, %211 ], [ %125, %208 ], [ %125, %207 ], [ %125, %206 ], [ %125, %202 ], [ %125, %188 ], [ %125, %185 ], [ %125, %253 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %337 ], !dbg !3223
  %443 = phi i1 [ true, %284 ], [ true, %263 ], [ %126, %262 ], [ %126, %260 ], [ %126, %257 ], [ %126, %254 ], [ %126, %205 ], [ %126, %216 ], [ %126, %239 ], [ %126, %211 ], [ %126, %208 ], [ %126, %207 ], [ %126, %206 ], [ %126, %202 ], [ %126, %188 ], [ %126, %185 ], [ %126, %253 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %337 ]
  %444 = phi i1 [ false, %284 ], [ %128, %263 ], [ %128, %262 ], [ %128, %260 ], [ %128, %257 ], [ %128, %254 ], [ %128, %205 ], [ %128, %216 ], [ %128, %239 ], [ %128, %211 ], [ %128, %208 ], [ %128, %207 ], [ %128, %206 ], [ %179, %202 ], [ %179, %188 ], [ %179, %185 ], [ %128, %253 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %337 ]
  %445 = phi i64 [ %129, %284 ], [ %129, %263 ], [ %129, %262 ], [ %129, %260 ], [ %129, %257 ], [ %129, %254 ], [ %129, %205 ], [ %129, %216 ], [ %209, %239 ], [ %129, %211 ], [ %129, %208 ], [ %129, %207 ], [ %129, %206 ], [ %129, %202 ], [ %129, %188 ], [ %129, %185 ], [ %129, %253 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %337 ], !dbg !3308
  %446 = phi i1 [ false, %284 ], [ false, %263 ], [ false, %262 ], [ false, %260 ], [ false, %257 ], [ false, %254 ], [ false, %205 ], [ false, %216 ], [ false, %239 ], [ false, %211 ], [ false, %208 ], [ false, %207 ], [ false, %206 ], [ true, %202 ], [ true, %188 ], [ true, %185 ], [ false, %253 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %337 ]
  %447 = phi i1 [ true, %284 ], [ true, %263 ], [ %261, %262 ], [ %261, %260 ], [ false, %257 ], [ false, %254 ], [ false, %205 ], [ false, %216 ], [ false, %239 ], [ false, %211 ], [ false, %208 ], [ false, %207 ], [ false, %206 ], [ false, %202 ], [ false, %188 ], [ false, %185 ], [ false, %253 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ %340, %337 ]
  %448 = phi i8 [ 39, %284 ], [ 39, %263 ], [ %156, %262 ], [ %156, %260 ], [ %156, %257 ], [ %156, %254 ], [ 63, %205 ], [ 63, %216 ], [ %218, %239 ], [ 63, %211 ], [ 63, %208 ], [ 63, %207 ], [ 63, %206 ], [ 48, %202 ], [ 48, %188 ], [ 48, %185 ], [ %156, %253 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %337 ], !dbg !3317
  %449 = phi i64 [ %270, %284 ], [ %130, %263 ], [ %130, %262 ], [ %130, %260 ], [ %130, %257 ], [ %130, %254 ], [ %130, %205 ], [ %130, %216 ], [ %130, %239 ], [ %130, %211 ], [ %130, %208 ], [ %130, %207 ], [ %130, %206 ], [ %130, %202 ], [ %130, %188 ], [ %130, %185 ], [ %130, %253 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %337 ]
  call void @llvm.dbg.value(metadata i64 %449, metadata !3158, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i8 %448, metadata !3188, metadata !DIExpression()), !dbg !3317
  call void @llvm.dbg.value(metadata i8 poison, metadata !3187, metadata !DIExpression()), !dbg !3317
  call void @llvm.dbg.value(metadata i8 poison, metadata !3186, metadata !DIExpression()), !dbg !3317
  call void @llvm.dbg.value(metadata i8 poison, metadata !3183, metadata !DIExpression()), !dbg !3317
  call void @llvm.dbg.value(metadata i64 %445, metadata !3181, metadata !DIExpression()), !dbg !3308
  call void @llvm.dbg.value(metadata i8 poison, metadata !3175, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i8 poison, metadata !3173, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i64 %442, metadata !3168, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i64 %441, metadata !3167, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i64 %440, metadata !3160, metadata !DIExpression()), !dbg !3219
  br i1 %112, label %461, label %450, !dbg !3610

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
  br i1 %121, label %462, label %482, !dbg !3612

461:                                              ; preds = %439
  br i1 %26, label %482, label %462, !dbg !3613

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
  %473 = lshr i8 %464, 5, !dbg !3614
  %474 = zext i8 %473 to i64, !dbg !3614
  %475 = getelementptr inbounds i32, ptr %6, i64 %474, !dbg !3615
  %476 = load i32, ptr %475, align 4, !dbg !3615, !tbaa !1169
  %477 = and i8 %464, 31, !dbg !3616
  %478 = zext i8 %477 to i32, !dbg !3616
  %479 = shl nuw i32 1, %478, !dbg !3617
  %480 = and i32 %476, %479, !dbg !3617
  %481 = icmp eq i32 %480, 0, !dbg !3617
  br i1 %481, label %482, label %493, !dbg !3618

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
  br i1 %154, label %493, label %529, !dbg !3619

493:                                              ; preds = %251, %482, %462
  %494 = phi i64 [ %472, %462 ], [ %492, %482 ], [ %153, %251 ], !dbg !3609
  %495 = phi i64 [ %471, %462 ], [ %491, %482 ], [ %124, %251 ], !dbg !3219
  %496 = phi i64 [ %470, %462 ], [ %490, %482 ], [ %125, %251 ], !dbg !3223
  %497 = phi i1 [ %469, %462 ], [ %489, %482 ], [ %126, %251 ]
  %498 = phi i1 [ %468, %462 ], [ %488, %482 ], [ %128, %251 ]
  %499 = phi i64 [ %467, %462 ], [ %487, %482 ], [ %129, %251 ], !dbg !3620
  %500 = phi i1 [ %465, %462 ], [ %485, %482 ], [ false, %251 ]
  %501 = phi i8 [ %464, %462 ], [ %484, %482 ], [ %252, %251 ], !dbg !3317
  %502 = phi i64 [ %463, %462 ], [ %483, %482 ], [ %130, %251 ]
  call void @llvm.dbg.value(metadata i64 %502, metadata !3158, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i8 %501, metadata !3188, metadata !DIExpression()), !dbg !3317
  call void @llvm.dbg.value(metadata i8 poison, metadata !3187, metadata !DIExpression()), !dbg !3317
  call void @llvm.dbg.value(metadata i64 %499, metadata !3181, metadata !DIExpression()), !dbg !3308
  call void @llvm.dbg.value(metadata i8 poison, metadata !3175, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i8 poison, metadata !3173, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i64 %496, metadata !3168, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i64 %495, metadata !3167, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i64 %494, metadata !3160, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.label(metadata !3216), !dbg !3621
  br i1 %110, label %621, label %503, !dbg !3622

503:                                              ; preds = %493
  call void @llvm.dbg.value(metadata i8 1, metadata !3186, metadata !DIExpression()), !dbg !3317
  %504 = select i1 %111, i1 true, i1 %498, !dbg !3624
  br i1 %504, label %521, label %505, !dbg !3624

505:                                              ; preds = %503
  %506 = icmp ult i64 %495, %502, !dbg !3626
  br i1 %506, label %507, label %509, !dbg !3630

507:                                              ; preds = %505
  %508 = getelementptr inbounds i8, ptr %0, i64 %495, !dbg !3626
  store i8 39, ptr %508, align 1, !dbg !3626, !tbaa !1178
  br label %509, !dbg !3626

509:                                              ; preds = %507, %505
  %510 = add i64 %495, 1, !dbg !3630
  call void @llvm.dbg.value(metadata i64 %510, metadata !3167, metadata !DIExpression()), !dbg !3219
  %511 = icmp ult i64 %510, %502, !dbg !3631
  br i1 %511, label %512, label %514, !dbg !3634

512:                                              ; preds = %509
  %513 = getelementptr inbounds i8, ptr %0, i64 %510, !dbg !3631
  store i8 36, ptr %513, align 1, !dbg !3631, !tbaa !1178
  br label %514, !dbg !3631

514:                                              ; preds = %512, %509
  %515 = add i64 %495, 2, !dbg !3634
  call void @llvm.dbg.value(metadata i64 %515, metadata !3167, metadata !DIExpression()), !dbg !3219
  %516 = icmp ult i64 %515, %502, !dbg !3635
  br i1 %516, label %517, label %519, !dbg !3638

517:                                              ; preds = %514
  %518 = getelementptr inbounds i8, ptr %0, i64 %515, !dbg !3635
  store i8 39, ptr %518, align 1, !dbg !3635, !tbaa !1178
  br label %519, !dbg !3635

519:                                              ; preds = %517, %514
  %520 = add i64 %495, 3, !dbg !3638
  call void @llvm.dbg.value(metadata i64 %520, metadata !3167, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i8 1, metadata !3175, metadata !DIExpression()), !dbg !3219
  br label %521, !dbg !3639

521:                                              ; preds = %503, %519
  %522 = phi i64 [ %520, %519 ], [ %495, %503 ], !dbg !3317
  %523 = phi i1 [ true, %519 ], [ %498, %503 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !3175, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i64 %522, metadata !3167, metadata !DIExpression()), !dbg !3219
  %524 = icmp ult i64 %522, %502, !dbg !3640
  br i1 %524, label %525, label %527, !dbg !3643

525:                                              ; preds = %521
  %526 = getelementptr inbounds i8, ptr %0, i64 %522, !dbg !3640
  store i8 92, ptr %526, align 1, !dbg !3640, !tbaa !1178
  br label %527, !dbg !3640

527:                                              ; preds = %521, %525
  %528 = add i64 %522, 1, !dbg !3643
  call void @llvm.dbg.value(metadata i64 %502, metadata !3158, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i8 %501, metadata !3188, metadata !DIExpression()), !dbg !3317
  call void @llvm.dbg.value(metadata i8 poison, metadata !3187, metadata !DIExpression()), !dbg !3317
  call void @llvm.dbg.value(metadata i8 poison, metadata !3186, metadata !DIExpression()), !dbg !3317
  call void @llvm.dbg.value(metadata i64 %499, metadata !3181, metadata !DIExpression()), !dbg !3308
  call void @llvm.dbg.value(metadata i8 poison, metadata !3175, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i8 poison, metadata !3173, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i64 %496, metadata !3168, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i64 %528, metadata !3167, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i64 %494, metadata !3160, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.label(metadata !3217), !dbg !3644
  br label %553, !dbg !3645

529:                                              ; preds = %437, %248, %247, %482
  %530 = phi i64 [ %338, %437 ], [ %492, %482 ], [ %153, %247 ], [ %153, %248 ], !dbg !3609
  %531 = phi i64 [ %405, %437 ], [ %491, %482 ], [ %124, %247 ], [ %124, %248 ], !dbg !3219
  %532 = phi i64 [ %125, %437 ], [ %490, %482 ], [ %125, %247 ], [ %125, %248 ], !dbg !3223
  %533 = phi i1 [ %126, %437 ], [ %489, %482 ], [ %126, %247 ], [ %126, %248 ]
  %534 = phi i1 [ %406, %437 ], [ %488, %482 ], [ %128, %247 ], [ %128, %248 ]
  %535 = phi i64 [ %349, %437 ], [ %487, %482 ], [ %129, %247 ], [ %129, %248 ], !dbg !3620
  %536 = phi i1 [ %438, %437 ], [ %486, %482 ], [ false, %247 ], [ false, %248 ]
  %537 = phi i1 [ %340, %437 ], [ %485, %482 ], [ false, %247 ], [ false, %248 ]
  %538 = phi i8 [ %409, %437 ], [ %484, %482 ], [ 92, %247 ], [ 92, %248 ], !dbg !3648
  %539 = phi i64 [ %130, %437 ], [ %483, %482 ], [ %130, %247 ], [ %130, %248 ]
  call void @llvm.dbg.value(metadata i64 %539, metadata !3158, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i8 %538, metadata !3188, metadata !DIExpression()), !dbg !3317
  call void @llvm.dbg.value(metadata i8 poison, metadata !3187, metadata !DIExpression()), !dbg !3317
  call void @llvm.dbg.value(metadata i8 poison, metadata !3186, metadata !DIExpression()), !dbg !3317
  call void @llvm.dbg.value(metadata i64 %535, metadata !3181, metadata !DIExpression()), !dbg !3308
  call void @llvm.dbg.value(metadata i8 poison, metadata !3175, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i8 poison, metadata !3173, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i64 %532, metadata !3168, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i64 %531, metadata !3167, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i64 %530, metadata !3160, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.label(metadata !3217), !dbg !3644
  %540 = xor i1 %534, true, !dbg !3645
  %541 = select i1 %540, i1 true, i1 %536, !dbg !3645
  br i1 %541, label %553, label %542, !dbg !3645

542:                                              ; preds = %529
  %543 = icmp ult i64 %531, %539, !dbg !3649
  br i1 %543, label %544, label %546, !dbg !3653

544:                                              ; preds = %542
  %545 = getelementptr inbounds i8, ptr %0, i64 %531, !dbg !3649
  store i8 39, ptr %545, align 1, !dbg !3649, !tbaa !1178
  br label %546, !dbg !3649

546:                                              ; preds = %544, %542
  %547 = add i64 %531, 1, !dbg !3653
  call void @llvm.dbg.value(metadata i64 %547, metadata !3167, metadata !DIExpression()), !dbg !3219
  %548 = icmp ult i64 %547, %539, !dbg !3654
  br i1 %548, label %549, label %551, !dbg !3657

549:                                              ; preds = %546
  %550 = getelementptr inbounds i8, ptr %0, i64 %547, !dbg !3654
  store i8 39, ptr %550, align 1, !dbg !3654, !tbaa !1178
  br label %551, !dbg !3654

551:                                              ; preds = %549, %546
  %552 = add i64 %531, 2, !dbg !3657
  call void @llvm.dbg.value(metadata i64 %552, metadata !3167, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i8 0, metadata !3175, metadata !DIExpression()), !dbg !3219
  br label %553, !dbg !3658

553:                                              ; preds = %527, %529, %551
  %554 = phi i64 [ %539, %551 ], [ %539, %529 ], [ %502, %527 ]
  %555 = phi i8 [ %538, %551 ], [ %538, %529 ], [ %501, %527 ]
  %556 = phi i1 [ %537, %551 ], [ %537, %529 ], [ %500, %527 ]
  %557 = phi i64 [ %535, %551 ], [ %535, %529 ], [ %499, %527 ]
  %558 = phi i1 [ %533, %551 ], [ %533, %529 ], [ %497, %527 ]
  %559 = phi i64 [ %532, %551 ], [ %532, %529 ], [ %496, %527 ]
  %560 = phi i64 [ %530, %551 ], [ %530, %529 ], [ %494, %527 ]
  %561 = phi i64 [ %552, %551 ], [ %531, %529 ], [ %528, %527 ], !dbg !3317
  %562 = phi i1 [ false, %551 ], [ %534, %529 ], [ %523, %527 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !3175, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i64 %561, metadata !3167, metadata !DIExpression()), !dbg !3219
  %563 = icmp ult i64 %561, %554, !dbg !3659
  br i1 %563, label %564, label %566, !dbg !3662

564:                                              ; preds = %553
  %565 = getelementptr inbounds i8, ptr %0, i64 %561, !dbg !3659
  store i8 %555, ptr %565, align 1, !dbg !3659, !tbaa !1178
  br label %566, !dbg !3659

566:                                              ; preds = %564, %553
  %567 = add i64 %561, 1, !dbg !3662
  call void @llvm.dbg.value(metadata i64 %567, metadata !3167, metadata !DIExpression()), !dbg !3219
  %568 = select i1 %556, i1 %127, i1 false, !dbg !3663
  call void @llvm.dbg.value(metadata i8 poison, metadata !3174, metadata !DIExpression()), !dbg !3219
  br label %569, !dbg !3664

569:                                              ; preds = %204, %566
  %570 = phi i64 [ %560, %566 ], [ %153, %204 ], !dbg !3609
  %571 = phi i64 [ %567, %566 ], [ %124, %204 ], !dbg !3219
  %572 = phi i64 [ %559, %566 ], [ %125, %204 ], !dbg !3223
  %573 = phi i1 [ %558, %566 ], [ %126, %204 ]
  %574 = phi i1 [ %568, %566 ], [ %127, %204 ]
  %575 = phi i1 [ %562, %566 ], [ %128, %204 ]
  %576 = phi i64 [ %557, %566 ], [ %129, %204 ], !dbg !3620
  %577 = phi i64 [ %554, %566 ], [ %130, %204 ]
  call void @llvm.dbg.value(metadata i64 %577, metadata !3158, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i64 %576, metadata !3181, metadata !DIExpression()), !dbg !3308
  call void @llvm.dbg.value(metadata i8 poison, metadata !3175, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i8 poison, metadata !3174, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i8 poison, metadata !3173, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i64 %572, metadata !3168, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i64 %571, metadata !3167, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i64 %570, metadata !3160, metadata !DIExpression()), !dbg !3219
  %578 = add i64 %576, 1, !dbg !3665
  call void @llvm.dbg.value(metadata i64 %578, metadata !3181, metadata !DIExpression()), !dbg !3308
  br label %122, !dbg !3666, !llvm.loop !3667

579:                                              ; preds = %136, %132
  call void @llvm.dbg.value(metadata i64 %130, metadata !3158, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i8 poison, metadata !3174, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i8 poison, metadata !3173, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i64 %125, metadata !3168, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i64 %124, metadata !3167, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i64 %123, metadata !3160, metadata !DIExpression()), !dbg !3219
  %580 = icmp ne i64 %124, 0, !dbg !3669
  %581 = xor i1 %110, true, !dbg !3671
  %582 = or i1 %580, %581, !dbg !3671
  %583 = or i1 %582, %111, !dbg !3671
  br i1 %583, label %584, label %621, !dbg !3671

584:                                              ; preds = %579
  %585 = or i1 %111, %110, !dbg !3672
  %586 = xor i1 %126, true, !dbg !3672
  %587 = select i1 %585, i1 true, i1 %586, !dbg !3672
  br i1 %587, label %595, label %588, !dbg !3672

588:                                              ; preds = %584
  br i1 %127, label %589, label %591, !dbg !3674

589:                                              ; preds = %588
  %590 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %125, ptr noundef %2, i64 noundef %123, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %104, ptr noundef %105), !dbg !3676
  br label %636, !dbg !3678

591:                                              ; preds = %588
  %592 = icmp eq i64 %130, 0, !dbg !3679
  %593 = icmp ne i64 %125, 0
  %594 = select i1 %592, i1 %593, i1 false, !dbg !3681
  br i1 %594, label %27, label %595, !dbg !3681

595:                                              ; preds = %584, %591
  %596 = phi i1 [ %110, %584 ], [ false, %591 ]
  %597 = icmp eq ptr %107, null, !dbg !3682
  %598 = or i1 %597, %596, !dbg !3684
  br i1 %598, label %614, label %599, !dbg !3684

599:                                              ; preds = %595
  call void @llvm.dbg.value(metadata ptr %107, metadata !3169, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i64 %124, metadata !3167, metadata !DIExpression()), !dbg !3219
  %600 = load i8, ptr %107, align 1, !dbg !3685, !tbaa !1178
  %601 = icmp eq i8 %600, 0, !dbg !3688
  br i1 %601, label %614, label %602, !dbg !3688

602:                                              ; preds = %599, %609
  %603 = phi i8 [ %612, %609 ], [ %600, %599 ]
  %604 = phi ptr [ %611, %609 ], [ %107, %599 ]
  %605 = phi i64 [ %610, %609 ], [ %124, %599 ]
  call void @llvm.dbg.value(metadata ptr %604, metadata !3169, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i64 %605, metadata !3167, metadata !DIExpression()), !dbg !3219
  %606 = icmp ult i64 %605, %130, !dbg !3689
  br i1 %606, label %607, label %609, !dbg !3692

607:                                              ; preds = %602
  %608 = getelementptr inbounds i8, ptr %0, i64 %605, !dbg !3689
  store i8 %603, ptr %608, align 1, !dbg !3689, !tbaa !1178
  br label %609, !dbg !3689

609:                                              ; preds = %607, %602
  %610 = add i64 %605, 1, !dbg !3692
  call void @llvm.dbg.value(metadata i64 %610, metadata !3167, metadata !DIExpression()), !dbg !3219
  %611 = getelementptr inbounds i8, ptr %604, i64 1, !dbg !3693
  call void @llvm.dbg.value(metadata ptr %611, metadata !3169, metadata !DIExpression()), !dbg !3219
  %612 = load i8, ptr %611, align 1, !dbg !3685, !tbaa !1178
  %613 = icmp eq i8 %612, 0, !dbg !3688
  br i1 %613, label %614, label %602, !dbg !3688, !llvm.loop !3694

614:                                              ; preds = %609, %599, %595
  %615 = phi i64 [ %124, %595 ], [ %124, %599 ], [ %610, %609 ], !dbg !3295
  call void @llvm.dbg.value(metadata i64 %615, metadata !3167, metadata !DIExpression()), !dbg !3219
  %616 = icmp ult i64 %615, %130, !dbg !3696
  br i1 %616, label %617, label %636, !dbg !3698

617:                                              ; preds = %614
  %618 = getelementptr inbounds i8, ptr %0, i64 %615, !dbg !3699
  store i8 0, ptr %618, align 1, !dbg !3700, !tbaa !1178
  br label %636, !dbg !3699

619:                                              ; preds = %158
  call void @llvm.dbg.label(metadata !3218), !dbg !3525
  %620 = icmp eq i32 %103, 2, !dbg !3701
  br i1 %620, label %626, label %630, !dbg !3526

621:                                              ; preds = %579, %493, %264, %262, %249, %247, %219, %206, %353
  %622 = phi i64 [ %130, %353 ], [ %502, %493 ], [ %130, %264 ], [ %130, %262 ], [ %130, %249 ], [ %130, %247 ], [ %130, %219 ], [ %130, %206 ], [ %130, %579 ]
  %623 = phi i64 [ %338, %353 ], [ %494, %493 ], [ %153, %264 ], [ %153, %262 ], [ %153, %249 ], [ %153, %247 ], [ %153, %219 ], [ %153, %206 ], [ %123, %579 ]
  call void @llvm.dbg.label(metadata !3218), !dbg !3525
  %624 = icmp eq i32 %103, 2, !dbg !3701
  %625 = select i1 %109, i32 4, i32 2, !dbg !3526
  br i1 %624, label %626, label %630, !dbg !3526

626:                                              ; preds = %335, %621, %619
  %627 = phi i32 [ 4, %619 ], [ %336, %335 ], [ %625, %621 ]
  %628 = phi i64 [ %130, %619 ], [ %130, %335 ], [ %622, %621 ]
  %629 = phi i64 [ %153, %619 ], [ %300, %335 ], [ %623, %621 ]
  br label %630, !dbg !3526

630:                                              ; preds = %147, %621, %619, %626
  %631 = phi i64 [ %628, %626 ], [ %130, %619 ], [ %622, %621 ], [ %130, %147 ]
  %632 = phi i64 [ %629, %626 ], [ %153, %619 ], [ %623, %621 ], [ %145, %147 ]
  %633 = phi i32 [ %627, %626 ], [ %103, %619 ], [ %103, %621 ], [ %103, %147 ]
  call void @llvm.dbg.value(metadata i32 %633, metadata !3161, metadata !DIExpression()), !dbg !3219
  %634 = and i32 %5, -3, !dbg !3702
  %635 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %631, ptr noundef %2, i64 noundef %632, i32 noundef %633, i32 noundef %634, ptr noundef null, ptr noundef %104, ptr noundef %105), !dbg !3703
  br label %636, !dbg !3704

636:                                              ; preds = %614, %617, %630, %589
  %637 = phi i64 [ %635, %630 ], [ %590, %589 ], [ %615, %617 ], [ %615, %614 ]
  ret i64 %637, !dbg !3705
}

; Function Attrs: nounwind
declare !dbg !3706 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind
declare !dbg !3709 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3711 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3715, metadata !DIExpression()), !dbg !3718
  call void @llvm.dbg.value(metadata i64 %1, metadata !3716, metadata !DIExpression()), !dbg !3718
  call void @llvm.dbg.value(metadata ptr %2, metadata !3717, metadata !DIExpression()), !dbg !3718
  call void @llvm.dbg.value(metadata ptr %0, metadata !3719, metadata !DIExpression()), !dbg !3732
  call void @llvm.dbg.value(metadata i64 %1, metadata !3724, metadata !DIExpression()), !dbg !3732
  call void @llvm.dbg.value(metadata ptr null, metadata !3725, metadata !DIExpression()), !dbg !3732
  call void @llvm.dbg.value(metadata ptr %2, metadata !3726, metadata !DIExpression()), !dbg !3732
  %4 = icmp eq ptr %2, null, !dbg !3734
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !3734
  call void @llvm.dbg.value(metadata ptr %5, metadata !3727, metadata !DIExpression()), !dbg !3732
  %6 = tail call ptr @__errno_location() #41, !dbg !3735
  %7 = load i32, ptr %6, align 4, !dbg !3735, !tbaa !1169
  call void @llvm.dbg.value(metadata i32 %7, metadata !3728, metadata !DIExpression()), !dbg !3732
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !3736
  %9 = load i32, ptr %8, align 4, !dbg !3736, !tbaa !3102
  %10 = or i32 %9, 1, !dbg !3737
  call void @llvm.dbg.value(metadata i32 %10, metadata !3729, metadata !DIExpression()), !dbg !3732
  %11 = load i32, ptr %5, align 8, !dbg !3738, !tbaa !3052
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !3739
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3740
  %14 = load ptr, ptr %13, align 8, !dbg !3740, !tbaa !3123
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3741
  %16 = load ptr, ptr %15, align 8, !dbg !3741, !tbaa !3126
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !3742
  %18 = add i64 %17, 1, !dbg !3743
  call void @llvm.dbg.value(metadata i64 %18, metadata !3730, metadata !DIExpression()), !dbg !3732
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #45, !dbg !3744
  call void @llvm.dbg.value(metadata ptr %19, metadata !3731, metadata !DIExpression()), !dbg !3732
  %20 = load i32, ptr %5, align 8, !dbg !3745, !tbaa !3052
  %21 = load ptr, ptr %13, align 8, !dbg !3746, !tbaa !3123
  %22 = load ptr, ptr %15, align 8, !dbg !3747, !tbaa !3126
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !3748
  store i32 %7, ptr %6, align 4, !dbg !3749, !tbaa !1169
  ret ptr %19, !dbg !3750
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3720 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3719, metadata !DIExpression()), !dbg !3751
  call void @llvm.dbg.value(metadata i64 %1, metadata !3724, metadata !DIExpression()), !dbg !3751
  call void @llvm.dbg.value(metadata ptr %2, metadata !3725, metadata !DIExpression()), !dbg !3751
  call void @llvm.dbg.value(metadata ptr %3, metadata !3726, metadata !DIExpression()), !dbg !3751
  %5 = icmp eq ptr %3, null, !dbg !3752
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !3752
  call void @llvm.dbg.value(metadata ptr %6, metadata !3727, metadata !DIExpression()), !dbg !3751
  %7 = tail call ptr @__errno_location() #41, !dbg !3753
  %8 = load i32, ptr %7, align 4, !dbg !3753, !tbaa !1169
  call void @llvm.dbg.value(metadata i32 %8, metadata !3728, metadata !DIExpression()), !dbg !3751
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !3754
  %10 = load i32, ptr %9, align 4, !dbg !3754, !tbaa !3102
  %11 = icmp eq ptr %2, null, !dbg !3755
  %12 = zext i1 %11 to i32, !dbg !3755
  %13 = or i32 %10, %12, !dbg !3756
  call void @llvm.dbg.value(metadata i32 %13, metadata !3729, metadata !DIExpression()), !dbg !3751
  %14 = load i32, ptr %6, align 8, !dbg !3757, !tbaa !3052
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !3758
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3759
  %17 = load ptr, ptr %16, align 8, !dbg !3759, !tbaa !3123
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3760
  %19 = load ptr, ptr %18, align 8, !dbg !3760, !tbaa !3126
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !3761
  %21 = add i64 %20, 1, !dbg !3762
  call void @llvm.dbg.value(metadata i64 %21, metadata !3730, metadata !DIExpression()), !dbg !3751
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #45, !dbg !3763
  call void @llvm.dbg.value(metadata ptr %22, metadata !3731, metadata !DIExpression()), !dbg !3751
  %23 = load i32, ptr %6, align 8, !dbg !3764, !tbaa !3052
  %24 = load ptr, ptr %16, align 8, !dbg !3765, !tbaa !3123
  %25 = load ptr, ptr %18, align 8, !dbg !3766, !tbaa !3126
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !3767
  store i32 %8, ptr %7, align 4, !dbg !3768, !tbaa !1169
  br i1 %11, label %28, label %27, !dbg !3769

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !3770, !tbaa !1517
  br label %28, !dbg !3772

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !3773
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !3774 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !3779, !tbaa !1104
  call void @llvm.dbg.value(metadata ptr %1, metadata !3776, metadata !DIExpression()), !dbg !3780
  call void @llvm.dbg.value(metadata i32 1, metadata !3777, metadata !DIExpression()), !dbg !3781
  %2 = load i32, ptr @nslots, align 4, !tbaa !1169
  call void @llvm.dbg.value(metadata i32 1, metadata !3777, metadata !DIExpression()), !dbg !3781
  %3 = icmp sgt i32 %2, 1, !dbg !3782
  br i1 %3, label %4, label %6, !dbg !3784

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !3782
  br label %10, !dbg !3784

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !3785
  %8 = load ptr, ptr %7, align 8, !dbg !3785, !tbaa !3787
  %9 = icmp eq ptr %8, @slot0, !dbg !3789
  br i1 %9, label %17, label %16, !dbg !3790

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !3777, metadata !DIExpression()), !dbg !3781
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !3791
  %13 = load ptr, ptr %12, align 8, !dbg !3791, !tbaa !3787
  tail call void @free(ptr noundef %13) #38, !dbg !3792
  %14 = add nuw nsw i64 %11, 1, !dbg !3793
  call void @llvm.dbg.value(metadata i64 %14, metadata !3777, metadata !DIExpression()), !dbg !3781
  %15 = icmp eq i64 %14, %5, !dbg !3782
  br i1 %15, label %6, label %10, !dbg !3784, !llvm.loop !3794

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #38, !dbg !3796
  store i64 256, ptr @slotvec0, align 8, !dbg !3798, !tbaa !3799
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !3800, !tbaa !3787
  br label %17, !dbg !3801

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !3802
  br i1 %18, label %20, label %19, !dbg !3804

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #38, !dbg !3805
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !3807, !tbaa !1104
  br label %20, !dbg !3808

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !3809, !tbaa !1169
  ret void, !dbg !3810
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3811 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3813, metadata !DIExpression()), !dbg !3815
  call void @llvm.dbg.value(metadata ptr %1, metadata !3814, metadata !DIExpression()), !dbg !3815
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3816
  ret ptr %3, !dbg !3817
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !3818 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3822, metadata !DIExpression()), !dbg !3838
  call void @llvm.dbg.value(metadata ptr %1, metadata !3823, metadata !DIExpression()), !dbg !3838
  call void @llvm.dbg.value(metadata i64 %2, metadata !3824, metadata !DIExpression()), !dbg !3838
  call void @llvm.dbg.value(metadata ptr %3, metadata !3825, metadata !DIExpression()), !dbg !3838
  %6 = tail call ptr @__errno_location() #41, !dbg !3839
  %7 = load i32, ptr %6, align 4, !dbg !3839, !tbaa !1169
  call void @llvm.dbg.value(metadata i32 %7, metadata !3826, metadata !DIExpression()), !dbg !3838
  %8 = load ptr, ptr @slotvec, align 8, !dbg !3840, !tbaa !1104
  call void @llvm.dbg.value(metadata ptr %8, metadata !3827, metadata !DIExpression()), !dbg !3838
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !3828, metadata !DIExpression()), !dbg !3838
  %9 = icmp ugt i32 %0, 2147483646, !dbg !3841
  br i1 %9, label %10, label %11, !dbg !3841

10:                                               ; preds = %4
  tail call void @abort() #40, !dbg !3843
  unreachable, !dbg !3843

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !3844, !tbaa !1169
  %13 = icmp sgt i32 %12, %0, !dbg !3845
  br i1 %13, label %32, label %14, !dbg !3846

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !3847
  call void @llvm.dbg.value(metadata i1 %15, metadata !3829, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3848
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #38, !dbg !3849
  %16 = sext i32 %12 to i64, !dbg !3850
  call void @llvm.dbg.value(metadata i64 %16, metadata !3832, metadata !DIExpression()), !dbg !3848
  store i64 %16, ptr %5, align 8, !dbg !3851, !tbaa !1517
  %17 = select i1 %15, ptr null, ptr %8, !dbg !3852
  %18 = add nuw nsw i32 %0, 1, !dbg !3853
  %19 = sub i32 %18, %12, !dbg !3854
  %20 = sext i32 %19 to i64, !dbg !3855
  call void @llvm.dbg.value(metadata ptr %5, metadata !3832, metadata !DIExpression(DW_OP_deref)), !dbg !3848
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #38, !dbg !3856
  call void @llvm.dbg.value(metadata ptr %21, metadata !3827, metadata !DIExpression()), !dbg !3838
  store ptr %21, ptr @slotvec, align 8, !dbg !3857, !tbaa !1104
  br i1 %15, label %22, label %23, !dbg !3858

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !3859, !tbaa.struct !3861
  br label %23, !dbg !3862

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !3863, !tbaa !1169
  %25 = sext i32 %24 to i64, !dbg !3864
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !3864
  %27 = load i64, ptr %5, align 8, !dbg !3865, !tbaa !1517
  call void @llvm.dbg.value(metadata i64 %27, metadata !3832, metadata !DIExpression()), !dbg !3848
  %28 = sub nsw i64 %27, %25, !dbg !3866
  %29 = shl i64 %28, 4, !dbg !3867
  call void @llvm.dbg.value(metadata ptr %26, metadata !3253, metadata !DIExpression()), !dbg !3868
  call void @llvm.dbg.value(metadata i32 0, metadata !3256, metadata !DIExpression()), !dbg !3868
  call void @llvm.dbg.value(metadata i64 %29, metadata !3257, metadata !DIExpression()), !dbg !3868
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #38, !dbg !3870
  %30 = load i64, ptr %5, align 8, !dbg !3871, !tbaa !1517
  call void @llvm.dbg.value(metadata i64 %30, metadata !3832, metadata !DIExpression()), !dbg !3848
  %31 = trunc i64 %30 to i32, !dbg !3871
  store i32 %31, ptr @nslots, align 4, !dbg !3872, !tbaa !1169
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #38, !dbg !3873
  br label %32, !dbg !3874

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !3838
  call void @llvm.dbg.value(metadata ptr %33, metadata !3827, metadata !DIExpression()), !dbg !3838
  %34 = zext i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !3875
  %36 = load i64, ptr %35, align 8, !dbg !3876, !tbaa !3799
  call void @llvm.dbg.value(metadata i64 %36, metadata !3833, metadata !DIExpression()), !dbg !3877
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !3878
  %38 = load ptr, ptr %37, align 8, !dbg !3878, !tbaa !3787
  call void @llvm.dbg.value(metadata ptr %38, metadata !3835, metadata !DIExpression()), !dbg !3877
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !3879
  %40 = load i32, ptr %39, align 4, !dbg !3879, !tbaa !3102
  %41 = or i32 %40, 1, !dbg !3880
  call void @llvm.dbg.value(metadata i32 %41, metadata !3836, metadata !DIExpression()), !dbg !3877
  %42 = load i32, ptr %3, align 8, !dbg !3881, !tbaa !3052
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3882
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !3883
  %45 = load ptr, ptr %44, align 8, !dbg !3883, !tbaa !3123
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !3884
  %47 = load ptr, ptr %46, align 8, !dbg !3884, !tbaa !3126
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !3885
  call void @llvm.dbg.value(metadata i64 %48, metadata !3837, metadata !DIExpression()), !dbg !3877
  %49 = icmp ugt i64 %36, %48, !dbg !3886
  br i1 %49, label %60, label %50, !dbg !3888

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !3889
  call void @llvm.dbg.value(metadata i64 %51, metadata !3833, metadata !DIExpression()), !dbg !3877
  store i64 %51, ptr %35, align 8, !dbg !3891, !tbaa !3799
  %52 = icmp eq ptr %38, @slot0, !dbg !3892
  br i1 %52, label %54, label %53, !dbg !3894

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #38, !dbg !3895
  br label %54, !dbg !3895

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #45, !dbg !3896
  call void @llvm.dbg.value(metadata ptr %55, metadata !3835, metadata !DIExpression()), !dbg !3877
  store ptr %55, ptr %37, align 8, !dbg !3897, !tbaa !3787
  %56 = load i32, ptr %3, align 8, !dbg !3898, !tbaa !3052
  %57 = load ptr, ptr %44, align 8, !dbg !3899, !tbaa !3123
  %58 = load ptr, ptr %46, align 8, !dbg !3900, !tbaa !3126
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !3901
  br label %60, !dbg !3902

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !3877
  call void @llvm.dbg.value(metadata ptr %61, metadata !3835, metadata !DIExpression()), !dbg !3877
  store i32 %7, ptr %6, align 4, !dbg !3903, !tbaa !1169
  ret ptr %61, !dbg !3904
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #27

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3905 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3909, metadata !DIExpression()), !dbg !3912
  call void @llvm.dbg.value(metadata ptr %1, metadata !3910, metadata !DIExpression()), !dbg !3912
  call void @llvm.dbg.value(metadata i64 %2, metadata !3911, metadata !DIExpression()), !dbg !3912
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !3913
  ret ptr %4, !dbg !3914
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !3915 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3917, metadata !DIExpression()), !dbg !3918
  call void @llvm.dbg.value(metadata i32 0, metadata !3813, metadata !DIExpression()), !dbg !3919
  call void @llvm.dbg.value(metadata ptr %0, metadata !3814, metadata !DIExpression()), !dbg !3919
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3921
  ret ptr %2, !dbg !3922
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3923 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3927, metadata !DIExpression()), !dbg !3929
  call void @llvm.dbg.value(metadata i64 %1, metadata !3928, metadata !DIExpression()), !dbg !3929
  call void @llvm.dbg.value(metadata i32 0, metadata !3909, metadata !DIExpression()), !dbg !3930
  call void @llvm.dbg.value(metadata ptr %0, metadata !3910, metadata !DIExpression()), !dbg !3930
  call void @llvm.dbg.value(metadata i64 %1, metadata !3911, metadata !DIExpression()), !dbg !3930
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !3932
  ret ptr %3, !dbg !3933
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3934 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3938, metadata !DIExpression()), !dbg !3942
  call void @llvm.dbg.value(metadata i32 %1, metadata !3939, metadata !DIExpression()), !dbg !3942
  call void @llvm.dbg.value(metadata ptr %2, metadata !3940, metadata !DIExpression()), !dbg !3942
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !3943
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3941, metadata !DIExpression()), !dbg !3944
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3945), !dbg !3948
  call void @llvm.dbg.value(metadata i32 %1, metadata !3949, metadata !DIExpression()), !dbg !3955
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3954, metadata !DIExpression()), !dbg !3957
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3957, !alias.scope !3945
  %5 = icmp eq i32 %1, 10, !dbg !3958
  br i1 %5, label %6, label %7, !dbg !3960

6:                                                ; preds = %3
  tail call void @abort() #40, !dbg !3961, !noalias !3945
  unreachable, !dbg !3961

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !3962, !tbaa !3052, !alias.scope !3945
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3963
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !3964
  ret ptr %8, !dbg !3965
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #28

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3966 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3970, metadata !DIExpression()), !dbg !3975
  call void @llvm.dbg.value(metadata i32 %1, metadata !3971, metadata !DIExpression()), !dbg !3975
  call void @llvm.dbg.value(metadata ptr %2, metadata !3972, metadata !DIExpression()), !dbg !3975
  call void @llvm.dbg.value(metadata i64 %3, metadata !3973, metadata !DIExpression()), !dbg !3975
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #38, !dbg !3976
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3974, metadata !DIExpression()), !dbg !3977
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3978), !dbg !3981
  call void @llvm.dbg.value(metadata i32 %1, metadata !3949, metadata !DIExpression()), !dbg !3982
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3954, metadata !DIExpression()), !dbg !3984
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !3984, !alias.scope !3978
  %6 = icmp eq i32 %1, 10, !dbg !3985
  br i1 %6, label %7, label %8, !dbg !3986

7:                                                ; preds = %4
  tail call void @abort() #40, !dbg !3987, !noalias !3978
  unreachable, !dbg !3987

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !3988, !tbaa !3052, !alias.scope !3978
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3989
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #38, !dbg !3990
  ret ptr %9, !dbg !3991
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3992 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3996, metadata !DIExpression()), !dbg !3998
  call void @llvm.dbg.value(metadata ptr %1, metadata !3997, metadata !DIExpression()), !dbg !3998
  call void @llvm.dbg.value(metadata i32 0, metadata !3938, metadata !DIExpression()), !dbg !3999
  call void @llvm.dbg.value(metadata i32 %0, metadata !3939, metadata !DIExpression()), !dbg !3999
  call void @llvm.dbg.value(metadata ptr %1, metadata !3940, metadata !DIExpression()), !dbg !3999
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #38, !dbg !4001
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3941, metadata !DIExpression()), !dbg !4002
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4003), !dbg !4006
  call void @llvm.dbg.value(metadata i32 %0, metadata !3949, metadata !DIExpression()), !dbg !4007
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3954, metadata !DIExpression()), !dbg !4009
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !4009, !alias.scope !4003
  %4 = icmp eq i32 %0, 10, !dbg !4010
  br i1 %4, label %5, label %6, !dbg !4011

5:                                                ; preds = %2
  tail call void @abort() #40, !dbg !4012, !noalias !4003
  unreachable, !dbg !4012

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !4013, !tbaa !3052, !alias.scope !4003
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !4014
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #38, !dbg !4015
  ret ptr %7, !dbg !4016
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4017 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !4021, metadata !DIExpression()), !dbg !4024
  call void @llvm.dbg.value(metadata ptr %1, metadata !4022, metadata !DIExpression()), !dbg !4024
  call void @llvm.dbg.value(metadata i64 %2, metadata !4023, metadata !DIExpression()), !dbg !4024
  call void @llvm.dbg.value(metadata i32 0, metadata !3970, metadata !DIExpression()), !dbg !4025
  call void @llvm.dbg.value(metadata i32 %0, metadata !3971, metadata !DIExpression()), !dbg !4025
  call void @llvm.dbg.value(metadata ptr %1, metadata !3972, metadata !DIExpression()), !dbg !4025
  call void @llvm.dbg.value(metadata i64 %2, metadata !3973, metadata !DIExpression()), !dbg !4025
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !4027
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3974, metadata !DIExpression()), !dbg !4028
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4029), !dbg !4032
  call void @llvm.dbg.value(metadata i32 %0, metadata !3949, metadata !DIExpression()), !dbg !4033
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3954, metadata !DIExpression()), !dbg !4035
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !4035, !alias.scope !4029
  %5 = icmp eq i32 %0, 10, !dbg !4036
  br i1 %5, label %6, label %7, !dbg !4037

6:                                                ; preds = %3
  tail call void @abort() #40, !dbg !4038, !noalias !4029
  unreachable, !dbg !4038

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !4039, !tbaa !3052, !alias.scope !4029
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !4040
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !4041
  ret ptr %8, !dbg !4042
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #10 !dbg !4043 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4047, metadata !DIExpression()), !dbg !4051
  call void @llvm.dbg.value(metadata i64 %1, metadata !4048, metadata !DIExpression()), !dbg !4051
  call void @llvm.dbg.value(metadata i8 %2, metadata !4049, metadata !DIExpression()), !dbg !4051
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !4052
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4050, metadata !DIExpression()), !dbg !4053
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !4054, !tbaa.struct !4055
  call void @llvm.dbg.value(metadata ptr %4, metadata !3069, metadata !DIExpression()), !dbg !4056
  call void @llvm.dbg.value(metadata i8 %2, metadata !3070, metadata !DIExpression()), !dbg !4056
  call void @llvm.dbg.value(metadata i32 1, metadata !3071, metadata !DIExpression()), !dbg !4056
  call void @llvm.dbg.value(metadata i8 %2, metadata !3072, metadata !DIExpression()), !dbg !4056
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !4058
  %6 = lshr i8 %2, 5, !dbg !4059
  %7 = zext i8 %6 to i64, !dbg !4059
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !4060
  call void @llvm.dbg.value(metadata ptr %8, metadata !3073, metadata !DIExpression()), !dbg !4056
  %9 = and i8 %2, 31, !dbg !4061
  %10 = zext i8 %9 to i32, !dbg !4061
  call void @llvm.dbg.value(metadata i32 %10, metadata !3075, metadata !DIExpression()), !dbg !4056
  %11 = load i32, ptr %8, align 4, !dbg !4062, !tbaa !1169
  %12 = lshr i32 %11, %10, !dbg !4063
  call void @llvm.dbg.value(metadata i32 %12, metadata !3076, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !4056
  %13 = and i32 %12, 1, !dbg !4064
  %14 = xor i32 %13, 1, !dbg !4064
  %15 = shl nuw i32 %14, %10, !dbg !4065
  %16 = xor i32 %15, %11, !dbg !4066
  store i32 %16, ptr %8, align 4, !dbg !4066, !tbaa !1169
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !4067
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !4068
  ret ptr %17, !dbg !4069
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char(ptr noundef %0, i8 noundef %1) local_unnamed_addr #10 !dbg !4070 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4074, metadata !DIExpression()), !dbg !4076
  call void @llvm.dbg.value(metadata i8 %1, metadata !4075, metadata !DIExpression()), !dbg !4076
  call void @llvm.dbg.value(metadata ptr %0, metadata !4047, metadata !DIExpression()), !dbg !4077
  call void @llvm.dbg.value(metadata i64 -1, metadata !4048, metadata !DIExpression()), !dbg !4077
  call void @llvm.dbg.value(metadata i8 %1, metadata !4049, metadata !DIExpression()), !dbg !4077
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #38, !dbg !4079
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4050, metadata !DIExpression()), !dbg !4080
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !4081, !tbaa.struct !4055
  call void @llvm.dbg.value(metadata ptr %3, metadata !3069, metadata !DIExpression()), !dbg !4082
  call void @llvm.dbg.value(metadata i8 %1, metadata !3070, metadata !DIExpression()), !dbg !4082
  call void @llvm.dbg.value(metadata i32 1, metadata !3071, metadata !DIExpression()), !dbg !4082
  call void @llvm.dbg.value(metadata i8 %1, metadata !3072, metadata !DIExpression()), !dbg !4082
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !4084
  %5 = lshr i8 %1, 5, !dbg !4085
  %6 = zext i8 %5 to i64, !dbg !4085
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !4086
  call void @llvm.dbg.value(metadata ptr %7, metadata !3073, metadata !DIExpression()), !dbg !4082
  %8 = and i8 %1, 31, !dbg !4087
  %9 = zext i8 %8 to i32, !dbg !4087
  call void @llvm.dbg.value(metadata i32 %9, metadata !3075, metadata !DIExpression()), !dbg !4082
  %10 = load i32, ptr %7, align 4, !dbg !4088, !tbaa !1169
  %11 = lshr i32 %10, %9, !dbg !4089
  call void @llvm.dbg.value(metadata i32 %11, metadata !3076, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !4082
  %12 = and i32 %11, 1, !dbg !4090
  %13 = xor i32 %12, 1, !dbg !4090
  %14 = shl nuw i32 %13, %9, !dbg !4091
  %15 = xor i32 %14, %10, !dbg !4092
  store i32 %15, ptr %7, align 4, !dbg !4092, !tbaa !1169
  %16 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !4093
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #38, !dbg !4094
  ret ptr %16, !dbg !4095
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !4096 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4098, metadata !DIExpression()), !dbg !4099
  call void @llvm.dbg.value(metadata ptr %0, metadata !4074, metadata !DIExpression()), !dbg !4100
  call void @llvm.dbg.value(metadata i8 58, metadata !4075, metadata !DIExpression()), !dbg !4100
  call void @llvm.dbg.value(metadata ptr %0, metadata !4047, metadata !DIExpression()), !dbg !4102
  call void @llvm.dbg.value(metadata i64 -1, metadata !4048, metadata !DIExpression()), !dbg !4102
  call void @llvm.dbg.value(metadata i8 58, metadata !4049, metadata !DIExpression()), !dbg !4102
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #38, !dbg !4104
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4050, metadata !DIExpression()), !dbg !4105
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !4106, !tbaa.struct !4055
  call void @llvm.dbg.value(metadata ptr %2, metadata !3069, metadata !DIExpression()), !dbg !4107
  call void @llvm.dbg.value(metadata i8 58, metadata !3070, metadata !DIExpression()), !dbg !4107
  call void @llvm.dbg.value(metadata i32 1, metadata !3071, metadata !DIExpression()), !dbg !4107
  call void @llvm.dbg.value(metadata i8 58, metadata !3072, metadata !DIExpression()), !dbg !4107
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !4109
  call void @llvm.dbg.value(metadata ptr %3, metadata !3073, metadata !DIExpression()), !dbg !4107
  call void @llvm.dbg.value(metadata i32 26, metadata !3075, metadata !DIExpression()), !dbg !4107
  %4 = load i32, ptr %3, align 4, !dbg !4110, !tbaa !1169
  call void @llvm.dbg.value(metadata i32 %4, metadata !3076, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !4107
  %5 = or i32 %4, 67108864, !dbg !4111
  store i32 %5, ptr %3, align 4, !dbg !4111, !tbaa !1169
  %6 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !4112
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #38, !dbg !4113
  ret ptr %6, !dbg !4114
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4115 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4117, metadata !DIExpression()), !dbg !4119
  call void @llvm.dbg.value(metadata i64 %1, metadata !4118, metadata !DIExpression()), !dbg !4119
  call void @llvm.dbg.value(metadata ptr %0, metadata !4047, metadata !DIExpression()), !dbg !4120
  call void @llvm.dbg.value(metadata i64 %1, metadata !4048, metadata !DIExpression()), !dbg !4120
  call void @llvm.dbg.value(metadata i8 58, metadata !4049, metadata !DIExpression()), !dbg !4120
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #38, !dbg !4122
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4050, metadata !DIExpression()), !dbg !4123
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !4124, !tbaa.struct !4055
  call void @llvm.dbg.value(metadata ptr %3, metadata !3069, metadata !DIExpression()), !dbg !4125
  call void @llvm.dbg.value(metadata i8 58, metadata !3070, metadata !DIExpression()), !dbg !4125
  call void @llvm.dbg.value(metadata i32 1, metadata !3071, metadata !DIExpression()), !dbg !4125
  call void @llvm.dbg.value(metadata i8 58, metadata !3072, metadata !DIExpression()), !dbg !4125
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !4127
  call void @llvm.dbg.value(metadata ptr %4, metadata !3073, metadata !DIExpression()), !dbg !4125
  call void @llvm.dbg.value(metadata i32 26, metadata !3075, metadata !DIExpression()), !dbg !4125
  %5 = load i32, ptr %4, align 4, !dbg !4128, !tbaa !1169
  call void @llvm.dbg.value(metadata i32 %5, metadata !3076, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !4125
  %6 = or i32 %5, 67108864, !dbg !4129
  store i32 %6, ptr %4, align 4, !dbg !4129, !tbaa !1169
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !4130
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #38, !dbg !4131
  ret ptr %7, !dbg !4132
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !4133 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata ptr poison, metadata !3954, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !4139
  call void @llvm.dbg.value(metadata i32 %0, metadata !4135, metadata !DIExpression()), !dbg !4141
  call void @llvm.dbg.value(metadata i32 %1, metadata !4136, metadata !DIExpression()), !dbg !4141
  call void @llvm.dbg.value(metadata ptr %2, metadata !4137, metadata !DIExpression()), !dbg !4141
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !4142
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4138, metadata !DIExpression()), !dbg !4143
  call void @llvm.dbg.value(metadata i32 %1, metadata !3949, metadata !DIExpression()), !dbg !4144
  call void @llvm.dbg.value(metadata i32 0, metadata !3954, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !4144
  %5 = icmp eq i32 %1, 10, !dbg !4145
  br i1 %5, label %6, label %7, !dbg !4146

6:                                                ; preds = %3
  tail call void @abort() #40, !dbg !4147, !noalias !4148
  unreachable, !dbg !4147

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3954, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !4144
  store i32 %1, ptr %4, align 8, !dbg !4151, !tbaa.struct !4055
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !4151
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !4151
  call void @llvm.dbg.value(metadata ptr %4, metadata !3069, metadata !DIExpression()), !dbg !4152
  call void @llvm.dbg.value(metadata i8 58, metadata !3070, metadata !DIExpression()), !dbg !4152
  call void @llvm.dbg.value(metadata i32 1, metadata !3071, metadata !DIExpression()), !dbg !4152
  call void @llvm.dbg.value(metadata i8 58, metadata !3072, metadata !DIExpression()), !dbg !4152
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !4154
  call void @llvm.dbg.value(metadata ptr %9, metadata !3073, metadata !DIExpression()), !dbg !4152
  call void @llvm.dbg.value(metadata i32 26, metadata !3075, metadata !DIExpression()), !dbg !4152
  %10 = load i32, ptr %9, align 4, !dbg !4155, !tbaa !1169
  call void @llvm.dbg.value(metadata i32 %10, metadata !3076, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !4152
  %11 = or i32 %10, 67108864, !dbg !4156
  store i32 %11, ptr %9, align 4, !dbg !4156, !tbaa !1169
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !4157
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !4158
  ret ptr %12, !dbg !4159
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !4160 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !4164, metadata !DIExpression()), !dbg !4168
  call void @llvm.dbg.value(metadata ptr %1, metadata !4165, metadata !DIExpression()), !dbg !4168
  call void @llvm.dbg.value(metadata ptr %2, metadata !4166, metadata !DIExpression()), !dbg !4168
  call void @llvm.dbg.value(metadata ptr %3, metadata !4167, metadata !DIExpression()), !dbg !4168
  call void @llvm.dbg.value(metadata i32 %0, metadata !4169, metadata !DIExpression()), !dbg !4179
  call void @llvm.dbg.value(metadata ptr %1, metadata !4174, metadata !DIExpression()), !dbg !4179
  call void @llvm.dbg.value(metadata ptr %2, metadata !4175, metadata !DIExpression()), !dbg !4179
  call void @llvm.dbg.value(metadata ptr %3, metadata !4176, metadata !DIExpression()), !dbg !4179
  call void @llvm.dbg.value(metadata i64 -1, metadata !4177, metadata !DIExpression()), !dbg !4179
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #38, !dbg !4181
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4178, metadata !DIExpression()), !dbg !4182
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4183, !tbaa.struct !4055
  call void @llvm.dbg.value(metadata ptr %5, metadata !3109, metadata !DIExpression()), !dbg !4184
  call void @llvm.dbg.value(metadata ptr %1, metadata !3110, metadata !DIExpression()), !dbg !4184
  call void @llvm.dbg.value(metadata ptr %2, metadata !3111, metadata !DIExpression()), !dbg !4184
  call void @llvm.dbg.value(metadata ptr %5, metadata !3109, metadata !DIExpression()), !dbg !4184
  store i32 10, ptr %5, align 8, !dbg !4186, !tbaa !3052
  %6 = icmp ne ptr %1, null, !dbg !4187
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !4188
  br i1 %8, label %10, label %9, !dbg !4188

9:                                                ; preds = %4
  tail call void @abort() #40, !dbg !4189
  unreachable, !dbg !4189

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !4190
  store ptr %1, ptr %11, align 8, !dbg !4191, !tbaa !3123
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !4192
  store ptr %2, ptr %12, align 8, !dbg !4193, !tbaa !3126
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !4194
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #38, !dbg !4195
  ret ptr %13, !dbg !4196
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !4170 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !4169, metadata !DIExpression()), !dbg !4197
  call void @llvm.dbg.value(metadata ptr %1, metadata !4174, metadata !DIExpression()), !dbg !4197
  call void @llvm.dbg.value(metadata ptr %2, metadata !4175, metadata !DIExpression()), !dbg !4197
  call void @llvm.dbg.value(metadata ptr %3, metadata !4176, metadata !DIExpression()), !dbg !4197
  call void @llvm.dbg.value(metadata i64 %4, metadata !4177, metadata !DIExpression()), !dbg !4197
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #38, !dbg !4198
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4178, metadata !DIExpression()), !dbg !4199
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4200, !tbaa.struct !4055
  call void @llvm.dbg.value(metadata ptr %6, metadata !3109, metadata !DIExpression()), !dbg !4201
  call void @llvm.dbg.value(metadata ptr %1, metadata !3110, metadata !DIExpression()), !dbg !4201
  call void @llvm.dbg.value(metadata ptr %2, metadata !3111, metadata !DIExpression()), !dbg !4201
  call void @llvm.dbg.value(metadata ptr %6, metadata !3109, metadata !DIExpression()), !dbg !4201
  store i32 10, ptr %6, align 8, !dbg !4203, !tbaa !3052
  %7 = icmp ne ptr %1, null, !dbg !4204
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !4205
  br i1 %9, label %11, label %10, !dbg !4205

10:                                               ; preds = %5
  tail call void @abort() #40, !dbg !4206
  unreachable, !dbg !4206

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !4207
  store ptr %1, ptr %12, align 8, !dbg !4208, !tbaa !3123
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !4209
  store ptr %2, ptr %13, align 8, !dbg !4210, !tbaa !3126
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !4211
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #38, !dbg !4212
  ret ptr %14, !dbg !4213
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !4214 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4218, metadata !DIExpression()), !dbg !4221
  call void @llvm.dbg.value(metadata ptr %1, metadata !4219, metadata !DIExpression()), !dbg !4221
  call void @llvm.dbg.value(metadata ptr %2, metadata !4220, metadata !DIExpression()), !dbg !4221
  call void @llvm.dbg.value(metadata i32 0, metadata !4164, metadata !DIExpression()), !dbg !4222
  call void @llvm.dbg.value(metadata ptr %0, metadata !4165, metadata !DIExpression()), !dbg !4222
  call void @llvm.dbg.value(metadata ptr %1, metadata !4166, metadata !DIExpression()), !dbg !4222
  call void @llvm.dbg.value(metadata ptr %2, metadata !4167, metadata !DIExpression()), !dbg !4222
  call void @llvm.dbg.value(metadata i32 0, metadata !4169, metadata !DIExpression()), !dbg !4224
  call void @llvm.dbg.value(metadata ptr %0, metadata !4174, metadata !DIExpression()), !dbg !4224
  call void @llvm.dbg.value(metadata ptr %1, metadata !4175, metadata !DIExpression()), !dbg !4224
  call void @llvm.dbg.value(metadata ptr %2, metadata !4176, metadata !DIExpression()), !dbg !4224
  call void @llvm.dbg.value(metadata i64 -1, metadata !4177, metadata !DIExpression()), !dbg !4224
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !4226
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4178, metadata !DIExpression()), !dbg !4227
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4228, !tbaa.struct !4055
  call void @llvm.dbg.value(metadata ptr %4, metadata !3109, metadata !DIExpression()), !dbg !4229
  call void @llvm.dbg.value(metadata ptr %0, metadata !3110, metadata !DIExpression()), !dbg !4229
  call void @llvm.dbg.value(metadata ptr %1, metadata !3111, metadata !DIExpression()), !dbg !4229
  call void @llvm.dbg.value(metadata ptr %4, metadata !3109, metadata !DIExpression()), !dbg !4229
  store i32 10, ptr %4, align 8, !dbg !4231, !tbaa !3052
  %5 = icmp ne ptr %0, null, !dbg !4232
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !4233
  br i1 %7, label %9, label %8, !dbg !4233

8:                                                ; preds = %3
  tail call void @abort() #40, !dbg !4234
  unreachable, !dbg !4234

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !4235
  store ptr %0, ptr %10, align 8, !dbg !4236, !tbaa !3123
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !4237
  store ptr %1, ptr %11, align 8, !dbg !4238, !tbaa !3126
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !4239
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !4240
  ret ptr %12, !dbg !4241
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !4242 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4246, metadata !DIExpression()), !dbg !4250
  call void @llvm.dbg.value(metadata ptr %1, metadata !4247, metadata !DIExpression()), !dbg !4250
  call void @llvm.dbg.value(metadata ptr %2, metadata !4248, metadata !DIExpression()), !dbg !4250
  call void @llvm.dbg.value(metadata i64 %3, metadata !4249, metadata !DIExpression()), !dbg !4250
  call void @llvm.dbg.value(metadata i32 0, metadata !4169, metadata !DIExpression()), !dbg !4251
  call void @llvm.dbg.value(metadata ptr %0, metadata !4174, metadata !DIExpression()), !dbg !4251
  call void @llvm.dbg.value(metadata ptr %1, metadata !4175, metadata !DIExpression()), !dbg !4251
  call void @llvm.dbg.value(metadata ptr %2, metadata !4176, metadata !DIExpression()), !dbg !4251
  call void @llvm.dbg.value(metadata i64 %3, metadata !4177, metadata !DIExpression()), !dbg !4251
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #38, !dbg !4253
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4178, metadata !DIExpression()), !dbg !4254
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4255, !tbaa.struct !4055
  call void @llvm.dbg.value(metadata ptr %5, metadata !3109, metadata !DIExpression()), !dbg !4256
  call void @llvm.dbg.value(metadata ptr %0, metadata !3110, metadata !DIExpression()), !dbg !4256
  call void @llvm.dbg.value(metadata ptr %1, metadata !3111, metadata !DIExpression()), !dbg !4256
  call void @llvm.dbg.value(metadata ptr %5, metadata !3109, metadata !DIExpression()), !dbg !4256
  store i32 10, ptr %5, align 8, !dbg !4258, !tbaa !3052
  %6 = icmp ne ptr %0, null, !dbg !4259
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !4260
  br i1 %8, label %10, label %9, !dbg !4260

9:                                                ; preds = %4
  tail call void @abort() #40, !dbg !4261
  unreachable, !dbg !4261

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !4262
  store ptr %0, ptr %11, align 8, !dbg !4263, !tbaa !3123
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !4264
  store ptr %1, ptr %12, align 8, !dbg !4265, !tbaa !3126
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !4266
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #38, !dbg !4267
  ret ptr %13, !dbg !4268
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4269 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4273, metadata !DIExpression()), !dbg !4276
  call void @llvm.dbg.value(metadata ptr %1, metadata !4274, metadata !DIExpression()), !dbg !4276
  call void @llvm.dbg.value(metadata i64 %2, metadata !4275, metadata !DIExpression()), !dbg !4276
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !4277
  ret ptr %4, !dbg !4278
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4279 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4283, metadata !DIExpression()), !dbg !4285
  call void @llvm.dbg.value(metadata i64 %1, metadata !4284, metadata !DIExpression()), !dbg !4285
  call void @llvm.dbg.value(metadata i32 0, metadata !4273, metadata !DIExpression()), !dbg !4286
  call void @llvm.dbg.value(metadata ptr %0, metadata !4274, metadata !DIExpression()), !dbg !4286
  call void @llvm.dbg.value(metadata i64 %1, metadata !4275, metadata !DIExpression()), !dbg !4286
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !4288
  ret ptr %3, !dbg !4289
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !4290 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4294, metadata !DIExpression()), !dbg !4296
  call void @llvm.dbg.value(metadata ptr %1, metadata !4295, metadata !DIExpression()), !dbg !4296
  call void @llvm.dbg.value(metadata i32 %0, metadata !4273, metadata !DIExpression()), !dbg !4297
  call void @llvm.dbg.value(metadata ptr %1, metadata !4274, metadata !DIExpression()), !dbg !4297
  call void @llvm.dbg.value(metadata i64 -1, metadata !4275, metadata !DIExpression()), !dbg !4297
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !4299
  ret ptr %3, !dbg !4300
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !4301 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4305, metadata !DIExpression()), !dbg !4306
  call void @llvm.dbg.value(metadata i32 0, metadata !4294, metadata !DIExpression()), !dbg !4307
  call void @llvm.dbg.value(metadata ptr %0, metadata !4295, metadata !DIExpression()), !dbg !4307
  call void @llvm.dbg.value(metadata i32 0, metadata !4273, metadata !DIExpression()), !dbg !4309
  call void @llvm.dbg.value(metadata ptr %0, metadata !4274, metadata !DIExpression()), !dbg !4309
  call void @llvm.dbg.value(metadata i64 -1, metadata !4275, metadata !DIExpression()), !dbg !4309
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !4311
  ret ptr %2, !dbg !4312
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !4313 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4352, metadata !DIExpression()), !dbg !4358
  call void @llvm.dbg.value(metadata ptr %1, metadata !4353, metadata !DIExpression()), !dbg !4358
  call void @llvm.dbg.value(metadata ptr %2, metadata !4354, metadata !DIExpression()), !dbg !4358
  call void @llvm.dbg.value(metadata ptr %3, metadata !4355, metadata !DIExpression()), !dbg !4358
  call void @llvm.dbg.value(metadata ptr %4, metadata !4356, metadata !DIExpression()), !dbg !4358
  call void @llvm.dbg.value(metadata i64 %5, metadata !4357, metadata !DIExpression()), !dbg !4358
  %7 = icmp eq ptr %1, null, !dbg !4359
  br i1 %7, label %10, label %8, !dbg !4361

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.186, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #38, !dbg !4362
  br label %12, !dbg !4362

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.187, ptr noundef %2, ptr noundef %3) #38, !dbg !4363
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.188, ptr noundef nonnull @.str.3.189, i32 noundef 5) #38, !dbg !4364
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #38, !dbg !4364
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.190, ptr noundef %0), !dbg !4365
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.188, ptr noundef nonnull @.str.5.191, i32 noundef 5) #38, !dbg !4366
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.192) #38, !dbg !4366
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.190, ptr noundef %0), !dbg !4367
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
  ], !dbg !4368

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.188, ptr noundef nonnull @.str.7.193, i32 noundef 5) #38, !dbg !4369
  %21 = load ptr, ptr %4, align 8, !dbg !4369, !tbaa !1104
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #38, !dbg !4369
  br label %147, !dbg !4371

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.188, ptr noundef nonnull @.str.8.194, i32 noundef 5) #38, !dbg !4372
  %25 = load ptr, ptr %4, align 8, !dbg !4372, !tbaa !1104
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4372
  %27 = load ptr, ptr %26, align 8, !dbg !4372, !tbaa !1104
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #38, !dbg !4372
  br label %147, !dbg !4373

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.188, ptr noundef nonnull @.str.9.195, i32 noundef 5) #38, !dbg !4374
  %31 = load ptr, ptr %4, align 8, !dbg !4374, !tbaa !1104
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4374
  %33 = load ptr, ptr %32, align 8, !dbg !4374, !tbaa !1104
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4374
  %35 = load ptr, ptr %34, align 8, !dbg !4374, !tbaa !1104
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #38, !dbg !4374
  br label %147, !dbg !4375

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.188, ptr noundef nonnull @.str.10.196, i32 noundef 5) #38, !dbg !4376
  %39 = load ptr, ptr %4, align 8, !dbg !4376, !tbaa !1104
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4376
  %41 = load ptr, ptr %40, align 8, !dbg !4376, !tbaa !1104
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4376
  %43 = load ptr, ptr %42, align 8, !dbg !4376, !tbaa !1104
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4376
  %45 = load ptr, ptr %44, align 8, !dbg !4376, !tbaa !1104
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #38, !dbg !4376
  br label %147, !dbg !4377

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.188, ptr noundef nonnull @.str.11.197, i32 noundef 5) #38, !dbg !4378
  %49 = load ptr, ptr %4, align 8, !dbg !4378, !tbaa !1104
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4378
  %51 = load ptr, ptr %50, align 8, !dbg !4378, !tbaa !1104
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4378
  %53 = load ptr, ptr %52, align 8, !dbg !4378, !tbaa !1104
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4378
  %55 = load ptr, ptr %54, align 8, !dbg !4378, !tbaa !1104
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4378
  %57 = load ptr, ptr %56, align 8, !dbg !4378, !tbaa !1104
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #38, !dbg !4378
  br label %147, !dbg !4379

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.188, ptr noundef nonnull @.str.12.198, i32 noundef 5) #38, !dbg !4380
  %61 = load ptr, ptr %4, align 8, !dbg !4380, !tbaa !1104
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4380
  %63 = load ptr, ptr %62, align 8, !dbg !4380, !tbaa !1104
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4380
  %65 = load ptr, ptr %64, align 8, !dbg !4380, !tbaa !1104
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4380
  %67 = load ptr, ptr %66, align 8, !dbg !4380, !tbaa !1104
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4380
  %69 = load ptr, ptr %68, align 8, !dbg !4380, !tbaa !1104
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4380
  %71 = load ptr, ptr %70, align 8, !dbg !4380, !tbaa !1104
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #38, !dbg !4380
  br label %147, !dbg !4381

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.188, ptr noundef nonnull @.str.13.199, i32 noundef 5) #38, !dbg !4382
  %75 = load ptr, ptr %4, align 8, !dbg !4382, !tbaa !1104
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4382
  %77 = load ptr, ptr %76, align 8, !dbg !4382, !tbaa !1104
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4382
  %79 = load ptr, ptr %78, align 8, !dbg !4382, !tbaa !1104
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4382
  %81 = load ptr, ptr %80, align 8, !dbg !4382, !tbaa !1104
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4382
  %83 = load ptr, ptr %82, align 8, !dbg !4382, !tbaa !1104
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4382
  %85 = load ptr, ptr %84, align 8, !dbg !4382, !tbaa !1104
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4382
  %87 = load ptr, ptr %86, align 8, !dbg !4382, !tbaa !1104
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #38, !dbg !4382
  br label %147, !dbg !4383

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.188, ptr noundef nonnull @.str.14.200, i32 noundef 5) #38, !dbg !4384
  %91 = load ptr, ptr %4, align 8, !dbg !4384, !tbaa !1104
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4384
  %93 = load ptr, ptr %92, align 8, !dbg !4384, !tbaa !1104
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4384
  %95 = load ptr, ptr %94, align 8, !dbg !4384, !tbaa !1104
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4384
  %97 = load ptr, ptr %96, align 8, !dbg !4384, !tbaa !1104
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4384
  %99 = load ptr, ptr %98, align 8, !dbg !4384, !tbaa !1104
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4384
  %101 = load ptr, ptr %100, align 8, !dbg !4384, !tbaa !1104
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4384
  %103 = load ptr, ptr %102, align 8, !dbg !4384, !tbaa !1104
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4384
  %105 = load ptr, ptr %104, align 8, !dbg !4384, !tbaa !1104
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #38, !dbg !4384
  br label %147, !dbg !4385

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.188, ptr noundef nonnull @.str.15.201, i32 noundef 5) #38, !dbg !4386
  %109 = load ptr, ptr %4, align 8, !dbg !4386, !tbaa !1104
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4386
  %111 = load ptr, ptr %110, align 8, !dbg !4386, !tbaa !1104
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4386
  %113 = load ptr, ptr %112, align 8, !dbg !4386, !tbaa !1104
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4386
  %115 = load ptr, ptr %114, align 8, !dbg !4386, !tbaa !1104
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4386
  %117 = load ptr, ptr %116, align 8, !dbg !4386, !tbaa !1104
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4386
  %119 = load ptr, ptr %118, align 8, !dbg !4386, !tbaa !1104
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4386
  %121 = load ptr, ptr %120, align 8, !dbg !4386, !tbaa !1104
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4386
  %123 = load ptr, ptr %122, align 8, !dbg !4386, !tbaa !1104
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4386
  %125 = load ptr, ptr %124, align 8, !dbg !4386, !tbaa !1104
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #38, !dbg !4386
  br label %147, !dbg !4387

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.188, ptr noundef nonnull @.str.16.202, i32 noundef 5) #38, !dbg !4388
  %129 = load ptr, ptr %4, align 8, !dbg !4388, !tbaa !1104
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4388
  %131 = load ptr, ptr %130, align 8, !dbg !4388, !tbaa !1104
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4388
  %133 = load ptr, ptr %132, align 8, !dbg !4388, !tbaa !1104
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4388
  %135 = load ptr, ptr %134, align 8, !dbg !4388, !tbaa !1104
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4388
  %137 = load ptr, ptr %136, align 8, !dbg !4388, !tbaa !1104
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4388
  %139 = load ptr, ptr %138, align 8, !dbg !4388, !tbaa !1104
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4388
  %141 = load ptr, ptr %140, align 8, !dbg !4388, !tbaa !1104
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4388
  %143 = load ptr, ptr %142, align 8, !dbg !4388, !tbaa !1104
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4388
  %145 = load ptr, ptr %144, align 8, !dbg !4388, !tbaa !1104
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #38, !dbg !4388
  br label %147, !dbg !4389

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !4390
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !4391 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4395, metadata !DIExpression()), !dbg !4401
  call void @llvm.dbg.value(metadata ptr %1, metadata !4396, metadata !DIExpression()), !dbg !4401
  call void @llvm.dbg.value(metadata ptr %2, metadata !4397, metadata !DIExpression()), !dbg !4401
  call void @llvm.dbg.value(metadata ptr %3, metadata !4398, metadata !DIExpression()), !dbg !4401
  call void @llvm.dbg.value(metadata ptr %4, metadata !4399, metadata !DIExpression()), !dbg !4401
  call void @llvm.dbg.value(metadata i64 0, metadata !4400, metadata !DIExpression()), !dbg !4401
  br label %6, !dbg !4402

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !4404
  call void @llvm.dbg.value(metadata i64 %7, metadata !4400, metadata !DIExpression()), !dbg !4401
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !4405
  %9 = load ptr, ptr %8, align 8, !dbg !4405, !tbaa !1104
  %10 = icmp eq ptr %9, null, !dbg !4407
  %11 = add i64 %7, 1, !dbg !4408
  call void @llvm.dbg.value(metadata i64 %11, metadata !4400, metadata !DIExpression()), !dbg !4401
  br i1 %10, label %12, label %6, !dbg !4407, !llvm.loop !4409

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !4411
  ret void, !dbg !4412
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !4413 {
  %6 = alloca [10 x ptr], align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4428, metadata !DIExpression()), !dbg !4436
  call void @llvm.dbg.value(metadata ptr %1, metadata !4429, metadata !DIExpression()), !dbg !4436
  call void @llvm.dbg.value(metadata ptr %2, metadata !4430, metadata !DIExpression()), !dbg !4436
  call void @llvm.dbg.value(metadata ptr %3, metadata !4431, metadata !DIExpression()), !dbg !4436
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4432, metadata !DIExpression()), !dbg !4437
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #38, !dbg !4438
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4434, metadata !DIExpression()), !dbg !4439
  call void @llvm.dbg.value(metadata i64 0, metadata !4433, metadata !DIExpression()), !dbg !4436
  %7 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 3
  %8 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 1
  %9 = load i32, ptr %7, align 8
  call void @llvm.dbg.value(metadata i64 0, metadata !4433, metadata !DIExpression()), !dbg !4436
  %10 = icmp sgt i32 %9, -1, !dbg !4440
  br i1 %10, label %18, label %11, !dbg !4440

11:                                               ; preds = %5
  %12 = add nsw i32 %9, 8, !dbg !4440
  store i32 %12, ptr %7, align 8, !dbg !4440
  %13 = icmp ult i32 %9, -7, !dbg !4440
  br i1 %13, label %14, label %18, !dbg !4440

14:                                               ; preds = %11
  %15 = load ptr, ptr %8, align 8, !dbg !4440
  %16 = sext i32 %9 to i64, !dbg !4440
  %17 = getelementptr inbounds i8, ptr %15, i64 %16, !dbg !4440
  br label %22, !dbg !4440

18:                                               ; preds = %11, %5
  %19 = phi i32 [ %12, %11 ], [ %9, %5 ]
  %20 = load ptr, ptr %4, align 8, !dbg !4440
  %21 = getelementptr inbounds i8, ptr %20, i64 8, !dbg !4440
  store ptr %21, ptr %4, align 8, !dbg !4440
  br label %22, !dbg !4440

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %12, %14 ], [ %19, %18 ]
  %24 = phi ptr [ %17, %14 ], [ %20, %18 ], !dbg !4440
  %25 = load ptr, ptr %24, align 8, !dbg !4440
  store ptr %25, ptr %6, align 8, !dbg !4443, !tbaa !1104
  %26 = icmp eq ptr %25, null, !dbg !4444
  br i1 %26, label %197, label %27, !dbg !4445

27:                                               ; preds = %22
  call void @llvm.dbg.value(metadata i64 1, metadata !4433, metadata !DIExpression()), !dbg !4436
  call void @llvm.dbg.value(metadata i64 1, metadata !4433, metadata !DIExpression()), !dbg !4436
  %28 = icmp sgt i32 %23, -1, !dbg !4440
  br i1 %28, label %36, label %29, !dbg !4440

29:                                               ; preds = %27
  %30 = add nsw i32 %23, 8, !dbg !4440
  store i32 %30, ptr %7, align 8, !dbg !4440
  %31 = icmp ult i32 %23, -7, !dbg !4440
  br i1 %31, label %32, label %36, !dbg !4440

32:                                               ; preds = %29
  %33 = load ptr, ptr %8, align 8, !dbg !4440
  %34 = sext i32 %23 to i64, !dbg !4440
  %35 = getelementptr inbounds i8, ptr %33, i64 %34, !dbg !4440
  br label %40, !dbg !4440

36:                                               ; preds = %29, %27
  %37 = phi i32 [ %30, %29 ], [ %23, %27 ]
  %38 = load ptr, ptr %4, align 8, !dbg !4440
  %39 = getelementptr inbounds i8, ptr %38, i64 8, !dbg !4440
  store ptr %39, ptr %4, align 8, !dbg !4440
  br label %40, !dbg !4440

40:                                               ; preds = %36, %32
  %41 = phi i32 [ %30, %32 ], [ %37, %36 ]
  %42 = phi ptr [ %35, %32 ], [ %38, %36 ], !dbg !4440
  %43 = load ptr, ptr %42, align 8, !dbg !4440
  %44 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !4446
  store ptr %43, ptr %44, align 8, !dbg !4443, !tbaa !1104
  %45 = icmp eq ptr %43, null, !dbg !4444
  br i1 %45, label %197, label %46, !dbg !4445

46:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !4433, metadata !DIExpression()), !dbg !4436
  call void @llvm.dbg.value(metadata i64 2, metadata !4433, metadata !DIExpression()), !dbg !4436
  %47 = icmp sgt i32 %41, -1, !dbg !4440
  br i1 %47, label %55, label %48, !dbg !4440

48:                                               ; preds = %46
  %49 = add nsw i32 %41, 8, !dbg !4440
  store i32 %49, ptr %7, align 8, !dbg !4440
  %50 = icmp ult i32 %41, -7, !dbg !4440
  br i1 %50, label %51, label %55, !dbg !4440

51:                                               ; preds = %48
  %52 = load ptr, ptr %8, align 8, !dbg !4440
  %53 = sext i32 %41 to i64, !dbg !4440
  %54 = getelementptr inbounds i8, ptr %52, i64 %53, !dbg !4440
  br label %59, !dbg !4440

55:                                               ; preds = %48, %46
  %56 = phi i32 [ %49, %48 ], [ %41, %46 ]
  %57 = load ptr, ptr %4, align 8, !dbg !4440
  %58 = getelementptr inbounds i8, ptr %57, i64 8, !dbg !4440
  store ptr %58, ptr %4, align 8, !dbg !4440
  br label %59, !dbg !4440

59:                                               ; preds = %55, %51
  %60 = phi i32 [ %49, %51 ], [ %56, %55 ]
  %61 = phi ptr [ %54, %51 ], [ %57, %55 ], !dbg !4440
  %62 = load ptr, ptr %61, align 8, !dbg !4440
  %63 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !4446
  store ptr %62, ptr %63, align 8, !dbg !4443, !tbaa !1104
  %64 = icmp eq ptr %62, null, !dbg !4444
  br i1 %64, label %197, label %65, !dbg !4445

65:                                               ; preds = %59
  call void @llvm.dbg.value(metadata i64 3, metadata !4433, metadata !DIExpression()), !dbg !4436
  call void @llvm.dbg.value(metadata i64 3, metadata !4433, metadata !DIExpression()), !dbg !4436
  %66 = icmp sgt i32 %60, -1, !dbg !4440
  br i1 %66, label %74, label %67, !dbg !4440

67:                                               ; preds = %65
  %68 = add nsw i32 %60, 8, !dbg !4440
  store i32 %68, ptr %7, align 8, !dbg !4440
  %69 = icmp ult i32 %60, -7, !dbg !4440
  br i1 %69, label %70, label %74, !dbg !4440

70:                                               ; preds = %67
  %71 = load ptr, ptr %8, align 8, !dbg !4440
  %72 = sext i32 %60 to i64, !dbg !4440
  %73 = getelementptr inbounds i8, ptr %71, i64 %72, !dbg !4440
  br label %78, !dbg !4440

74:                                               ; preds = %67, %65
  %75 = phi i32 [ %68, %67 ], [ %60, %65 ]
  %76 = load ptr, ptr %4, align 8, !dbg !4440
  %77 = getelementptr inbounds i8, ptr %76, i64 8, !dbg !4440
  store ptr %77, ptr %4, align 8, !dbg !4440
  br label %78, !dbg !4440

78:                                               ; preds = %74, %70
  %79 = phi i32 [ %68, %70 ], [ %75, %74 ]
  %80 = phi ptr [ %73, %70 ], [ %76, %74 ], !dbg !4440
  %81 = load ptr, ptr %80, align 8, !dbg !4440
  %82 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !4446
  store ptr %81, ptr %82, align 8, !dbg !4443, !tbaa !1104
  %83 = icmp eq ptr %81, null, !dbg !4444
  br i1 %83, label %197, label %84, !dbg !4445

84:                                               ; preds = %78
  call void @llvm.dbg.value(metadata i64 4, metadata !4433, metadata !DIExpression()), !dbg !4436
  call void @llvm.dbg.value(metadata i64 4, metadata !4433, metadata !DIExpression()), !dbg !4436
  %85 = icmp sgt i32 %79, -1, !dbg !4440
  br i1 %85, label %93, label %86, !dbg !4440

86:                                               ; preds = %84
  %87 = add nsw i32 %79, 8, !dbg !4440
  store i32 %87, ptr %7, align 8, !dbg !4440
  %88 = icmp ult i32 %79, -7, !dbg !4440
  br i1 %88, label %89, label %93, !dbg !4440

89:                                               ; preds = %86
  %90 = load ptr, ptr %8, align 8, !dbg !4440
  %91 = sext i32 %79 to i64, !dbg !4440
  %92 = getelementptr inbounds i8, ptr %90, i64 %91, !dbg !4440
  br label %97, !dbg !4440

93:                                               ; preds = %86, %84
  %94 = phi i32 [ %87, %86 ], [ %79, %84 ]
  %95 = load ptr, ptr %4, align 8, !dbg !4440
  %96 = getelementptr inbounds i8, ptr %95, i64 8, !dbg !4440
  store ptr %96, ptr %4, align 8, !dbg !4440
  br label %97, !dbg !4440

97:                                               ; preds = %93, %89
  %98 = phi i32 [ %87, %89 ], [ %94, %93 ]
  %99 = phi ptr [ %92, %89 ], [ %95, %93 ], !dbg !4440
  %100 = load ptr, ptr %99, align 8, !dbg !4440
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !4446
  store ptr %100, ptr %101, align 8, !dbg !4443, !tbaa !1104
  %102 = icmp eq ptr %100, null, !dbg !4444
  br i1 %102, label %197, label %103, !dbg !4445

103:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i64 5, metadata !4433, metadata !DIExpression()), !dbg !4436
  call void @llvm.dbg.value(metadata i64 5, metadata !4433, metadata !DIExpression()), !dbg !4436
  %104 = icmp sgt i32 %98, -1, !dbg !4440
  br i1 %104, label %112, label %105, !dbg !4440

105:                                              ; preds = %103
  %106 = add nsw i32 %98, 8, !dbg !4440
  store i32 %106, ptr %7, align 8, !dbg !4440
  %107 = icmp ult i32 %98, -7, !dbg !4440
  br i1 %107, label %108, label %112, !dbg !4440

108:                                              ; preds = %105
  %109 = load ptr, ptr %8, align 8, !dbg !4440
  %110 = sext i32 %98 to i64, !dbg !4440
  %111 = getelementptr inbounds i8, ptr %109, i64 %110, !dbg !4440
  br label %116, !dbg !4440

112:                                              ; preds = %105, %103
  %113 = phi i32 [ %106, %105 ], [ %98, %103 ]
  %114 = load ptr, ptr %4, align 8, !dbg !4440
  %115 = getelementptr inbounds i8, ptr %114, i64 8, !dbg !4440
  store ptr %115, ptr %4, align 8, !dbg !4440
  br label %116, !dbg !4440

116:                                              ; preds = %112, %108
  %117 = phi i32 [ %106, %108 ], [ %113, %112 ]
  %118 = phi ptr [ %111, %108 ], [ %114, %112 ], !dbg !4440
  %119 = load ptr, ptr %118, align 8, !dbg !4440
  %120 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !4446
  store ptr %119, ptr %120, align 8, !dbg !4443, !tbaa !1104
  %121 = icmp eq ptr %119, null, !dbg !4444
  br i1 %121, label %197, label %122, !dbg !4445

122:                                              ; preds = %116
  call void @llvm.dbg.value(metadata i64 6, metadata !4433, metadata !DIExpression()), !dbg !4436
  call void @llvm.dbg.value(metadata i64 6, metadata !4433, metadata !DIExpression()), !dbg !4436
  %123 = icmp sgt i32 %117, -1, !dbg !4440
  br i1 %123, label %131, label %124, !dbg !4440

124:                                              ; preds = %122
  %125 = add nsw i32 %117, 8, !dbg !4440
  store i32 %125, ptr %7, align 8, !dbg !4440
  %126 = icmp ult i32 %117, -7, !dbg !4440
  br i1 %126, label %127, label %131, !dbg !4440

127:                                              ; preds = %124
  %128 = load ptr, ptr %8, align 8, !dbg !4440
  %129 = sext i32 %117 to i64, !dbg !4440
  %130 = getelementptr inbounds i8, ptr %128, i64 %129, !dbg !4440
  br label %135, !dbg !4440

131:                                              ; preds = %124, %122
  %132 = phi i32 [ %125, %124 ], [ %117, %122 ]
  %133 = load ptr, ptr %4, align 8, !dbg !4440
  %134 = getelementptr inbounds i8, ptr %133, i64 8, !dbg !4440
  store ptr %134, ptr %4, align 8, !dbg !4440
  br label %135, !dbg !4440

135:                                              ; preds = %131, %127
  %136 = phi i32 [ %125, %127 ], [ %132, %131 ]
  %137 = phi ptr [ %130, %127 ], [ %133, %131 ], !dbg !4440
  %138 = load ptr, ptr %137, align 8, !dbg !4440
  %139 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !4446
  store ptr %138, ptr %139, align 8, !dbg !4443, !tbaa !1104
  %140 = icmp eq ptr %138, null, !dbg !4444
  br i1 %140, label %197, label %141, !dbg !4445

141:                                              ; preds = %135
  call void @llvm.dbg.value(metadata i64 7, metadata !4433, metadata !DIExpression()), !dbg !4436
  call void @llvm.dbg.value(metadata i64 7, metadata !4433, metadata !DIExpression()), !dbg !4436
  %142 = icmp sgt i32 %136, -1, !dbg !4440
  br i1 %142, label %150, label %143, !dbg !4440

143:                                              ; preds = %141
  %144 = add nsw i32 %136, 8, !dbg !4440
  store i32 %144, ptr %7, align 8, !dbg !4440
  %145 = icmp ult i32 %136, -7, !dbg !4440
  br i1 %145, label %146, label %150, !dbg !4440

146:                                              ; preds = %143
  %147 = load ptr, ptr %8, align 8, !dbg !4440
  %148 = sext i32 %136 to i64, !dbg !4440
  %149 = getelementptr inbounds i8, ptr %147, i64 %148, !dbg !4440
  br label %154, !dbg !4440

150:                                              ; preds = %143, %141
  %151 = phi i32 [ %144, %143 ], [ %136, %141 ]
  %152 = load ptr, ptr %4, align 8, !dbg !4440
  %153 = getelementptr inbounds i8, ptr %152, i64 8, !dbg !4440
  store ptr %153, ptr %4, align 8, !dbg !4440
  br label %154, !dbg !4440

154:                                              ; preds = %150, %146
  %155 = phi i32 [ %144, %146 ], [ %151, %150 ]
  %156 = phi ptr [ %149, %146 ], [ %152, %150 ], !dbg !4440
  %157 = load ptr, ptr %156, align 8, !dbg !4440
  %158 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !4446
  store ptr %157, ptr %158, align 8, !dbg !4443, !tbaa !1104
  %159 = icmp eq ptr %157, null, !dbg !4444
  br i1 %159, label %197, label %160, !dbg !4445

160:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i64 8, metadata !4433, metadata !DIExpression()), !dbg !4436
  call void @llvm.dbg.value(metadata i64 8, metadata !4433, metadata !DIExpression()), !dbg !4436
  %161 = icmp sgt i32 %155, -1, !dbg !4440
  br i1 %161, label %169, label %162, !dbg !4440

162:                                              ; preds = %160
  %163 = add nsw i32 %155, 8, !dbg !4440
  store i32 %163, ptr %7, align 8, !dbg !4440
  %164 = icmp ult i32 %155, -7, !dbg !4440
  br i1 %164, label %165, label %169, !dbg !4440

165:                                              ; preds = %162
  %166 = load ptr, ptr %8, align 8, !dbg !4440
  %167 = sext i32 %155 to i64, !dbg !4440
  %168 = getelementptr inbounds i8, ptr %166, i64 %167, !dbg !4440
  br label %173, !dbg !4440

169:                                              ; preds = %162, %160
  %170 = phi i32 [ %163, %162 ], [ %155, %160 ]
  %171 = load ptr, ptr %4, align 8, !dbg !4440
  %172 = getelementptr inbounds i8, ptr %171, i64 8, !dbg !4440
  store ptr %172, ptr %4, align 8, !dbg !4440
  br label %173, !dbg !4440

173:                                              ; preds = %169, %165
  %174 = phi i32 [ %163, %165 ], [ %170, %169 ]
  %175 = phi ptr [ %168, %165 ], [ %171, %169 ], !dbg !4440
  %176 = load ptr, ptr %175, align 8, !dbg !4440
  %177 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !4446
  store ptr %176, ptr %177, align 8, !dbg !4443, !tbaa !1104
  %178 = icmp eq ptr %176, null, !dbg !4444
  br i1 %178, label %197, label %179, !dbg !4445

179:                                              ; preds = %173
  call void @llvm.dbg.value(metadata i64 9, metadata !4433, metadata !DIExpression()), !dbg !4436
  call void @llvm.dbg.value(metadata i64 9, metadata !4433, metadata !DIExpression()), !dbg !4436
  %180 = icmp sgt i32 %174, -1, !dbg !4440
  br i1 %180, label %188, label %181, !dbg !4440

181:                                              ; preds = %179
  %182 = add nsw i32 %174, 8, !dbg !4440
  store i32 %182, ptr %7, align 8, !dbg !4440
  %183 = icmp ult i32 %174, -7, !dbg !4440
  br i1 %183, label %184, label %188, !dbg !4440

184:                                              ; preds = %181
  %185 = load ptr, ptr %8, align 8, !dbg !4440
  %186 = sext i32 %174 to i64, !dbg !4440
  %187 = getelementptr inbounds i8, ptr %185, i64 %186, !dbg !4440
  br label %191, !dbg !4440

188:                                              ; preds = %181, %179
  %189 = load ptr, ptr %4, align 8, !dbg !4440
  %190 = getelementptr inbounds i8, ptr %189, i64 8, !dbg !4440
  store ptr %190, ptr %4, align 8, !dbg !4440
  br label %191, !dbg !4440

191:                                              ; preds = %188, %184
  %192 = phi ptr [ %187, %184 ], [ %189, %188 ], !dbg !4440
  %193 = load ptr, ptr %192, align 8, !dbg !4440
  %194 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !4446
  store ptr %193, ptr %194, align 8, !dbg !4443, !tbaa !1104
  %195 = icmp eq ptr %193, null, !dbg !4444
  %196 = select i1 %195, i64 9, i64 10, !dbg !4445
  br label %197, !dbg !4445

197:                                              ; preds = %191, %173, %154, %135, %116, %97, %78, %59, %40, %22
  %198 = phi i64 [ 0, %22 ], [ 1, %40 ], [ 2, %59 ], [ 3, %78 ], [ 4, %97 ], [ 5, %116 ], [ 6, %135 ], [ 7, %154 ], [ 8, %173 ], [ %196, %191 ], !dbg !4447
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %198), !dbg !4448
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #38, !dbg !4449
  ret void, !dbg !4449
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !4450 {
  %5 = alloca %struct.__va_list, align 8
  %6 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4454, metadata !DIExpression()), !dbg !4459
  call void @llvm.dbg.value(metadata ptr %1, metadata !4455, metadata !DIExpression()), !dbg !4459
  call void @llvm.dbg.value(metadata ptr %2, metadata !4456, metadata !DIExpression()), !dbg !4459
  call void @llvm.dbg.value(metadata ptr %3, metadata !4457, metadata !DIExpression()), !dbg !4459
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #38, !dbg !4460
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4458, metadata !DIExpression()), !dbg !4461
  call void @llvm.va_start(ptr nonnull %5), !dbg !4462
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #38, !dbg !4463
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !4463, !tbaa.struct !2032
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6), !dbg !4463
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #38, !dbg !4463
  call void @llvm.va_end(ptr nonnull %5), !dbg !4464
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #38, !dbg !4465
  ret void, !dbg !4465
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !4466 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !4467, !tbaa !1104
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.190, ptr noundef %1), !dbg !4467
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.188, ptr noundef nonnull @.str.17.207, i32 noundef 5) #38, !dbg !4468
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.208) #38, !dbg !4468
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.188, ptr noundef nonnull @.str.19.209, i32 noundef 5) #38, !dbg !4469
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.210, ptr noundef nonnull @.str.21.211) #38, !dbg !4469
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.188, ptr noundef nonnull @.str.22.212, i32 noundef 5) #38, !dbg !4470
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.213) #38, !dbg !4470
  ret void, !dbg !4471
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #29 !dbg !4472 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4477, metadata !DIExpression()), !dbg !4480
  call void @llvm.dbg.value(metadata i64 %1, metadata !4478, metadata !DIExpression()), !dbg !4480
  call void @llvm.dbg.value(metadata i64 %2, metadata !4479, metadata !DIExpression()), !dbg !4480
  call void @llvm.dbg.value(metadata ptr %0, metadata !4481, metadata !DIExpression()), !dbg !4486
  call void @llvm.dbg.value(metadata i64 %1, metadata !4484, metadata !DIExpression()), !dbg !4486
  call void @llvm.dbg.value(metadata i64 %2, metadata !4485, metadata !DIExpression()), !dbg !4486
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #38, !dbg !4488
  call void @llvm.dbg.value(metadata ptr %4, metadata !4489, metadata !DIExpression()), !dbg !4494
  %5 = icmp eq ptr %4, null, !dbg !4496
  br i1 %5, label %6, label %7, !dbg !4498

6:                                                ; preds = %3
  tail call void @xalloc_die() #40, !dbg !4499
  unreachable, !dbg !4499

7:                                                ; preds = %3
  ret ptr %4, !dbg !4500
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #30 !dbg !4482 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4481, metadata !DIExpression()), !dbg !4501
  call void @llvm.dbg.value(metadata i64 %1, metadata !4484, metadata !DIExpression()), !dbg !4501
  call void @llvm.dbg.value(metadata i64 %2, metadata !4485, metadata !DIExpression()), !dbg !4501
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #38, !dbg !4502
  call void @llvm.dbg.value(metadata ptr %4, metadata !4489, metadata !DIExpression()), !dbg !4503
  %5 = icmp eq ptr %4, null, !dbg !4505
  br i1 %5, label %6, label %7, !dbg !4506

6:                                                ; preds = %3
  tail call void @xalloc_die() #40, !dbg !4507
  unreachable, !dbg !4507

7:                                                ; preds = %3
  ret ptr %4, !dbg !4508
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !4509 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4511, metadata !DIExpression()), !dbg !4512
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #45, !dbg !4513
  call void @llvm.dbg.value(metadata ptr %2, metadata !4489, metadata !DIExpression()), !dbg !4514
  %3 = icmp eq ptr %2, null, !dbg !4516
  br i1 %3, label %4, label %5, !dbg !4517

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !4518
  unreachable, !dbg !4518

5:                                                ; preds = %1
  ret ptr %2, !dbg !4519
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !4520 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4524, metadata !DIExpression()), !dbg !4525
  call void @llvm.dbg.value(metadata i64 %0, metadata !4526, metadata !DIExpression()), !dbg !4530
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #45, !dbg !4532
  call void @llvm.dbg.value(metadata ptr %2, metadata !4489, metadata !DIExpression()), !dbg !4533
  %3 = icmp eq ptr %2, null, !dbg !4535
  br i1 %3, label %4, label %5, !dbg !4536

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !4537
  unreachable, !dbg !4537

5:                                                ; preds = %1
  ret ptr %2, !dbg !4538
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !4539 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4543, metadata !DIExpression()), !dbg !4544
  call void @llvm.dbg.value(metadata i64 %0, metadata !4511, metadata !DIExpression()), !dbg !4545
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #45, !dbg !4547
  call void @llvm.dbg.value(metadata ptr %2, metadata !4489, metadata !DIExpression()), !dbg !4548
  %3 = icmp eq ptr %2, null, !dbg !4550
  br i1 %3, label %4, label %5, !dbg !4551

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !4552
  unreachable, !dbg !4552

5:                                                ; preds = %1
  ret ptr %2, !dbg !4553
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !4554 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4556, metadata !DIExpression()), !dbg !4558
  call void @llvm.dbg.value(metadata i64 %1, metadata !4557, metadata !DIExpression()), !dbg !4558
  call void @llvm.dbg.value(metadata ptr %0, metadata !4559, metadata !DIExpression()), !dbg !4564
  call void @llvm.dbg.value(metadata i64 %1, metadata !4563, metadata !DIExpression()), !dbg !4564
  %3 = icmp eq i64 %1, 0, !dbg !4566
  %4 = select i1 %3, i64 1, i64 %1, !dbg !4566
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #44, !dbg !4567
  call void @llvm.dbg.value(metadata ptr %5, metadata !4489, metadata !DIExpression()), !dbg !4568
  %6 = icmp eq ptr %5, null, !dbg !4570
  br i1 %6, label %7, label %8, !dbg !4571

7:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4572
  unreachable, !dbg !4572

8:                                                ; preds = %2
  ret ptr %5, !dbg !4573
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !4574 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !4575 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4579, metadata !DIExpression()), !dbg !4581
  call void @llvm.dbg.value(metadata i64 %1, metadata !4580, metadata !DIExpression()), !dbg !4581
  call void @llvm.dbg.value(metadata ptr %0, metadata !4582, metadata !DIExpression()), !dbg !4586
  call void @llvm.dbg.value(metadata i64 %1, metadata !4585, metadata !DIExpression()), !dbg !4586
  call void @llvm.dbg.value(metadata ptr %0, metadata !4559, metadata !DIExpression()), !dbg !4588
  call void @llvm.dbg.value(metadata i64 %1, metadata !4563, metadata !DIExpression()), !dbg !4588
  %3 = icmp eq i64 %1, 0, !dbg !4590
  %4 = select i1 %3, i64 1, i64 %1, !dbg !4590
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #44, !dbg !4591
  call void @llvm.dbg.value(metadata ptr %5, metadata !4489, metadata !DIExpression()), !dbg !4592
  %6 = icmp eq ptr %5, null, !dbg !4594
  br i1 %6, label %7, label %8, !dbg !4595

7:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4596
  unreachable, !dbg !4596

8:                                                ; preds = %2
  ret ptr %5, !dbg !4597
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #30 !dbg !4598 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4602, metadata !DIExpression()), !dbg !4605
  call void @llvm.dbg.value(metadata i64 %1, metadata !4603, metadata !DIExpression()), !dbg !4605
  call void @llvm.dbg.value(metadata i64 %2, metadata !4604, metadata !DIExpression()), !dbg !4605
  call void @llvm.dbg.value(metadata ptr %0, metadata !4606, metadata !DIExpression()), !dbg !4611
  call void @llvm.dbg.value(metadata i64 %1, metadata !4609, metadata !DIExpression()), !dbg !4611
  call void @llvm.dbg.value(metadata i64 %2, metadata !4610, metadata !DIExpression()), !dbg !4611
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #38, !dbg !4613
  call void @llvm.dbg.value(metadata ptr %4, metadata !4489, metadata !DIExpression()), !dbg !4614
  %5 = icmp eq ptr %4, null, !dbg !4616
  br i1 %5, label %6, label %7, !dbg !4617

6:                                                ; preds = %3
  tail call void @xalloc_die() #40, !dbg !4618
  unreachable, !dbg !4618

7:                                                ; preds = %3
  ret ptr %4, !dbg !4619
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4620 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4624, metadata !DIExpression()), !dbg !4626
  call void @llvm.dbg.value(metadata i64 %1, metadata !4625, metadata !DIExpression()), !dbg !4626
  call void @llvm.dbg.value(metadata ptr null, metadata !4481, metadata !DIExpression()), !dbg !4627
  call void @llvm.dbg.value(metadata i64 %0, metadata !4484, metadata !DIExpression()), !dbg !4627
  call void @llvm.dbg.value(metadata i64 %1, metadata !4485, metadata !DIExpression()), !dbg !4627
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #38, !dbg !4629
  call void @llvm.dbg.value(metadata ptr %3, metadata !4489, metadata !DIExpression()), !dbg !4630
  %4 = icmp eq ptr %3, null, !dbg !4632
  br i1 %4, label %5, label %6, !dbg !4633

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4634
  unreachable, !dbg !4634

6:                                                ; preds = %2
  ret ptr %3, !dbg !4635
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4636 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4640, metadata !DIExpression()), !dbg !4642
  call void @llvm.dbg.value(metadata i64 %1, metadata !4641, metadata !DIExpression()), !dbg !4642
  call void @llvm.dbg.value(metadata ptr null, metadata !4602, metadata !DIExpression()), !dbg !4643
  call void @llvm.dbg.value(metadata i64 %0, metadata !4603, metadata !DIExpression()), !dbg !4643
  call void @llvm.dbg.value(metadata i64 %1, metadata !4604, metadata !DIExpression()), !dbg !4643
  call void @llvm.dbg.value(metadata ptr null, metadata !4606, metadata !DIExpression()), !dbg !4645
  call void @llvm.dbg.value(metadata i64 %0, metadata !4609, metadata !DIExpression()), !dbg !4645
  call void @llvm.dbg.value(metadata i64 %1, metadata !4610, metadata !DIExpression()), !dbg !4645
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #38, !dbg !4647
  call void @llvm.dbg.value(metadata ptr %3, metadata !4489, metadata !DIExpression()), !dbg !4648
  %4 = icmp eq ptr %3, null, !dbg !4650
  br i1 %4, label %5, label %6, !dbg !4651

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4652
  unreachable, !dbg !4652

6:                                                ; preds = %2
  ret ptr %3, !dbg !4653
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !4654 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4658, metadata !DIExpression()), !dbg !4660
  call void @llvm.dbg.value(metadata ptr %1, metadata !4659, metadata !DIExpression()), !dbg !4660
  call void @llvm.dbg.value(metadata ptr %0, metadata !1050, metadata !DIExpression()), !dbg !4661
  call void @llvm.dbg.value(metadata ptr %1, metadata !1051, metadata !DIExpression()), !dbg !4661
  call void @llvm.dbg.value(metadata i64 1, metadata !1052, metadata !DIExpression()), !dbg !4661
  %3 = load i64, ptr %1, align 8, !dbg !4663, !tbaa !1517
  call void @llvm.dbg.value(metadata i64 %3, metadata !1053, metadata !DIExpression()), !dbg !4661
  %4 = icmp eq ptr %0, null, !dbg !4664
  br i1 %4, label %5, label %8, !dbg !4666

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4667
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4670
  br label %15, !dbg !4670

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !4671
  %10 = add nuw i64 %9, 1, !dbg !4671
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !4671
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !4671
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !4671
  call void @llvm.dbg.value(metadata i64 %13, metadata !1053, metadata !DIExpression()), !dbg !4661
  br i1 %12, label %14, label %15, !dbg !4674

14:                                               ; preds = %8
  tail call void @xalloc_die() #40, !dbg !4675
  unreachable, !dbg !4675

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !4661
  call void @llvm.dbg.value(metadata i64 %16, metadata !1053, metadata !DIExpression()), !dbg !4661
  call void @llvm.dbg.value(metadata ptr %0, metadata !4481, metadata !DIExpression()), !dbg !4676
  call void @llvm.dbg.value(metadata i64 %16, metadata !4484, metadata !DIExpression()), !dbg !4676
  call void @llvm.dbg.value(metadata i64 1, metadata !4485, metadata !DIExpression()), !dbg !4676
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #38, !dbg !4678
  call void @llvm.dbg.value(metadata ptr %17, metadata !4489, metadata !DIExpression()), !dbg !4679
  %18 = icmp eq ptr %17, null, !dbg !4681
  br i1 %18, label %19, label %20, !dbg !4682

19:                                               ; preds = %15
  tail call void @xalloc_die() #40, !dbg !4683
  unreachable, !dbg !4683

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !1050, metadata !DIExpression()), !dbg !4661
  store i64 %16, ptr %1, align 8, !dbg !4684, !tbaa !1517
  ret ptr %17, !dbg !4685
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !1045 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1050, metadata !DIExpression()), !dbg !4686
  call void @llvm.dbg.value(metadata ptr %1, metadata !1051, metadata !DIExpression()), !dbg !4686
  call void @llvm.dbg.value(metadata i64 %2, metadata !1052, metadata !DIExpression()), !dbg !4686
  %4 = load i64, ptr %1, align 8, !dbg !4687, !tbaa !1517
  call void @llvm.dbg.value(metadata i64 %4, metadata !1053, metadata !DIExpression()), !dbg !4686
  %5 = icmp eq ptr %0, null, !dbg !4688
  br i1 %5, label %6, label %13, !dbg !4689

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4690
  br i1 %7, label %8, label %20, !dbg !4691

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4692
  call void @llvm.dbg.value(metadata i64 %9, metadata !1053, metadata !DIExpression()), !dbg !4686
  %10 = icmp ugt i64 %2, 128, !dbg !4694
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !4695
  call void @llvm.dbg.value(metadata i64 %12, metadata !1053, metadata !DIExpression()), !dbg !4686
  br label %20, !dbg !4696

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !4697
  %15 = add nuw i64 %14, 1, !dbg !4697
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !4697
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !4697
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !4697
  call void @llvm.dbg.value(metadata i64 %18, metadata !1053, metadata !DIExpression()), !dbg !4686
  br i1 %17, label %19, label %20, !dbg !4698

19:                                               ; preds = %13
  tail call void @xalloc_die() #40, !dbg !4699
  unreachable, !dbg !4699

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !4686
  call void @llvm.dbg.value(metadata i64 %21, metadata !1053, metadata !DIExpression()), !dbg !4686
  call void @llvm.dbg.value(metadata ptr %0, metadata !4481, metadata !DIExpression()), !dbg !4700
  call void @llvm.dbg.value(metadata i64 %21, metadata !4484, metadata !DIExpression()), !dbg !4700
  call void @llvm.dbg.value(metadata i64 %2, metadata !4485, metadata !DIExpression()), !dbg !4700
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #38, !dbg !4702
  call void @llvm.dbg.value(metadata ptr %22, metadata !4489, metadata !DIExpression()), !dbg !4703
  %23 = icmp eq ptr %22, null, !dbg !4705
  br i1 %23, label %24, label %25, !dbg !4706

24:                                               ; preds = %20
  tail call void @xalloc_die() #40, !dbg !4707
  unreachable, !dbg !4707

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata ptr %22, metadata !1050, metadata !DIExpression()), !dbg !4686
  store i64 %21, ptr %1, align 8, !dbg !4708, !tbaa !1517
  ret ptr %22, !dbg !4709
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !1057 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1062, metadata !DIExpression()), !dbg !4710
  call void @llvm.dbg.value(metadata ptr %1, metadata !1063, metadata !DIExpression()), !dbg !4710
  call void @llvm.dbg.value(metadata i64 %2, metadata !1064, metadata !DIExpression()), !dbg !4710
  call void @llvm.dbg.value(metadata i64 %3, metadata !1065, metadata !DIExpression()), !dbg !4710
  call void @llvm.dbg.value(metadata i64 %4, metadata !1066, metadata !DIExpression()), !dbg !4710
  %6 = load i64, ptr %1, align 8, !dbg !4711, !tbaa !1517
  call void @llvm.dbg.value(metadata i64 %6, metadata !1067, metadata !DIExpression()), !dbg !4710
  %7 = ashr i64 %6, 1, !dbg !4712
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !4712
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !4712
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !4712
  call void @llvm.dbg.value(metadata i64 %10, metadata !1068, metadata !DIExpression()), !dbg !4710
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !4714
  call void @llvm.dbg.value(metadata i64 %11, metadata !1068, metadata !DIExpression()), !dbg !4710
  %12 = icmp sgt i64 %3, -1, !dbg !4715
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !4717
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !4717
  call void @llvm.dbg.value(metadata i64 %15, metadata !1068, metadata !DIExpression()), !dbg !4710
  %16 = icmp slt i64 %4, 0, !dbg !4718
  br i1 %16, label %17, label %30, !dbg !4718

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !4718
  br i1 %18, label %19, label %24, !dbg !4718

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !4718
  %21 = udiv i64 9223372036854775807, %20, !dbg !4718
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !4718
  br i1 %23, label %46, label %43, !dbg !4718

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !4718
  br i1 %25, label %43, label %26, !dbg !4718

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !4718
  %28 = udiv i64 -9223372036854775808, %27, !dbg !4718
  %29 = icmp ult i64 %28, %15, !dbg !4718
  br i1 %29, label %46, label %43, !dbg !4718

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !4718
  br i1 %31, label %43, label %32, !dbg !4718

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !4718
  br i1 %33, label %34, label %40, !dbg !4718

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !4718
  br i1 %35, label %43, label %36, !dbg !4718

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !4718
  %38 = udiv i64 -9223372036854775808, %37, !dbg !4718
  %39 = icmp ult i64 %38, %4, !dbg !4718
  br i1 %39, label %46, label %43, !dbg !4718

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4
  %42 = icmp ult i64 %41, %15, !dbg !4718
  br i1 %42, label %46, label %43, !dbg !4718

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !1069, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4710
  %44 = mul i64 %15, %4, !dbg !4718
  call void @llvm.dbg.value(metadata i64 %44, metadata !1069, metadata !DIExpression()), !dbg !4710
  %45 = icmp slt i64 %44, 128, !dbg !4718
  br i1 %45, label %46, label %52, !dbg !4718

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !1070, metadata !DIExpression()), !dbg !4710
  %48 = sdiv i64 %47, %4, !dbg !4719
  call void @llvm.dbg.value(metadata i64 %48, metadata !1068, metadata !DIExpression()), !dbg !4710
  %49 = mul i64 %48, %4
  %50 = sub i64 %47, %49
  %51 = sub nsw i64 %47, %50, !dbg !4722
  call void @llvm.dbg.value(metadata i64 %51, metadata !1069, metadata !DIExpression()), !dbg !4710
  br label %52, !dbg !4723

52:                                               ; preds = %43, %46
  %53 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !4710
  %54 = phi i64 [ %51, %46 ], [ %44, %43 ], !dbg !4710
  call void @llvm.dbg.value(metadata i64 %54, metadata !1069, metadata !DIExpression()), !dbg !4710
  call void @llvm.dbg.value(metadata i64 %53, metadata !1068, metadata !DIExpression()), !dbg !4710
  %55 = icmp eq ptr %0, null, !dbg !4724
  br i1 %55, label %56, label %57, !dbg !4726

56:                                               ; preds = %52
  store i64 0, ptr %1, align 8, !dbg !4727, !tbaa !1517
  br label %57, !dbg !4728

57:                                               ; preds = %56, %52
  %58 = sub nsw i64 %53, %6, !dbg !4729
  %59 = icmp slt i64 %58, %2, !dbg !4731
  br i1 %59, label %60, label %97, !dbg !4732

60:                                               ; preds = %57
  %61 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !4733
  %62 = extractvalue { i64, i1 } %61, 1, !dbg !4733
  %63 = extractvalue { i64, i1 } %61, 0, !dbg !4733
  call void @llvm.dbg.value(metadata i64 %63, metadata !1068, metadata !DIExpression()), !dbg !4710
  %64 = icmp sgt i64 %63, %3
  %65 = select i1 %12, i1 %64, i1 false
  %66 = or i1 %62, %65, !dbg !4734
  br i1 %66, label %96, label %67, !dbg !4734

67:                                               ; preds = %60
  br i1 %16, label %68, label %81, !dbg !4735

68:                                               ; preds = %67
  %69 = icmp slt i64 %63, 0, !dbg !4735
  br i1 %69, label %70, label %75, !dbg !4735

70:                                               ; preds = %68
  %71 = sub i64 0, %4, !dbg !4735
  %72 = udiv i64 9223372036854775807, %71, !dbg !4735
  %73 = sub nsw i64 0, %72
  %74 = icmp slt i64 %63, %73, !dbg !4735
  br i1 %74, label %96, label %94, !dbg !4735

75:                                               ; preds = %68
  %76 = icmp eq i64 %4, -1, !dbg !4735
  br i1 %76, label %94, label %77, !dbg !4735

77:                                               ; preds = %75
  %78 = sub i64 0, %4, !dbg !4735
  %79 = udiv i64 -9223372036854775808, %78, !dbg !4735
  %80 = icmp ult i64 %79, %63, !dbg !4735
  br i1 %80, label %96, label %94, !dbg !4735

81:                                               ; preds = %67
  %82 = icmp eq i64 %4, 0, !dbg !4735
  br i1 %82, label %94, label %83, !dbg !4735

83:                                               ; preds = %81
  %84 = icmp slt i64 %63, 0, !dbg !4735
  br i1 %84, label %85, label %91, !dbg !4735

85:                                               ; preds = %83
  %86 = icmp eq i64 %63, -1, !dbg !4735
  br i1 %86, label %94, label %87, !dbg !4735

87:                                               ; preds = %85
  %88 = sub i64 0, %63, !dbg !4735
  %89 = udiv i64 -9223372036854775808, %88, !dbg !4735
  %90 = icmp ult i64 %89, %4, !dbg !4735
  br i1 %90, label %96, label %94, !dbg !4735

91:                                               ; preds = %83
  %92 = udiv i64 9223372036854775807, %4
  %93 = icmp ult i64 %92, %63, !dbg !4735
  br i1 %93, label %96, label %94, !dbg !4735

94:                                               ; preds = %70, %77, %87, %91, %81, %75, %85
  call void @llvm.dbg.value(metadata !DIArgList(i64 %63, i64 %4), metadata !1069, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4710
  %95 = mul i64 %63, %4, !dbg !4735
  call void @llvm.dbg.value(metadata i64 %95, metadata !1069, metadata !DIExpression()), !dbg !4710
  br label %97, !dbg !4736

96:                                               ; preds = %70, %77, %87, %91, %60
  tail call void @xalloc_die() #40, !dbg !4737
  unreachable, !dbg !4737

97:                                               ; preds = %94, %57
  %98 = phi i64 [ %63, %94 ], [ %53, %57 ], !dbg !4710
  %99 = phi i64 [ %95, %94 ], [ %54, %57 ], !dbg !4710
  call void @llvm.dbg.value(metadata i64 %99, metadata !1069, metadata !DIExpression()), !dbg !4710
  call void @llvm.dbg.value(metadata i64 %98, metadata !1068, metadata !DIExpression()), !dbg !4710
  call void @llvm.dbg.value(metadata ptr %0, metadata !4556, metadata !DIExpression()), !dbg !4738
  call void @llvm.dbg.value(metadata i64 %99, metadata !4557, metadata !DIExpression()), !dbg !4738
  call void @llvm.dbg.value(metadata ptr %0, metadata !4559, metadata !DIExpression()), !dbg !4740
  call void @llvm.dbg.value(metadata i64 %99, metadata !4563, metadata !DIExpression()), !dbg !4740
  %100 = icmp eq i64 %99, 0, !dbg !4742
  %101 = select i1 %100, i64 1, i64 %99, !dbg !4742
  %102 = tail call ptr @realloc(ptr noundef %0, i64 noundef %101) #44, !dbg !4743
  call void @llvm.dbg.value(metadata ptr %102, metadata !4489, metadata !DIExpression()), !dbg !4744
  %103 = icmp eq ptr %102, null, !dbg !4746
  br i1 %103, label %104, label %105, !dbg !4747

104:                                              ; preds = %97
  tail call void @xalloc_die() #40, !dbg !4748
  unreachable, !dbg !4748

105:                                              ; preds = %97
  call void @llvm.dbg.value(metadata ptr %102, metadata !1062, metadata !DIExpression()), !dbg !4710
  store i64 %98, ptr %1, align 8, !dbg !4749, !tbaa !1517
  ret ptr %102, !dbg !4750
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !4751 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4753, metadata !DIExpression()), !dbg !4754
  call void @llvm.dbg.value(metadata i64 %0, metadata !4755, metadata !DIExpression()), !dbg !4759
  call void @llvm.dbg.value(metadata i64 1, metadata !4758, metadata !DIExpression()), !dbg !4759
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #46, !dbg !4761
  call void @llvm.dbg.value(metadata ptr %2, metadata !4489, metadata !DIExpression()), !dbg !4762
  %3 = icmp eq ptr %2, null, !dbg !4764
  br i1 %3, label %4, label %5, !dbg !4765

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !4766
  unreachable, !dbg !4766

5:                                                ; preds = %1
  ret ptr %2, !dbg !4767
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !4768 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #35

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4756 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4755, metadata !DIExpression()), !dbg !4769
  call void @llvm.dbg.value(metadata i64 %1, metadata !4758, metadata !DIExpression()), !dbg !4769
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #46, !dbg !4770
  call void @llvm.dbg.value(metadata ptr %3, metadata !4489, metadata !DIExpression()), !dbg !4771
  %4 = icmp eq ptr %3, null, !dbg !4773
  br i1 %4, label %5, label %6, !dbg !4774

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4775
  unreachable, !dbg !4775

6:                                                ; preds = %2
  ret ptr %3, !dbg !4776
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !4777 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4779, metadata !DIExpression()), !dbg !4780
  call void @llvm.dbg.value(metadata i64 %0, metadata !4781, metadata !DIExpression()), !dbg !4785
  call void @llvm.dbg.value(metadata i64 1, metadata !4784, metadata !DIExpression()), !dbg !4785
  call void @llvm.dbg.value(metadata i64 %0, metadata !4787, metadata !DIExpression()), !dbg !4791
  call void @llvm.dbg.value(metadata i64 1, metadata !4790, metadata !DIExpression()), !dbg !4791
  call void @llvm.dbg.value(metadata i64 %0, metadata !4787, metadata !DIExpression()), !dbg !4791
  call void @llvm.dbg.value(metadata i64 1, metadata !4790, metadata !DIExpression()), !dbg !4791
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #46, !dbg !4793
  call void @llvm.dbg.value(metadata ptr %2, metadata !4489, metadata !DIExpression()), !dbg !4794
  %3 = icmp eq ptr %2, null, !dbg !4796
  br i1 %3, label %4, label %5, !dbg !4797

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !4798
  unreachable, !dbg !4798

5:                                                ; preds = %1
  ret ptr %2, !dbg !4799
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4782 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4781, metadata !DIExpression()), !dbg !4800
  call void @llvm.dbg.value(metadata i64 %1, metadata !4784, metadata !DIExpression()), !dbg !4800
  call void @llvm.dbg.value(metadata i64 %0, metadata !4787, metadata !DIExpression()), !dbg !4801
  call void @llvm.dbg.value(metadata i64 %1, metadata !4790, metadata !DIExpression()), !dbg !4801
  call void @llvm.dbg.value(metadata i64 %0, metadata !4787, metadata !DIExpression()), !dbg !4801
  call void @llvm.dbg.value(metadata i64 %1, metadata !4790, metadata !DIExpression()), !dbg !4801
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #46, !dbg !4803
  call void @llvm.dbg.value(metadata ptr %3, metadata !4489, metadata !DIExpression()), !dbg !4804
  %4 = icmp eq ptr %3, null, !dbg !4806
  br i1 %4, label %5, label %6, !dbg !4807

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4808
  unreachable, !dbg !4808

6:                                                ; preds = %2
  ret ptr %3, !dbg !4809
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #32 !dbg !4810 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4814, metadata !DIExpression()), !dbg !4816
  call void @llvm.dbg.value(metadata i64 %1, metadata !4815, metadata !DIExpression()), !dbg !4816
  call void @llvm.dbg.value(metadata i64 %1, metadata !4511, metadata !DIExpression()), !dbg !4817
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #45, !dbg !4819
  call void @llvm.dbg.value(metadata ptr %3, metadata !4489, metadata !DIExpression()), !dbg !4820
  %4 = icmp eq ptr %3, null, !dbg !4822
  br i1 %4, label %5, label %6, !dbg !4823

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4824
  unreachable, !dbg !4824

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4825, metadata !DIExpression()), !dbg !4830
  call void @llvm.dbg.value(metadata ptr %0, metadata !4828, metadata !DIExpression()), !dbg !4830
  call void @llvm.dbg.value(metadata i64 %1, metadata !4829, metadata !DIExpression()), !dbg !4830
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #38, !dbg !4832
  ret ptr %3, !dbg !4833
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #32 !dbg !4834 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4838, metadata !DIExpression()), !dbg !4840
  call void @llvm.dbg.value(metadata i64 %1, metadata !4839, metadata !DIExpression()), !dbg !4840
  call void @llvm.dbg.value(metadata i64 %1, metadata !4524, metadata !DIExpression()), !dbg !4841
  call void @llvm.dbg.value(metadata i64 %1, metadata !4526, metadata !DIExpression()), !dbg !4843
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #45, !dbg !4845
  call void @llvm.dbg.value(metadata ptr %3, metadata !4489, metadata !DIExpression()), !dbg !4846
  %4 = icmp eq ptr %3, null, !dbg !4848
  br i1 %4, label %5, label %6, !dbg !4849

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4850
  unreachable, !dbg !4850

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4825, metadata !DIExpression()), !dbg !4851
  call void @llvm.dbg.value(metadata ptr %0, metadata !4828, metadata !DIExpression()), !dbg !4851
  call void @llvm.dbg.value(metadata i64 %1, metadata !4829, metadata !DIExpression()), !dbg !4851
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #38, !dbg !4853
  ret ptr %3, !dbg !4854
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4855 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4859, metadata !DIExpression()), !dbg !4862
  call void @llvm.dbg.value(metadata i64 %1, metadata !4860, metadata !DIExpression()), !dbg !4862
  %3 = add nsw i64 %1, 1, !dbg !4863
  call void @llvm.dbg.value(metadata i64 %3, metadata !4524, metadata !DIExpression()), !dbg !4864
  call void @llvm.dbg.value(metadata i64 %3, metadata !4526, metadata !DIExpression()), !dbg !4866
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #45, !dbg !4868
  call void @llvm.dbg.value(metadata ptr %4, metadata !4489, metadata !DIExpression()), !dbg !4869
  %5 = icmp eq ptr %4, null, !dbg !4871
  br i1 %5, label %6, label %7, !dbg !4872

6:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4873
  unreachable, !dbg !4873

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %4, metadata !4861, metadata !DIExpression()), !dbg !4862
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !4874
  store i8 0, ptr %8, align 1, !dbg !4875, !tbaa !1178
  call void @llvm.dbg.value(metadata ptr %4, metadata !4825, metadata !DIExpression()), !dbg !4876
  call void @llvm.dbg.value(metadata ptr %0, metadata !4828, metadata !DIExpression()), !dbg !4876
  call void @llvm.dbg.value(metadata i64 %1, metadata !4829, metadata !DIExpression()), !dbg !4876
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #38, !dbg !4878
  ret ptr %4, !dbg !4879
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !4880 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4882, metadata !DIExpression()), !dbg !4883
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #39, !dbg !4884
  %3 = add i64 %2, 1, !dbg !4885
  call void @llvm.dbg.value(metadata ptr %0, metadata !4814, metadata !DIExpression()), !dbg !4886
  call void @llvm.dbg.value(metadata i64 %3, metadata !4815, metadata !DIExpression()), !dbg !4886
  call void @llvm.dbg.value(metadata i64 %3, metadata !4511, metadata !DIExpression()), !dbg !4888
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #45, !dbg !4890
  call void @llvm.dbg.value(metadata ptr %4, metadata !4489, metadata !DIExpression()), !dbg !4891
  %5 = icmp eq ptr %4, null, !dbg !4893
  br i1 %5, label %6, label %7, !dbg !4894

6:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !4895
  unreachable, !dbg !4895

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !4825, metadata !DIExpression()), !dbg !4896
  call void @llvm.dbg.value(metadata ptr %0, metadata !4828, metadata !DIExpression()), !dbg !4896
  call void @llvm.dbg.value(metadata i64 %3, metadata !4829, metadata !DIExpression()), !dbg !4896
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #38, !dbg !4898
  ret ptr %4, !dbg !4899
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4900 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !4905, !tbaa !1169
  call void @llvm.dbg.value(metadata i32 %1, metadata !4902, metadata !DIExpression()), !dbg !4906
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.226, ptr noundef nonnull @.str.2.227, i32 noundef 5) #38, !dbg !4905
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.228, ptr noundef %2) #38, !dbg !4905
  %3 = icmp eq i32 %1, 0, !dbg !4905
  tail call void @llvm.assume(i1 %3), !dbg !4905
  tail call void @abort() #40, !dbg !4907
  unreachable, !dbg !4907
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #28

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !4908 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4946, metadata !DIExpression()), !dbg !4951
  %2 = tail call i64 @__fpending(ptr noundef %0) #38, !dbg !4952
  call void @llvm.dbg.value(metadata i1 poison, metadata !4947, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4951
  call void @llvm.dbg.value(metadata ptr %0, metadata !4953, metadata !DIExpression()), !dbg !4956
  %3 = load i32, ptr %0, align 8, !dbg !4958, !tbaa !1561
  %4 = and i32 %3, 32, !dbg !4959
  %5 = icmp eq i32 %4, 0, !dbg !4959
  call void @llvm.dbg.value(metadata i1 %5, metadata !4949, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4951
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #38, !dbg !4960
  %7 = icmp eq i32 %6, 0, !dbg !4961
  call void @llvm.dbg.value(metadata i1 %7, metadata !4950, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4951
  br i1 %5, label %8, label %18, !dbg !4962

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !4964
  call void @llvm.dbg.value(metadata i1 %9, metadata !4947, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4951
  %10 = select i1 %7, i1 true, i1 %9, !dbg !4965
  %11 = xor i1 %7, true, !dbg !4965
  %12 = sext i1 %11 to i32, !dbg !4965
  br i1 %10, label %21, label %13, !dbg !4965

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #41, !dbg !4966
  %15 = load i32, ptr %14, align 4, !dbg !4966, !tbaa !1169
  %16 = icmp ne i32 %15, 9, !dbg !4967
  %17 = sext i1 %16 to i32, !dbg !4968
  br label %21, !dbg !4968

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !4969

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #41, !dbg !4971
  store i32 0, ptr %20, align 4, !dbg !4973, !tbaa !1169
  br label %21, !dbg !4971

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !4951
  ret i32 %22, !dbg !4974
}

; Function Attrs: nounwind
declare !dbg !4975 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !4978 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4983, metadata !DIExpression()), !dbg !4988
  call void @llvm.dbg.value(metadata ptr %1, metadata !4984, metadata !DIExpression()), !dbg !4988
  call void @llvm.dbg.value(metadata i64 %2, metadata !4985, metadata !DIExpression()), !dbg !4988
  call void @llvm.dbg.value(metadata ptr %3, metadata !4986, metadata !DIExpression()), !dbg !4988
  %5 = icmp eq ptr %1, null, !dbg !4989
  %6 = select i1 %5, ptr null, ptr %0, !dbg !4991
  %7 = select i1 %5, ptr @.str.233, ptr %1, !dbg !4991
  %8 = select i1 %5, i64 1, i64 %2, !dbg !4991
  call void @llvm.dbg.value(metadata i64 %8, metadata !4985, metadata !DIExpression()), !dbg !4988
  call void @llvm.dbg.value(metadata ptr %7, metadata !4984, metadata !DIExpression()), !dbg !4988
  call void @llvm.dbg.value(metadata ptr %6, metadata !4983, metadata !DIExpression()), !dbg !4988
  %9 = icmp eq ptr %3, null, !dbg !4992
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !4994
  call void @llvm.dbg.value(metadata ptr %10, metadata !4986, metadata !DIExpression()), !dbg !4988
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %10) #38, !dbg !4995
  call void @llvm.dbg.value(metadata i64 %11, metadata !4987, metadata !DIExpression()), !dbg !4988
  %12 = icmp ult i64 %11, -3, !dbg !4996
  br i1 %12, label %13, label %17, !dbg !4998

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef %10) #39, !dbg !4999
  %15 = icmp eq i32 %14, 0, !dbg !4999
  br i1 %15, label %16, label %29, !dbg !5000

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !5001, metadata !DIExpression()), !dbg !5006
  call void @llvm.dbg.value(metadata ptr %10, metadata !5008, metadata !DIExpression()), !dbg !5013
  call void @llvm.dbg.value(metadata i32 0, metadata !5011, metadata !DIExpression()), !dbg !5013
  call void @llvm.dbg.value(metadata i64 8, metadata !5012, metadata !DIExpression()), !dbg !5013
  store i64 0, ptr %10, align 1, !dbg !5015
  br label %29, !dbg !5016

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !5017
  br i1 %18, label %19, label %20, !dbg !5019

19:                                               ; preds = %17
  tail call void @abort() #40, !dbg !5020
  unreachable, !dbg !5020

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !5021

22:                                               ; preds = %20
  %23 = tail call i1 @hard_locale(i32 noundef 0) #38, !dbg !5023
  br i1 %23, label %29, label %24, !dbg !5024

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !5025
  br i1 %25, label %29, label %26, !dbg !5028

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !5029, !tbaa !1178
  %28 = zext i8 %27 to i32, !dbg !5030
  store i32 %28, ptr %6, align 4, !dbg !5031, !tbaa !1169
  br label %29, !dbg !5032

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !4988
  ret i64 %30, !dbg !5033
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !5034 i32 @mbsinit(ptr noundef) local_unnamed_addr #36

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #37 !dbg !5040 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !5042, metadata !DIExpression()), !dbg !5046
  call void @llvm.dbg.value(metadata i64 %1, metadata !5043, metadata !DIExpression()), !dbg !5046
  call void @llvm.dbg.value(metadata i64 %2, metadata !5044, metadata !DIExpression()), !dbg !5046
  %4 = icmp eq i64 %2, 0, !dbg !5047
  br i1 %4, label %8, label %5, !dbg !5047

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !5047
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !5047
  br i1 %7, label %13, label %8, !dbg !5047

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !5045, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !5046
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !5045, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !5046
  %9 = mul i64 %2, %1, !dbg !5047
  call void @llvm.dbg.value(metadata i64 %9, metadata !5045, metadata !DIExpression()), !dbg !5046
  call void @llvm.dbg.value(metadata ptr %0, metadata !5049, metadata !DIExpression()), !dbg !5053
  call void @llvm.dbg.value(metadata i64 %9, metadata !5052, metadata !DIExpression()), !dbg !5053
  %10 = icmp eq i64 %9, 0, !dbg !5055
  %11 = select i1 %10, i64 1, i64 %9, !dbg !5055
  %12 = tail call ptr @realloc(ptr noundef %0, i64 noundef %11) #44, !dbg !5056
  br label %15, !dbg !5057

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !5045, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !5046
  %14 = tail call ptr @__errno_location() #41, !dbg !5058
  store i32 12, ptr %14, align 4, !dbg !5060, !tbaa !1169
  br label %15, !dbg !5061

15:                                               ; preds = %8, %13
  %16 = phi ptr [ null, %13 ], [ %12, %8 ], !dbg !5046
  ret ptr %16, !dbg !5062
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !5063 {
  %2 = alloca [257 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !5065, metadata !DIExpression()), !dbg !5070
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #38, !dbg !5071
  call void @llvm.dbg.declare(metadata ptr %2, metadata !5066, metadata !DIExpression()), !dbg !5072
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #38, !dbg !5073
  %4 = icmp eq i32 %3, 0, !dbg !5073
  br i1 %4, label %5, label %12, !dbg !5075

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !5076, metadata !DIExpression()), !dbg !5080
  call void @llvm.dbg.value(metadata ptr @.str.238, metadata !5079, metadata !DIExpression()), !dbg !5080
  %6 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %2, ptr noundef nonnull dereferenceable(2) @.str.238, i64 2), !dbg !5083
  %7 = icmp eq i32 %6, 0, !dbg !5084
  br i1 %7, label %11, label %8, !dbg !5085

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !5076, metadata !DIExpression()), !dbg !5086
  call void @llvm.dbg.value(metadata ptr @.str.1.239, metadata !5079, metadata !DIExpression()), !dbg !5086
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.239, i64 6), !dbg !5088
  %10 = icmp eq i32 %9, 0, !dbg !5089
  br i1 %10, label %11, label %12, !dbg !5090

11:                                               ; preds = %8, %5
  br label %12, !dbg !5091

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !5070
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #38, !dbg !5092
  ret i1 %13, !dbg !5092
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !5093 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5097, metadata !DIExpression()), !dbg !5100
  call void @llvm.dbg.value(metadata ptr %1, metadata !5098, metadata !DIExpression()), !dbg !5100
  call void @llvm.dbg.value(metadata i64 %2, metadata !5099, metadata !DIExpression()), !dbg !5100
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #38, !dbg !5101
  ret i32 %4, !dbg !5102
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !5103 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5107, metadata !DIExpression()), !dbg !5108
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #38, !dbg !5109
  ret ptr %2, !dbg !5110
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !5111 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5113, metadata !DIExpression()), !dbg !5115
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #38, !dbg !5116
  call void @llvm.dbg.value(metadata ptr %2, metadata !5114, metadata !DIExpression()), !dbg !5115
  ret ptr %2, !dbg !5117
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !5118 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5120, metadata !DIExpression()), !dbg !5127
  call void @llvm.dbg.value(metadata ptr %1, metadata !5121, metadata !DIExpression()), !dbg !5127
  call void @llvm.dbg.value(metadata i64 %2, metadata !5122, metadata !DIExpression()), !dbg !5127
  call void @llvm.dbg.value(metadata i32 %0, metadata !5113, metadata !DIExpression()), !dbg !5128
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #38, !dbg !5130
  call void @llvm.dbg.value(metadata ptr %4, metadata !5114, metadata !DIExpression()), !dbg !5128
  call void @llvm.dbg.value(metadata ptr %4, metadata !5123, metadata !DIExpression()), !dbg !5127
  %5 = icmp eq ptr %4, null, !dbg !5131
  br i1 %5, label %6, label %9, !dbg !5132

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !5133
  br i1 %7, label %19, label %8, !dbg !5136

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !5137, !tbaa !1178
  br label %19, !dbg !5138

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #39, !dbg !5139
  call void @llvm.dbg.value(metadata i64 %10, metadata !5124, metadata !DIExpression()), !dbg !5140
  %11 = icmp ult i64 %10, %2, !dbg !5141
  br i1 %11, label %12, label %14, !dbg !5143

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !5144
  call void @llvm.dbg.value(metadata ptr %1, metadata !5146, metadata !DIExpression()), !dbg !5151
  call void @llvm.dbg.value(metadata ptr %4, metadata !5149, metadata !DIExpression()), !dbg !5151
  call void @llvm.dbg.value(metadata i64 %13, metadata !5150, metadata !DIExpression()), !dbg !5151
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #38, !dbg !5153
  br label %19, !dbg !5154

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !5155
  br i1 %15, label %19, label %16, !dbg !5158

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !5159
  call void @llvm.dbg.value(metadata ptr %1, metadata !5146, metadata !DIExpression()), !dbg !5161
  call void @llvm.dbg.value(metadata ptr %4, metadata !5149, metadata !DIExpression()), !dbg !5161
  call void @llvm.dbg.value(metadata i64 %17, metadata !5150, metadata !DIExpression()), !dbg !5161
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #38, !dbg !5163
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !5164
  store i8 0, ptr %18, align 1, !dbg !5165, !tbaa !1178
  br label %19, !dbg !5166

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !5167
  ret i32 %20, !dbg !5168
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
attributes #36 = { mustprogress nofree nounwind willreturn memory(read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #37 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #38 = { nounwind }
attributes #39 = { nounwind willreturn memory(read) }
attributes #40 = { noreturn nounwind }
attributes #41 = { nounwind willreturn memory(none) }
attributes #42 = { noreturn }
attributes #43 = { cold }
attributes #44 = { nounwind allocsize(1) }
attributes #45 = { nounwind allocsize(0) }
attributes #46 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!76, !677, !1017, !1019, !681, !696, !983, !1024, !1026, !1029, !1031, !1033, !753, !765, !779, !827, !1035, !975, !1041, !1072, !1074, !999, !1076, !1079, !1081, !1083}
!llvm.ident = !{!1085, !1085, !1085, !1085, !1085, !1085, !1085, !1085, !1085, !1085, !1085, !1085, !1085, !1085, !1085, !1085, !1085, !1085, !1085, !1085, !1085, !1085, !1085, !1085, !1085, !1085}
!llvm.module.flags = !{!1086, !1087, !1088, !1089, !1090, !1091, !1092}

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
!75 = distinct !DIGlobalVariable(name: "long_options", scope: !76, file: !2, line: 82, type: !661, isLocal: true, isDefinition: true)
!76 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !77, retainedTypes: !221, globals: !223, splitDebugInlining: false, nameTableKind: None)
!77 = !{!78, !84, !87, !93, !108, !207}
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
!108 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !109, file: !2, line: 290, baseType: !79, size: 32, elements: !202)
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
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !164, line: 46, baseType: !165)
!164 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!165 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !116, file: !117, line: 96, baseType: !89, size: 32, offset: 1536)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !116, file: !117, line: 98, baseType: !168, size: 160, offset: 1568)
!168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !169)
!169 = !{!170}
!170 = !DISubrange(count: 20)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!173 = !{!174, !175, !176, !180, !181, !182, !183, !184, !185, !186, !187, !188, !190, !191, !192}
!174 = !DILocalVariable(name: "fp", arg: 1, scope: !109, file: !2, line: 278, type: !113)
!175 = !DILocalVariable(name: "filename", arg: 2, scope: !109, file: !2, line: 278, type: !171)
!176 = !DILocalVariable(name: "line_number", scope: !109, file: !2, line: 280, type: !177)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !178, line: 130, baseType: !179)
!178 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !164, line: 35, baseType: !142)
!180 = !DILocalVariable(name: "next_G_line", scope: !109, file: !2, line: 281, type: !171)
!181 = !DILocalVariable(name: "input_line", scope: !109, file: !2, line: 282, type: !121)
!182 = !DILocalVariable(name: "input_line_size", scope: !109, file: !2, line: 283, type: !163)
!183 = !DILocalVariable(name: "line", scope: !109, file: !2, line: 284, type: !171)
!184 = !DILocalVariable(name: "term", scope: !109, file: !2, line: 285, type: !171)
!185 = !DILocalVariable(name: "colorterm", scope: !109, file: !2, line: 286, type: !171)
!186 = !DILocalVariable(name: "ok", scope: !109, file: !2, line: 287, type: !112)
!187 = !DILocalVariable(name: "state", scope: !109, file: !2, line: 290, type: !108)
!188 = !DILocalVariable(name: "keywd", scope: !189, file: !2, line: 304, type: !121)
!189 = distinct !DILexicalBlock(scope: !109, file: !2, line: 303, column: 5)
!190 = !DILocalVariable(name: "arg", scope: !189, file: !2, line: 304, type: !121)
!191 = !DILocalVariable(name: "unrecognized", scope: !189, file: !2, line: 305, type: !112)
!192 = !DILocalVariable(name: "i", scope: !193, file: !2, line: 375, type: !89)
!193 = distinct !DILexicalBlock(scope: !194, file: !2, line: 374, column: 17)
!194 = distinct !DILexicalBlock(scope: !195, file: !2, line: 367, column: 24)
!195 = distinct !DILexicalBlock(scope: !196, file: !2, line: 365, column: 24)
!196 = distinct !DILexicalBlock(scope: !197, file: !2, line: 363, column: 19)
!197 = distinct !DILexicalBlock(scope: !198, file: !2, line: 362, column: 13)
!198 = distinct !DILexicalBlock(scope: !199, file: !2, line: 361, column: 15)
!199 = distinct !DILexicalBlock(scope: !200, file: !2, line: 357, column: 9)
!200 = distinct !DILexicalBlock(scope: !201, file: !2, line: 351, column: 16)
!201 = distinct !DILexicalBlock(scope: !189, file: !2, line: 346, column: 11)
!202 = !{!203, !204, !205, !206}
!203 = !DIEnumerator(name: "ST_TERMNO", value: 0)
!204 = !DIEnumerator(name: "ST_TERMYES", value: 1)
!205 = !DIEnumerator(name: "ST_TERMSURE", value: 2)
!206 = !DIEnumerator(name: "ST_GLOBAL", value: 3)
!207 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !208, line: 42, baseType: !79, size: 32, elements: !209)
!208 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!209 = !{!210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220}
!210 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!211 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!212 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!213 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!214 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!215 = !DIEnumerator(name: "c_quoting_style", value: 5)
!216 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!217 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!218 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!219 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!220 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!221 = !{!121, !161, !163, !165, !171, !89, !144, !222}
!222 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!223 = !{!0, !7, !12, !17, !22, !27, !32, !37, !42, !47, !52, !57, !62, !64, !69, !224, !229, !234, !239, !241, !246, !248, !253, !255, !260, !265, !270, !275, !326, !328, !358, !363, !365, !367, !372, !377, !379, !381, !383, !385, !387, !389, !394, !399, !401, !403, !405, !407, !409, !411, !413, !418, !420, !425, !427, !429, !431, !433, !438, !443, !445, !447, !452, !457, !462, !464, !469, !471, !473, !475, !477, !479, !481, !74, !483, !489, !491, !493, !495, !497, !499, !504, !506, !508, !513, !518, !523, !525, !527, !529, !531, !533, !535, !537, !539, !541, !543, !545, !547, !549, !551, !553, !555, !557, !559, !561, !563, !565, !567, !569, !571, !573, !575, !577, !579, !581, !583, !585, !587, !589, !591, !593, !595, !597, !599, !605, !607, !609, !611, !613, !615, !617, !619, !621, !623, !625, !627, !629, !631, !633, !635, !637, !639, !641, !643, !645, !647, !649, !651, !653, !655, !657, !659}
!224 = !DIGlobalVariableExpression(var: !225, expr: !DIExpression())
!225 = distinct !DIGlobalVariable(scope: null, file: !2, line: 465, type: !226, isLocal: true, isDefinition: true)
!226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !227)
!227 = !{!228}
!228 = !DISubrange(count: 14)
!229 = !DIGlobalVariableExpression(var: !230, expr: !DIExpression())
!230 = distinct !DIGlobalVariable(scope: null, file: !2, line: 465, type: !231, isLocal: true, isDefinition: true)
!231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !232)
!232 = !{!233}
!233 = !DISubrange(count: 15)
!234 = !DIGlobalVariableExpression(var: !235, expr: !DIExpression())
!235 = distinct !DIGlobalVariable(scope: null, file: !2, line: 478, type: !236, isLocal: true, isDefinition: true)
!236 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 736, elements: !237)
!237 = !{!238}
!238 = !DISubrange(count: 92)
!239 = !DIGlobalVariableExpression(var: !240, expr: !DIExpression())
!240 = distinct !DIGlobalVariable(scope: null, file: !2, line: 486, type: !29, isLocal: true, isDefinition: true)
!241 = !DIGlobalVariableExpression(var: !242, expr: !DIExpression())
!242 = distinct !DIGlobalVariable(scope: null, file: !2, line: 494, type: !243, isLocal: true, isDefinition: true)
!243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !244)
!244 = !{!245}
!245 = !DISubrange(count: 17)
!246 = !DIGlobalVariableExpression(var: !247, expr: !DIExpression())
!247 = distinct !DIGlobalVariable(scope: null, file: !2, line: 497, type: !71, isLocal: true, isDefinition: true)
!248 = !DIGlobalVariableExpression(var: !249, expr: !DIExpression())
!249 = distinct !DIGlobalVariable(scope: null, file: !2, line: 497, type: !250, isLocal: true, isDefinition: true)
!250 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !251)
!251 = !{!252}
!252 = !DISubrange(count: 60)
!253 = !DIGlobalVariableExpression(var: !254, expr: !DIExpression())
!254 = distinct !DIGlobalVariable(scope: null, file: !2, line: 519, type: !49, isLocal: true, isDefinition: true)
!255 = !DIGlobalVariableExpression(var: !256, expr: !DIExpression())
!256 = distinct !DIGlobalVariable(scope: null, file: !2, line: 539, type: !257, isLocal: true, isDefinition: true)
!257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !258)
!258 = !{!259}
!259 = !DISubrange(count: 12)
!260 = !DIGlobalVariableExpression(var: !261, expr: !DIExpression())
!261 = distinct !DIGlobalVariable(scope: null, file: !2, line: 540, type: !262, isLocal: true, isDefinition: true)
!262 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !263)
!263 = !{!264}
!264 = !DISubrange(count: 21)
!265 = !DIGlobalVariableExpression(var: !266, expr: !DIExpression())
!266 = distinct !DIGlobalVariable(scope: null, file: !2, line: 544, type: !267, isLocal: true, isDefinition: true)
!267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !268)
!268 = !{!269}
!269 = !DISubrange(count: 19)
!270 = !DIGlobalVariableExpression(var: !271, expr: !DIExpression())
!271 = distinct !DIGlobalVariable(scope: null, file: !2, line: 545, type: !272, isLocal: true, isDefinition: true)
!272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !273)
!273 = !{!274}
!274 = !DISubrange(count: 3)
!275 = !DIGlobalVariableExpression(var: !276, expr: !DIExpression())
!276 = distinct !DIGlobalVariable(name: "lsc_obstack", scope: !76, file: !2, line: 51, type: !277, isLocal: true, isDefinition: true)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !278, line: 210, size: 704, elements: !279)
!278 = !DIFile(filename: "./lib/obstack.h", directory: "/src", checksumkind: CSK_MD5, checksum: "8dc5712d9cd0944565da172aee39448c")
!279 = !{!280, !281, !291, !292, !293, !294, !299, !300, !311, !322, !323, !324, !325}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !277, file: !278, line: 212, baseType: !163, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !277, file: !278, line: 213, baseType: !282, size: 64, offset: 64)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !278, line: 203, size: 128, elements: !284)
!284 = !{!285, !286, !287}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !283, file: !278, line: 205, baseType: !121, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !283, file: !278, line: 206, baseType: !282, size: 64, offset: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !283, file: !278, line: 207, baseType: !288, offset: 128)
!288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !289)
!289 = !{!290}
!290 = !DISubrange(count: -1)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !277, file: !278, line: 214, baseType: !121, size: 64, offset: 128)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !277, file: !278, line: 215, baseType: !121, size: 64, offset: 192)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !277, file: !278, line: 216, baseType: !121, size: 64, offset: 256)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !277, file: !278, line: 221, baseType: !295, size: 64, offset: 320)
!295 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !277, file: !278, line: 217, size: 64, elements: !296)
!296 = !{!297, !298}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "tempint", scope: !295, file: !278, line: 219, baseType: !163, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "tempptr", scope: !295, file: !278, line: 220, baseType: !161, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !277, file: !278, line: 222, baseType: !163, size: 64, offset: 384)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !277, file: !278, line: 229, baseType: !301, size: 64, offset: 448)
!301 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !277, file: !278, line: 225, size: 64, elements: !302)
!302 = !{!303, !307}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "plain", scope: !301, file: !278, line: 227, baseType: !304, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = !DISubroutineType(types: !306)
!306 = !{!161, !163}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !301, file: !278, line: 228, baseType: !308, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = !DISubroutineType(types: !310)
!310 = !{!161, !161, !163}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !277, file: !278, line: 234, baseType: !312, size: 64, offset: 512)
!312 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !277, file: !278, line: 230, size: 64, elements: !313)
!313 = !{!314, !318}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "plain", scope: !312, file: !278, line: 232, baseType: !315, size: 64)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = !DISubroutineType(types: !317)
!317 = !{null, !161}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !312, file: !278, line: 233, baseType: !319, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = !DISubroutineType(types: !321)
!321 = !{null, !161, !161}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !277, file: !278, line: 236, baseType: !161, size: 64, offset: 576)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !277, file: !278, line: 237, baseType: !79, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !277, file: !278, line: 238, baseType: !79, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !277, file: !278, line: 242, baseType: !79, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!326 = !DIGlobalVariableExpression(var: !327, expr: !DIExpression())
!327 = distinct !DIGlobalVariable(name: "print_ls_colors", scope: !76, file: !2, line: 73, type: !112, isLocal: true, isDefinition: true)
!328 = !DIGlobalVariableExpression(var: !329, expr: !DIExpression())
!329 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !330, file: !88, line: 575, type: !89, isLocal: true, isDefinition: true)
!330 = distinct !DISubprogram(name: "oputs_", scope: !88, file: !88, line: 573, type: !331, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !333)
!331 = !DISubroutineType(cc: DW_CC_nocall, types: !332)
!332 = !{null, !171, !171}
!333 = !{!334, !335, !336, !339, !340, !341, !342, !346, !347, !348, !349, !351, !352, !353, !354, !356, !357}
!334 = !DILocalVariable(name: "program", arg: 1, scope: !330, file: !88, line: 573, type: !171)
!335 = !DILocalVariable(name: "option", arg: 2, scope: !330, file: !88, line: 573, type: !171)
!336 = !DILocalVariable(name: "term", scope: !337, file: !88, line: 585, type: !171)
!337 = distinct !DILexicalBlock(scope: !338, file: !88, line: 582, column: 5)
!338 = distinct !DILexicalBlock(scope: !330, file: !88, line: 581, column: 7)
!339 = !DILocalVariable(name: "double_space", scope: !330, file: !88, line: 594, type: !112)
!340 = !DILocalVariable(name: "first_word", scope: !330, file: !88, line: 595, type: !171)
!341 = !DILocalVariable(name: "option_text", scope: !330, file: !88, line: 596, type: !171)
!342 = !DILocalVariable(name: "s", scope: !343, file: !88, line: 608, type: !171)
!343 = distinct !DILexicalBlock(scope: !344, file: !88, line: 605, column: 5)
!344 = distinct !DILexicalBlock(scope: !345, file: !88, line: 604, column: 12)
!345 = distinct !DILexicalBlock(scope: !330, file: !88, line: 597, column: 7)
!346 = !DILocalVariable(name: "spaces", scope: !343, file: !88, line: 609, type: !163)
!347 = !DILocalVariable(name: "anchor_len", scope: !330, file: !88, line: 620, type: !163)
!348 = !DILocalVariable(name: "desc_text", scope: !330, file: !88, line: 625, type: !171)
!349 = !DILocalVariable(name: "__ptr", scope: !350, file: !88, line: 644, type: !171)
!350 = distinct !DILexicalBlock(scope: !330, file: !88, line: 644, column: 3)
!351 = !DILocalVariable(name: "__stream", scope: !350, file: !88, line: 644, type: !113)
!352 = !DILocalVariable(name: "__cnt", scope: !350, file: !88, line: 644, type: !163)
!353 = !DILocalVariable(name: "url_program", scope: !330, file: !88, line: 648, type: !171)
!354 = !DILocalVariable(name: "__ptr", scope: !355, file: !88, line: 686, type: !171)
!355 = distinct !DILexicalBlock(scope: !330, file: !88, line: 686, column: 3)
!356 = !DILocalVariable(name: "__stream", scope: !355, file: !88, line: 686, type: !113)
!357 = !DILocalVariable(name: "__cnt", scope: !355, file: !88, line: 686, type: !163)
!358 = !DIGlobalVariableExpression(var: !359, expr: !DIExpression())
!359 = distinct !DIGlobalVariable(scope: null, file: !88, line: 585, type: !360, isLocal: true, isDefinition: true)
!360 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !361)
!361 = !{!362}
!362 = !DISubrange(count: 5)
!363 = !DIGlobalVariableExpression(var: !364, expr: !DIExpression())
!364 = distinct !DIGlobalVariable(scope: null, file: !88, line: 586, type: !360, isLocal: true, isDefinition: true)
!365 = !DIGlobalVariableExpression(var: !366, expr: !DIExpression())
!366 = distinct !DIGlobalVariable(scope: null, file: !88, line: 595, type: !71, isLocal: true, isDefinition: true)
!367 = !DIGlobalVariableExpression(var: !368, expr: !DIExpression())
!368 = distinct !DIGlobalVariable(scope: null, file: !88, line: 620, type: !369, isLocal: true, isDefinition: true)
!369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !370)
!370 = !{!371}
!371 = !DISubrange(count: 6)
!372 = !DIGlobalVariableExpression(var: !373, expr: !DIExpression())
!373 = distinct !DIGlobalVariable(scope: null, file: !88, line: 648, type: !374, isLocal: true, isDefinition: true)
!374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !375)
!375 = !{!376}
!376 = !DISubrange(count: 2)
!377 = !DIGlobalVariableExpression(var: !378, expr: !DIExpression())
!378 = distinct !DIGlobalVariable(scope: null, file: !88, line: 648, type: !360, isLocal: true, isDefinition: true)
!379 = !DIGlobalVariableExpression(var: !380, expr: !DIExpression())
!380 = distinct !DIGlobalVariable(scope: null, file: !88, line: 649, type: !71, isLocal: true, isDefinition: true)
!381 = !DIGlobalVariableExpression(var: !382, expr: !DIExpression())
!382 = distinct !DIGlobalVariable(scope: null, file: !88, line: 649, type: !272, isLocal: true, isDefinition: true)
!383 = !DIGlobalVariableExpression(var: !384, expr: !DIExpression())
!384 = distinct !DIGlobalVariable(scope: null, file: !88, line: 650, type: !360, isLocal: true, isDefinition: true)
!385 = !DIGlobalVariableExpression(var: !386, expr: !DIExpression())
!386 = distinct !DIGlobalVariable(scope: null, file: !88, line: 651, type: !369, isLocal: true, isDefinition: true)
!387 = !DIGlobalVariableExpression(var: !388, expr: !DIExpression())
!388 = distinct !DIGlobalVariable(scope: null, file: !88, line: 651, type: !369, isLocal: true, isDefinition: true)
!389 = !DIGlobalVariableExpression(var: !390, expr: !DIExpression())
!390 = distinct !DIGlobalVariable(scope: null, file: !88, line: 652, type: !391, isLocal: true, isDefinition: true)
!391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !392)
!392 = !{!393}
!393 = !DISubrange(count: 7)
!394 = !DIGlobalVariableExpression(var: !395, expr: !DIExpression())
!395 = distinct !DIGlobalVariable(scope: null, file: !88, line: 653, type: !396, isLocal: true, isDefinition: true)
!396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !397)
!397 = !{!398}
!398 = !DISubrange(count: 8)
!399 = !DIGlobalVariableExpression(var: !400, expr: !DIExpression())
!400 = distinct !DIGlobalVariable(scope: null, file: !88, line: 654, type: !19, isLocal: true, isDefinition: true)
!401 = !DIGlobalVariableExpression(var: !402, expr: !DIExpression())
!402 = distinct !DIGlobalVariable(scope: null, file: !88, line: 655, type: !19, isLocal: true, isDefinition: true)
!403 = !DIGlobalVariableExpression(var: !404, expr: !DIExpression())
!404 = distinct !DIGlobalVariable(scope: null, file: !88, line: 656, type: !19, isLocal: true, isDefinition: true)
!405 = !DIGlobalVariableExpression(var: !406, expr: !DIExpression())
!406 = distinct !DIGlobalVariable(scope: null, file: !88, line: 657, type: !19, isLocal: true, isDefinition: true)
!407 = !DIGlobalVariableExpression(var: !408, expr: !DIExpression())
!408 = distinct !DIGlobalVariable(scope: null, file: !88, line: 663, type: !391, isLocal: true, isDefinition: true)
!409 = !DIGlobalVariableExpression(var: !410, expr: !DIExpression())
!410 = distinct !DIGlobalVariable(scope: null, file: !88, line: 664, type: !19, isLocal: true, isDefinition: true)
!411 = !DIGlobalVariableExpression(var: !412, expr: !DIExpression())
!412 = distinct !DIGlobalVariable(scope: null, file: !88, line: 669, type: !243, isLocal: true, isDefinition: true)
!413 = !DIGlobalVariableExpression(var: !414, expr: !DIExpression())
!414 = distinct !DIGlobalVariable(scope: null, file: !88, line: 669, type: !415, isLocal: true, isDefinition: true)
!415 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !416)
!416 = !{!417}
!417 = !DISubrange(count: 40)
!418 = !DIGlobalVariableExpression(var: !419, expr: !DIExpression())
!419 = distinct !DIGlobalVariable(scope: null, file: !88, line: 676, type: !231, isLocal: true, isDefinition: true)
!420 = !DIGlobalVariableExpression(var: !421, expr: !DIExpression())
!421 = distinct !DIGlobalVariable(scope: null, file: !88, line: 676, type: !422, isLocal: true, isDefinition: true)
!422 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 488, elements: !423)
!423 = !{!424}
!424 = !DISubrange(count: 61)
!425 = !DIGlobalVariableExpression(var: !426, expr: !DIExpression())
!426 = distinct !DIGlobalVariable(scope: null, file: !88, line: 679, type: !272, isLocal: true, isDefinition: true)
!427 = !DIGlobalVariableExpression(var: !428, expr: !DIExpression())
!428 = distinct !DIGlobalVariable(scope: null, file: !88, line: 683, type: !360, isLocal: true, isDefinition: true)
!429 = !DIGlobalVariableExpression(var: !430, expr: !DIExpression())
!430 = distinct !DIGlobalVariable(scope: null, file: !88, line: 688, type: !360, isLocal: true, isDefinition: true)
!431 = !DIGlobalVariableExpression(var: !432, expr: !DIExpression())
!432 = distinct !DIGlobalVariable(scope: null, file: !88, line: 691, type: !396, isLocal: true, isDefinition: true)
!433 = !DIGlobalVariableExpression(var: !434, expr: !DIExpression())
!434 = distinct !DIGlobalVariable(scope: null, file: !88, line: 839, type: !435, isLocal: true, isDefinition: true)
!435 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !436)
!436 = !{!437}
!437 = !DISubrange(count: 16)
!438 = !DIGlobalVariableExpression(var: !439, expr: !DIExpression())
!439 = distinct !DIGlobalVariable(scope: null, file: !88, line: 840, type: !440, isLocal: true, isDefinition: true)
!440 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !441)
!441 = !{!442}
!442 = !DISubrange(count: 22)
!443 = !DIGlobalVariableExpression(var: !444, expr: !DIExpression())
!444 = distinct !DIGlobalVariable(scope: null, file: !88, line: 841, type: !231, isLocal: true, isDefinition: true)
!445 = !DIGlobalVariableExpression(var: !446, expr: !DIExpression())
!446 = distinct !DIGlobalVariable(scope: null, file: !88, line: 862, type: !71, isLocal: true, isDefinition: true)
!447 = !DIGlobalVariableExpression(var: !448, expr: !DIExpression())
!448 = distinct !DIGlobalVariable(scope: null, file: !88, line: 868, type: !449, isLocal: true, isDefinition: true)
!449 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 568, elements: !450)
!450 = !{!451}
!451 = !DISubrange(count: 71)
!452 = !DIGlobalVariableExpression(var: !453, expr: !DIExpression())
!453 = distinct !DIGlobalVariable(scope: null, file: !88, line: 875, type: !454, isLocal: true, isDefinition: true)
!454 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !455)
!455 = !{!456}
!456 = !DISubrange(count: 27)
!457 = !DIGlobalVariableExpression(var: !458, expr: !DIExpression())
!458 = distinct !DIGlobalVariable(scope: null, file: !88, line: 877, type: !459, isLocal: true, isDefinition: true)
!459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !460)
!460 = !{!461}
!461 = !DISubrange(count: 51)
!462 = !DIGlobalVariableExpression(var: !463, expr: !DIExpression())
!463 = distinct !DIGlobalVariable(scope: null, file: !88, line: 877, type: !257, isLocal: true, isDefinition: true)
!464 = !DIGlobalVariableExpression(var: !465, expr: !DIExpression())
!465 = distinct !DIGlobalVariable(scope: null, file: !2, line: 84, type: !466, isLocal: true, isDefinition: true)
!466 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !467)
!467 = !{!468}
!468 = !DISubrange(count: 13)
!469 = !DIGlobalVariableExpression(var: !470, expr: !DIExpression())
!470 = distinct !DIGlobalVariable(scope: null, file: !2, line: 85, type: !272, isLocal: true, isDefinition: true)
!471 = !DIGlobalVariableExpression(var: !472, expr: !DIExpression())
!472 = distinct !DIGlobalVariable(scope: null, file: !2, line: 86, type: !71, isLocal: true, isDefinition: true)
!473 = !DIGlobalVariableExpression(var: !474, expr: !DIExpression())
!474 = distinct !DIGlobalVariable(scope: null, file: !2, line: 87, type: !396, isLocal: true, isDefinition: true)
!475 = !DIGlobalVariableExpression(var: !476, expr: !DIExpression())
!476 = distinct !DIGlobalVariable(scope: null, file: !2, line: 88, type: !231, isLocal: true, isDefinition: true)
!477 = !DIGlobalVariableExpression(var: !478, expr: !DIExpression())
!478 = distinct !DIGlobalVariable(scope: null, file: !2, line: 89, type: !435, isLocal: true, isDefinition: true)
!479 = !DIGlobalVariableExpression(var: !480, expr: !DIExpression())
!480 = distinct !DIGlobalVariable(scope: null, file: !2, line: 90, type: !360, isLocal: true, isDefinition: true)
!481 = !DIGlobalVariableExpression(var: !482, expr: !DIExpression())
!482 = distinct !DIGlobalVariable(scope: null, file: !2, line: 91, type: !396, isLocal: true, isDefinition: true)
!483 = !DIGlobalVariableExpression(var: !484, expr: !DIExpression())
!484 = distinct !DIGlobalVariable(name: "G_line", scope: !76, file: !485, line: 1, type: !486, isLocal: true, isDefinition: true)
!485 = !DIFile(filename: "src/dircolors.h", directory: "/src", checksumkind: CSK_MD5, checksum: "78932583f5d466470594a9a0cc5465b7")
!486 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 44928, elements: !487)
!487 = !{!488}
!488 = !DISubrange(count: 5616)
!489 = !DIGlobalVariableExpression(var: !490, expr: !DIExpression())
!490 = distinct !DIGlobalVariable(scope: null, file: !2, line: 146, type: !369, isLocal: true, isDefinition: true)
!491 = !DIGlobalVariableExpression(var: !492, expr: !DIExpression())
!492 = distinct !DIGlobalVariable(scope: null, file: !2, line: 152, type: !360, isLocal: true, isDefinition: true)
!493 = !DIGlobalVariableExpression(var: !494, expr: !DIExpression())
!494 = distinct !DIGlobalVariable(scope: null, file: !2, line: 295, type: !360, isLocal: true, isDefinition: true)
!495 = !DIGlobalVariableExpression(var: !496, expr: !DIExpression())
!496 = distinct !DIGlobalVariable(scope: null, file: !2, line: 298, type: !19, isLocal: true, isDefinition: true)
!497 = !DIGlobalVariableExpression(var: !498, expr: !DIExpression())
!498 = distinct !DIGlobalVariable(scope: null, file: !2, line: 315, type: !231, isLocal: true, isDefinition: true)
!499 = !DIGlobalVariableExpression(var: !500, expr: !DIExpression())
!500 = distinct !DIGlobalVariable(scope: null, file: !2, line: 338, type: !501, isLocal: true, isDefinition: true)
!501 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !502)
!502 = !{!503}
!503 = !DISubrange(count: 44)
!504 = !DIGlobalVariableExpression(var: !505, expr: !DIExpression())
!505 = distinct !DIGlobalVariable(scope: null, file: !2, line: 367, type: !396, isLocal: true, isDefinition: true)
!506 = !DIGlobalVariableExpression(var: !507, expr: !DIExpression())
!507 = distinct !DIGlobalVariable(scope: null, file: !2, line: 368, type: !369, isLocal: true, isDefinition: true)
!508 = !DIGlobalVariableExpression(var: !509, expr: !DIExpression())
!509 = distinct !DIGlobalVariable(scope: null, file: !2, line: 369, type: !510, isLocal: true, isDefinition: true)
!510 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !511)
!511 = !{!512}
!512 = !DISubrange(count: 9)
!513 = !DIGlobalVariableExpression(var: !514, expr: !DIExpression())
!514 = distinct !DIGlobalVariable(scope: null, file: !2, line: 393, type: !515, isLocal: true, isDefinition: true)
!515 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !516)
!516 = !{!517}
!517 = !DISubrange(count: 32)
!518 = !DIGlobalVariableExpression(var: !519, expr: !DIExpression())
!519 = distinct !DIGlobalVariable(scope: null, file: !2, line: 393, type: !520, isLocal: true, isDefinition: true)
!520 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !521)
!521 = !{!522}
!522 = !DISubrange(count: 11)
!523 = !DIGlobalVariableExpression(var: !524, expr: !DIExpression())
!524 = distinct !DIGlobalVariable(scope: null, file: !2, line: 256, type: !272, isLocal: true, isDefinition: true)
!525 = !DIGlobalVariableExpression(var: !526, expr: !DIExpression())
!526 = distinct !DIGlobalVariable(scope: null, file: !2, line: 55, type: !391, isLocal: true, isDefinition: true)
!527 = !DIGlobalVariableExpression(var: !528, expr: !DIExpression())
!528 = distinct !DIGlobalVariable(scope: null, file: !2, line: 55, type: !360, isLocal: true, isDefinition: true)
!529 = !DIGlobalVariableExpression(var: !530, expr: !DIExpression())
!530 = distinct !DIGlobalVariable(scope: null, file: !2, line: 55, type: !360, isLocal: true, isDefinition: true)
!531 = !DIGlobalVariableExpression(var: !532, expr: !DIExpression())
!532 = distinct !DIGlobalVariable(scope: null, file: !2, line: 55, type: !369, isLocal: true, isDefinition: true)
!533 = !DIGlobalVariableExpression(var: !534, expr: !DIExpression())
!534 = distinct !DIGlobalVariable(scope: null, file: !2, line: 55, type: !71, isLocal: true, isDefinition: true)
!535 = !DIGlobalVariableExpression(var: !536, expr: !DIExpression())
!536 = distinct !DIGlobalVariable(scope: null, file: !2, line: 55, type: !71, isLocal: true, isDefinition: true)
!537 = !DIGlobalVariableExpression(var: !538, expr: !DIExpression())
!538 = distinct !DIGlobalVariable(scope: null, file: !2, line: 55, type: !360, isLocal: true, isDefinition: true)
!539 = !DIGlobalVariableExpression(var: !540, expr: !DIExpression())
!540 = distinct !DIGlobalVariable(scope: null, file: !2, line: 56, type: !396, isLocal: true, isDefinition: true)
!541 = !DIGlobalVariableExpression(var: !542, expr: !DIExpression())
!542 = distinct !DIGlobalVariable(scope: null, file: !2, line: 56, type: !391, isLocal: true, isDefinition: true)
!543 = !DIGlobalVariableExpression(var: !544, expr: !DIExpression())
!544 = distinct !DIGlobalVariable(scope: null, file: !2, line: 56, type: !396, isLocal: true, isDefinition: true)
!545 = !DIGlobalVariableExpression(var: !546, expr: !DIExpression())
!546 = distinct !DIGlobalVariable(scope: null, file: !2, line: 56, type: !360, isLocal: true, isDefinition: true)
!547 = !DIGlobalVariableExpression(var: !548, expr: !DIExpression())
!548 = distinct !DIGlobalVariable(scope: null, file: !2, line: 56, type: !360, isLocal: true, isDefinition: true)
!549 = !DIGlobalVariableExpression(var: !550, expr: !DIExpression())
!550 = distinct !DIGlobalVariable(scope: null, file: !2, line: 56, type: !360, isLocal: true, isDefinition: true)
!551 = !DIGlobalVariableExpression(var: !552, expr: !DIExpression())
!552 = distinct !DIGlobalVariable(scope: null, file: !2, line: 56, type: !71, isLocal: true, isDefinition: true)
!553 = !DIGlobalVariableExpression(var: !554, expr: !DIExpression())
!554 = distinct !DIGlobalVariable(scope: null, file: !2, line: 56, type: !369, isLocal: true, isDefinition: true)
!555 = !DIGlobalVariableExpression(var: !556, expr: !DIExpression())
!556 = distinct !DIGlobalVariable(scope: null, file: !2, line: 57, type: !71, isLocal: true, isDefinition: true)
!557 = !DIGlobalVariableExpression(var: !558, expr: !DIExpression())
!558 = distinct !DIGlobalVariable(scope: null, file: !2, line: 57, type: !360, isLocal: true, isDefinition: true)
!559 = !DIGlobalVariableExpression(var: !560, expr: !DIExpression())
!560 = distinct !DIGlobalVariable(scope: null, file: !2, line: 57, type: !360, isLocal: true, isDefinition: true)
!561 = !DIGlobalVariableExpression(var: !562, expr: !DIExpression())
!562 = distinct !DIGlobalVariable(scope: null, file: !2, line: 57, type: !360, isLocal: true, isDefinition: true)
!563 = !DIGlobalVariableExpression(var: !564, expr: !DIExpression())
!564 = distinct !DIGlobalVariable(scope: null, file: !2, line: 57, type: !360, isLocal: true, isDefinition: true)
!565 = !DIGlobalVariableExpression(var: !566, expr: !DIExpression())
!566 = distinct !DIGlobalVariable(scope: null, file: !2, line: 57, type: !510, isLocal: true, isDefinition: true)
!567 = !DIGlobalVariableExpression(var: !568, expr: !DIExpression())
!568 = distinct !DIGlobalVariable(scope: null, file: !2, line: 57, type: !369, isLocal: true, isDefinition: true)
!569 = !DIGlobalVariableExpression(var: !570, expr: !DIExpression())
!570 = distinct !DIGlobalVariable(scope: null, file: !2, line: 57, type: !19, isLocal: true, isDefinition: true)
!571 = !DIGlobalVariableExpression(var: !572, expr: !DIExpression())
!572 = distinct !DIGlobalVariable(scope: null, file: !2, line: 58, type: !71, isLocal: true, isDefinition: true)
!573 = !DIGlobalVariableExpression(var: !574, expr: !DIExpression())
!574 = distinct !DIGlobalVariable(scope: null, file: !2, line: 58, type: !396, isLocal: true, isDefinition: true)
!575 = !DIGlobalVariableExpression(var: !576, expr: !DIExpression())
!576 = distinct !DIGlobalVariable(scope: null, file: !2, line: 58, type: !360, isLocal: true, isDefinition: true)
!577 = !DIGlobalVariableExpression(var: !578, expr: !DIExpression())
!578 = distinct !DIGlobalVariable(scope: null, file: !2, line: 58, type: !391, isLocal: true, isDefinition: true)
!579 = !DIGlobalVariableExpression(var: !580, expr: !DIExpression())
!580 = distinct !DIGlobalVariable(scope: null, file: !2, line: 58, type: !360, isLocal: true, isDefinition: true)
!581 = !DIGlobalVariableExpression(var: !582, expr: !DIExpression())
!582 = distinct !DIGlobalVariable(scope: null, file: !2, line: 58, type: !391, isLocal: true, isDefinition: true)
!583 = !DIGlobalVariableExpression(var: !584, expr: !DIExpression())
!584 = distinct !DIGlobalVariable(scope: null, file: !2, line: 58, type: !391, isLocal: true, isDefinition: true)
!585 = !DIGlobalVariableExpression(var: !586, expr: !DIExpression())
!586 = distinct !DIGlobalVariable(scope: null, file: !2, line: 59, type: !231, isLocal: true, isDefinition: true)
!587 = !DIGlobalVariableExpression(var: !588, expr: !DIExpression())
!588 = distinct !DIGlobalVariable(scope: null, file: !2, line: 59, type: !71, isLocal: true, isDefinition: true)
!589 = !DIGlobalVariableExpression(var: !590, expr: !DIExpression())
!590 = distinct !DIGlobalVariable(scope: null, file: !2, line: 59, type: !440, isLocal: true, isDefinition: true)
!591 = !DIGlobalVariableExpression(var: !592, expr: !DIExpression())
!592 = distinct !DIGlobalVariable(scope: null, file: !2, line: 59, type: !71, isLocal: true, isDefinition: true)
!593 = !DIGlobalVariableExpression(var: !594, expr: !DIExpression())
!594 = distinct !DIGlobalVariable(scope: null, file: !2, line: 59, type: !520, isLocal: true, isDefinition: true)
!595 = !DIGlobalVariableExpression(var: !596, expr: !DIExpression())
!596 = distinct !DIGlobalVariable(scope: null, file: !2, line: 60, type: !226, isLocal: true, isDefinition: true)
!597 = !DIGlobalVariableExpression(var: !598, expr: !DIExpression())
!598 = distinct !DIGlobalVariable(scope: null, file: !2, line: 60, type: !510, isLocal: true, isDefinition: true)
!599 = !DIGlobalVariableExpression(var: !600, expr: !DIExpression())
!600 = distinct !DIGlobalVariable(name: "slack_codes", scope: !76, file: !2, line: 53, type: !601, isLocal: true, isDefinition: true)
!601 = !DICompositeType(tag: DW_TAG_array_type, baseType: !602, size: 2432, elements: !603)
!602 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !171)
!603 = !{!604}
!604 = !DISubrange(count: 38)
!605 = !DIGlobalVariableExpression(var: !606, expr: !DIExpression())
!606 = distinct !DIGlobalVariable(scope: null, file: !2, line: 65, type: !272, isLocal: true, isDefinition: true)
!607 = !DIGlobalVariableExpression(var: !608, expr: !DIExpression())
!608 = distinct !DIGlobalVariable(scope: null, file: !2, line: 65, type: !272, isLocal: true, isDefinition: true)
!609 = !DIGlobalVariableExpression(var: !610, expr: !DIExpression())
!610 = distinct !DIGlobalVariable(scope: null, file: !2, line: 65, type: !272, isLocal: true, isDefinition: true)
!611 = !DIGlobalVariableExpression(var: !612, expr: !DIExpression())
!612 = distinct !DIGlobalVariable(scope: null, file: !2, line: 65, type: !272, isLocal: true, isDefinition: true)
!613 = !DIGlobalVariableExpression(var: !614, expr: !DIExpression())
!614 = distinct !DIGlobalVariable(scope: null, file: !2, line: 65, type: !272, isLocal: true, isDefinition: true)
!615 = !DIGlobalVariableExpression(var: !616, expr: !DIExpression())
!616 = distinct !DIGlobalVariable(scope: null, file: !2, line: 65, type: !272, isLocal: true, isDefinition: true)
!617 = !DIGlobalVariableExpression(var: !618, expr: !DIExpression())
!618 = distinct !DIGlobalVariable(scope: null, file: !2, line: 65, type: !272, isLocal: true, isDefinition: true)
!619 = !DIGlobalVariableExpression(var: !620, expr: !DIExpression())
!620 = distinct !DIGlobalVariable(scope: null, file: !2, line: 65, type: !272, isLocal: true, isDefinition: true)
!621 = !DIGlobalVariableExpression(var: !622, expr: !DIExpression())
!622 = distinct !DIGlobalVariable(scope: null, file: !2, line: 66, type: !272, isLocal: true, isDefinition: true)
!623 = !DIGlobalVariableExpression(var: !624, expr: !DIExpression())
!624 = distinct !DIGlobalVariable(scope: null, file: !2, line: 66, type: !272, isLocal: true, isDefinition: true)
!625 = !DIGlobalVariableExpression(var: !626, expr: !DIExpression())
!626 = distinct !DIGlobalVariable(scope: null, file: !2, line: 66, type: !272, isLocal: true, isDefinition: true)
!627 = !DIGlobalVariableExpression(var: !628, expr: !DIExpression())
!628 = distinct !DIGlobalVariable(scope: null, file: !2, line: 66, type: !272, isLocal: true, isDefinition: true)
!629 = !DIGlobalVariableExpression(var: !630, expr: !DIExpression())
!630 = distinct !DIGlobalVariable(scope: null, file: !2, line: 66, type: !272, isLocal: true, isDefinition: true)
!631 = !DIGlobalVariableExpression(var: !632, expr: !DIExpression())
!632 = distinct !DIGlobalVariable(scope: null, file: !2, line: 66, type: !272, isLocal: true, isDefinition: true)
!633 = !DIGlobalVariableExpression(var: !634, expr: !DIExpression())
!634 = distinct !DIGlobalVariable(scope: null, file: !2, line: 66, type: !272, isLocal: true, isDefinition: true)
!635 = !DIGlobalVariableExpression(var: !636, expr: !DIExpression())
!636 = distinct !DIGlobalVariable(scope: null, file: !2, line: 66, type: !272, isLocal: true, isDefinition: true)
!637 = !DIGlobalVariableExpression(var: !638, expr: !DIExpression())
!638 = distinct !DIGlobalVariable(scope: null, file: !2, line: 67, type: !272, isLocal: true, isDefinition: true)
!639 = !DIGlobalVariableExpression(var: !640, expr: !DIExpression())
!640 = distinct !DIGlobalVariable(scope: null, file: !2, line: 67, type: !272, isLocal: true, isDefinition: true)
!641 = !DIGlobalVariableExpression(var: !642, expr: !DIExpression())
!642 = distinct !DIGlobalVariable(scope: null, file: !2, line: 67, type: !272, isLocal: true, isDefinition: true)
!643 = !DIGlobalVariableExpression(var: !644, expr: !DIExpression())
!644 = distinct !DIGlobalVariable(scope: null, file: !2, line: 67, type: !272, isLocal: true, isDefinition: true)
!645 = !DIGlobalVariableExpression(var: !646, expr: !DIExpression())
!646 = distinct !DIGlobalVariable(scope: null, file: !2, line: 67, type: !272, isLocal: true, isDefinition: true)
!647 = !DIGlobalVariableExpression(var: !648, expr: !DIExpression())
!648 = distinct !DIGlobalVariable(scope: null, file: !2, line: 67, type: !272, isLocal: true, isDefinition: true)
!649 = !DIGlobalVariableExpression(var: !650, expr: !DIExpression())
!650 = distinct !DIGlobalVariable(scope: null, file: !2, line: 67, type: !272, isLocal: true, isDefinition: true)
!651 = !DIGlobalVariableExpression(var: !652, expr: !DIExpression())
!652 = distinct !DIGlobalVariable(scope: null, file: !2, line: 67, type: !272, isLocal: true, isDefinition: true)
!653 = !DIGlobalVariableExpression(var: !654, expr: !DIExpression())
!654 = distinct !DIGlobalVariable(name: "ls_codes", scope: !76, file: !2, line: 63, type: !601, isLocal: true, isDefinition: true)
!655 = !DIGlobalVariableExpression(var: !656, expr: !DIExpression())
!656 = distinct !DIGlobalVariable(scope: null, file: !2, line: 411, type: !374, isLocal: true, isDefinition: true)
!657 = !DIGlobalVariableExpression(var: !658, expr: !DIExpression())
!658 = distinct !DIGlobalVariable(scope: null, file: !2, line: 411, type: !374, isLocal: true, isDefinition: true)
!659 = !DIGlobalVariableExpression(var: !660, expr: !DIExpression())
!660 = distinct !DIGlobalVariable(scope: null, file: !2, line: 413, type: !272, isLocal: true, isDefinition: true)
!661 = !DICompositeType(tag: DW_TAG_array_type, baseType: !662, size: 2304, elements: !511)
!662 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !663)
!663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !664, line: 50, size: 256, elements: !665)
!664 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!665 = !{!666, !667, !668, !670}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !663, file: !664, line: 52, baseType: !171, size: 64)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !663, file: !664, line: 55, baseType: !89, size: 32, offset: 64)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !663, file: !664, line: 56, baseType: !669, size: 64, offset: 128)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !663, file: !664, line: 57, baseType: !89, size: 32, offset: 192)
!671 = !DIGlobalVariableExpression(var: !327, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!672 = !DIGlobalVariableExpression(var: !673, expr: !DIExpression())
!673 = distinct !DIGlobalVariable(scope: null, file: !674, line: 3, type: !231, isLocal: true, isDefinition: true)
!674 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!675 = !DIGlobalVariableExpression(var: !676, expr: !DIExpression())
!676 = distinct !DIGlobalVariable(name: "Version", scope: !677, file: !674, line: 3, type: !171, isLocal: false, isDefinition: true)
!677 = distinct !DICompileUnit(language: DW_LANG_C11, file: !674, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !678, splitDebugInlining: false, nameTableKind: None)
!678 = !{!672, !675}
!679 = !DIGlobalVariableExpression(var: !680, expr: !DIExpression())
!680 = distinct !DIGlobalVariable(name: "file_name", scope: !681, file: !682, line: 45, type: !171, isLocal: true, isDefinition: true)
!681 = distinct !DICompileUnit(language: DW_LANG_C11, file: !682, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !683, splitDebugInlining: false, nameTableKind: None)
!682 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!683 = !{!684, !686, !688, !690, !679, !692}
!684 = !DIGlobalVariableExpression(var: !685, expr: !DIExpression())
!685 = distinct !DIGlobalVariable(scope: null, file: !682, line: 121, type: !391, isLocal: true, isDefinition: true)
!686 = !DIGlobalVariableExpression(var: !687, expr: !DIExpression())
!687 = distinct !DIGlobalVariable(scope: null, file: !682, line: 121, type: !257, isLocal: true, isDefinition: true)
!688 = !DIGlobalVariableExpression(var: !689, expr: !DIExpression())
!689 = distinct !DIGlobalVariable(scope: null, file: !682, line: 123, type: !391, isLocal: true, isDefinition: true)
!690 = !DIGlobalVariableExpression(var: !691, expr: !DIExpression())
!691 = distinct !DIGlobalVariable(scope: null, file: !682, line: 126, type: !272, isLocal: true, isDefinition: true)
!692 = !DIGlobalVariableExpression(var: !693, expr: !DIExpression())
!693 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !681, file: !682, line: 55, type: !112, isLocal: true, isDefinition: true)
!694 = !DIGlobalVariableExpression(var: !695, expr: !DIExpression())
!695 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !696, file: !697, line: 66, type: !745, isLocal: false, isDefinition: true)
!696 = distinct !DICompileUnit(language: DW_LANG_C11, file: !697, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !698, globals: !699, splitDebugInlining: false, nameTableKind: None)
!697 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!698 = !{!161, !222}
!699 = !{!700, !702, !727, !729, !731, !733, !694, !735, !737, !739, !741, !743}
!700 = !DIGlobalVariableExpression(var: !701, expr: !DIExpression())
!701 = distinct !DIGlobalVariable(scope: null, file: !697, line: 272, type: !360, isLocal: true, isDefinition: true)
!702 = !DIGlobalVariableExpression(var: !703, expr: !DIExpression())
!703 = distinct !DIGlobalVariable(name: "old_file_name", scope: !704, file: !697, line: 304, type: !171, isLocal: true, isDefinition: true)
!704 = distinct !DISubprogram(name: "verror_at_line", scope: !697, file: !697, line: 298, type: !705, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !696, retainedNodes: !720)
!705 = !DISubroutineType(types: !706)
!706 = !{null, !89, !89, !171, !79, !171, !707}
!707 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !708, line: 52, baseType: !709)
!708 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!709 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !710, line: 14, baseType: !711)
!710 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4c819f80dd915987182e9ab226e27a5a")
!711 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !712, baseType: !713)
!712 = !DIFile(filename: "lib/error.c", directory: "/src")
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !714)
!714 = !{!715, !716, !717, !718, !719}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !713, file: !712, baseType: !161, size: 64)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !713, file: !712, baseType: !161, size: 64, offset: 64)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !713, file: !712, baseType: !161, size: 64, offset: 128)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !713, file: !712, baseType: !89, size: 32, offset: 192)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !713, file: !712, baseType: !89, size: 32, offset: 224)
!720 = !{!721, !722, !723, !724, !725, !726}
!721 = !DILocalVariable(name: "status", arg: 1, scope: !704, file: !697, line: 298, type: !89)
!722 = !DILocalVariable(name: "errnum", arg: 2, scope: !704, file: !697, line: 298, type: !89)
!723 = !DILocalVariable(name: "file_name", arg: 3, scope: !704, file: !697, line: 298, type: !171)
!724 = !DILocalVariable(name: "line_number", arg: 4, scope: !704, file: !697, line: 298, type: !79)
!725 = !DILocalVariable(name: "message", arg: 5, scope: !704, file: !697, line: 298, type: !171)
!726 = !DILocalVariable(name: "args", arg: 6, scope: !704, file: !697, line: 298, type: !707)
!727 = !DIGlobalVariableExpression(var: !728, expr: !DIExpression())
!728 = distinct !DIGlobalVariable(name: "old_line_number", scope: !704, file: !697, line: 305, type: !79, isLocal: true, isDefinition: true)
!729 = !DIGlobalVariableExpression(var: !730, expr: !DIExpression())
!730 = distinct !DIGlobalVariable(scope: null, file: !697, line: 338, type: !71, isLocal: true, isDefinition: true)
!731 = !DIGlobalVariableExpression(var: !732, expr: !DIExpression())
!732 = distinct !DIGlobalVariable(scope: null, file: !697, line: 346, type: !396, isLocal: true, isDefinition: true)
!733 = !DIGlobalVariableExpression(var: !734, expr: !DIExpression())
!734 = distinct !DIGlobalVariable(scope: null, file: !697, line: 346, type: !374, isLocal: true, isDefinition: true)
!735 = !DIGlobalVariableExpression(var: !736, expr: !DIExpression())
!736 = distinct !DIGlobalVariable(name: "error_message_count", scope: !696, file: !697, line: 69, type: !79, isLocal: false, isDefinition: true)
!737 = !DIGlobalVariableExpression(var: !738, expr: !DIExpression())
!738 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !696, file: !697, line: 295, type: !89, isLocal: false, isDefinition: true)
!739 = !DIGlobalVariableExpression(var: !740, expr: !DIExpression())
!740 = distinct !DIGlobalVariable(scope: null, file: !697, line: 208, type: !391, isLocal: true, isDefinition: true)
!741 = !DIGlobalVariableExpression(var: !742, expr: !DIExpression())
!742 = distinct !DIGlobalVariable(scope: null, file: !697, line: 208, type: !262, isLocal: true, isDefinition: true)
!743 = !DIGlobalVariableExpression(var: !744, expr: !DIExpression())
!744 = distinct !DIGlobalVariable(scope: null, file: !697, line: 214, type: !360, isLocal: true, isDefinition: true)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = !DISubroutineType(types: !747)
!747 = !{null}
!748 = !DIGlobalVariableExpression(var: !749, expr: !DIExpression())
!749 = distinct !DIGlobalVariable(scope: null, file: !750, line: 40, type: !19, isLocal: true, isDefinition: true)
!750 = !DIFile(filename: "lib/freopen-safer.c", directory: "/src", checksumkind: CSK_MD5, checksum: "380f3eea209580e07073525fbfd0dac5")
!751 = !DIGlobalVariableExpression(var: !752, expr: !DIExpression())
!752 = distinct !DIGlobalVariable(name: "obstack_alloc_failed_handler", scope: !753, file: !754, line: 53, type: !745, isLocal: false, isDefinition: true)
!753 = distinct !DICompileUnit(language: DW_LANG_C11, file: !754, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !755, globals: !756, splitDebugInlining: false, nameTableKind: None)
!754 = !DIFile(filename: "lib/obstack.c", directory: "/src", checksumkind: CSK_MD5, checksum: "47f5bbc27e7c2d5a5cc3aab9403d8d27")
!755 = !{!112, !161, !121, !165}
!756 = !{!751, !757, !759, !761}
!757 = !DIGlobalVariableExpression(var: !758, expr: !DIExpression())
!758 = distinct !DIGlobalVariable(scope: null, file: !754, line: 353, type: !71, isLocal: true, isDefinition: true)
!759 = !DIGlobalVariableExpression(var: !760, expr: !DIExpression())
!760 = distinct !DIGlobalVariable(scope: null, file: !754, line: 353, type: !391, isLocal: true, isDefinition: true)
!761 = !DIGlobalVariableExpression(var: !762, expr: !DIExpression())
!762 = distinct !DIGlobalVariable(scope: null, file: !754, line: 353, type: !243, isLocal: true, isDefinition: true)
!763 = !DIGlobalVariableExpression(var: !764, expr: !DIExpression())
!764 = distinct !DIGlobalVariable(name: "program_name", scope: !765, file: !766, line: 31, type: !171, isLocal: false, isDefinition: true)
!765 = distinct !DICompileUnit(language: DW_LANG_C11, file: !766, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !767, globals: !768, splitDebugInlining: false, nameTableKind: None)
!766 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!767 = !{!121}
!768 = !{!763, !769, !771}
!769 = !DIGlobalVariableExpression(var: !770, expr: !DIExpression())
!770 = distinct !DIGlobalVariable(scope: null, file: !766, line: 46, type: !396, isLocal: true, isDefinition: true)
!771 = !DIGlobalVariableExpression(var: !772, expr: !DIExpression())
!772 = distinct !DIGlobalVariable(scope: null, file: !766, line: 49, type: !71, isLocal: true, isDefinition: true)
!773 = !DIGlobalVariableExpression(var: !774, expr: !DIExpression())
!774 = distinct !DIGlobalVariable(name: "utf07FF", scope: !775, file: !776, line: 46, type: !803, isLocal: true, isDefinition: true)
!775 = distinct !DISubprogram(name: "proper_name_lite", scope: !776, file: !776, line: 38, type: !777, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !781)
!776 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!777 = !DISubroutineType(types: !778)
!778 = !{!171, !171, !171}
!779 = distinct !DICompileUnit(language: DW_LANG_C11, file: !776, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !780, splitDebugInlining: false, nameTableKind: None)
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
!803 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 16, elements: !375)
!804 = !DIGlobalVariableExpression(var: !805, expr: !DIExpression())
!805 = distinct !DIGlobalVariable(scope: null, file: !806, line: 78, type: !396, isLocal: true, isDefinition: true)
!806 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!807 = !DIGlobalVariableExpression(var: !808, expr: !DIExpression())
!808 = distinct !DIGlobalVariable(scope: null, file: !806, line: 79, type: !369, isLocal: true, isDefinition: true)
!809 = !DIGlobalVariableExpression(var: !810, expr: !DIExpression())
!810 = distinct !DIGlobalVariable(scope: null, file: !806, line: 80, type: !466, isLocal: true, isDefinition: true)
!811 = !DIGlobalVariableExpression(var: !812, expr: !DIExpression())
!812 = distinct !DIGlobalVariable(scope: null, file: !806, line: 81, type: !466, isLocal: true, isDefinition: true)
!813 = !DIGlobalVariableExpression(var: !814, expr: !DIExpression())
!814 = distinct !DIGlobalVariable(scope: null, file: !806, line: 82, type: !168, isLocal: true, isDefinition: true)
!815 = !DIGlobalVariableExpression(var: !816, expr: !DIExpression())
!816 = distinct !DIGlobalVariable(scope: null, file: !806, line: 83, type: !374, isLocal: true, isDefinition: true)
!817 = !DIGlobalVariableExpression(var: !818, expr: !DIExpression())
!818 = distinct !DIGlobalVariable(scope: null, file: !806, line: 84, type: !396, isLocal: true, isDefinition: true)
!819 = !DIGlobalVariableExpression(var: !820, expr: !DIExpression())
!820 = distinct !DIGlobalVariable(scope: null, file: !806, line: 85, type: !391, isLocal: true, isDefinition: true)
!821 = !DIGlobalVariableExpression(var: !822, expr: !DIExpression())
!822 = distinct !DIGlobalVariable(scope: null, file: !806, line: 86, type: !391, isLocal: true, isDefinition: true)
!823 = !DIGlobalVariableExpression(var: !824, expr: !DIExpression())
!824 = distinct !DIGlobalVariable(scope: null, file: !806, line: 87, type: !396, isLocal: true, isDefinition: true)
!825 = !DIGlobalVariableExpression(var: !826, expr: !DIExpression())
!826 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !827, file: !806, line: 76, type: !899, isLocal: false, isDefinition: true)
!827 = distinct !DICompileUnit(language: DW_LANG_C11, file: !806, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !828, retainedTypes: !834, globals: !835, splitDebugInlining: false, nameTableKind: None)
!828 = !{!207, !829, !93}
!829 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !208, line: 254, baseType: !79, size: 32, elements: !830)
!830 = !{!831, !832, !833}
!831 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!832 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!833 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!834 = !{!89, !144, !163}
!835 = !{!804, !807, !809, !811, !813, !815, !817, !819, !821, !823, !825, !836, !840, !850, !852, !857, !859, !861, !863, !865, !888, !895, !897}
!836 = !DIGlobalVariableExpression(var: !837, expr: !DIExpression())
!837 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !827, file: !806, line: 92, type: !838, isLocal: false, isDefinition: true)
!838 = !DICompositeType(tag: DW_TAG_array_type, baseType: !839, size: 320, elements: !20)
!839 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !207)
!840 = !DIGlobalVariableExpression(var: !841, expr: !DIExpression())
!841 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !827, file: !806, line: 1040, type: !842, isLocal: false, isDefinition: true)
!842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !806, line: 56, size: 448, elements: !843)
!843 = !{!844, !845, !846, !848, !849}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !842, file: !806, line: 59, baseType: !207, size: 32)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !842, file: !806, line: 62, baseType: !89, size: 32, offset: 32)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !842, file: !806, line: 66, baseType: !847, size: 256, offset: 64)
!847 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 256, elements: !397)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !842, file: !806, line: 69, baseType: !171, size: 64, offset: 320)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !842, file: !806, line: 72, baseType: !171, size: 64, offset: 384)
!850 = !DIGlobalVariableExpression(var: !851, expr: !DIExpression())
!851 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !827, file: !806, line: 107, type: !842, isLocal: true, isDefinition: true)
!852 = !DIGlobalVariableExpression(var: !853, expr: !DIExpression())
!853 = distinct !DIGlobalVariable(name: "slot0", scope: !827, file: !806, line: 831, type: !854, isLocal: true, isDefinition: true)
!854 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !855)
!855 = !{!856}
!856 = !DISubrange(count: 256)
!857 = !DIGlobalVariableExpression(var: !858, expr: !DIExpression())
!858 = distinct !DIGlobalVariable(scope: null, file: !806, line: 321, type: !374, isLocal: true, isDefinition: true)
!859 = !DIGlobalVariableExpression(var: !860, expr: !DIExpression())
!860 = distinct !DIGlobalVariable(scope: null, file: !806, line: 357, type: !374, isLocal: true, isDefinition: true)
!861 = !DIGlobalVariableExpression(var: !862, expr: !DIExpression())
!862 = distinct !DIGlobalVariable(scope: null, file: !806, line: 358, type: !374, isLocal: true, isDefinition: true)
!863 = !DIGlobalVariableExpression(var: !864, expr: !DIExpression())
!864 = distinct !DIGlobalVariable(scope: null, file: !806, line: 199, type: !391, isLocal: true, isDefinition: true)
!865 = !DIGlobalVariableExpression(var: !866, expr: !DIExpression())
!866 = distinct !DIGlobalVariable(name: "quote", scope: !867, file: !806, line: 228, type: !886, isLocal: true, isDefinition: true)
!867 = distinct !DISubprogram(name: "gettext_quote", scope: !806, file: !806, line: 197, type: !868, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !827, retainedNodes: !870)
!868 = !DISubroutineType(types: !869)
!869 = !{!171, !171, !207}
!870 = !{!871, !872, !873, !874, !875}
!871 = !DILocalVariable(name: "msgid", arg: 1, scope: !867, file: !806, line: 197, type: !171)
!872 = !DILocalVariable(name: "s", arg: 2, scope: !867, file: !806, line: 197, type: !207)
!873 = !DILocalVariable(name: "translation", scope: !867, file: !806, line: 199, type: !171)
!874 = !DILocalVariable(name: "w", scope: !867, file: !806, line: 229, type: !786)
!875 = !DILocalVariable(name: "mbs", scope: !867, file: !806, line: 230, type: !876)
!876 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !792, line: 6, baseType: !877)
!877 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !794, line: 21, baseType: !878)
!878 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !794, line: 13, size: 64, elements: !879)
!879 = !{!880, !881}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !878, file: !794, line: 15, baseType: !89, size: 32)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !878, file: !794, line: 20, baseType: !882, size: 32, offset: 32)
!882 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !878, file: !794, line: 16, size: 32, elements: !883)
!883 = !{!884, !885}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !882, file: !794, line: 18, baseType: !79, size: 32)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !882, file: !794, line: 19, baseType: !71, size: 32)
!886 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 64, elements: !887)
!887 = !{!376, !73}
!888 = !DIGlobalVariableExpression(var: !889, expr: !DIExpression())
!889 = distinct !DIGlobalVariable(name: "slotvec", scope: !827, file: !806, line: 834, type: !890, isLocal: true, isDefinition: true)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !806, line: 823, size: 128, elements: !892)
!892 = !{!893, !894}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !891, file: !806, line: 825, baseType: !163, size: 64)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !891, file: !806, line: 826, baseType: !121, size: 64, offset: 64)
!895 = !DIGlobalVariableExpression(var: !896, expr: !DIExpression())
!896 = distinct !DIGlobalVariable(name: "nslots", scope: !827, file: !806, line: 832, type: !89, isLocal: true, isDefinition: true)
!897 = !DIGlobalVariableExpression(var: !898, expr: !DIExpression())
!898 = distinct !DIGlobalVariable(name: "slotvec0", scope: !827, file: !806, line: 833, type: !891, isLocal: true, isDefinition: true)
!899 = !DICompositeType(tag: DW_TAG_array_type, baseType: !602, size: 704, elements: !521)
!900 = !DIGlobalVariableExpression(var: !901, expr: !DIExpression())
!901 = distinct !DIGlobalVariable(scope: null, file: !902, line: 67, type: !257, isLocal: true, isDefinition: true)
!902 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!903 = !DIGlobalVariableExpression(var: !904, expr: !DIExpression())
!904 = distinct !DIGlobalVariable(scope: null, file: !902, line: 69, type: !391, isLocal: true, isDefinition: true)
!905 = !DIGlobalVariableExpression(var: !906, expr: !DIExpression())
!906 = distinct !DIGlobalVariable(scope: null, file: !902, line: 83, type: !391, isLocal: true, isDefinition: true)
!907 = !DIGlobalVariableExpression(var: !908, expr: !DIExpression())
!908 = distinct !DIGlobalVariable(scope: null, file: !902, line: 83, type: !71, isLocal: true, isDefinition: true)
!909 = !DIGlobalVariableExpression(var: !910, expr: !DIExpression())
!910 = distinct !DIGlobalVariable(scope: null, file: !902, line: 85, type: !374, isLocal: true, isDefinition: true)
!911 = !DIGlobalVariableExpression(var: !912, expr: !DIExpression())
!912 = distinct !DIGlobalVariable(scope: null, file: !902, line: 88, type: !913, isLocal: true, isDefinition: true)
!913 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !914)
!914 = !{!915}
!915 = !DISubrange(count: 171)
!916 = !DIGlobalVariableExpression(var: !917, expr: !DIExpression())
!917 = distinct !DIGlobalVariable(scope: null, file: !902, line: 88, type: !918, isLocal: true, isDefinition: true)
!918 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !919)
!919 = !{!920}
!920 = !DISubrange(count: 34)
!921 = !DIGlobalVariableExpression(var: !922, expr: !DIExpression())
!922 = distinct !DIGlobalVariable(scope: null, file: !902, line: 105, type: !435, isLocal: true, isDefinition: true)
!923 = !DIGlobalVariableExpression(var: !924, expr: !DIExpression())
!924 = distinct !DIGlobalVariable(scope: null, file: !902, line: 109, type: !925, isLocal: true, isDefinition: true)
!925 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !926)
!926 = !{!927}
!927 = !DISubrange(count: 23)
!928 = !DIGlobalVariableExpression(var: !929, expr: !DIExpression())
!929 = distinct !DIGlobalVariable(scope: null, file: !902, line: 113, type: !930, isLocal: true, isDefinition: true)
!930 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !931)
!931 = !{!932}
!932 = !DISubrange(count: 28)
!933 = !DIGlobalVariableExpression(var: !934, expr: !DIExpression())
!934 = distinct !DIGlobalVariable(scope: null, file: !902, line: 120, type: !515, isLocal: true, isDefinition: true)
!935 = !DIGlobalVariableExpression(var: !936, expr: !DIExpression())
!936 = distinct !DIGlobalVariable(scope: null, file: !902, line: 127, type: !937, isLocal: true, isDefinition: true)
!937 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !938)
!938 = !{!939}
!939 = !DISubrange(count: 36)
!940 = !DIGlobalVariableExpression(var: !941, expr: !DIExpression())
!941 = distinct !DIGlobalVariable(scope: null, file: !902, line: 134, type: !415, isLocal: true, isDefinition: true)
!942 = !DIGlobalVariableExpression(var: !943, expr: !DIExpression())
!943 = distinct !DIGlobalVariable(scope: null, file: !902, line: 142, type: !501, isLocal: true, isDefinition: true)
!944 = !DIGlobalVariableExpression(var: !945, expr: !DIExpression())
!945 = distinct !DIGlobalVariable(scope: null, file: !902, line: 150, type: !946, isLocal: true, isDefinition: true)
!946 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !947)
!947 = !{!948}
!948 = !DISubrange(count: 48)
!949 = !DIGlobalVariableExpression(var: !950, expr: !DIExpression())
!950 = distinct !DIGlobalVariable(scope: null, file: !902, line: 159, type: !951, isLocal: true, isDefinition: true)
!951 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !952)
!952 = !{!953}
!953 = !DISubrange(count: 52)
!954 = !DIGlobalVariableExpression(var: !955, expr: !DIExpression())
!955 = distinct !DIGlobalVariable(scope: null, file: !902, line: 170, type: !250, isLocal: true, isDefinition: true)
!956 = !DIGlobalVariableExpression(var: !957, expr: !DIExpression())
!957 = distinct !DIGlobalVariable(scope: null, file: !902, line: 248, type: !168, isLocal: true, isDefinition: true)
!958 = !DIGlobalVariableExpression(var: !959, expr: !DIExpression())
!959 = distinct !DIGlobalVariable(scope: null, file: !902, line: 248, type: !440, isLocal: true, isDefinition: true)
!960 = !DIGlobalVariableExpression(var: !961, expr: !DIExpression())
!961 = distinct !DIGlobalVariable(scope: null, file: !902, line: 254, type: !168, isLocal: true, isDefinition: true)
!962 = !DIGlobalVariableExpression(var: !963, expr: !DIExpression())
!963 = distinct !DIGlobalVariable(scope: null, file: !902, line: 254, type: !226, isLocal: true, isDefinition: true)
!964 = !DIGlobalVariableExpression(var: !965, expr: !DIExpression())
!965 = distinct !DIGlobalVariable(scope: null, file: !902, line: 254, type: !415, isLocal: true, isDefinition: true)
!966 = !DIGlobalVariableExpression(var: !967, expr: !DIExpression())
!967 = distinct !DIGlobalVariable(scope: null, file: !902, line: 259, type: !3, isLocal: true, isDefinition: true)
!968 = !DIGlobalVariableExpression(var: !969, expr: !DIExpression())
!969 = distinct !DIGlobalVariable(scope: null, file: !902, line: 259, type: !970, isLocal: true, isDefinition: true)
!970 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !971)
!971 = !{!972}
!972 = !DISubrange(count: 29)
!973 = !DIGlobalVariableExpression(var: !974, expr: !DIExpression())
!974 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !975, file: !976, line: 26, type: !978, isLocal: false, isDefinition: true)
!975 = distinct !DICompileUnit(language: DW_LANG_C11, file: !976, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !977, splitDebugInlining: false, nameTableKind: None)
!976 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!977 = !{!973}
!978 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 376, elements: !979)
!979 = !{!980}
!980 = !DISubrange(count: 47)
!981 = !DIGlobalVariableExpression(var: !982, expr: !DIExpression())
!982 = distinct !DIGlobalVariable(name: "exit_failure", scope: !983, file: !984, line: 24, type: !986, isLocal: false, isDefinition: true)
!983 = distinct !DICompileUnit(language: DW_LANG_C11, file: !984, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !985, splitDebugInlining: false, nameTableKind: None)
!984 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!985 = !{!981}
!986 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !89)
!987 = !DIGlobalVariableExpression(var: !988, expr: !DIExpression())
!988 = distinct !DIGlobalVariable(scope: null, file: !989, line: 34, type: !272, isLocal: true, isDefinition: true)
!989 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!990 = !DIGlobalVariableExpression(var: !991, expr: !DIExpression())
!991 = distinct !DIGlobalVariable(scope: null, file: !989, line: 34, type: !391, isLocal: true, isDefinition: true)
!992 = !DIGlobalVariableExpression(var: !993, expr: !DIExpression())
!993 = distinct !DIGlobalVariable(scope: null, file: !989, line: 34, type: !243, isLocal: true, isDefinition: true)
!994 = !DIGlobalVariableExpression(var: !995, expr: !DIExpression())
!995 = distinct !DIGlobalVariable(scope: null, file: !996, line: 108, type: !59, isLocal: true, isDefinition: true)
!996 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!997 = !DIGlobalVariableExpression(var: !998, expr: !DIExpression())
!998 = distinct !DIGlobalVariable(name: "internal_state", scope: !999, file: !996, line: 97, type: !1002, isLocal: true, isDefinition: true)
!999 = distinct !DICompileUnit(language: DW_LANG_C11, file: !996, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !1000, globals: !1001, splitDebugInlining: false, nameTableKind: None)
!1000 = !{!161, !163, !222}
!1001 = !{!994, !997}
!1002 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !792, line: 6, baseType: !1003)
!1003 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !794, line: 21, baseType: !1004)
!1004 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !794, line: 13, size: 64, elements: !1005)
!1005 = !{!1006, !1007}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1004, file: !794, line: 15, baseType: !89, size: 32)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1004, file: !794, line: 20, baseType: !1008, size: 32, offset: 32)
!1008 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1004, file: !794, line: 16, size: 32, elements: !1009)
!1009 = !{!1010, !1011}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1008, file: !794, line: 18, baseType: !79, size: 32)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1008, file: !794, line: 19, baseType: !71, size: 32)
!1012 = !DIGlobalVariableExpression(var: !1013, expr: !DIExpression())
!1013 = distinct !DIGlobalVariable(scope: null, file: !1014, line: 35, type: !374, isLocal: true, isDefinition: true)
!1014 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!1015 = !DIGlobalVariableExpression(var: !1016, expr: !DIExpression())
!1016 = distinct !DIGlobalVariable(scope: null, file: !1014, line: 35, type: !369, isLocal: true, isDefinition: true)
!1017 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1018, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !767, splitDebugInlining: false, nameTableKind: None)
!1018 = !DIFile(filename: "lib/basename-lgpl.c", directory: "/src", checksumkind: CSK_MD5, checksum: "0c866bbc0b14fb4f9b15561a581e91dd")
!1019 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1020, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !1021, splitDebugInlining: false, nameTableKind: None)
!1020 = !DIFile(filename: "lib/c-strcasecmp.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7d8203371740f321f2a78256f94ab3b7")
!1021 = !{!1022}
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !222)
!1024 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1025, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1025 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!1026 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1027, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !1028, splitDebugInlining: false, nameTableKind: None)
!1027 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!1028 = !{!161}
!1029 = distinct !DICompileUnit(language: DW_LANG_C11, file: !750, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !1030, splitDebugInlining: false, nameTableKind: None)
!1030 = !{!748}
!1031 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1032, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !1028, splitDebugInlining: false, nameTableKind: None)
!1032 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!1033 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1034, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1034 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!1035 = distinct !DICompileUnit(language: DW_LANG_C11, file: !902, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !1036, retainedTypes: !1028, globals: !1040, splitDebugInlining: false, nameTableKind: None)
!1036 = !{!1037}
!1037 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !902, line: 40, baseType: !79, size: 32, elements: !1038)
!1038 = !{!1039}
!1039 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!1040 = !{!900, !903, !905, !907, !909, !911, !916, !921, !923, !928, !933, !935, !940, !942, !944, !949, !954, !956, !958, !960, !962, !964, !966, !968}
!1041 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1042, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !1043, retainedTypes: !1071, splitDebugInlining: false, nameTableKind: None)
!1042 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!1043 = !{!1044, !1056}
!1044 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !1045, file: !1042, line: 188, baseType: !79, size: 32, elements: !1054)
!1045 = distinct !DISubprogram(name: "x2nrealloc", scope: !1042, file: !1042, line: 176, type: !1046, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1041, retainedNodes: !1049)
!1046 = !DISubroutineType(types: !1047)
!1047 = !{!161, !161, !1048, !163}
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!1049 = !{!1050, !1051, !1052, !1053}
!1050 = !DILocalVariable(name: "p", arg: 1, scope: !1045, file: !1042, line: 176, type: !161)
!1051 = !DILocalVariable(name: "pn", arg: 2, scope: !1045, file: !1042, line: 176, type: !1048)
!1052 = !DILocalVariable(name: "s", arg: 3, scope: !1045, file: !1042, line: 176, type: !163)
!1053 = !DILocalVariable(name: "n", scope: !1045, file: !1042, line: 178, type: !163)
!1054 = !{!1055}
!1055 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!1056 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !1057, file: !1042, line: 228, baseType: !79, size: 32, elements: !1054)
!1057 = distinct !DISubprogram(name: "xpalloc", scope: !1042, file: !1042, line: 223, type: !1058, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1041, retainedNodes: !1061)
!1058 = !DISubroutineType(types: !1059)
!1059 = !{!161, !161, !1060, !177, !179, !177}
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!1061 = !{!1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070}
!1062 = !DILocalVariable(name: "pa", arg: 1, scope: !1057, file: !1042, line: 223, type: !161)
!1063 = !DILocalVariable(name: "pn", arg: 2, scope: !1057, file: !1042, line: 223, type: !1060)
!1064 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !1057, file: !1042, line: 223, type: !177)
!1065 = !DILocalVariable(name: "n_max", arg: 4, scope: !1057, file: !1042, line: 223, type: !179)
!1066 = !DILocalVariable(name: "s", arg: 5, scope: !1057, file: !1042, line: 223, type: !177)
!1067 = !DILocalVariable(name: "n0", scope: !1057, file: !1042, line: 230, type: !177)
!1068 = !DILocalVariable(name: "n", scope: !1057, file: !1042, line: 237, type: !177)
!1069 = !DILocalVariable(name: "nbytes", scope: !1057, file: !1042, line: 248, type: !177)
!1070 = !DILocalVariable(name: "adjusted_nbytes", scope: !1057, file: !1042, line: 252, type: !177)
!1071 = !{!121, !161, !112, !142, !165}
!1072 = distinct !DICompileUnit(language: DW_LANG_C11, file: !989, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !1073, splitDebugInlining: false, nameTableKind: None)
!1073 = !{!987, !990, !992}
!1074 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1075, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1075 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!1076 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1077, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !1078, splitDebugInlining: false, nameTableKind: None)
!1077 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!1078 = !{!112, !165, !161}
!1079 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1014, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !1080, splitDebugInlining: false, nameTableKind: None)
!1080 = !{!1012, !1015}
!1081 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1082, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1082 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!1083 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1084, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !1028, splitDebugInlining: false, nameTableKind: None)
!1084 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!1085 = !{!"Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)"}
!1086 = !{i32 7, !"Dwarf Version", i32 5}
!1087 = !{i32 2, !"Debug Info Version", i32 3}
!1088 = !{i32 1, !"wchar_size", i32 4}
!1089 = !{i32 8, !"PIC Level", i32 2}
!1090 = !{i32 7, !"PIE Level", i32 2}
!1091 = !{i32 7, !"uwtable", i32 2}
!1092 = !{i32 7, !"frame-pointer", i32 1}
!1093 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 96, type: !1094, scopeLine: 97, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1096)
!1094 = !DISubroutineType(types: !1095)
!1095 = !{null, !89}
!1096 = !{!1097}
!1097 = !DILocalVariable(name: "status", arg: 1, scope: !1093, file: !2, line: 96, type: !89)
!1098 = !DILocation(line: 0, scope: !1093)
!1099 = !DILocation(line: 98, column: 14, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !1093, file: !2, line: 98, column: 7)
!1101 = !DILocation(line: 98, column: 7, scope: !1093)
!1102 = !DILocation(line: 99, column: 5, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1100, file: !2, line: 99, column: 5)
!1104 = !{!1105, !1105, i64 0}
!1105 = !{!"any pointer", !1106, i64 0}
!1106 = !{!"omnipotent char", !1107, i64 0}
!1107 = !{!"Simple C/C++ TBAA"}
!1108 = !DILocation(line: 102, column: 7, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !1100, file: !2, line: 101, column: 5)
!1110 = !DILocation(line: 103, column: 7, scope: !1109)
!1111 = !DILocation(line: 108, column: 7, scope: !1109)
!1112 = !DILocation(line: 112, column: 7, scope: !1109)
!1113 = !DILocation(line: 116, column: 7, scope: !1109)
!1114 = !DILocation(line: 120, column: 7, scope: !1109)
!1115 = !DILocation(line: 124, column: 7, scope: !1109)
!1116 = !DILocation(line: 125, column: 7, scope: !1109)
!1117 = !DILocation(line: 126, column: 7, scope: !1109)
!1118 = !DILocalVariable(name: "program", arg: 1, scope: !1119, file: !88, line: 836, type: !171)
!1119 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !88, file: !88, line: 836, type: !1120, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1122)
!1120 = !DISubroutineType(types: !1121)
!1121 = !{null, !171}
!1122 = !{!1118, !1123, !1130, !1131, !1133, !1134}
!1123 = !DILocalVariable(name: "infomap", scope: !1119, file: !88, line: 838, type: !1124)
!1124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1125, size: 896, elements: !392)
!1125 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1126)
!1126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !1119, file: !88, line: 838, size: 128, elements: !1127)
!1127 = !{!1128, !1129}
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !1126, file: !88, line: 838, baseType: !171, size: 64)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1126, file: !88, line: 838, baseType: !171, size: 64, offset: 64)
!1130 = !DILocalVariable(name: "node", scope: !1119, file: !88, line: 848, type: !171)
!1131 = !DILocalVariable(name: "map_prog", scope: !1119, file: !88, line: 849, type: !1132)
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1133 = !DILocalVariable(name: "lc_messages", scope: !1119, file: !88, line: 861, type: !171)
!1134 = !DILocalVariable(name: "url_program", scope: !1119, file: !88, line: 874, type: !171)
!1135 = !DILocation(line: 0, scope: !1119, inlinedAt: !1136)
!1136 = distinct !DILocation(line: 132, column: 7, scope: !1109)
!1137 = !DILocation(line: 857, column: 3, scope: !1119, inlinedAt: !1136)
!1138 = !DILocation(line: 861, column: 29, scope: !1119, inlinedAt: !1136)
!1139 = !DILocation(line: 862, column: 7, scope: !1140, inlinedAt: !1136)
!1140 = distinct !DILexicalBlock(scope: !1119, file: !88, line: 862, column: 7)
!1141 = !DILocation(line: 862, column: 19, scope: !1140, inlinedAt: !1136)
!1142 = !DILocation(line: 862, column: 22, scope: !1140, inlinedAt: !1136)
!1143 = !DILocation(line: 862, column: 7, scope: !1119, inlinedAt: !1136)
!1144 = !DILocation(line: 868, column: 7, scope: !1145, inlinedAt: !1136)
!1145 = distinct !DILexicalBlock(scope: !1140, file: !88, line: 863, column: 5)
!1146 = !DILocation(line: 870, column: 5, scope: !1145, inlinedAt: !1136)
!1147 = !DILocation(line: 875, column: 3, scope: !1119, inlinedAt: !1136)
!1148 = !DILocation(line: 877, column: 3, scope: !1119, inlinedAt: !1136)
!1149 = !DILocation(line: 135, column: 3, scope: !1093)
!1150 = !DISubprogram(name: "dcgettext", scope: !1151, file: !1151, line: 51, type: !1152, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1154)
!1151 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!1152 = !DISubroutineType(types: !1153)
!1153 = !{!121, !171, !171, !89}
!1154 = !{}
!1155 = !DISubprogram(name: "__fprintf_chk", scope: !1156, file: !1156, line: 93, type: !1157, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1154)
!1156 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!1157 = !DISubroutineType(types: !1158)
!1158 = !{!89, !1159, !89, !1160, null}
!1159 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !113)
!1160 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !171)
!1161 = !DISubprogram(name: "__printf_chk", scope: !1156, file: !1156, line: 95, type: !1162, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1154)
!1162 = !DISubroutineType(types: !1163)
!1163 = !{!89, !89, !1160, null}
!1164 = !DISubprogram(name: "fputs_unlocked", scope: !708, file: !708, line: 691, type: !1165, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1154)
!1165 = !DISubroutineType(types: !1166)
!1166 = !{!89, !1160, !1159}
!1167 = !DILocation(line: 0, scope: !330)
!1168 = !DILocation(line: 581, column: 7, scope: !338)
!1169 = !{!1170, !1170, i64 0}
!1170 = !{!"int", !1106, i64 0}
!1171 = !DILocation(line: 581, column: 19, scope: !338)
!1172 = !DILocation(line: 581, column: 7, scope: !330)
!1173 = !DILocation(line: 585, column: 26, scope: !337)
!1174 = !DILocation(line: 0, scope: !337)
!1175 = !DILocation(line: 586, column: 23, scope: !337)
!1176 = !DILocation(line: 586, column: 28, scope: !337)
!1177 = !DILocation(line: 586, column: 32, scope: !337)
!1178 = !{!1106, !1106, i64 0}
!1179 = !DILocation(line: 586, column: 38, scope: !337)
!1180 = !DILocalVariable(name: "__s1", arg: 1, scope: !1181, file: !1182, line: 1359, type: !171)
!1181 = distinct !DISubprogram(name: "streq", scope: !1182, file: !1182, line: 1359, type: !1183, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1185)
!1182 = !DIFile(filename: "./lib/string.h", directory: "/src")
!1183 = !DISubroutineType(types: !1184)
!1184 = !{!112, !171, !171}
!1185 = !{!1180, !1186}
!1186 = !DILocalVariable(name: "__s2", arg: 2, scope: !1181, file: !1182, line: 1359, type: !171)
!1187 = !DILocation(line: 0, scope: !1181, inlinedAt: !1188)
!1188 = distinct !DILocation(line: 586, column: 41, scope: !337)
!1189 = !DILocation(line: 1361, column: 11, scope: !1181, inlinedAt: !1188)
!1190 = !DILocation(line: 1361, column: 10, scope: !1181, inlinedAt: !1188)
!1191 = !DILocation(line: 586, column: 19, scope: !337)
!1192 = !DILocation(line: 587, column: 5, scope: !337)
!1193 = !DILocation(line: 588, column: 7, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !330, file: !88, line: 588, column: 7)
!1195 = !DILocation(line: 588, column: 7, scope: !330)
!1196 = !DILocation(line: 590, column: 7, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1194, file: !88, line: 589, column: 5)
!1198 = !DILocation(line: 591, column: 7, scope: !1197)
!1199 = !DILocation(line: 595, column: 37, scope: !330)
!1200 = !DILocation(line: 595, column: 35, scope: !330)
!1201 = !DILocation(line: 596, column: 29, scope: !330)
!1202 = !DILocation(line: 597, column: 8, scope: !345)
!1203 = !DILocation(line: 597, column: 7, scope: !330)
!1204 = !DILocation(line: 604, column: 24, scope: !344)
!1205 = !DILocation(line: 604, column: 12, scope: !345)
!1206 = !DILocation(line: 0, scope: !343)
!1207 = !DILocation(line: 610, column: 16, scope: !343)
!1208 = !DILocation(line: 610, column: 7, scope: !343)
!1209 = !DILocation(line: 611, column: 21, scope: !343)
!1210 = !{!1211, !1211, i64 0}
!1211 = !{!"short", !1106, i64 0}
!1212 = !DILocation(line: 611, column: 19, scope: !343)
!1213 = !DILocation(line: 611, column: 16, scope: !343)
!1214 = !DILocation(line: 610, column: 30, scope: !343)
!1215 = distinct !{!1215, !1208, !1209, !1216}
!1216 = !{!"llvm.loop.mustprogress"}
!1217 = !DILocation(line: 612, column: 18, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !343, file: !88, line: 612, column: 11)
!1219 = !DILocation(line: 612, column: 11, scope: !343)
!1220 = !DILocation(line: 620, column: 23, scope: !330)
!1221 = !DILocation(line: 625, column: 39, scope: !330)
!1222 = !DILocation(line: 626, column: 3, scope: !330)
!1223 = !DILocation(line: 626, column: 10, scope: !330)
!1224 = !DILocation(line: 626, column: 21, scope: !330)
!1225 = !DILocation(line: 628, column: 44, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !1227, file: !88, line: 628, column: 11)
!1227 = distinct !DILexicalBlock(scope: !330, file: !88, line: 627, column: 5)
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
!1240 = !DILocation(line: 640, column: 16, scope: !1227)
!1241 = distinct !{!1241, !1222, !1242, !1216}
!1242 = !DILocation(line: 641, column: 5, scope: !330)
!1243 = !DILocation(line: 644, column: 3, scope: !330)
!1244 = !DILocation(line: 0, scope: !1181, inlinedAt: !1245)
!1245 = distinct !DILocation(line: 648, column: 31, scope: !330)
!1246 = !DILocation(line: 0, scope: !1181, inlinedAt: !1247)
!1247 = distinct !DILocation(line: 649, column: 31, scope: !330)
!1248 = !DILocation(line: 0, scope: !1181, inlinedAt: !1249)
!1249 = distinct !DILocation(line: 650, column: 31, scope: !330)
!1250 = !DILocation(line: 0, scope: !1181, inlinedAt: !1251)
!1251 = distinct !DILocation(line: 651, column: 31, scope: !330)
!1252 = !DILocation(line: 0, scope: !1181, inlinedAt: !1253)
!1253 = distinct !DILocation(line: 652, column: 31, scope: !330)
!1254 = !DILocation(line: 0, scope: !1181, inlinedAt: !1255)
!1255 = distinct !DILocation(line: 653, column: 31, scope: !330)
!1256 = !DILocation(line: 0, scope: !1181, inlinedAt: !1257)
!1257 = distinct !DILocation(line: 654, column: 31, scope: !330)
!1258 = !DILocation(line: 0, scope: !1181, inlinedAt: !1259)
!1259 = distinct !DILocation(line: 655, column: 31, scope: !330)
!1260 = !DILocation(line: 0, scope: !1181, inlinedAt: !1261)
!1261 = distinct !DILocation(line: 656, column: 31, scope: !330)
!1262 = !DILocation(line: 0, scope: !1181, inlinedAt: !1263)
!1263 = distinct !DILocation(line: 657, column: 31, scope: !330)
!1264 = !DILocation(line: 663, column: 7, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !330, file: !88, line: 663, column: 7)
!1266 = !DILocation(line: 664, column: 7, scope: !1265)
!1267 = !DILocation(line: 664, column: 10, scope: !1265)
!1268 = !DILocation(line: 663, column: 7, scope: !330)
!1269 = !DILocation(line: 669, column: 7, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1265, file: !88, line: 665, column: 5)
!1271 = !DILocation(line: 671, column: 5, scope: !1270)
!1272 = !DILocation(line: 676, column: 7, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1265, file: !88, line: 673, column: 5)
!1274 = !DILocation(line: 679, column: 3, scope: !330)
!1275 = !DILocation(line: 683, column: 3, scope: !330)
!1276 = !DILocation(line: 686, column: 3, scope: !330)
!1277 = !DILocation(line: 688, column: 3, scope: !330)
!1278 = !DILocation(line: 691, column: 3, scope: !330)
!1279 = !DILocation(line: 695, column: 3, scope: !330)
!1280 = !DILocation(line: 696, column: 1, scope: !330)
!1281 = !DISubprogram(name: "setlocale", scope: !1282, file: !1282, line: 122, type: !1283, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1154)
!1282 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1283 = !DISubroutineType(types: !1284)
!1284 = !{!121, !89, !171}
!1285 = !DISubprogram(name: "strncmp", scope: !1286, file: !1286, line: 159, type: !1287, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1154)
!1286 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1287 = !DISubroutineType(types: !1288)
!1288 = !{!89, !171, !171, !163}
!1289 = !DISubprogram(name: "exit", scope: !1290, file: !1290, line: 624, type: !1094, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !1154)
!1290 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1291 = !DISubprogram(name: "getenv", scope: !1290, file: !1290, line: 641, type: !1292, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1154)
!1292 = !DISubroutineType(types: !1293)
!1293 = !{!121, !171}
!1294 = !DISubprogram(name: "strcmp", scope: !1286, file: !1286, line: 156, type: !1295, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1154)
!1295 = !DISubroutineType(types: !1296)
!1296 = !{!89, !171, !171}
!1297 = !DISubprogram(name: "strspn", scope: !1286, file: !1286, line: 297, type: !1298, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1154)
!1298 = !DISubroutineType(types: !1299)
!1299 = !{!165, !171, !171}
!1300 = !DISubprogram(name: "strchr", scope: !1286, file: !1286, line: 246, type: !1301, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1154)
!1301 = !DISubroutineType(types: !1302)
!1302 = !{!121, !171, !89}
!1303 = !DISubprogram(name: "__ctype_b_loc", scope: !94, file: !94, line: 79, type: !1304, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1154)
!1304 = !DISubroutineType(types: !1305)
!1305 = !{!1306}
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1307, size: 64)
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1308, size: 64)
!1308 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !144)
!1309 = !DISubprogram(name: "strcspn", scope: !1286, file: !1286, line: 293, type: !1298, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1154)
!1310 = !DISubprogram(name: "fwrite_unlocked", scope: !708, file: !708, line: 704, type: !1311, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1154)
!1311 = !DISubroutineType(types: !1312)
!1312 = !{!163, !1313, !163, !163, !1159}
!1313 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1314)
!1314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1315, size: 64)
!1315 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1316 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 429, type: !1317, scopeLine: 430, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1320)
!1317 = !DISubroutineType(types: !1318)
!1318 = !{!89, !89, !1319}
!1319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!1320 = !{!1321, !1322, !1323, !1324, !1325, !1326, !1327, !1330, !1334, !1338, !1339, !1342, !1343, !1344, !1345, !1347, !1348}
!1321 = !DILocalVariable(name: "argc", arg: 1, scope: !1316, file: !2, line: 429, type: !89)
!1322 = !DILocalVariable(name: "argv", arg: 2, scope: !1316, file: !2, line: 429, type: !1319)
!1323 = !DILocalVariable(name: "ok", scope: !1316, file: !2, line: 431, type: !112)
!1324 = !DILocalVariable(name: "optc", scope: !1316, file: !2, line: 432, type: !89)
!1325 = !DILocalVariable(name: "syntax", scope: !1316, file: !2, line: 433, type: !78)
!1326 = !DILocalVariable(name: "print_database", scope: !1316, file: !2, line: 434, type: !112)
!1327 = !DILocalVariable(name: "p", scope: !1328, file: !2, line: 505, type: !171)
!1328 = distinct !DILexicalBlock(scope: !1329, file: !2, line: 504, column: 5)
!1329 = distinct !DILexicalBlock(scope: !1316, file: !2, line: 503, column: 7)
!1330 = !DILocalVariable(name: "len", scope: !1331, file: !2, line: 532, type: !163)
!1331 = distinct !DILexicalBlock(scope: !1332, file: !2, line: 531, column: 9)
!1332 = distinct !DILexicalBlock(scope: !1333, file: !2, line: 530, column: 11)
!1333 = distinct !DILexicalBlock(scope: !1329, file: !2, line: 513, column: 5)
!1334 = !DILocalVariable(name: "__o", scope: !1335, file: !2, line: 532, type: !1336)
!1335 = distinct !DILexicalBlock(scope: !1331, file: !2, line: 532, column: 24)
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!1337 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !277)
!1338 = !DILocalVariable(name: "s", scope: !1331, file: !2, line: 533, type: !121)
!1339 = !DILocalVariable(name: "__o1", scope: !1340, file: !2, line: 533, type: !1341)
!1340 = distinct !DILexicalBlock(scope: !1331, file: !2, line: 533, column: 21)
!1341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!1342 = !DILocalVariable(name: "__value", scope: !1340, file: !2, line: 533, type: !161)
!1343 = !DILocalVariable(name: "prefix", scope: !1331, file: !2, line: 534, type: !171)
!1344 = !DILocalVariable(name: "suffix", scope: !1331, file: !2, line: 535, type: !171)
!1345 = !DILocalVariable(name: "__ptr", scope: !1346, file: !2, line: 549, type: !171)
!1346 = distinct !DILexicalBlock(scope: !1331, file: !2, line: 549, column: 11)
!1347 = !DILocalVariable(name: "__stream", scope: !1346, file: !2, line: 549, type: !113)
!1348 = !DILocalVariable(name: "__cnt", scope: !1346, file: !2, line: 549, type: !163)
!1349 = !DILocation(line: 0, scope: !1316)
!1350 = !DILocation(line: 437, column: 21, scope: !1316)
!1351 = !DILocation(line: 437, column: 3, scope: !1316)
!1352 = !DILocation(line: 438, column: 3, scope: !1316)
!1353 = !DILocation(line: 439, column: 3, scope: !1316)
!1354 = !DILocation(line: 440, column: 3, scope: !1316)
!1355 = !DILocation(line: 442, column: 3, scope: !1316)
!1356 = !DILocation(line: 444, column: 3, scope: !1316)
!1357 = !DILocation(line: 444, column: 18, scope: !1316)
!1358 = distinct !{!1358, !1356, !1359, !1216}
!1359 = !DILocation(line: 469, column: 7, scope: !1316)
!1360 = !DILocation(line: 453, column: 9, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1316, file: !2, line: 446, column: 7)
!1362 = !DILocation(line: 457, column: 9, scope: !1361)
!1363 = !DILocation(line: 460, column: 25, scope: !1361)
!1364 = !DILocation(line: 461, column: 9, scope: !1361)
!1365 = !DILocation(line: 463, column: 7, scope: !1361)
!1366 = !DILocation(line: 465, column: 7, scope: !1361)
!1367 = !DILocation(line: 468, column: 9, scope: !1361)
!1368 = !DILocation(line: 471, column: 11, scope: !1316)
!1369 = !DILocation(line: 471, column: 8, scope: !1316)
!1370 = !DILocation(line: 472, column: 8, scope: !1316)
!1371 = !DILocation(line: 476, column: 25, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1316, file: !2, line: 476, column: 7)
!1373 = !DILocation(line: 476, column: 23, scope: !1372)
!1374 = !DILocation(line: 476, column: 42, scope: !1372)
!1375 = !DILocation(line: 478, column: 7, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1372, file: !2, line: 477, column: 5)
!1377 = !DILocation(line: 481, column: 7, scope: !1376)
!1378 = !DILocation(line: 484, column: 22, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !1316, file: !2, line: 484, column: 7)
!1380 = !DILocation(line: 486, column: 7, scope: !1381)
!1381 = distinct !DILexicalBlock(scope: !1379, file: !2, line: 485, column: 5)
!1382 = !DILocation(line: 489, column: 7, scope: !1381)
!1383 = !DILocation(line: 492, column: 8, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !1316, file: !2, line: 492, column: 7)
!1385 = !DILocation(line: 492, column: 25, scope: !1384)
!1386 = !DILocation(line: 492, column: 7, scope: !1316)
!1387 = !DILocation(line: 494, column: 7, scope: !1388)
!1388 = distinct !DILexicalBlock(scope: !1384, file: !2, line: 493, column: 5)
!1389 = !DILocation(line: 496, column: 11, scope: !1388)
!1390 = !DILocation(line: 497, column: 9, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1388, file: !2, line: 496, column: 11)
!1392 = !DILocation(line: 500, column: 7, scope: !1388)
!1393 = !DILocation(line: 503, column: 7, scope: !1316)
!1394 = !DILocation(line: 0, scope: !1328)
!1395 = !DILocation(line: 508, column: 11, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1328, file: !2, line: 507, column: 9)
!1397 = !DILocation(line: 509, column: 16, scope: !1396)
!1398 = !DILocation(line: 509, column: 27, scope: !1396)
!1399 = !DILocation(line: 509, column: 13, scope: !1396)
!1400 = !DILocation(line: 506, column: 16, scope: !1328)
!1401 = !DILocation(line: 506, column: 25, scope: !1328)
!1402 = !DILocation(line: 506, column: 7, scope: !1328)
!1403 = distinct !{!1403, !1402, !1404, !1216}
!1404 = !DILocation(line: 510, column: 9, scope: !1328)
!1405 = !DILocation(line: 515, column: 42, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1333, file: !2, line: 515, column: 11)
!1407 = !DILocation(line: 146, column: 11, scope: !1408, inlinedAt: !1413)
!1408 = distinct !DISubprogram(name: "guess_shell_syntax", scope: !2, file: !2, line: 142, type: !1409, scopeLine: 143, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1411)
!1409 = !DISubroutineType(types: !1410)
!1410 = !{!78}
!1411 = !{!1412}
!1412 = !DILocalVariable(name: "shell", scope: !1408, file: !2, line: 144, type: !121)
!1413 = distinct !DILocation(line: 517, column: 20, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !1406, file: !2, line: 516, column: 9)
!1415 = !DILocation(line: 0, scope: !1408, inlinedAt: !1413)
!1416 = !DILocation(line: 147, column: 13, scope: !1417, inlinedAt: !1413)
!1417 = distinct !DILexicalBlock(scope: !1408, file: !2, line: 147, column: 7)
!1418 = !DILocation(line: 147, column: 21, scope: !1417, inlinedAt: !1413)
!1419 = !DILocation(line: 147, column: 24, scope: !1417, inlinedAt: !1413)
!1420 = !DILocation(line: 147, column: 31, scope: !1417, inlinedAt: !1413)
!1421 = !DILocation(line: 147, column: 7, scope: !1408, inlinedAt: !1413)
!1422 = !DILocation(line: 150, column: 11, scope: !1408, inlinedAt: !1413)
!1423 = !DILocation(line: 0, scope: !1181, inlinedAt: !1424)
!1424 = distinct !DILocation(line: 152, column: 7, scope: !1425, inlinedAt: !1413)
!1425 = distinct !DILexicalBlock(scope: !1408, file: !2, line: 152, column: 7)
!1426 = !DILocation(line: 1361, column: 11, scope: !1181, inlinedAt: !1424)
!1427 = !DILocation(line: 1361, column: 10, scope: !1181, inlinedAt: !1424)
!1428 = !DILocation(line: 152, column: 28, scope: !1425, inlinedAt: !1413)
!1429 = !DILocation(line: 0, scope: !1181, inlinedAt: !1430)
!1430 = distinct !DILocation(line: 152, column: 31, scope: !1425, inlinedAt: !1413)
!1431 = !DILocation(line: 1361, column: 11, scope: !1181, inlinedAt: !1430)
!1432 = !DILocation(line: 1361, column: 10, scope: !1181, inlinedAt: !1430)
!1433 = !DILocation(line: 152, column: 7, scope: !1408, inlinedAt: !1413)
!1434 = !DILocation(line: 519, column: 13, scope: !1435)
!1435 = distinct !DILexicalBlock(scope: !1414, file: !2, line: 518, column: 15)
!1436 = !DILocation(line: 524, column: 7, scope: !1333)
!1437 = !DILocation(line: 525, column: 16, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !1333, file: !2, line: 525, column: 11)
!1439 = !DILocation(line: 525, column: 11, scope: !1333)
!1440 = !DILocation(line: 526, column: 14, scope: !1438)
!1441 = !DILocation(line: 530, column: 11, scope: !1333)
!1442 = !DILocation(line: 528, column: 29, scope: !1438)
!1443 = !DILocalVariable(name: "filename", arg: 1, scope: !1444, file: !2, line: 407, type: !171)
!1444 = distinct !DISubprogram(name: "dc_parse_file", scope: !2, file: !2, line: 407, type: !1445, scopeLine: 408, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1447)
!1445 = !DISubroutineType(types: !1446)
!1446 = !{!112, !171}
!1447 = !{!1443, !1448}
!1448 = !DILocalVariable(name: "ok", scope: !1444, file: !2, line: 409, type: !112)
!1449 = !DILocation(line: 0, scope: !1444, inlinedAt: !1450)
!1450 = distinct !DILocation(line: 528, column: 14, scope: !1438)
!1451 = !DILocation(line: 0, scope: !1181, inlinedAt: !1452)
!1452 = distinct !DILocation(line: 411, column: 9, scope: !1453, inlinedAt: !1450)
!1453 = distinct !DILexicalBlock(scope: !1444, file: !2, line: 411, column: 7)
!1454 = !DILocation(line: 1361, column: 11, scope: !1181, inlinedAt: !1452)
!1455 = !DILocation(line: 1361, column: 10, scope: !1181, inlinedAt: !1452)
!1456 = !DILocation(line: 411, column: 31, scope: !1453, inlinedAt: !1450)
!1457 = !DILocation(line: 411, column: 58, scope: !1453, inlinedAt: !1450)
!1458 = !DILocation(line: 411, column: 34, scope: !1453, inlinedAt: !1450)
!1459 = !DILocation(line: 411, column: 65, scope: !1453, inlinedAt: !1450)
!1460 = !DILocation(line: 411, column: 7, scope: !1444, inlinedAt: !1450)
!1461 = !DILocation(line: 417, column: 25, scope: !1444, inlinedAt: !1450)
!1462 = !DILocation(line: 417, column: 8, scope: !1444, inlinedAt: !1450)
!1463 = !DILocation(line: 419, column: 15, scope: !1464, inlinedAt: !1450)
!1464 = distinct !DILexicalBlock(scope: !1444, file: !2, line: 419, column: 7)
!1465 = !DILocation(line: 419, column: 7, scope: !1464, inlinedAt: !1450)
!1466 = !DILocation(line: 419, column: 22, scope: !1464, inlinedAt: !1450)
!1467 = !DILocation(line: 419, column: 7, scope: !1444, inlinedAt: !1450)
!1468 = !DILocation(line: 0, scope: !1335)
!1469 = !DILocation(line: 532, column: 24, scope: !1335)
!1470 = !{!1471, !1105, i64 24}
!1471 = !{!"obstack", !1472, i64 0, !1105, i64 8, !1105, i64 16, !1105, i64 24, !1105, i64 32, !1106, i64 40, !1472, i64 48, !1106, i64 56, !1106, i64 64, !1105, i64 72, !1170, i64 80, !1170, i64 80, !1170, i64 80}
!1472 = !{!"long", !1106, i64 0}
!1473 = !{!1471, !1105, i64 16}
!1474 = !DILocation(line: 0, scope: !1331)
!1475 = !DILocation(line: 0, scope: !1340)
!1476 = !DILocation(line: 533, column: 21, scope: !1477)
!1477 = distinct !DILexicalBlock(scope: !1340, file: !2, line: 533, column: 21)
!1478 = !DILocation(line: 533, column: 21, scope: !1340)
!1479 = !{!1471, !1472, i64 48}
!1480 = !DILocation(line: 537, column: 22, scope: !1481)
!1481 = distinct !DILexicalBlock(scope: !1331, file: !2, line: 537, column: 15)
!1482 = !DILocation(line: 547, column: 17, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !1331, file: !2, line: 547, column: 15)
!1484 = !DILocation(line: 547, column: 15, scope: !1331)
!1485 = !DILocation(line: 548, column: 13, scope: !1483)
!1486 = !DILocation(line: 549, column: 11, scope: !1331)
!1487 = !DILocation(line: 550, column: 17, scope: !1488)
!1488 = distinct !DILexicalBlock(scope: !1331, file: !2, line: 550, column: 15)
!1489 = !DILocation(line: 550, column: 15, scope: !1331)
!1490 = !DILocation(line: 551, column: 13, scope: !1488)
!1491 = !DILocation(line: 555, column: 3, scope: !1316)
!1492 = !DISubprogram(name: "bindtextdomain", scope: !1151, file: !1151, line: 86, type: !1493, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1154)
!1493 = !DISubroutineType(types: !1494)
!1494 = !{!121, !171, !171}
!1495 = !DISubprogram(name: "textdomain", scope: !1151, file: !1151, line: 82, type: !1292, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1154)
!1496 = !DISubprogram(name: "atexit", scope: !1290, file: !1290, line: 602, type: !1497, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1154)
!1497 = !DISubroutineType(types: !1498)
!1498 = !{!89, !745}
!1499 = !DISubprogram(name: "getopt_long", scope: !664, file: !664, line: 66, type: !1500, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1154)
!1500 = !DISubroutineType(types: !1501)
!1501 = !{!89, !89, !1502, !171, !1504, !669}
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1503, size: 64)
!1503 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !121)
!1504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!1505 = !DISubprogram(name: "puts", scope: !708, file: !708, line: 661, type: !1506, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1154)
!1506 = !DISubroutineType(types: !1507)
!1507 = !{!89, !171}
!1508 = !DISubprogram(name: "strlen", scope: !1286, file: !1286, line: 407, type: !1509, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1154)
!1509 = !DISubroutineType(types: !1510)
!1510 = !{!165, !171}
!1511 = !DISubprogram(name: "free", scope: !1290, file: !1290, line: 555, type: !316, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1154)
!1512 = !DILocation(line: 0, scope: !109)
!1513 = !DILocation(line: 282, column: 3, scope: !109)
!1514 = !DILocation(line: 282, column: 9, scope: !109)
!1515 = !DILocation(line: 283, column: 3, scope: !109)
!1516 = !DILocation(line: 283, column: 10, scope: !109)
!1517 = !{!1472, !1472, i64 0}
!1518 = !DILocation(line: 293, column: 10, scope: !109)
!1519 = !DILocation(line: 294, column: 12, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !109, file: !2, line: 294, column: 7)
!1521 = !DILocation(line: 294, column: 20, scope: !1520)
!1522 = !DILocation(line: 294, column: 23, scope: !1520)
!1523 = !DILocation(line: 294, column: 29, scope: !1520)
!1524 = !DILocation(line: 294, column: 7, scope: !109)
!1525 = !DILocation(line: 295, column: 5, scope: !1520)
!1526 = !DILocation(line: 298, column: 15, scope: !109)
!1527 = !DILocation(line: 299, column: 17, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !109, file: !2, line: 299, column: 7)
!1529 = !DILocation(line: 299, column: 7, scope: !109)
!1530 = !DILocation(line: 302, column: 3, scope: !109)
!1531 = !DILocation(line: 309, column: 11, scope: !189)
!1532 = !DILocation(line: 281, column: 15, scope: !109)
!1533 = !DILocation(line: 307, column: 7, scope: !189)
!1534 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !1535, file: !1536, line: 118, type: !1319)
!1535 = distinct !DISubprogram(name: "getline", scope: !1536, file: !1536, line: 118, type: !1537, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1540)
!1536 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1537 = !DISubroutineType(types: !1538)
!1538 = !{!1539, !1319, !1048, !113}
!1539 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !141, line: 194, baseType: !142)
!1540 = !{!1534, !1541, !1542}
!1541 = !DILocalVariable(name: "__n", arg: 2, scope: !1535, file: !1536, line: 118, type: !1048)
!1542 = !DILocalVariable(name: "__stream", arg: 3, scope: !1535, file: !1536, line: 118, type: !113)
!1543 = !DILocation(line: 0, scope: !1535, inlinedAt: !1544)
!1544 = distinct !DILocation(line: 311, column: 15, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !1546, file: !2, line: 311, column: 15)
!1546 = distinct !DILexicalBlock(scope: !1547, file: !2, line: 310, column: 9)
!1547 = distinct !DILexicalBlock(scope: !189, file: !2, line: 309, column: 11)
!1548 = !DILocation(line: 120, column: 10, scope: !1535, inlinedAt: !1544)
!1549 = !DILocation(line: 311, column: 59, scope: !1545)
!1550 = !DILocation(line: 311, column: 15, scope: !1546)
!1551 = !DILocalVariable(name: "__stream", arg: 1, scope: !1552, file: !1536, line: 135, type: !113)
!1552 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1536, file: !1536, line: 135, type: !1553, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1555)
!1553 = !DISubroutineType(types: !1554)
!1554 = !{!89, !113}
!1555 = !{!1551}
!1556 = !DILocation(line: 0, scope: !1552, inlinedAt: !1557)
!1557 = distinct !DILocation(line: 313, column: 19, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !1559, file: !2, line: 313, column: 19)
!1559 = distinct !DILexicalBlock(scope: !1545, file: !2, line: 312, column: 13)
!1560 = !DILocation(line: 137, column: 10, scope: !1552, inlinedAt: !1557)
!1561 = !{!1562, !1170, i64 0}
!1562 = !{!"_IO_FILE", !1170, i64 0, !1105, i64 8, !1105, i64 16, !1105, i64 24, !1105, i64 32, !1105, i64 40, !1105, i64 48, !1105, i64 56, !1105, i64 64, !1105, i64 72, !1105, i64 80, !1105, i64 88, !1105, i64 96, !1105, i64 104, !1170, i64 112, !1170, i64 116, !1472, i64 120, !1211, i64 128, !1106, i64 130, !1106, i64 131, !1105, i64 136, !1472, i64 144, !1105, i64 152, !1105, i64 160, !1105, i64 168, !1105, i64 176, !1472, i64 184, !1170, i64 192, !1106, i64 196}
!1563 = !DILocation(line: 313, column: 19, scope: !1558)
!1564 = !DILocation(line: 313, column: 19, scope: !1559)
!1565 = !DILocation(line: 315, column: 19, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1558, file: !2, line: 314, column: 17)
!1567 = !DILocation(line: 317, column: 17, scope: !1566)
!1568 = !DILocation(line: 318, column: 21, scope: !1559)
!1569 = !DILocation(line: 318, column: 15, scope: !1559)
!1570 = !DILocation(line: 319, column: 15, scope: !1559)
!1571 = !DILocation(line: 321, column: 18, scope: !1546)
!1572 = !DILocation(line: 322, column: 9, scope: !1546)
!1573 = !DILocation(line: 325, column: 27, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1575, file: !2, line: 325, column: 15)
!1575 = distinct !DILexicalBlock(scope: !1547, file: !2, line: 324, column: 9)
!1576 = !DILocation(line: 325, column: 15, scope: !1575)
!1577 = !DILocation(line: 328, column: 26, scope: !1575)
!1578 = !DILocation(line: 328, column: 47, scope: !1575)
!1579 = !DILocation(line: 328, column: 23, scope: !1575)
!1580 = !DILocation(line: 0, scope: !1547)
!1581 = !DILocalVariable(name: "line", arg: 1, scope: !1582, file: !2, line: 159, type: !171)
!1582 = distinct !DISubprogram(name: "parse_line", scope: !2, file: !2, line: 159, type: !1583, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1585)
!1583 = !DISubroutineType(types: !1584)
!1584 = !{null, !171, !1319, !1319}
!1585 = !{!1581, !1586, !1587, !1588, !1589, !1590}
!1586 = !DILocalVariable(name: "keyword", arg: 2, scope: !1582, file: !2, line: 159, type: !1319)
!1587 = !DILocalVariable(name: "arg", arg: 3, scope: !1582, file: !2, line: 159, type: !1319)
!1588 = !DILocalVariable(name: "p", scope: !1582, file: !2, line: 161, type: !171)
!1589 = !DILocalVariable(name: "keyword_start", scope: !1582, file: !2, line: 162, type: !171)
!1590 = !DILocalVariable(name: "arg_start", scope: !1582, file: !2, line: 163, type: !171)
!1591 = !DILocation(line: 0, scope: !1582, inlinedAt: !1592)
!1592 = distinct !DILocation(line: 331, column: 7, scope: !189)
!1593 = !DILocation(line: 168, column: 8, scope: !1594, inlinedAt: !1592)
!1594 = distinct !DILexicalBlock(scope: !1582, file: !2, line: 168, column: 3)
!1595 = !DILocation(line: 168, scope: !1594, inlinedAt: !1592)
!1596 = !DILocation(line: 168, column: 29, scope: !1597, inlinedAt: !1592)
!1597 = distinct !DILexicalBlock(scope: !1594, file: !2, line: 168, column: 3)
!1598 = !DILocalVariable(name: "c", arg: 1, scope: !1599, file: !1600, line: 300, type: !89)
!1599 = distinct !DISubprogram(name: "c_isspace", scope: !1600, file: !1600, line: 300, type: !1601, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1603)
!1600 = !DIFile(filename: "./lib/c-ctype.h", directory: "/src", checksumkind: CSK_MD5, checksum: "ae3bc10b98afd74391aea9e3c38adcb1")
!1601 = !DISubroutineType(types: !1602)
!1602 = !{!112, !89}
!1603 = !{!1598}
!1604 = !DILocation(line: 0, scope: !1599, inlinedAt: !1605)
!1605 = distinct !DILocation(line: 168, column: 18, scope: !1597, inlinedAt: !1592)
!1606 = !DILocation(line: 302, column: 3, scope: !1599, inlinedAt: !1605)
!1607 = distinct !{!1607, !1530, !1608}
!1608 = !DILocation(line: 401, column: 5, scope: !109)
!1609 = !DILocation(line: 168, column: 34, scope: !1597, inlinedAt: !1592)
!1610 = !DILocation(line: 168, column: 3, scope: !1597, inlinedAt: !1592)
!1611 = distinct !{!1611, !1612, !1613, !1216}
!1612 = !DILocation(line: 168, column: 3, scope: !1594, inlinedAt: !1592)
!1613 = !DILocation(line: 169, column: 5, scope: !1594, inlinedAt: !1592)
!1614 = !DILocation(line: 177, column: 22, scope: !1582, inlinedAt: !1592)
!1615 = !DILocation(line: 0, scope: !1599, inlinedAt: !1616)
!1616 = distinct !DILocation(line: 177, column: 11, scope: !1582, inlinedAt: !1592)
!1617 = !DILocation(line: 302, column: 3, scope: !1599, inlinedAt: !1616)
!1618 = !DILocation(line: 179, column: 7, scope: !1619, inlinedAt: !1592)
!1619 = distinct !DILexicalBlock(scope: !1582, file: !2, line: 178, column: 5)
!1620 = !DILocation(line: 177, column: 3, scope: !1582, inlinedAt: !1592)
!1621 = distinct !{!1621, !1620, !1622, !1216}
!1622 = !DILocation(line: 180, column: 5, scope: !1582, inlinedAt: !1592)
!1623 = !DILocation(line: 182, column: 42, scope: !1582, inlinedAt: !1592)
!1624 = !DILocation(line: 182, column: 14, scope: !1582, inlinedAt: !1592)
!1625 = !DILocation(line: 183, column: 7, scope: !1626, inlinedAt: !1592)
!1626 = distinct !DILexicalBlock(scope: !1582, file: !2, line: 183, column: 7)
!1627 = !DILocation(line: 183, column: 11, scope: !1626, inlinedAt: !1592)
!1628 = !DILocation(line: 183, column: 7, scope: !1582, inlinedAt: !1592)
!1629 = !DILocation(line: 188, column: 7, scope: !1630, inlinedAt: !1592)
!1630 = distinct !DILexicalBlock(scope: !1582, file: !2, line: 187, column: 5)
!1631 = !DILocation(line: 190, column: 21, scope: !1582, inlinedAt: !1592)
!1632 = !DILocation(line: 0, scope: !1599, inlinedAt: !1633)
!1633 = distinct !DILocation(line: 190, column: 10, scope: !1582, inlinedAt: !1592)
!1634 = !DILocation(line: 302, column: 3, scope: !1599, inlinedAt: !1633)
!1635 = distinct !{!1635, !1636, !1637, !1216}
!1636 = !DILocation(line: 186, column: 3, scope: !1582, inlinedAt: !1592)
!1637 = !DILocation(line: 190, column: 24, scope: !1582, inlinedAt: !1592)
!1638 = !DILocation(line: 197, column: 10, scope: !1582, inlinedAt: !1592)
!1639 = !DILocation(line: 197, column: 21, scope: !1582, inlinedAt: !1592)
!1640 = !DILocation(line: 200, column: 3, scope: !1641, inlinedAt: !1592)
!1641 = distinct !DILexicalBlock(scope: !1582, file: !2, line: 200, column: 3)
!1642 = !DILocation(line: 198, column: 5, scope: !1582, inlinedAt: !1592)
!1643 = !DILocation(line: 197, column: 3, scope: !1582, inlinedAt: !1592)
!1644 = distinct !{!1644, !1643, !1645, !1216}
!1645 = !DILocation(line: 198, column: 7, scope: !1582, inlinedAt: !1592)
!1646 = !DILocation(line: 200, scope: !1641, inlinedAt: !1592)
!1647 = !DILocation(line: 200, column: 24, scope: !1648, inlinedAt: !1592)
!1648 = distinct !DILexicalBlock(scope: !1641, file: !2, line: 200, column: 3)
!1649 = !DILocation(line: 0, scope: !1599, inlinedAt: !1650)
!1650 = distinct !DILocation(line: 200, column: 13, scope: !1648, inlinedAt: !1592)
!1651 = !DILocation(line: 302, column: 3, scope: !1599, inlinedAt: !1650)
!1652 = distinct !{!1652, !1640, !1653, !1216}
!1653 = !DILocation(line: 201, column: 5, scope: !1641, inlinedAt: !1592)
!1654 = !DILocation(line: 0, scope: !189)
!1655 = !DILocation(line: 338, column: 11, scope: !1656)
!1656 = distinct !DILexicalBlock(scope: !1657, file: !2, line: 337, column: 9)
!1657 = distinct !DILexicalBlock(scope: !189, file: !2, line: 336, column: 11)
!1658 = !DILocation(line: 342, column: 11, scope: !1656)
!1659 = !DILocation(line: 204, column: 34, scope: !1582, inlinedAt: !1592)
!1660 = !DILocation(line: 204, column: 10, scope: !1582, inlinedAt: !1592)
!1661 = !DILocation(line: 346, column: 11, scope: !201)
!1662 = !DILocation(line: 346, column: 40, scope: !201)
!1663 = !DILocation(line: 346, column: 11, scope: !189)
!1664 = !DILocation(line: 348, column: 21, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !1666, file: !2, line: 348, column: 15)
!1666 = distinct !DILexicalBlock(scope: !201, file: !2, line: 347, column: 9)
!1667 = !DILocation(line: 348, column: 15, scope: !1666)
!1668 = !DILocation(line: 349, column: 21, scope: !1665)
!1669 = !DILocation(line: 349, column: 44, scope: !1665)
!1670 = !DILocation(line: 349, column: 13, scope: !1665)
!1671 = !DILocation(line: 351, column: 16, scope: !200)
!1672 = !DILocation(line: 351, column: 50, scope: !200)
!1673 = !DILocation(line: 0, scope: !200)
!1674 = !DILocation(line: 351, column: 16, scope: !201)
!1675 = !DILocation(line: 353, column: 15, scope: !1676)
!1676 = distinct !DILexicalBlock(scope: !200, file: !2, line: 352, column: 9)
!1677 = !DILocation(line: 354, column: 21, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !1676, file: !2, line: 353, column: 15)
!1679 = !DILocation(line: 354, column: 49, scope: !1678)
!1680 = !DILocation(line: 354, column: 13, scope: !1678)
!1681 = !DILocation(line: 358, column: 15, scope: !199)
!1682 = !DILocation(line: 361, column: 21, scope: !198)
!1683 = !DILocation(line: 361, column: 15, scope: !199)
!1684 = !DILocation(line: 363, column: 19, scope: !196)
!1685 = !DILocation(line: 363, column: 19, scope: !197)
!1686 = !DILocation(line: 364, column: 17, scope: !196)
!1687 = !DILocation(line: 366, column: 17, scope: !195)
!1688 = !DILocation(line: 367, column: 24, scope: !194)
!1689 = !DILocation(line: 367, column: 56, scope: !194)
!1690 = !DILocation(line: 368, column: 24, scope: !194)
!1691 = !DILocation(line: 368, column: 27, scope: !194)
!1692 = !DILocation(line: 368, column: 57, scope: !194)
!1693 = !DILocation(line: 369, column: 24, scope: !194)
!1694 = !DILocation(line: 369, column: 27, scope: !194)
!1695 = !DILocation(line: 369, column: 60, scope: !194)
!1696 = !DILocation(line: 367, column: 24, scope: !195)
!1697 = !DILocation(line: 0, scope: !193)
!1698 = !DILocation(line: 377, column: 31, scope: !1699)
!1699 = distinct !DILexicalBlock(scope: !1700, file: !2, line: 377, column: 19)
!1700 = distinct !DILexicalBlock(scope: !193, file: !2, line: 377, column: 19)
!1701 = !DILocation(line: 378, column: 25, scope: !1702)
!1702 = distinct !DILexicalBlock(scope: !1699, file: !2, line: 378, column: 25)
!1703 = !DILocation(line: 378, column: 62, scope: !1702)
!1704 = !DILocation(line: 378, column: 25, scope: !1699)
!1705 = !DILocation(line: 377, column: 55, scope: !1699)
!1706 = !DILocation(line: 377, column: 46, scope: !1699)
!1707 = !DILocation(line: 377, column: 19, scope: !1700)
!1708 = distinct !{!1708, !1707, !1709, !1216}
!1709 = !DILocation(line: 379, column: 23, scope: !1700)
!1710 = !DILocation(line: 382, column: 38, scope: !1711)
!1711 = distinct !DILexicalBlock(scope: !193, file: !2, line: 381, column: 23)
!1712 = !DILocation(line: 382, column: 21, scope: !1711)
!1713 = !DILocation(line: 391, column: 24, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !189, file: !2, line: 391, column: 11)
!1715 = !DILocation(line: 393, column: 11, scope: !1716)
!1716 = distinct !DILexicalBlock(scope: !1714, file: !2, line: 392, column: 9)
!1717 = !DILocation(line: 397, column: 9, scope: !1716)
!1718 = !DILocation(line: 399, column: 7, scope: !189)
!1719 = !DILocation(line: 404, column: 1, scope: !109)
!1720 = !DILocation(line: 403, column: 3, scope: !109)
!1721 = !DISubprogram(name: "__errno_location", scope: !1722, file: !1722, line: 37, type: !1723, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1154)
!1722 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1723 = !DISubroutineType(types: !1724)
!1724 = !{!669}
!1725 = !DISubprogram(name: "__getdelim", scope: !708, file: !708, line: 632, type: !1726, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1154)
!1726 = !DISubroutineType(types: !1727)
!1727 = !{!1539, !1728, !1729, !89, !1159}
!1728 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1319)
!1729 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1048)
!1730 = !DISubprogram(name: "fnmatch", scope: !1731, file: !1731, line: 56, type: !1732, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1154)
!1731 = !DIFile(filename: "/usr/include/fnmatch.h", directory: "", checksumkind: CSK_MD5, checksum: "78cf7a81a1368221bdf9e99a720bc0a5")
!1732 = !DISubroutineType(types: !1733)
!1733 = !{!89, !171, !171, !89}
!1734 = distinct !DISubprogram(name: "append_entry", scope: !2, file: !2, line: 252, type: !1735, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1737)
!1735 = !DISubroutineType(types: !1736)
!1736 = !{null, !4, !171, !171}
!1737 = !{!1738, !1739, !1740, !1741, !1745, !1748, !1751, !1754, !1756, !1759, !1761}
!1738 = !DILocalVariable(name: "prefix", arg: 1, scope: !1734, file: !2, line: 252, type: !4)
!1739 = !DILocalVariable(name: "item", arg: 2, scope: !1734, file: !2, line: 252, type: !171)
!1740 = !DILocalVariable(name: "arg", arg: 3, scope: !1734, file: !2, line: 252, type: !171)
!1741 = !DILocalVariable(name: "__o", scope: !1742, file: !2, line: 258, type: !1341)
!1742 = distinct !DILexicalBlock(scope: !1743, file: !2, line: 258, column: 7)
!1743 = distinct !DILexicalBlock(scope: !1744, file: !2, line: 255, column: 5)
!1744 = distinct !DILexicalBlock(scope: !1734, file: !2, line: 254, column: 7)
!1745 = !DILocalVariable(name: "__o1", scope: !1746, file: !2, line: 258, type: !1336)
!1746 = distinct !DILexicalBlock(scope: !1747, file: !2, line: 258, column: 7)
!1747 = distinct !DILexicalBlock(scope: !1742, file: !2, line: 258, column: 7)
!1748 = !DILocalVariable(name: "__o", scope: !1749, file: !2, line: 261, type: !1341)
!1749 = distinct !DILexicalBlock(scope: !1750, file: !2, line: 261, column: 5)
!1750 = distinct !DILexicalBlock(scope: !1734, file: !2, line: 260, column: 7)
!1751 = !DILocalVariable(name: "__o1", scope: !1752, file: !2, line: 261, type: !1336)
!1752 = distinct !DILexicalBlock(scope: !1753, file: !2, line: 261, column: 5)
!1753 = distinct !DILexicalBlock(scope: !1749, file: !2, line: 261, column: 5)
!1754 = !DILocalVariable(name: "__o", scope: !1755, file: !2, line: 263, type: !1341)
!1755 = distinct !DILexicalBlock(scope: !1734, file: !2, line: 263, column: 3)
!1756 = !DILocalVariable(name: "__o1", scope: !1757, file: !2, line: 263, type: !1336)
!1757 = distinct !DILexicalBlock(scope: !1758, file: !2, line: 263, column: 3)
!1758 = distinct !DILexicalBlock(scope: !1755, file: !2, line: 263, column: 3)
!1759 = !DILocalVariable(name: "__o", scope: !1760, file: !2, line: 267, type: !1341)
!1760 = distinct !DILexicalBlock(scope: !1734, file: !2, line: 267, column: 3)
!1761 = !DILocalVariable(name: "__o1", scope: !1762, file: !2, line: 267, type: !1336)
!1762 = distinct !DILexicalBlock(scope: !1763, file: !2, line: 267, column: 3)
!1763 = distinct !DILexicalBlock(scope: !1760, file: !2, line: 267, column: 3)
!1764 = !DILocation(line: 0, scope: !1734)
!1765 = !DILocation(line: 254, column: 7, scope: !1744)
!1766 = !DILocation(line: 254, column: 7, scope: !1734)
!1767 = !DILocation(line: 256, column: 7, scope: !1743)
!1768 = !DILocation(line: 257, column: 7, scope: !1743)
!1769 = !DILocation(line: 0, scope: !1742)
!1770 = !DILocation(line: 0, scope: !1746)
!1771 = !DILocation(line: 258, column: 7, scope: !1746)
!1772 = !{!1471, !1105, i64 32}
!1773 = !DILocation(line: 258, column: 7, scope: !1747)
!1774 = !DILocation(line: 258, column: 7, scope: !1742)
!1775 = !DILocation(line: 259, column: 5, scope: !1743)
!1776 = !DILocation(line: 260, column: 7, scope: !1750)
!1777 = !DILocation(line: 260, column: 7, scope: !1734)
!1778 = !DILocation(line: 0, scope: !1749)
!1779 = !DILocation(line: 0, scope: !1752)
!1780 = !DILocation(line: 261, column: 5, scope: !1752)
!1781 = !DILocation(line: 261, column: 5, scope: !1753)
!1782 = !DILocation(line: 261, column: 5, scope: !1749)
!1783 = !DILocation(line: 261, column: 5, scope: !1750)
!1784 = !DILocation(line: 262, column: 3, scope: !1734)
!1785 = !DILocation(line: 0, scope: !1755)
!1786 = !DILocation(line: 0, scope: !1757)
!1787 = !DILocation(line: 263, column: 3, scope: !1757)
!1788 = !DILocation(line: 263, column: 3, scope: !1758)
!1789 = !DILocation(line: 263, column: 3, scope: !1755)
!1790 = !DILocation(line: 264, column: 3, scope: !1734)
!1791 = !DILocation(line: 265, column: 7, scope: !1792)
!1792 = distinct !DILexicalBlock(scope: !1734, file: !2, line: 265, column: 7)
!1793 = !DILocation(line: 265, column: 7, scope: !1734)
!1794 = !DILocation(line: 266, column: 5, scope: !1792)
!1795 = !DILocation(line: 0, scope: !1760)
!1796 = !DILocation(line: 0, scope: !1762)
!1797 = !DILocation(line: 267, column: 3, scope: !1762)
!1798 = !DILocation(line: 267, column: 3, scope: !1763)
!1799 = !DILocation(line: 267, column: 3, scope: !1760)
!1800 = !DILocation(line: 268, column: 1, scope: !1734)
!1801 = distinct !DISubprogram(name: "append_quoted", scope: !2, file: !2, line: 211, type: !1120, scopeLine: 212, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1802)
!1802 = !{!1803, !1804, !1805, !1810, !1813, !1815, !1818, !1820, !1823, !1826, !1829, !1831}
!1803 = !DILocalVariable(name: "str", arg: 1, scope: !1801, file: !2, line: 211, type: !171)
!1804 = !DILocalVariable(name: "need_backslash", scope: !1801, file: !2, line: 213, type: !112)
!1805 = !DILocalVariable(name: "__o", scope: !1806, file: !2, line: 221, type: !1341)
!1806 = distinct !DILexicalBlock(scope: !1807, file: !2, line: 221, column: 13)
!1807 = distinct !DILexicalBlock(scope: !1808, file: !2, line: 219, column: 11)
!1808 = distinct !DILexicalBlock(scope: !1809, file: !2, line: 217, column: 11)
!1809 = distinct !DILexicalBlock(scope: !1801, file: !2, line: 216, column: 5)
!1810 = !DILocalVariable(name: "__o1", scope: !1811, file: !2, line: 221, type: !1336)
!1811 = distinct !DILexicalBlock(scope: !1812, file: !2, line: 221, column: 13)
!1812 = distinct !DILexicalBlock(scope: !1806, file: !2, line: 221, column: 13)
!1813 = !DILocalVariable(name: "__o", scope: !1814, file: !2, line: 222, type: !1341)
!1814 = distinct !DILexicalBlock(scope: !1807, file: !2, line: 222, column: 13)
!1815 = !DILocalVariable(name: "__o1", scope: !1816, file: !2, line: 222, type: !1336)
!1816 = distinct !DILexicalBlock(scope: !1817, file: !2, line: 222, column: 13)
!1817 = distinct !DILexicalBlock(scope: !1814, file: !2, line: 222, column: 13)
!1818 = !DILocalVariable(name: "__o", scope: !1819, file: !2, line: 223, type: !1341)
!1819 = distinct !DILexicalBlock(scope: !1807, file: !2, line: 223, column: 13)
!1820 = !DILocalVariable(name: "__o1", scope: !1821, file: !2, line: 223, type: !1336)
!1821 = distinct !DILexicalBlock(scope: !1822, file: !2, line: 223, column: 13)
!1822 = distinct !DILexicalBlock(scope: !1819, file: !2, line: 223, column: 13)
!1823 = !DILocalVariable(name: "__o", scope: !1824, file: !2, line: 235, type: !1341)
!1824 = distinct !DILexicalBlock(scope: !1825, file: !2, line: 235, column: 15)
!1825 = distinct !DILexicalBlock(scope: !1807, file: !2, line: 234, column: 17)
!1826 = !DILocalVariable(name: "__o1", scope: !1827, file: !2, line: 235, type: !1336)
!1827 = distinct !DILexicalBlock(scope: !1828, file: !2, line: 235, column: 15)
!1828 = distinct !DILexicalBlock(scope: !1824, file: !2, line: 235, column: 15)
!1829 = !DILocalVariable(name: "__o", scope: !1830, file: !2, line: 243, type: !1341)
!1830 = distinct !DILexicalBlock(scope: !1809, file: !2, line: 243, column: 7)
!1831 = !DILocalVariable(name: "__o1", scope: !1832, file: !2, line: 243, type: !1336)
!1832 = distinct !DILexicalBlock(scope: !1833, file: !2, line: 243, column: 7)
!1833 = distinct !DILexicalBlock(scope: !1830, file: !2, line: 243, column: 7)
!1834 = !DILocation(line: 0, scope: !1801)
!1835 = !DILocation(line: 215, column: 10, scope: !1801)
!1836 = !DILocation(line: 215, column: 15, scope: !1801)
!1837 = !DILocation(line: 215, column: 3, scope: !1801)
!1838 = !DILocation(line: 217, column: 13, scope: !1808)
!1839 = !DILocation(line: 217, column: 11, scope: !1809)
!1840 = !DILocation(line: 218, column: 9, scope: !1808)
!1841 = !DILocation(line: 0, scope: !1806)
!1842 = !DILocation(line: 0, scope: !1811)
!1843 = !DILocation(line: 221, column: 13, scope: !1811)
!1844 = !DILocation(line: 221, column: 13, scope: !1812)
!1845 = !DILocation(line: 221, column: 13, scope: !1806)
!1846 = !DILocation(line: 0, scope: !1814)
!1847 = !DILocation(line: 0, scope: !1816)
!1848 = !DILocation(line: 222, column: 13, scope: !1816)
!1849 = !DILocation(line: 222, column: 13, scope: !1817)
!1850 = !DILocation(line: 222, column: 13, scope: !1814)
!1851 = !DILocation(line: 0, scope: !1819)
!1852 = !DILocation(line: 0, scope: !1821)
!1853 = !DILocation(line: 223, column: 13, scope: !1821)
!1854 = !DILocation(line: 223, column: 13, scope: !1822)
!1855 = !DILocation(line: 223, column: 13, scope: !1819)
!1856 = !DILocation(line: 225, column: 13, scope: !1807)
!1857 = !DILocation(line: 229, column: 30, scope: !1807)
!1858 = !DILocation(line: 230, column: 13, scope: !1807)
!1859 = !DILocation(line: 234, column: 17, scope: !1807)
!1860 = !DILocation(line: 0, scope: !1824)
!1861 = !DILocation(line: 0, scope: !1827)
!1862 = !DILocation(line: 235, column: 15, scope: !1827)
!1863 = !DILocation(line: 235, column: 15, scope: !1828)
!1864 = !DILocation(line: 235, column: 15, scope: !1824)
!1865 = !DILocation(line: 235, column: 15, scope: !1825)
!1866 = !DILocation(line: 0, scope: !1830)
!1867 = !DILocation(line: 0, scope: !1832)
!1868 = !DILocation(line: 243, column: 7, scope: !1832)
!1869 = !DILocation(line: 243, column: 7, scope: !1833)
!1870 = !DILocation(line: 243, column: 7, scope: !1830)
!1871 = !DILocation(line: 244, column: 7, scope: !1809)
!1872 = distinct !{!1872, !1837, !1873, !1216}
!1873 = !DILocation(line: 245, column: 5, scope: !1801)
!1874 = !DILocation(line: 246, column: 1, scope: !1801)
!1875 = distinct !DISubprogram(name: "last_component", scope: !1018, file: !1018, line: 29, type: !1292, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1017, retainedNodes: !1876)
!1876 = !{!1877, !1878, !1879, !1880}
!1877 = !DILocalVariable(name: "name", arg: 1, scope: !1875, file: !1018, line: 29, type: !171)
!1878 = !DILocalVariable(name: "base", scope: !1875, file: !1018, line: 31, type: !171)
!1879 = !DILocalVariable(name: "last_was_slash", scope: !1875, file: !1018, line: 35, type: !112)
!1880 = !DILocalVariable(name: "p", scope: !1881, file: !1018, line: 36, type: !171)
!1881 = distinct !DILexicalBlock(scope: !1875, file: !1018, line: 36, column: 3)
!1882 = !DILocation(line: 0, scope: !1875)
!1883 = !DILocation(line: 32, column: 3, scope: !1875)
!1884 = !DILocation(line: 32, column: 10, scope: !1875)
!1885 = !DILocation(line: 33, column: 9, scope: !1875)
!1886 = distinct !{!1886, !1883, !1885, !1216}
!1887 = !DILocation(line: 36, column: 30, scope: !1888)
!1888 = distinct !DILexicalBlock(scope: !1881, file: !1018, line: 36, column: 3)
!1889 = !DILocation(line: 31, column: 15, scope: !1875)
!1890 = !DILocation(line: 36, scope: !1881)
!1891 = !DILocation(line: 0, scope: !1881)
!1892 = !DILocation(line: 36, column: 3, scope: !1881)
!1893 = !DILocation(line: 47, column: 3, scope: !1875)
!1894 = !DILocation(line: 40, column: 16, scope: !1895)
!1895 = distinct !DILexicalBlock(scope: !1896, file: !1018, line: 38, column: 11)
!1896 = distinct !DILexicalBlock(scope: !1888, file: !1018, line: 37, column: 5)
!1897 = !DILocation(line: 36, column: 35, scope: !1888)
!1898 = !DILocation(line: 36, column: 3, scope: !1888)
!1899 = distinct !{!1899, !1892, !1900, !1216}
!1900 = !DILocation(line: 45, column: 5, scope: !1881)
!1901 = distinct !DISubprogram(name: "base_len", scope: !1018, file: !1018, line: 51, type: !1902, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1017, retainedNodes: !1904)
!1902 = !DISubroutineType(types: !1903)
!1903 = !{!163, !171}
!1904 = !{!1905, !1906, !1907}
!1905 = !DILocalVariable(name: "name", arg: 1, scope: !1901, file: !1018, line: 51, type: !171)
!1906 = !DILocalVariable(name: "len", scope: !1901, file: !1018, line: 53, type: !163)
!1907 = !DILocalVariable(name: "prefix_len", scope: !1901, file: !1018, line: 61, type: !163)
!1908 = !DILocation(line: 0, scope: !1901)
!1909 = !DILocation(line: 54, column: 14, scope: !1910)
!1910 = distinct !DILexicalBlock(scope: !1901, file: !1018, line: 54, column: 3)
!1911 = !DILocation(line: 54, column: 8, scope: !1910)
!1912 = !DILocation(line: 54, scope: !1910)
!1913 = !DILocation(line: 54, column: 32, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !1910, file: !1018, line: 54, column: 3)
!1915 = !DILocation(line: 54, column: 38, scope: !1914)
!1916 = !DILocation(line: 54, column: 41, scope: !1914)
!1917 = !DILocation(line: 54, column: 3, scope: !1910)
!1918 = distinct !{!1918, !1917, !1919, !1216}
!1919 = !DILocation(line: 55, column: 5, scope: !1910)
!1920 = !DILocation(line: 66, column: 3, scope: !1901)
!1921 = distinct !DISubprogram(name: "c_strcasecmp", scope: !1020, file: !1020, line: 27, type: !1295, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1019, retainedNodes: !1922)
!1922 = !{!1923, !1924, !1925, !1926, !1927, !1931}
!1923 = !DILocalVariable(name: "s1", arg: 1, scope: !1921, file: !1020, line: 27, type: !171)
!1924 = !DILocalVariable(name: "s2", arg: 2, scope: !1921, file: !1020, line: 27, type: !171)
!1925 = !DILocalVariable(name: "p1", scope: !1921, file: !1020, line: 29, type: !1022)
!1926 = !DILocalVariable(name: "p2", scope: !1921, file: !1020, line: 30, type: !1022)
!1927 = !DILocalVariable(name: "c1", scope: !1928, file: !1020, line: 37, type: !222)
!1928 = distinct !DILexicalBlock(scope: !1929, file: !1020, line: 36, column: 5)
!1929 = distinct !DILexicalBlock(scope: !1930, file: !1020, line: 35, column: 3)
!1930 = distinct !DILexicalBlock(scope: !1921, file: !1020, line: 35, column: 3)
!1931 = !DILocalVariable(name: "c2", scope: !1928, file: !1020, line: 38, type: !222)
!1932 = !DILocation(line: 0, scope: !1921)
!1933 = !DILocation(line: 32, column: 10, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1921, file: !1020, line: 32, column: 7)
!1935 = !DILocation(line: 32, column: 7, scope: !1921)
!1936 = !DILocation(line: 37, column: 37, scope: !1928)
!1937 = !DILocalVariable(name: "c", arg: 1, scope: !1938, file: !1600, line: 337, type: !89)
!1938 = distinct !DISubprogram(name: "c_tolower", scope: !1600, file: !1600, line: 337, type: !1939, scopeLine: 338, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1019, retainedNodes: !1941)
!1939 = !DISubroutineType(types: !1940)
!1940 = !{!89, !89}
!1941 = !{!1937}
!1942 = !DILocation(line: 0, scope: !1938, inlinedAt: !1943)
!1943 = distinct !DILocation(line: 37, column: 26, scope: !1928)
!1944 = !DILocation(line: 339, column: 3, scope: !1938, inlinedAt: !1943)
!1945 = !DILocation(line: 0, scope: !1928)
!1946 = !DILocation(line: 38, column: 37, scope: !1928)
!1947 = !DILocation(line: 0, scope: !1938, inlinedAt: !1948)
!1948 = distinct !DILocation(line: 38, column: 26, scope: !1928)
!1949 = !DILocation(line: 339, column: 3, scope: !1938, inlinedAt: !1948)
!1950 = !DILocation(line: 40, column: 11, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1928, file: !1020, line: 40, column: 11)
!1952 = !DILocation(line: 40, column: 14, scope: !1951)
!1953 = !DILocation(line: 40, column: 22, scope: !1951)
!1954 = !DILocation(line: 43, column: 23, scope: !1955)
!1955 = distinct !DILexicalBlock(scope: !1956, file: !1020, line: 42, column: 15)
!1956 = distinct !DILexicalBlock(scope: !1951, file: !1020, line: 41, column: 9)
!1957 = !DILocation(line: 35, column: 13, scope: !1929)
!1958 = !DILocation(line: 35, column: 19, scope: !1929)
!1959 = distinct !{!1959, !1960, !1961}
!1960 = !DILocation(line: 35, column: 3, scope: !1930)
!1961 = !DILocation(line: 50, column: 5, scope: !1930)
!1962 = !DILocation(line: 51, column: 1, scope: !1921)
!1963 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !682, file: !682, line: 50, type: !1120, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !681, retainedNodes: !1964)
!1964 = !{!1965}
!1965 = !DILocalVariable(name: "file", arg: 1, scope: !1963, file: !682, line: 50, type: !171)
!1966 = !DILocation(line: 0, scope: !1963)
!1967 = !DILocation(line: 52, column: 13, scope: !1963)
!1968 = !DILocation(line: 53, column: 1, scope: !1963)
!1969 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !682, file: !682, line: 87, type: !1970, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !681, retainedNodes: !1972)
!1970 = !DISubroutineType(types: !1971)
!1971 = !{null, !112}
!1972 = !{!1973}
!1973 = !DILocalVariable(name: "ignore", arg: 1, scope: !1969, file: !682, line: 87, type: !112)
!1974 = !DILocation(line: 0, scope: !1969)
!1975 = !DILocation(line: 89, column: 16, scope: !1969)
!1976 = !{!1977, !1977, i64 0}
!1977 = !{!"_Bool", !1106, i64 0}
!1978 = !DILocation(line: 90, column: 1, scope: !1969)
!1979 = distinct !DISubprogram(name: "close_stdout", scope: !682, file: !682, line: 116, type: !746, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !681, retainedNodes: !1980)
!1980 = !{!1981}
!1981 = !DILocalVariable(name: "write_error", scope: !1982, file: !682, line: 121, type: !171)
!1982 = distinct !DILexicalBlock(scope: !1983, file: !682, line: 120, column: 5)
!1983 = distinct !DILexicalBlock(scope: !1979, file: !682, line: 118, column: 7)
!1984 = !DILocation(line: 118, column: 21, scope: !1983)
!1985 = !DILocation(line: 118, column: 7, scope: !1983)
!1986 = !DILocation(line: 118, column: 29, scope: !1983)
!1987 = !DILocation(line: 119, column: 7, scope: !1983)
!1988 = !DILocation(line: 119, column: 12, scope: !1983)
!1989 = !{i8 0, i8 2}
!1990 = !DILocation(line: 119, column: 25, scope: !1983)
!1991 = !DILocation(line: 119, column: 28, scope: !1983)
!1992 = !DILocation(line: 119, column: 34, scope: !1983)
!1993 = !DILocation(line: 118, column: 7, scope: !1979)
!1994 = !DILocation(line: 121, column: 33, scope: !1982)
!1995 = !DILocation(line: 0, scope: !1982)
!1996 = !DILocation(line: 122, column: 11, scope: !1997)
!1997 = distinct !DILexicalBlock(scope: !1982, file: !682, line: 122, column: 11)
!1998 = !DILocation(line: 0, scope: !1997)
!1999 = !DILocation(line: 122, column: 11, scope: !1982)
!2000 = !DILocation(line: 123, column: 9, scope: !1997)
!2001 = !DILocation(line: 126, column: 9, scope: !1997)
!2002 = !DILocation(line: 128, column: 14, scope: !1982)
!2003 = !DILocation(line: 128, column: 7, scope: !1982)
!2004 = !DILocation(line: 133, column: 42, scope: !2005)
!2005 = distinct !DILexicalBlock(scope: !1979, file: !682, line: 133, column: 7)
!2006 = !DILocation(line: 133, column: 28, scope: !2005)
!2007 = !DILocation(line: 133, column: 50, scope: !2005)
!2008 = !DILocation(line: 133, column: 7, scope: !1979)
!2009 = !DILocation(line: 134, column: 12, scope: !2005)
!2010 = !DILocation(line: 134, column: 5, scope: !2005)
!2011 = !DILocation(line: 135, column: 1, scope: !1979)
!2012 = !DISubprogram(name: "_exit", scope: !2013, file: !2013, line: 624, type: !1094, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !1154)
!2013 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!2014 = distinct !DISubprogram(name: "verror", scope: !697, file: !697, line: 251, type: !2015, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !696, retainedNodes: !2017)
!2015 = !DISubroutineType(types: !2016)
!2016 = !{null, !89, !89, !171, !707}
!2017 = !{!2018, !2019, !2020, !2021}
!2018 = !DILocalVariable(name: "status", arg: 1, scope: !2014, file: !697, line: 251, type: !89)
!2019 = !DILocalVariable(name: "errnum", arg: 2, scope: !2014, file: !697, line: 251, type: !89)
!2020 = !DILocalVariable(name: "message", arg: 3, scope: !2014, file: !697, line: 251, type: !171)
!2021 = !DILocalVariable(name: "args", arg: 4, scope: !2014, file: !697, line: 251, type: !707)
!2022 = !DILocation(line: 0, scope: !2014)
!2023 = !DILocation(line: 251, column: 1, scope: !2014)
!2024 = !DILocation(line: 261, column: 3, scope: !2014)
!2025 = !DILocation(line: 265, column: 7, scope: !2026)
!2026 = distinct !DILexicalBlock(scope: !2014, file: !697, line: 265, column: 7)
!2027 = !DILocation(line: 265, column: 7, scope: !2014)
!2028 = !DILocation(line: 266, column: 5, scope: !2026)
!2029 = !DILocation(line: 272, column: 7, scope: !2030)
!2030 = distinct !DILexicalBlock(scope: !2026, file: !697, line: 268, column: 5)
!2031 = !DILocation(line: 276, column: 3, scope: !2014)
!2032 = !{i64 0, i64 8, !1104, i64 8, i64 8, !1104, i64 16, i64 8, !1104, i64 24, i64 4, !1169, i64 28, i64 4, !1169}
!2033 = !DILocation(line: 282, column: 1, scope: !2014)
!2034 = distinct !DISubprogram(name: "flush_stdout", scope: !697, file: !697, line: 163, type: !746, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !696, retainedNodes: !2035)
!2035 = !{!2036}
!2036 = !DILocalVariable(name: "stdout_fd", scope: !2034, file: !697, line: 166, type: !89)
!2037 = !DILocation(line: 0, scope: !2034)
!2038 = !DILocalVariable(name: "fd", arg: 1, scope: !2039, file: !697, line: 145, type: !89)
!2039 = distinct !DISubprogram(name: "is_open", scope: !697, file: !697, line: 145, type: !1939, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !696, retainedNodes: !2040)
!2040 = !{!2038}
!2041 = !DILocation(line: 0, scope: !2039, inlinedAt: !2042)
!2042 = distinct !DILocation(line: 182, column: 25, scope: !2043)
!2043 = distinct !DILexicalBlock(scope: !2034, file: !697, line: 182, column: 7)
!2044 = !DILocation(line: 157, column: 15, scope: !2039, inlinedAt: !2042)
!2045 = !DILocation(line: 157, column: 12, scope: !2039, inlinedAt: !2042)
!2046 = !DILocation(line: 182, column: 7, scope: !2034)
!2047 = !DILocation(line: 184, column: 5, scope: !2043)
!2048 = !DILocation(line: 185, column: 1, scope: !2034)
!2049 = distinct !DISubprogram(name: "error_tail", scope: !697, file: !697, line: 219, type: !2015, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !696, retainedNodes: !2050)
!2050 = !{!2051, !2052, !2053, !2054}
!2051 = !DILocalVariable(name: "status", arg: 1, scope: !2049, file: !697, line: 219, type: !89)
!2052 = !DILocalVariable(name: "errnum", arg: 2, scope: !2049, file: !697, line: 219, type: !89)
!2053 = !DILocalVariable(name: "message", arg: 3, scope: !2049, file: !697, line: 219, type: !171)
!2054 = !DILocalVariable(name: "args", arg: 4, scope: !2049, file: !697, line: 219, type: !707)
!2055 = !DILocation(line: 0, scope: !2049)
!2056 = !DILocation(line: 219, column: 1, scope: !2049)
!2057 = !DILocation(line: 229, column: 13, scope: !2049)
!2058 = !DILocation(line: 135, column: 10, scope: !2059, inlinedAt: !2101)
!2059 = distinct !DISubprogram(name: "vfprintf", scope: !1156, file: !1156, line: 132, type: !2060, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !696, retainedNodes: !2097)
!2060 = !DISubroutineType(types: !2061)
!2061 = !{!89, !2062, !1160, !709}
!2062 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2063)
!2063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2064, size: 64)
!2064 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !115, line: 7, baseType: !2065)
!2065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !117, line: 49, size: 1728, elements: !2066)
!2066 = !{!2067, !2068, !2069, !2070, !2071, !2072, !2073, !2074, !2075, !2076, !2077, !2078, !2079, !2080, !2082, !2083, !2084, !2085, !2086, !2087, !2088, !2089, !2090, !2091, !2092, !2093, !2094, !2095, !2096}
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2065, file: !117, line: 51, baseType: !89, size: 32)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2065, file: !117, line: 54, baseType: !121, size: 64, offset: 64)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2065, file: !117, line: 55, baseType: !121, size: 64, offset: 128)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2065, file: !117, line: 56, baseType: !121, size: 64, offset: 192)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2065, file: !117, line: 57, baseType: !121, size: 64, offset: 256)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2065, file: !117, line: 58, baseType: !121, size: 64, offset: 320)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2065, file: !117, line: 59, baseType: !121, size: 64, offset: 384)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2065, file: !117, line: 60, baseType: !121, size: 64, offset: 448)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2065, file: !117, line: 61, baseType: !121, size: 64, offset: 512)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2065, file: !117, line: 64, baseType: !121, size: 64, offset: 576)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2065, file: !117, line: 65, baseType: !121, size: 64, offset: 640)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2065, file: !117, line: 66, baseType: !121, size: 64, offset: 704)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2065, file: !117, line: 68, baseType: !133, size: 64, offset: 768)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2065, file: !117, line: 70, baseType: !2081, size: 64, offset: 832)
!2081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2065, size: 64)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2065, file: !117, line: 72, baseType: !89, size: 32, offset: 896)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2065, file: !117, line: 73, baseType: !89, size: 32, offset: 928)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2065, file: !117, line: 74, baseType: !140, size: 64, offset: 960)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2065, file: !117, line: 77, baseType: !144, size: 16, offset: 1024)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2065, file: !117, line: 78, baseType: !146, size: 8, offset: 1040)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2065, file: !117, line: 79, baseType: !59, size: 8, offset: 1048)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2065, file: !117, line: 81, baseType: !149, size: 64, offset: 1088)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2065, file: !117, line: 89, baseType: !152, size: 64, offset: 1152)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2065, file: !117, line: 91, baseType: !154, size: 64, offset: 1216)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2065, file: !117, line: 92, baseType: !157, size: 64, offset: 1280)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2065, file: !117, line: 93, baseType: !2081, size: 64, offset: 1344)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2065, file: !117, line: 94, baseType: !161, size: 64, offset: 1408)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2065, file: !117, line: 95, baseType: !163, size: 64, offset: 1472)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2065, file: !117, line: 96, baseType: !89, size: 32, offset: 1536)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2065, file: !117, line: 98, baseType: !168, size: 160, offset: 1568)
!2097 = !{!2098, !2099, !2100}
!2098 = !DILocalVariable(name: "__stream", arg: 1, scope: !2059, file: !1156, line: 132, type: !2062)
!2099 = !DILocalVariable(name: "__fmt", arg: 2, scope: !2059, file: !1156, line: 133, type: !1160)
!2100 = !DILocalVariable(name: "__ap", arg: 3, scope: !2059, file: !1156, line: 133, type: !709)
!2101 = distinct !DILocation(line: 229, column: 3, scope: !2049)
!2102 = !{!2103, !2105}
!2103 = distinct !{!2103, !2104, !"vfprintf.inline: argument 0"}
!2104 = distinct !{!2104, !"vfprintf.inline"}
!2105 = distinct !{!2105, !2104, !"vfprintf.inline: argument 1"}
!2106 = !DILocation(line: 229, column: 3, scope: !2049)
!2107 = !DILocation(line: 0, scope: !2059, inlinedAt: !2101)
!2108 = !DILocation(line: 133, column: 49, scope: !2059, inlinedAt: !2101)
!2109 = !DILocation(line: 232, column: 3, scope: !2049)
!2110 = !DILocation(line: 233, column: 7, scope: !2111)
!2111 = distinct !DILexicalBlock(scope: !2049, file: !697, line: 233, column: 7)
!2112 = !DILocation(line: 233, column: 7, scope: !2049)
!2113 = !DILocalVariable(name: "errnum", arg: 1, scope: !2114, file: !697, line: 188, type: !89)
!2114 = distinct !DISubprogram(name: "print_errno_message", scope: !697, file: !697, line: 188, type: !1094, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !696, retainedNodes: !2115)
!2115 = !{!2113, !2116, !2117}
!2116 = !DILocalVariable(name: "s", scope: !2114, file: !697, line: 190, type: !171)
!2117 = !DILocalVariable(name: "errbuf", scope: !2114, file: !697, line: 193, type: !2118)
!2118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !2119)
!2119 = !{!2120}
!2120 = !DISubrange(count: 1024)
!2121 = !DILocation(line: 0, scope: !2114, inlinedAt: !2122)
!2122 = distinct !DILocation(line: 234, column: 5, scope: !2111)
!2123 = !DILocation(line: 193, column: 3, scope: !2114, inlinedAt: !2122)
!2124 = !DILocation(line: 193, column: 8, scope: !2114, inlinedAt: !2122)
!2125 = !DILocation(line: 195, column: 7, scope: !2114, inlinedAt: !2122)
!2126 = !DILocation(line: 207, column: 9, scope: !2127, inlinedAt: !2122)
!2127 = distinct !DILexicalBlock(scope: !2114, file: !697, line: 207, column: 7)
!2128 = !DILocation(line: 207, column: 7, scope: !2114, inlinedAt: !2122)
!2129 = !DILocation(line: 208, column: 9, scope: !2127, inlinedAt: !2122)
!2130 = !DILocation(line: 208, column: 5, scope: !2127, inlinedAt: !2122)
!2131 = !DILocation(line: 214, column: 3, scope: !2114, inlinedAt: !2122)
!2132 = !DILocation(line: 216, column: 1, scope: !2114, inlinedAt: !2122)
!2133 = !DILocation(line: 234, column: 5, scope: !2111)
!2134 = !DILocation(line: 238, column: 3, scope: !2049)
!2135 = !DILocalVariable(name: "__c", arg: 1, scope: !2136, file: !1536, line: 101, type: !89)
!2136 = distinct !DISubprogram(name: "putc_unlocked", scope: !1536, file: !1536, line: 101, type: !2137, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !696, retainedNodes: !2139)
!2137 = !DISubroutineType(types: !2138)
!2138 = !{!89, !89, !2063}
!2139 = !{!2135, !2140}
!2140 = !DILocalVariable(name: "__stream", arg: 2, scope: !2136, file: !1536, line: 101, type: !2063)
!2141 = !DILocation(line: 0, scope: !2136, inlinedAt: !2142)
!2142 = distinct !DILocation(line: 238, column: 3, scope: !2049)
!2143 = !DILocation(line: 103, column: 10, scope: !2136, inlinedAt: !2142)
!2144 = !{!1562, !1105, i64 40}
!2145 = !{!1562, !1105, i64 48}
!2146 = !{!"branch_weights", i32 2000, i32 1}
!2147 = !DILocation(line: 240, column: 3, scope: !2049)
!2148 = !DILocation(line: 241, column: 7, scope: !2149)
!2149 = distinct !DILexicalBlock(scope: !2049, file: !697, line: 241, column: 7)
!2150 = !DILocation(line: 241, column: 7, scope: !2049)
!2151 = !DILocation(line: 242, column: 5, scope: !2149)
!2152 = !DILocation(line: 243, column: 1, scope: !2049)
!2153 = !DISubprogram(name: "__vfprintf_chk", scope: !1156, file: !1156, line: 96, type: !2154, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1154)
!2154 = !DISubroutineType(types: !2155)
!2155 = !{!89, !2062, !89, !1160, !709}
!2156 = !DISubprogram(name: "strerror_r", scope: !1286, file: !1286, line: 444, type: !2157, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1154)
!2157 = !DISubroutineType(types: !2158)
!2158 = !{!121, !89, !121, !163}
!2159 = !DISubprogram(name: "__overflow", scope: !708, file: !708, line: 886, type: !2160, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1154)
!2160 = !DISubroutineType(types: !2161)
!2161 = !{!89, !2063, !89}
!2162 = !DISubprogram(name: "fflush_unlocked", scope: !708, file: !708, line: 239, type: !2163, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1154)
!2163 = !DISubroutineType(types: !2164)
!2164 = !{!89, !2063}
!2165 = !DISubprogram(name: "fcntl", scope: !2166, file: !2166, line: 149, type: !2167, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1154)
!2166 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!2167 = !DISubroutineType(types: !2168)
!2168 = !{!89, !89, !89, null}
!2169 = distinct !DISubprogram(name: "error", scope: !697, file: !697, line: 285, type: !2170, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !696, retainedNodes: !2172)
!2170 = !DISubroutineType(types: !2171)
!2171 = !{null, !89, !89, !171, null}
!2172 = !{!2173, !2174, !2175, !2176}
!2173 = !DILocalVariable(name: "status", arg: 1, scope: !2169, file: !697, line: 285, type: !89)
!2174 = !DILocalVariable(name: "errnum", arg: 2, scope: !2169, file: !697, line: 285, type: !89)
!2175 = !DILocalVariable(name: "message", arg: 3, scope: !2169, file: !697, line: 285, type: !171)
!2176 = !DILocalVariable(name: "ap", scope: !2169, file: !697, line: 287, type: !707)
!2177 = !DILocation(line: 0, scope: !2169)
!2178 = !DILocation(line: 287, column: 3, scope: !2169)
!2179 = !DILocation(line: 287, column: 11, scope: !2169)
!2180 = !DILocation(line: 288, column: 3, scope: !2169)
!2181 = !DILocation(line: 289, column: 3, scope: !2169)
!2182 = !DILocation(line: 290, column: 3, scope: !2169)
!2183 = !DILocation(line: 291, column: 1, scope: !2169)
!2184 = !DILocation(line: 0, scope: !704)
!2185 = !DILocation(line: 298, column: 1, scope: !704)
!2186 = !DILocation(line: 302, column: 7, scope: !2187)
!2187 = distinct !DILexicalBlock(scope: !704, file: !697, line: 302, column: 7)
!2188 = !DILocation(line: 302, column: 7, scope: !704)
!2189 = !DILocation(line: 307, column: 11, scope: !2190)
!2190 = distinct !DILexicalBlock(scope: !2191, file: !697, line: 307, column: 11)
!2191 = distinct !DILexicalBlock(scope: !2187, file: !697, line: 303, column: 5)
!2192 = !DILocation(line: 307, column: 27, scope: !2190)
!2193 = !DILocation(line: 308, column: 11, scope: !2190)
!2194 = !DILocation(line: 308, column: 28, scope: !2190)
!2195 = !DILocation(line: 308, column: 25, scope: !2190)
!2196 = !DILocation(line: 309, column: 15, scope: !2190)
!2197 = !DILocation(line: 309, column: 33, scope: !2190)
!2198 = !DILocation(line: 310, column: 19, scope: !2190)
!2199 = !DILocation(line: 311, column: 22, scope: !2190)
!2200 = !DILocation(line: 311, column: 56, scope: !2190)
!2201 = !DILocation(line: 307, column: 11, scope: !2191)
!2202 = !DILocation(line: 316, column: 21, scope: !2191)
!2203 = !DILocation(line: 317, column: 23, scope: !2191)
!2204 = !DILocation(line: 318, column: 5, scope: !2191)
!2205 = !DILocation(line: 327, column: 3, scope: !704)
!2206 = !DILocation(line: 331, column: 7, scope: !2207)
!2207 = distinct !DILexicalBlock(scope: !704, file: !697, line: 331, column: 7)
!2208 = !DILocation(line: 331, column: 7, scope: !704)
!2209 = !DILocation(line: 332, column: 5, scope: !2207)
!2210 = !DILocation(line: 338, column: 7, scope: !2211)
!2211 = distinct !DILexicalBlock(scope: !2207, file: !697, line: 334, column: 5)
!2212 = !DILocation(line: 346, column: 3, scope: !704)
!2213 = !DILocation(line: 350, column: 3, scope: !704)
!2214 = !DILocation(line: 356, column: 1, scope: !704)
!2215 = distinct !DISubprogram(name: "error_at_line", scope: !697, file: !697, line: 359, type: !2216, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !696, retainedNodes: !2218)
!2216 = !DISubroutineType(types: !2217)
!2217 = !{null, !89, !89, !171, !79, !171, null}
!2218 = !{!2219, !2220, !2221, !2222, !2223, !2224}
!2219 = !DILocalVariable(name: "status", arg: 1, scope: !2215, file: !697, line: 359, type: !89)
!2220 = !DILocalVariable(name: "errnum", arg: 2, scope: !2215, file: !697, line: 359, type: !89)
!2221 = !DILocalVariable(name: "file_name", arg: 3, scope: !2215, file: !697, line: 359, type: !171)
!2222 = !DILocalVariable(name: "line_number", arg: 4, scope: !2215, file: !697, line: 360, type: !79)
!2223 = !DILocalVariable(name: "message", arg: 5, scope: !2215, file: !697, line: 360, type: !171)
!2224 = !DILocalVariable(name: "ap", scope: !2215, file: !697, line: 362, type: !707)
!2225 = !DILocation(line: 0, scope: !2215)
!2226 = !DILocation(line: 362, column: 3, scope: !2215)
!2227 = !DILocation(line: 362, column: 11, scope: !2215)
!2228 = !DILocation(line: 363, column: 3, scope: !2215)
!2229 = !DILocation(line: 364, column: 3, scope: !2215)
!2230 = !DILocation(line: 366, column: 3, scope: !2215)
!2231 = !DILocation(line: 367, column: 1, scope: !2215)
!2232 = distinct !DISubprogram(name: "rpl_fclose", scope: !1025, file: !1025, line: 58, type: !2233, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1024, retainedNodes: !2269)
!2233 = !DISubroutineType(types: !2234)
!2234 = !{!89, !2235}
!2235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2236, size: 64)
!2236 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !115, line: 7, baseType: !2237)
!2237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !117, line: 49, size: 1728, elements: !2238)
!2238 = !{!2239, !2240, !2241, !2242, !2243, !2244, !2245, !2246, !2247, !2248, !2249, !2250, !2251, !2252, !2254, !2255, !2256, !2257, !2258, !2259, !2260, !2261, !2262, !2263, !2264, !2265, !2266, !2267, !2268}
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2237, file: !117, line: 51, baseType: !89, size: 32)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2237, file: !117, line: 54, baseType: !121, size: 64, offset: 64)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2237, file: !117, line: 55, baseType: !121, size: 64, offset: 128)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2237, file: !117, line: 56, baseType: !121, size: 64, offset: 192)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2237, file: !117, line: 57, baseType: !121, size: 64, offset: 256)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2237, file: !117, line: 58, baseType: !121, size: 64, offset: 320)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2237, file: !117, line: 59, baseType: !121, size: 64, offset: 384)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2237, file: !117, line: 60, baseType: !121, size: 64, offset: 448)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2237, file: !117, line: 61, baseType: !121, size: 64, offset: 512)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2237, file: !117, line: 64, baseType: !121, size: 64, offset: 576)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2237, file: !117, line: 65, baseType: !121, size: 64, offset: 640)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2237, file: !117, line: 66, baseType: !121, size: 64, offset: 704)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2237, file: !117, line: 68, baseType: !133, size: 64, offset: 768)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2237, file: !117, line: 70, baseType: !2253, size: 64, offset: 832)
!2253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2237, size: 64)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2237, file: !117, line: 72, baseType: !89, size: 32, offset: 896)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2237, file: !117, line: 73, baseType: !89, size: 32, offset: 928)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2237, file: !117, line: 74, baseType: !140, size: 64, offset: 960)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2237, file: !117, line: 77, baseType: !144, size: 16, offset: 1024)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2237, file: !117, line: 78, baseType: !146, size: 8, offset: 1040)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2237, file: !117, line: 79, baseType: !59, size: 8, offset: 1048)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2237, file: !117, line: 81, baseType: !149, size: 64, offset: 1088)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2237, file: !117, line: 89, baseType: !152, size: 64, offset: 1152)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2237, file: !117, line: 91, baseType: !154, size: 64, offset: 1216)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2237, file: !117, line: 92, baseType: !157, size: 64, offset: 1280)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2237, file: !117, line: 93, baseType: !2253, size: 64, offset: 1344)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2237, file: !117, line: 94, baseType: !161, size: 64, offset: 1408)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2237, file: !117, line: 95, baseType: !163, size: 64, offset: 1472)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2237, file: !117, line: 96, baseType: !89, size: 32, offset: 1536)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2237, file: !117, line: 98, baseType: !168, size: 160, offset: 1568)
!2269 = !{!2270, !2271, !2272, !2273}
!2270 = !DILocalVariable(name: "fp", arg: 1, scope: !2232, file: !1025, line: 58, type: !2235)
!2271 = !DILocalVariable(name: "saved_errno", scope: !2232, file: !1025, line: 60, type: !89)
!2272 = !DILocalVariable(name: "fd", scope: !2232, file: !1025, line: 63, type: !89)
!2273 = !DILocalVariable(name: "result", scope: !2232, file: !1025, line: 74, type: !89)
!2274 = !DILocation(line: 0, scope: !2232)
!2275 = !DILocation(line: 63, column: 12, scope: !2232)
!2276 = !DILocation(line: 64, column: 10, scope: !2277)
!2277 = distinct !DILexicalBlock(scope: !2232, file: !1025, line: 64, column: 7)
!2278 = !DILocation(line: 64, column: 7, scope: !2232)
!2279 = !DILocation(line: 65, column: 12, scope: !2277)
!2280 = !DILocation(line: 65, column: 5, scope: !2277)
!2281 = !DILocation(line: 70, column: 9, scope: !2282)
!2282 = distinct !DILexicalBlock(scope: !2232, file: !1025, line: 70, column: 7)
!2283 = !DILocation(line: 70, column: 23, scope: !2282)
!2284 = !DILocation(line: 70, column: 33, scope: !2282)
!2285 = !DILocation(line: 70, column: 26, scope: !2282)
!2286 = !DILocation(line: 70, column: 59, scope: !2282)
!2287 = !DILocation(line: 71, column: 7, scope: !2282)
!2288 = !DILocation(line: 71, column: 10, scope: !2282)
!2289 = !DILocation(line: 70, column: 7, scope: !2232)
!2290 = !DILocation(line: 100, column: 12, scope: !2232)
!2291 = !DILocation(line: 105, column: 7, scope: !2232)
!2292 = !DILocation(line: 72, column: 19, scope: !2282)
!2293 = !DILocation(line: 105, column: 19, scope: !2294)
!2294 = distinct !DILexicalBlock(scope: !2232, file: !1025, line: 105, column: 7)
!2295 = !DILocation(line: 107, column: 13, scope: !2296)
!2296 = distinct !DILexicalBlock(scope: !2294, file: !1025, line: 106, column: 5)
!2297 = !DILocation(line: 109, column: 5, scope: !2296)
!2298 = !DILocation(line: 112, column: 1, scope: !2232)
!2299 = !DISubprogram(name: "fileno", scope: !708, file: !708, line: 809, type: !2233, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1154)
!2300 = !DISubprogram(name: "fclose", scope: !708, file: !708, line: 178, type: !2233, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1154)
!2301 = !DISubprogram(name: "__freading", scope: !2302, file: !2302, line: 51, type: !2233, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1154)
!2302 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!2303 = !DISubprogram(name: "lseek", scope: !2013, file: !2013, line: 339, type: !2304, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1154)
!2304 = !DISubroutineType(types: !2305)
!2305 = !{!140, !89, !140, !89}
!2306 = distinct !DISubprogram(name: "rpl_fflush", scope: !1027, file: !1027, line: 130, type: !2307, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1026, retainedNodes: !2343)
!2307 = !DISubroutineType(types: !2308)
!2308 = !{!89, !2309}
!2309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2310, size: 64)
!2310 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !115, line: 7, baseType: !2311)
!2311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !117, line: 49, size: 1728, elements: !2312)
!2312 = !{!2313, !2314, !2315, !2316, !2317, !2318, !2319, !2320, !2321, !2322, !2323, !2324, !2325, !2326, !2328, !2329, !2330, !2331, !2332, !2333, !2334, !2335, !2336, !2337, !2338, !2339, !2340, !2341, !2342}
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2311, file: !117, line: 51, baseType: !89, size: 32)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2311, file: !117, line: 54, baseType: !121, size: 64, offset: 64)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2311, file: !117, line: 55, baseType: !121, size: 64, offset: 128)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2311, file: !117, line: 56, baseType: !121, size: 64, offset: 192)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2311, file: !117, line: 57, baseType: !121, size: 64, offset: 256)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2311, file: !117, line: 58, baseType: !121, size: 64, offset: 320)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2311, file: !117, line: 59, baseType: !121, size: 64, offset: 384)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2311, file: !117, line: 60, baseType: !121, size: 64, offset: 448)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2311, file: !117, line: 61, baseType: !121, size: 64, offset: 512)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2311, file: !117, line: 64, baseType: !121, size: 64, offset: 576)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2311, file: !117, line: 65, baseType: !121, size: 64, offset: 640)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2311, file: !117, line: 66, baseType: !121, size: 64, offset: 704)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2311, file: !117, line: 68, baseType: !133, size: 64, offset: 768)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2311, file: !117, line: 70, baseType: !2327, size: 64, offset: 832)
!2327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2311, size: 64)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2311, file: !117, line: 72, baseType: !89, size: 32, offset: 896)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2311, file: !117, line: 73, baseType: !89, size: 32, offset: 928)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2311, file: !117, line: 74, baseType: !140, size: 64, offset: 960)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2311, file: !117, line: 77, baseType: !144, size: 16, offset: 1024)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2311, file: !117, line: 78, baseType: !146, size: 8, offset: 1040)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2311, file: !117, line: 79, baseType: !59, size: 8, offset: 1048)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2311, file: !117, line: 81, baseType: !149, size: 64, offset: 1088)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2311, file: !117, line: 89, baseType: !152, size: 64, offset: 1152)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2311, file: !117, line: 91, baseType: !154, size: 64, offset: 1216)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2311, file: !117, line: 92, baseType: !157, size: 64, offset: 1280)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2311, file: !117, line: 93, baseType: !2327, size: 64, offset: 1344)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2311, file: !117, line: 94, baseType: !161, size: 64, offset: 1408)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2311, file: !117, line: 95, baseType: !163, size: 64, offset: 1472)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2311, file: !117, line: 96, baseType: !89, size: 32, offset: 1536)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2311, file: !117, line: 98, baseType: !168, size: 160, offset: 1568)
!2343 = !{!2344}
!2344 = !DILocalVariable(name: "stream", arg: 1, scope: !2306, file: !1027, line: 130, type: !2309)
!2345 = !DILocation(line: 0, scope: !2306)
!2346 = !DILocation(line: 151, column: 14, scope: !2347)
!2347 = distinct !DILexicalBlock(scope: !2306, file: !1027, line: 151, column: 7)
!2348 = !DILocation(line: 151, column: 22, scope: !2347)
!2349 = !DILocation(line: 151, column: 27, scope: !2347)
!2350 = !DILocation(line: 151, column: 7, scope: !2306)
!2351 = !DILocation(line: 152, column: 12, scope: !2347)
!2352 = !DILocation(line: 152, column: 5, scope: !2347)
!2353 = !DILocalVariable(name: "fp", arg: 1, scope: !2354, file: !1027, line: 42, type: !2309)
!2354 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !1027, file: !1027, line: 42, type: !2355, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1026, retainedNodes: !2357)
!2355 = !DISubroutineType(types: !2356)
!2356 = !{null, !2309}
!2357 = !{!2353}
!2358 = !DILocation(line: 0, scope: !2354, inlinedAt: !2359)
!2359 = distinct !DILocation(line: 157, column: 3, scope: !2306)
!2360 = !DILocation(line: 44, column: 12, scope: !2361, inlinedAt: !2359)
!2361 = distinct !DILexicalBlock(scope: !2354, file: !1027, line: 44, column: 7)
!2362 = !DILocation(line: 44, column: 19, scope: !2361, inlinedAt: !2359)
!2363 = !DILocation(line: 44, column: 7, scope: !2354, inlinedAt: !2359)
!2364 = !DILocation(line: 46, column: 5, scope: !2361, inlinedAt: !2359)
!2365 = !DILocation(line: 159, column: 10, scope: !2306)
!2366 = !DILocation(line: 159, column: 3, scope: !2306)
!2367 = !DILocation(line: 236, column: 1, scope: !2306)
!2368 = !DISubprogram(name: "fflush", scope: !708, file: !708, line: 230, type: !2307, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1154)
!2369 = distinct !DISubprogram(name: "freopen_safer", scope: !750, file: !750, line: 60, type: !2370, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1029, retainedNodes: !2406)
!2370 = !DISubroutineType(types: !2371)
!2371 = !{!2372, !171, !171, !2372}
!2372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2373, size: 64)
!2373 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !115, line: 7, baseType: !2374)
!2374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !117, line: 49, size: 1728, elements: !2375)
!2375 = !{!2376, !2377, !2378, !2379, !2380, !2381, !2382, !2383, !2384, !2385, !2386, !2387, !2388, !2389, !2391, !2392, !2393, !2394, !2395, !2396, !2397, !2398, !2399, !2400, !2401, !2402, !2403, !2404, !2405}
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2374, file: !117, line: 51, baseType: !89, size: 32)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2374, file: !117, line: 54, baseType: !121, size: 64, offset: 64)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2374, file: !117, line: 55, baseType: !121, size: 64, offset: 128)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2374, file: !117, line: 56, baseType: !121, size: 64, offset: 192)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2374, file: !117, line: 57, baseType: !121, size: 64, offset: 256)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2374, file: !117, line: 58, baseType: !121, size: 64, offset: 320)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2374, file: !117, line: 59, baseType: !121, size: 64, offset: 384)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2374, file: !117, line: 60, baseType: !121, size: 64, offset: 448)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2374, file: !117, line: 61, baseType: !121, size: 64, offset: 512)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2374, file: !117, line: 64, baseType: !121, size: 64, offset: 576)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2374, file: !117, line: 65, baseType: !121, size: 64, offset: 640)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2374, file: !117, line: 66, baseType: !121, size: 64, offset: 704)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2374, file: !117, line: 68, baseType: !133, size: 64, offset: 768)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2374, file: !117, line: 70, baseType: !2390, size: 64, offset: 832)
!2390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2374, size: 64)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2374, file: !117, line: 72, baseType: !89, size: 32, offset: 896)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2374, file: !117, line: 73, baseType: !89, size: 32, offset: 928)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2374, file: !117, line: 74, baseType: !140, size: 64, offset: 960)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2374, file: !117, line: 77, baseType: !144, size: 16, offset: 1024)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2374, file: !117, line: 78, baseType: !146, size: 8, offset: 1040)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2374, file: !117, line: 79, baseType: !59, size: 8, offset: 1048)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2374, file: !117, line: 81, baseType: !149, size: 64, offset: 1088)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2374, file: !117, line: 89, baseType: !152, size: 64, offset: 1152)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2374, file: !117, line: 91, baseType: !154, size: 64, offset: 1216)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2374, file: !117, line: 92, baseType: !157, size: 64, offset: 1280)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2374, file: !117, line: 93, baseType: !2390, size: 64, offset: 1344)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2374, file: !117, line: 94, baseType: !161, size: 64, offset: 1408)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2374, file: !117, line: 95, baseType: !163, size: 64, offset: 1472)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2374, file: !117, line: 96, baseType: !89, size: 32, offset: 1536)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2374, file: !117, line: 98, baseType: !168, size: 160, offset: 1568)
!2406 = !{!2407, !2408, !2409, !2410, !2411, !2412, !2413}
!2407 = !DILocalVariable(name: "name", arg: 1, scope: !2369, file: !750, line: 60, type: !171)
!2408 = !DILocalVariable(name: "mode", arg: 2, scope: !2369, file: !750, line: 60, type: !171)
!2409 = !DILocalVariable(name: "f", arg: 3, scope: !2369, file: !750, line: 60, type: !2372)
!2410 = !DILocalVariable(name: "protect_in", scope: !2369, file: !750, line: 68, type: !112)
!2411 = !DILocalVariable(name: "protect_out", scope: !2369, file: !750, line: 69, type: !112)
!2412 = !DILocalVariable(name: "protect_err", scope: !2369, file: !750, line: 70, type: !112)
!2413 = !DILocalVariable(name: "saved_errno", scope: !2369, file: !750, line: 98, type: !89)
!2414 = !DILocation(line: 0, scope: !2369)
!2415 = !DILocation(line: 72, column: 11, scope: !2369)
!2416 = !DILocation(line: 72, column: 3, scope: !2369)
!2417 = !DILocation(line: 75, column: 11, scope: !2418)
!2418 = distinct !DILexicalBlock(scope: !2419, file: !750, line: 75, column: 11)
!2419 = distinct !DILexicalBlock(scope: !2369, file: !750, line: 73, column: 5)
!2420 = !DILocation(line: 75, column: 47, scope: !2418)
!2421 = !DILocation(line: 75, column: 11, scope: !2419)
!2422 = !DILocation(line: 79, column: 11, scope: !2423)
!2423 = distinct !DILexicalBlock(scope: !2419, file: !750, line: 79, column: 11)
!2424 = !DILocation(line: 79, column: 47, scope: !2423)
!2425 = !DILocation(line: 83, column: 11, scope: !2426)
!2426 = distinct !DILexicalBlock(scope: !2419, file: !750, line: 83, column: 11)
!2427 = !DILocation(line: 83, column: 45, scope: !2426)
!2428 = !DILocation(line: 83, column: 11, scope: !2419)
!2429 = !DILocation(line: 92, column: 24, scope: !2430)
!2430 = distinct !DILexicalBlock(scope: !2431, file: !750, line: 92, column: 12)
!2431 = distinct !DILexicalBlock(scope: !2369, file: !750, line: 90, column: 7)
!2432 = !DILocalVariable(name: "fd", arg: 1, scope: !2433, file: !750, line: 38, type: !89)
!2433 = distinct !DISubprogram(name: "protect_fd", scope: !750, file: !750, line: 38, type: !1601, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1029, retainedNodes: !2434)
!2434 = !{!2432, !2435}
!2435 = !DILocalVariable(name: "value", scope: !2433, file: !750, line: 40, type: !89)
!2436 = !DILocation(line: 0, scope: !2433, inlinedAt: !2437)
!2437 = distinct !DILocation(line: 90, column: 22, scope: !2431)
!2438 = !DILocation(line: 40, column: 15, scope: !2433, inlinedAt: !2437)
!2439 = !DILocation(line: 41, column: 7, scope: !2433, inlinedAt: !2437)
!2440 = !DILocation(line: 45, column: 11, scope: !2441, inlinedAt: !2437)
!2441 = distinct !DILexicalBlock(scope: !2442, file: !750, line: 44, column: 9)
!2442 = distinct !DILexicalBlock(scope: !2443, file: !750, line: 43, column: 11)
!2443 = distinct !DILexicalBlock(scope: !2444, file: !750, line: 42, column: 5)
!2444 = distinct !DILexicalBlock(scope: !2433, file: !750, line: 41, column: 7)
!2445 = !DILocation(line: 46, column: 11, scope: !2441, inlinedAt: !2437)
!2446 = !DILocation(line: 46, column: 17, scope: !2441, inlinedAt: !2437)
!2447 = !DILocation(line: 99, column: 7, scope: !2369)
!2448 = !DILocation(line: 41, column: 13, scope: !2444, inlinedAt: !2437)
!2449 = !DILocation(line: 90, column: 7, scope: !2369)
!2450 = !DILocation(line: 0, scope: !2433, inlinedAt: !2451)
!2451 = distinct !DILocation(line: 92, column: 28, scope: !2430)
!2452 = !DILocation(line: 40, column: 15, scope: !2433, inlinedAt: !2451)
!2453 = !DILocation(line: 41, column: 13, scope: !2444, inlinedAt: !2451)
!2454 = !DILocation(line: 41, column: 7, scope: !2433, inlinedAt: !2451)
!2455 = !DILocation(line: 45, column: 11, scope: !2441, inlinedAt: !2451)
!2456 = !DILocation(line: 46, column: 11, scope: !2441, inlinedAt: !2451)
!2457 = !DILocation(line: 46, column: 17, scope: !2441, inlinedAt: !2451)
!2458 = !DILocation(line: 47, column: 9, scope: !2441, inlinedAt: !2451)
!2459 = !DILocation(line: 92, column: 12, scope: !2431)
!2460 = !DILocation(line: 94, column: 24, scope: !2461)
!2461 = distinct !DILexicalBlock(scope: !2430, file: !750, line: 94, column: 12)
!2462 = !DILocation(line: 0, scope: !2433, inlinedAt: !2463)
!2463 = distinct !DILocation(line: 94, column: 28, scope: !2461)
!2464 = !DILocation(line: 40, column: 15, scope: !2433, inlinedAt: !2463)
!2465 = !DILocation(line: 41, column: 13, scope: !2444, inlinedAt: !2463)
!2466 = !DILocation(line: 41, column: 7, scope: !2433, inlinedAt: !2463)
!2467 = !DILocation(line: 45, column: 11, scope: !2441, inlinedAt: !2463)
!2468 = !DILocation(line: 46, column: 11, scope: !2441, inlinedAt: !2463)
!2469 = !DILocation(line: 46, column: 17, scope: !2441, inlinedAt: !2463)
!2470 = !DILocation(line: 47, column: 9, scope: !2441, inlinedAt: !2463)
!2471 = !DILocation(line: 94, column: 12, scope: !2430)
!2472 = !DILocation(line: 98, column: 21, scope: !2369)
!2473 = !DILocation(line: 100, column: 5, scope: !2474)
!2474 = distinct !DILexicalBlock(scope: !2369, file: !750, line: 99, column: 7)
!2475 = !DILocation(line: 101, column: 7, scope: !2369)
!2476 = !DILocation(line: 97, column: 9, scope: !2461)
!2477 = !DILocation(line: 102, column: 5, scope: !2478)
!2478 = distinct !DILexicalBlock(scope: !2369, file: !750, line: 101, column: 7)
!2479 = !DILocation(line: 103, column: 7, scope: !2369)
!2480 = !DILocation(line: 104, column: 5, scope: !2481)
!2481 = distinct !DILexicalBlock(scope: !2369, file: !750, line: 103, column: 7)
!2482 = !DILocation(line: 105, column: 8, scope: !2483)
!2483 = distinct !DILexicalBlock(scope: !2369, file: !750, line: 105, column: 7)
!2484 = !DILocation(line: 105, column: 7, scope: !2369)
!2485 = !DILocation(line: 106, column: 11, scope: !2483)
!2486 = !DILocation(line: 106, column: 5, scope: !2483)
!2487 = !DILocation(line: 107, column: 3, scope: !2369)
!2488 = !DISubprogram(name: "dup2", scope: !2013, file: !2013, line: 555, type: !2489, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1154)
!2489 = !DISubroutineType(types: !2490)
!2490 = !{!89, !89, !89}
!2491 = !DISubprogram(name: "open", scope: !2166, file: !2166, line: 181, type: !2492, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1154)
!2492 = !DISubroutineType(types: !2493)
!2493 = !{!89, !171, !89, null}
!2494 = !DISubprogram(name: "close", scope: !2013, file: !2013, line: 358, type: !1939, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1154)
!2495 = !DISubprogram(name: "freopen", scope: !708, file: !708, line: 265, type: !2496, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1154)
!2496 = !DISubroutineType(types: !2497)
!2497 = !{!2372, !1160, !1160, !2498}
!2498 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2372)
!2499 = distinct !DISubprogram(name: "rpl_fseeko", scope: !1032, file: !1032, line: 28, type: !2500, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1031, retainedNodes: !2537)
!2500 = !DISubroutineType(types: !2501)
!2501 = !{!89, !2502, !2536, !89}
!2502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2503, size: 64)
!2503 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !115, line: 7, baseType: !2504)
!2504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !117, line: 49, size: 1728, elements: !2505)
!2505 = !{!2506, !2507, !2508, !2509, !2510, !2511, !2512, !2513, !2514, !2515, !2516, !2517, !2518, !2519, !2521, !2522, !2523, !2524, !2525, !2526, !2527, !2528, !2529, !2530, !2531, !2532, !2533, !2534, !2535}
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2504, file: !117, line: 51, baseType: !89, size: 32)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2504, file: !117, line: 54, baseType: !121, size: 64, offset: 64)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2504, file: !117, line: 55, baseType: !121, size: 64, offset: 128)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2504, file: !117, line: 56, baseType: !121, size: 64, offset: 192)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2504, file: !117, line: 57, baseType: !121, size: 64, offset: 256)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2504, file: !117, line: 58, baseType: !121, size: 64, offset: 320)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2504, file: !117, line: 59, baseType: !121, size: 64, offset: 384)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2504, file: !117, line: 60, baseType: !121, size: 64, offset: 448)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2504, file: !117, line: 61, baseType: !121, size: 64, offset: 512)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2504, file: !117, line: 64, baseType: !121, size: 64, offset: 576)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2504, file: !117, line: 65, baseType: !121, size: 64, offset: 640)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2504, file: !117, line: 66, baseType: !121, size: 64, offset: 704)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2504, file: !117, line: 68, baseType: !133, size: 64, offset: 768)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2504, file: !117, line: 70, baseType: !2520, size: 64, offset: 832)
!2520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2504, size: 64)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2504, file: !117, line: 72, baseType: !89, size: 32, offset: 896)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2504, file: !117, line: 73, baseType: !89, size: 32, offset: 928)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2504, file: !117, line: 74, baseType: !140, size: 64, offset: 960)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2504, file: !117, line: 77, baseType: !144, size: 16, offset: 1024)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2504, file: !117, line: 78, baseType: !146, size: 8, offset: 1040)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2504, file: !117, line: 79, baseType: !59, size: 8, offset: 1048)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2504, file: !117, line: 81, baseType: !149, size: 64, offset: 1088)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2504, file: !117, line: 89, baseType: !152, size: 64, offset: 1152)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2504, file: !117, line: 91, baseType: !154, size: 64, offset: 1216)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2504, file: !117, line: 92, baseType: !157, size: 64, offset: 1280)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2504, file: !117, line: 93, baseType: !2520, size: 64, offset: 1344)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2504, file: !117, line: 94, baseType: !161, size: 64, offset: 1408)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2504, file: !117, line: 95, baseType: !163, size: 64, offset: 1472)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2504, file: !117, line: 96, baseType: !89, size: 32, offset: 1536)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2504, file: !117, line: 98, baseType: !168, size: 160, offset: 1568)
!2536 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !708, line: 63, baseType: !140)
!2537 = !{!2538, !2539, !2540, !2541}
!2538 = !DILocalVariable(name: "fp", arg: 1, scope: !2499, file: !1032, line: 28, type: !2502)
!2539 = !DILocalVariable(name: "offset", arg: 2, scope: !2499, file: !1032, line: 28, type: !2536)
!2540 = !DILocalVariable(name: "whence", arg: 3, scope: !2499, file: !1032, line: 28, type: !89)
!2541 = !DILocalVariable(name: "pos", scope: !2542, file: !1032, line: 123, type: !2536)
!2542 = distinct !DILexicalBlock(scope: !2543, file: !1032, line: 119, column: 5)
!2543 = distinct !DILexicalBlock(scope: !2499, file: !1032, line: 55, column: 7)
!2544 = !DILocation(line: 0, scope: !2499)
!2545 = !DILocation(line: 55, column: 12, scope: !2543)
!2546 = !{!1562, !1105, i64 16}
!2547 = !DILocation(line: 55, column: 33, scope: !2543)
!2548 = !{!1562, !1105, i64 8}
!2549 = !DILocation(line: 55, column: 25, scope: !2543)
!2550 = !DILocation(line: 56, column: 7, scope: !2543)
!2551 = !DILocation(line: 56, column: 15, scope: !2543)
!2552 = !DILocation(line: 56, column: 37, scope: !2543)
!2553 = !{!1562, !1105, i64 32}
!2554 = !DILocation(line: 56, column: 29, scope: !2543)
!2555 = !DILocation(line: 57, column: 7, scope: !2543)
!2556 = !DILocation(line: 57, column: 15, scope: !2543)
!2557 = !{!1562, !1105, i64 72}
!2558 = !DILocation(line: 57, column: 29, scope: !2543)
!2559 = !DILocation(line: 55, column: 7, scope: !2499)
!2560 = !DILocation(line: 123, column: 26, scope: !2542)
!2561 = !DILocation(line: 123, column: 19, scope: !2542)
!2562 = !DILocation(line: 0, scope: !2542)
!2563 = !DILocation(line: 124, column: 15, scope: !2564)
!2564 = distinct !DILexicalBlock(scope: !2542, file: !1032, line: 124, column: 11)
!2565 = !DILocation(line: 124, column: 11, scope: !2542)
!2566 = !DILocation(line: 135, column: 19, scope: !2542)
!2567 = !DILocation(line: 136, column: 12, scope: !2542)
!2568 = !DILocation(line: 136, column: 20, scope: !2542)
!2569 = !{!1562, !1472, i64 144}
!2570 = !DILocation(line: 167, column: 7, scope: !2542)
!2571 = !DILocation(line: 169, column: 10, scope: !2499)
!2572 = !DILocation(line: 169, column: 3, scope: !2499)
!2573 = !DILocation(line: 170, column: 1, scope: !2499)
!2574 = !DISubprogram(name: "fseeko", scope: !708, file: !708, line: 736, type: !2575, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1154)
!2575 = !DISubroutineType(types: !2576)
!2576 = !{!89, !2502, !140, !89}
!2577 = distinct !DISubprogram(name: "getprogname", scope: !1034, file: !1034, line: 54, type: !2578, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1033, retainedNodes: !1154)
!2578 = !DISubroutineType(types: !2579)
!2579 = !{!171}
!2580 = !DILocation(line: 58, column: 10, scope: !2577)
!2581 = !DILocation(line: 58, column: 3, scope: !2577)
!2582 = distinct !DISubprogram(name: "print_and_abort", scope: !754, file: !754, line: 343, type: !746, scopeLine: 344, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !753, retainedNodes: !1154)
!2583 = !DILocation(line: 353, column: 3, scope: !2582)
!2584 = !DILocation(line: 355, column: 9, scope: !2582)
!2585 = !DILocation(line: 355, column: 3, scope: !2582)
!2586 = distinct !DISubprogram(name: "rpl_obstack_begin", scope: !754, file: !754, line: 161, type: !2587, scopeLine: 165, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !753, retainedNodes: !2623)
!2587 = !DISubroutineType(types: !2588)
!2588 = !{!89, !2589, !163, !163, !304, !315}
!2589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2590, size: 64)
!2590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !278, line: 210, size: 704, elements: !2591)
!2591 = !{!2592, !2593, !2600, !2601, !2602, !2603, !2608, !2609, !2614, !2619, !2620, !2621, !2622}
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !2590, file: !278, line: 212, baseType: !163, size: 64)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !2590, file: !278, line: 213, baseType: !2594, size: 64, offset: 64)
!2594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2595, size: 64)
!2595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !278, line: 203, size: 128, elements: !2596)
!2596 = !{!2597, !2598, !2599}
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !2595, file: !278, line: 205, baseType: !121, size: 64)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !2595, file: !278, line: 206, baseType: !2594, size: 64, offset: 64)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !2595, file: !278, line: 207, baseType: !288, offset: 128)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !2590, file: !278, line: 214, baseType: !121, size: 64, offset: 128)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !2590, file: !278, line: 215, baseType: !121, size: 64, offset: 192)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !2590, file: !278, line: 216, baseType: !121, size: 64, offset: 256)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !2590, file: !278, line: 221, baseType: !2604, size: 64, offset: 320)
!2604 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2590, file: !278, line: 217, size: 64, elements: !2605)
!2605 = !{!2606, !2607}
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "tempint", scope: !2604, file: !278, line: 219, baseType: !163, size: 64)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "tempptr", scope: !2604, file: !278, line: 220, baseType: !161, size: 64)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !2590, file: !278, line: 222, baseType: !163, size: 64, offset: 384)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !2590, file: !278, line: 229, baseType: !2610, size: 64, offset: 448)
!2610 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2590, file: !278, line: 225, size: 64, elements: !2611)
!2611 = !{!2612, !2613}
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "plain", scope: !2610, file: !278, line: 227, baseType: !304, size: 64)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !2610, file: !278, line: 228, baseType: !308, size: 64)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !2590, file: !278, line: 234, baseType: !2615, size: 64, offset: 512)
!2615 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2590, file: !278, line: 230, size: 64, elements: !2616)
!2616 = !{!2617, !2618}
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "plain", scope: !2615, file: !278, line: 232, baseType: !315, size: 64)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !2615, file: !278, line: 233, baseType: !319, size: 64)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !2590, file: !278, line: 236, baseType: !161, size: 64, offset: 576)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !2590, file: !278, line: 237, baseType: !79, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !2590, file: !278, line: 238, baseType: !79, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !2590, file: !278, line: 242, baseType: !79, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!2623 = !{!2624, !2625, !2626, !2627, !2628}
!2624 = !DILocalVariable(name: "h", arg: 1, scope: !2586, file: !754, line: 161, type: !2589)
!2625 = !DILocalVariable(name: "size", arg: 2, scope: !2586, file: !754, line: 162, type: !163)
!2626 = !DILocalVariable(name: "alignment", arg: 3, scope: !2586, file: !754, line: 162, type: !163)
!2627 = !DILocalVariable(name: "chunkfun", arg: 4, scope: !2586, file: !754, line: 163, type: !304)
!2628 = !DILocalVariable(name: "freefun", arg: 5, scope: !2586, file: !754, line: 164, type: !315)
!2629 = !DILocation(line: 0, scope: !2586)
!2630 = !DILocation(line: 166, column: 6, scope: !2586)
!2631 = !DILocation(line: 166, column: 21, scope: !2586)
!2632 = !DILocation(line: 167, column: 6, scope: !2586)
!2633 = !DILocation(line: 167, column: 20, scope: !2586)
!2634 = !DILocation(line: 168, column: 6, scope: !2586)
!2635 = !DILocation(line: 168, column: 20, scope: !2586)
!2636 = !DILocalVariable(name: "h", arg: 1, scope: !2637, file: !754, line: 114, type: !2589)
!2637 = distinct !DISubprogram(name: "_obstack_begin_worker", scope: !754, file: !754, line: 114, type: !2638, scopeLine: 116, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !753, retainedNodes: !2640)
!2638 = !DISubroutineType(types: !2639)
!2639 = !{!89, !2589, !163, !163}
!2640 = !{!2636, !2641, !2642, !2643, !2644, !2645, !2646, !2647}
!2641 = !DILocalVariable(name: "chunk_size", arg: 2, scope: !2637, file: !754, line: 115, type: !163)
!2642 = !DILocalVariable(name: "alignment", arg: 3, scope: !2637, file: !754, line: 115, type: !163)
!2643 = !DILocalVariable(name: "chunk", scope: !2637, file: !754, line: 117, type: !2594)
!2644 = !DILocalVariable(name: "aligned_prefix_size", scope: !2637, file: !754, line: 127, type: !163)
!2645 = !DILocalVariable(name: "v", scope: !2637, file: !754, line: 128, type: !112)
!2646 = !DILocalVariable(name: "size", scope: !2637, file: !754, line: 131, type: !163)
!2647 = !DILocalVariable(name: "good_size", scope: !2648, file: !754, line: 137, type: !89)
!2648 = distinct !DILexicalBlock(scope: !2649, file: !754, line: 133, column: 5)
!2649 = distinct !DILexicalBlock(scope: !2637, file: !754, line: 132, column: 7)
!2650 = !DILocation(line: 0, scope: !2637, inlinedAt: !2651)
!2651 = distinct !DILocation(line: 169, column: 10, scope: !2586)
!2652 = !DILocation(line: 119, column: 17, scope: !2653, inlinedAt: !2651)
!2653 = distinct !DILexicalBlock(scope: !2637, file: !754, line: 119, column: 7)
!2654 = !DILocation(line: 128, column: 65, scope: !2637, inlinedAt: !2651)
!2655 = !DILocalVariable(name: "r", arg: 1, scope: !2656, file: !754, line: 78, type: !1048)
!2656 = distinct !DISubprogram(name: "align_chunk_size_up", scope: !754, file: !754, line: 78, type: !2657, scopeLine: 80, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !753, retainedNodes: !2659)
!2657 = !DISubroutineType(types: !2658)
!2658 = !{!112, !1048, !163, !163}
!2659 = !{!2655, !2660, !2661}
!2660 = !DILocalVariable(name: "mask", arg: 2, scope: !2656, file: !754, line: 78, type: !163)
!2661 = !DILocalVariable(name: "size", arg: 3, scope: !2656, file: !754, line: 79, type: !163)
!2662 = !DILocation(line: 0, scope: !2656, inlinedAt: !2663)
!2663 = distinct !DILocation(line: 128, column: 12, scope: !2637, inlinedAt: !2651)
!2664 = !DILocation(line: 81, column: 10, scope: !2656, inlinedAt: !2663)
!2665 = !DILocation(line: 132, column: 12, scope: !2649, inlinedAt: !2651)
!2666 = !DILocation(line: 132, column: 7, scope: !2637, inlinedAt: !2651)
!2667 = !DILocation(line: 142, column: 17, scope: !2637, inlinedAt: !2651)
!2668 = !{!1471, !1472, i64 0}
!2669 = !DILocation(line: 143, column: 6, scope: !2637, inlinedAt: !2651)
!2670 = !DILocation(line: 143, column: 21, scope: !2637, inlinedAt: !2651)
!2671 = !DILocation(line: 145, column: 22, scope: !2637, inlinedAt: !2651)
!2672 = !DILocation(line: 145, column: 14, scope: !2637, inlinedAt: !2651)
!2673 = !DILocation(line: 145, column: 20, scope: !2637, inlinedAt: !2651)
!2674 = !{!1471, !1105, i64 8}
!2675 = !DILocation(line: 146, column: 7, scope: !2637, inlinedAt: !2651)
!2676 = !DILocalVariable(name: "h", arg: 1, scope: !2677, file: !754, line: 89, type: !2589)
!2677 = distinct !DISubprogram(name: "call_chunkfun", scope: !754, file: !754, line: 89, type: !2678, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !753, retainedNodes: !2680)
!2678 = !DISubroutineType(types: !2679)
!2679 = !{!161, !2589, !163}
!2680 = !{!2676, !2681}
!2681 = !DILocalVariable(name: "size", arg: 2, scope: !2677, file: !754, line: 89, type: !163)
!2682 = !DILocation(line: 0, scope: !2677, inlinedAt: !2683)
!2683 = distinct !DILocation(line: 145, column: 33, scope: !2637, inlinedAt: !2651)
!2684 = !DILocation(line: 94, column: 12, scope: !2685, inlinedAt: !2683)
!2685 = distinct !DILexicalBlock(scope: !2677, file: !754, line: 91, column: 7)
!2686 = !DILocation(line: 146, column: 8, scope: !2687, inlinedAt: !2651)
!2687 = distinct !DILexicalBlock(scope: !2637, file: !754, line: 146, column: 7)
!2688 = !DILocation(line: 147, column: 7, scope: !2687, inlinedAt: !2651)
!2689 = !DILocation(line: 147, column: 5, scope: !2687, inlinedAt: !2651)
!2690 = !DILocation(line: 148, column: 35, scope: !2637, inlinedAt: !2651)
!2691 = !DILocation(line: 148, column: 21, scope: !2637, inlinedAt: !2651)
!2692 = !DILocation(line: 148, column: 33, scope: !2637, inlinedAt: !2651)
!2693 = !DILocation(line: 148, column: 6, scope: !2637, inlinedAt: !2651)
!2694 = !DILocation(line: 148, column: 16, scope: !2637, inlinedAt: !2651)
!2695 = !DILocation(line: 151, column: 5, scope: !2637, inlinedAt: !2651)
!2696 = !DILocation(line: 150, column: 33, scope: !2637, inlinedAt: !2651)
!2697 = !DILocation(line: 150, column: 6, scope: !2637, inlinedAt: !2651)
!2698 = !DILocation(line: 150, column: 18, scope: !2637, inlinedAt: !2651)
!2699 = !DILocation(line: 153, column: 10, scope: !2637, inlinedAt: !2651)
!2700 = !DILocation(line: 153, column: 15, scope: !2637, inlinedAt: !2651)
!2701 = !DILocation(line: 155, column: 25, scope: !2637, inlinedAt: !2651)
!2702 = !DILocation(line: 156, column: 19, scope: !2637, inlinedAt: !2651)
!2703 = !DILocation(line: 169, column: 3, scope: !2586)
!2704 = distinct !DISubprogram(name: "rpl_obstack_begin_1", scope: !754, file: !754, line: 173, type: !2705, scopeLine: 178, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !753, retainedNodes: !2707)
!2705 = !DISubroutineType(types: !2706)
!2706 = !{!89, !2589, !163, !163, !308, !319, !161}
!2707 = !{!2708, !2709, !2710, !2711, !2712, !2713}
!2708 = !DILocalVariable(name: "h", arg: 1, scope: !2704, file: !754, line: 173, type: !2589)
!2709 = !DILocalVariable(name: "size", arg: 2, scope: !2704, file: !754, line: 174, type: !163)
!2710 = !DILocalVariable(name: "alignment", arg: 3, scope: !2704, file: !754, line: 174, type: !163)
!2711 = !DILocalVariable(name: "chunkfun", arg: 4, scope: !2704, file: !754, line: 175, type: !308)
!2712 = !DILocalVariable(name: "freefun", arg: 5, scope: !2704, file: !754, line: 176, type: !319)
!2713 = !DILocalVariable(name: "arg", arg: 6, scope: !2704, file: !754, line: 177, type: !161)
!2714 = !DILocation(line: 0, scope: !2704)
!2715 = !DILocation(line: 179, column: 6, scope: !2704)
!2716 = !DILocation(line: 179, column: 21, scope: !2704)
!2717 = !DILocation(line: 180, column: 6, scope: !2704)
!2718 = !DILocation(line: 180, column: 20, scope: !2704)
!2719 = !DILocation(line: 181, column: 6, scope: !2704)
!2720 = !DILocation(line: 181, column: 16, scope: !2704)
!2721 = !{!1471, !1105, i64 72}
!2722 = !DILocation(line: 182, column: 6, scope: !2704)
!2723 = !DILocation(line: 182, column: 20, scope: !2704)
!2724 = !DILocation(line: 0, scope: !2637, inlinedAt: !2725)
!2725 = distinct !DILocation(line: 183, column: 10, scope: !2704)
!2726 = !DILocation(line: 119, column: 17, scope: !2653, inlinedAt: !2725)
!2727 = !DILocation(line: 128, column: 65, scope: !2637, inlinedAt: !2725)
!2728 = !DILocation(line: 0, scope: !2656, inlinedAt: !2729)
!2729 = distinct !DILocation(line: 128, column: 12, scope: !2637, inlinedAt: !2725)
!2730 = !DILocation(line: 81, column: 10, scope: !2656, inlinedAt: !2729)
!2731 = !DILocation(line: 132, column: 12, scope: !2649, inlinedAt: !2725)
!2732 = !DILocation(line: 132, column: 7, scope: !2637, inlinedAt: !2725)
!2733 = !DILocation(line: 142, column: 17, scope: !2637, inlinedAt: !2725)
!2734 = !DILocation(line: 143, column: 6, scope: !2637, inlinedAt: !2725)
!2735 = !DILocation(line: 143, column: 21, scope: !2637, inlinedAt: !2725)
!2736 = !DILocation(line: 145, column: 22, scope: !2637, inlinedAt: !2725)
!2737 = !DILocation(line: 145, column: 14, scope: !2637, inlinedAt: !2725)
!2738 = !DILocation(line: 145, column: 20, scope: !2637, inlinedAt: !2725)
!2739 = !DILocation(line: 146, column: 7, scope: !2637, inlinedAt: !2725)
!2740 = !DILocation(line: 0, scope: !2677, inlinedAt: !2741)
!2741 = distinct !DILocation(line: 145, column: 33, scope: !2637, inlinedAt: !2725)
!2742 = !DILocation(line: 92, column: 12, scope: !2685, inlinedAt: !2741)
!2743 = !DILocation(line: 146, column: 8, scope: !2687, inlinedAt: !2725)
!2744 = !DILocation(line: 147, column: 7, scope: !2687, inlinedAt: !2725)
!2745 = !DILocation(line: 147, column: 5, scope: !2687, inlinedAt: !2725)
!2746 = !DILocation(line: 148, column: 35, scope: !2637, inlinedAt: !2725)
!2747 = !DILocation(line: 148, column: 21, scope: !2637, inlinedAt: !2725)
!2748 = !DILocation(line: 148, column: 33, scope: !2637, inlinedAt: !2725)
!2749 = !DILocation(line: 148, column: 6, scope: !2637, inlinedAt: !2725)
!2750 = !DILocation(line: 148, column: 16, scope: !2637, inlinedAt: !2725)
!2751 = !DILocation(line: 151, column: 5, scope: !2637, inlinedAt: !2725)
!2752 = !DILocation(line: 150, column: 33, scope: !2637, inlinedAt: !2725)
!2753 = !DILocation(line: 150, column: 6, scope: !2637, inlinedAt: !2725)
!2754 = !DILocation(line: 150, column: 18, scope: !2637, inlinedAt: !2725)
!2755 = !DILocation(line: 153, column: 10, scope: !2637, inlinedAt: !2725)
!2756 = !DILocation(line: 153, column: 15, scope: !2637, inlinedAt: !2725)
!2757 = !DILocation(line: 155, column: 25, scope: !2637, inlinedAt: !2725)
!2758 = !DILocation(line: 156, column: 19, scope: !2637, inlinedAt: !2725)
!2759 = !DILocation(line: 183, column: 3, scope: !2704)
!2760 = distinct !DISubprogram(name: "rpl_obstack_newchunk", scope: !754, file: !754, line: 194, type: !2761, scopeLine: 195, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !753, retainedNodes: !2763)
!2761 = !DISubroutineType(types: !2762)
!2762 = !{null, !2589, !163}
!2763 = !{!2764, !2765, !2766, !2767, !2768, !2769, !2770, !2771, !2772}
!2764 = !DILocalVariable(name: "h", arg: 1, scope: !2760, file: !754, line: 194, type: !2589)
!2765 = !DILocalVariable(name: "length", arg: 2, scope: !2760, file: !754, line: 194, type: !163)
!2766 = !DILocalVariable(name: "old_chunk", scope: !2760, file: !754, line: 196, type: !2594)
!2767 = !DILocalVariable(name: "obj_size", scope: !2760, file: !754, line: 197, type: !163)
!2768 = !DILocalVariable(name: "s", scope: !2760, file: !754, line: 200, type: !163)
!2769 = !DILocalVariable(name: "new_size", scope: !2760, file: !754, line: 200, type: !163)
!2770 = !DILocalVariable(name: "v", scope: !2760, file: !754, line: 201, type: !112)
!2771 = !DILocalVariable(name: "new_chunk", scope: !2760, file: !754, line: 213, type: !2594)
!2772 = !DILocalVariable(name: "object_base", scope: !2760, file: !754, line: 225, type: !121)
!2773 = !DILocation(line: 0, scope: !2760)
!2774 = !DILocation(line: 196, column: 41, scope: !2760)
!2775 = !DILocation(line: 197, column: 24, scope: !2760)
!2776 = !DILocation(line: 197, column: 39, scope: !2760)
!2777 = !DILocation(line: 197, column: 34, scope: !2760)
!2778 = !DILocation(line: 202, column: 8, scope: !2760)
!2779 = !DILocation(line: 203, column: 36, scope: !2760)
!2780 = !DILocation(line: 0, scope: !2656, inlinedAt: !2781)
!2781 = distinct !DILocation(line: 203, column: 8, scope: !2760)
!2782 = !DILocation(line: 81, column: 10, scope: !2656, inlinedAt: !2781)
!2783 = !DILocation(line: 203, column: 5, scope: !2760)
!2784 = !DILocation(line: 204, column: 8, scope: !2760)
!2785 = !DILocation(line: 204, column: 5, scope: !2760)
!2786 = !DILocation(line: 207, column: 7, scope: !2787)
!2787 = distinct !DILexicalBlock(scope: !2760, file: !754, line: 207, column: 7)
!2788 = !DILocation(line: 207, column: 7, scope: !2760)
!2789 = !DILocation(line: 209, column: 21, scope: !2790)
!2790 = distinct !DILexicalBlock(scope: !2760, file: !754, line: 209, column: 7)
!2791 = !DILocation(line: 209, column: 7, scope: !2760)
!2792 = !DILocation(line: 214, column: 5, scope: !2760)
!2793 = !DILocation(line: 0, scope: !2677, inlinedAt: !2794)
!2794 = distinct !DILocation(line: 214, column: 16, scope: !2760)
!2795 = !DILocation(line: 91, column: 10, scope: !2685, inlinedAt: !2794)
!2796 = !DILocation(line: 91, column: 7, scope: !2685, inlinedAt: !2794)
!2797 = !DILocation(line: 0, scope: !2685, inlinedAt: !2794)
!2798 = !DILocation(line: 91, column: 7, scope: !2677, inlinedAt: !2794)
!2799 = !DILocation(line: 92, column: 34, scope: !2685, inlinedAt: !2794)
!2800 = !DILocation(line: 92, column: 12, scope: !2685, inlinedAt: !2794)
!2801 = !DILocation(line: 92, column: 5, scope: !2685, inlinedAt: !2794)
!2802 = !DILocation(line: 94, column: 12, scope: !2685, inlinedAt: !2794)
!2803 = !DILocation(line: 94, column: 5, scope: !2685, inlinedAt: !2794)
!2804 = !DILocation(line: 215, column: 8, scope: !2805)
!2805 = distinct !DILexicalBlock(scope: !2760, file: !754, line: 215, column: 7)
!2806 = !DILocation(line: 215, column: 7, scope: !2760)
!2807 = !DILocation(line: 216, column: 7, scope: !2805)
!2808 = !DILocation(line: 216, column: 5, scope: !2805)
!2809 = !DILocation(line: 217, column: 12, scope: !2760)
!2810 = !DILocation(line: 218, column: 14, scope: !2760)
!2811 = !DILocation(line: 218, column: 19, scope: !2760)
!2812 = !DILocation(line: 220, column: 5, scope: !2760)
!2813 = !DILocation(line: 219, column: 25, scope: !2760)
!2814 = !DILocation(line: 219, column: 37, scope: !2760)
!2815 = !DILocation(line: 219, column: 20, scope: !2760)
!2816 = !DILocation(line: 226, column: 5, scope: !2760)
!2817 = !DILocation(line: 229, column: 27, scope: !2760)
!2818 = !DILocalVariable(name: "__dest", arg: 1, scope: !2819, file: !2820, line: 26, type: !2823)
!2819 = distinct !DISubprogram(name: "memcpy", scope: !2820, file: !2820, line: 26, type: !2821, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !753, retainedNodes: !2824)
!2820 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!2821 = !DISubroutineType(types: !2822)
!2822 = !{!161, !2823, !1313, !163}
!2823 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !161)
!2824 = !{!2818, !2825, !2826}
!2825 = !DILocalVariable(name: "__src", arg: 2, scope: !2819, file: !2820, line: 26, type: !1313)
!2826 = !DILocalVariable(name: "__len", arg: 3, scope: !2819, file: !2820, line: 26, type: !163)
!2827 = !DILocation(line: 0, scope: !2819, inlinedAt: !2828)
!2828 = distinct !DILocation(line: 229, column: 3, scope: !2760)
!2829 = !DILocation(line: 29, column: 10, scope: !2819, inlinedAt: !2828)
!2830 = !DILocation(line: 234, column: 11, scope: !2831)
!2831 = distinct !DILexicalBlock(scope: !2760, file: !754, line: 234, column: 7)
!2832 = !DILocation(line: 234, column: 8, scope: !2831)
!2833 = !DILocation(line: 235, column: 7, scope: !2831)
!2834 = !DILocation(line: 235, column: 14, scope: !2831)
!2835 = !DILocation(line: 236, column: 14, scope: !2831)
!2836 = !DILocation(line: 236, column: 11, scope: !2831)
!2837 = !DILocation(line: 234, column: 7, scope: !2760)
!2838 = !DILocation(line: 239, column: 36, scope: !2839)
!2839 = distinct !DILexicalBlock(scope: !2831, file: !754, line: 238, column: 5)
!2840 = !DILocation(line: 239, column: 23, scope: !2839)
!2841 = !DILocalVariable(name: "h", arg: 1, scope: !2842, file: !754, line: 98, type: !2589)
!2842 = distinct !DISubprogram(name: "call_freefun", scope: !754, file: !754, line: 98, type: !2843, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !753, retainedNodes: !2845)
!2843 = !DISubroutineType(types: !2844)
!2844 = !{null, !2589, !161}
!2845 = !{!2841, !2846}
!2846 = !DILocalVariable(name: "old_chunk", arg: 2, scope: !2842, file: !754, line: 98, type: !161)
!2847 = !DILocation(line: 0, scope: !2842, inlinedAt: !2848)
!2848 = distinct !DILocation(line: 240, column: 7, scope: !2839)
!2849 = !DILocation(line: 100, column: 10, scope: !2850, inlinedAt: !2848)
!2850 = distinct !DILexicalBlock(scope: !2842, file: !754, line: 100, column: 7)
!2851 = !DILocation(line: 100, column: 7, scope: !2850, inlinedAt: !2848)
!2852 = !DILocation(line: 0, scope: !2850, inlinedAt: !2848)
!2853 = !DILocation(line: 100, column: 7, scope: !2842, inlinedAt: !2848)
!2854 = !DILocation(line: 101, column: 26, scope: !2850, inlinedAt: !2848)
!2855 = !DILocation(line: 101, column: 5, scope: !2850, inlinedAt: !2848)
!2856 = !DILocation(line: 103, column: 5, scope: !2850, inlinedAt: !2848)
!2857 = !DILocation(line: 243, column: 18, scope: !2760)
!2858 = !DILocation(line: 244, column: 33, scope: !2760)
!2859 = !DILocation(line: 244, column: 16, scope: !2760)
!2860 = !DILocation(line: 246, column: 25, scope: !2760)
!2861 = !DILocation(line: 247, column: 1, scope: !2760)
!2862 = distinct !DISubprogram(name: "rpl_obstack_allocated_p", scope: !754, file: !754, line: 259, type: !2863, scopeLine: 260, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !753, retainedNodes: !2865)
!2863 = !DISubroutineType(types: !2864)
!2864 = !{!89, !2589, !161}
!2865 = !{!2866, !2867, !2868, !2869}
!2866 = !DILocalVariable(name: "h", arg: 1, scope: !2862, file: !754, line: 259, type: !2589)
!2867 = !DILocalVariable(name: "obj", arg: 2, scope: !2862, file: !754, line: 259, type: !161)
!2868 = !DILocalVariable(name: "lp", scope: !2862, file: !754, line: 261, type: !2594)
!2869 = !DILocalVariable(name: "plp", scope: !2870, file: !754, line: 268, type: !2594)
!2870 = distinct !DILexicalBlock(scope: !2862, file: !754, line: 267, column: 5)
!2871 = !DILocation(line: 0, scope: !2862)
!2872 = !DILocation(line: 262, column: 8, scope: !2862)
!2873 = !DILocation(line: 266, column: 13, scope: !2862)
!2874 = !DILocation(line: 266, column: 21, scope: !2862)
!2875 = !DILocation(line: 266, column: 37, scope: !2862)
!2876 = !DILocation(line: 266, column: 44, scope: !2862)
!2877 = !DILocation(line: 266, column: 62, scope: !2862)
!2878 = !DILocation(line: 266, column: 68, scope: !2862)
!2879 = !DILocation(line: 266, column: 3, scope: !2862)
!2880 = !DILocation(line: 268, column: 40, scope: !2870)
!2881 = !DILocation(line: 0, scope: !2870)
!2882 = distinct !{!2882, !2879, !2883, !1216}
!2883 = !DILocation(line: 270, column: 5, scope: !2862)
!2884 = !DILocation(line: 271, column: 3, scope: !2862)
!2885 = distinct !DISubprogram(name: "rpl_obstack_free", scope: !754, file: !754, line: 278, type: !2843, scopeLine: 279, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !753, retainedNodes: !2886)
!2886 = !{!2887, !2888, !2889, !2890}
!2887 = !DILocalVariable(name: "h", arg: 1, scope: !2885, file: !754, line: 278, type: !2589)
!2888 = !DILocalVariable(name: "obj", arg: 2, scope: !2885, file: !754, line: 278, type: !161)
!2889 = !DILocalVariable(name: "lp", scope: !2885, file: !754, line: 280, type: !2594)
!2890 = !DILocalVariable(name: "plp", scope: !2891, file: !754, line: 287, type: !2594)
!2891 = distinct !DILexicalBlock(scope: !2885, file: !754, line: 286, column: 5)
!2892 = !DILocation(line: 0, scope: !2885)
!2893 = !DILocation(line: 281, column: 8, scope: !2885)
!2894 = !DILocation(line: 285, column: 13, scope: !2885)
!2895 = !DILocation(line: 285, column: 21, scope: !2885)
!2896 = !DILocation(line: 285, column: 37, scope: !2885)
!2897 = !DILocation(line: 285, column: 44, scope: !2885)
!2898 = !DILocation(line: 285, column: 62, scope: !2885)
!2899 = !DILocation(line: 285, column: 68, scope: !2885)
!2900 = !DILocation(line: 285, column: 3, scope: !2885)
!2901 = !DILocation(line: 287, column: 40, scope: !2891)
!2902 = !DILocation(line: 0, scope: !2891)
!2903 = !DILocation(line: 0, scope: !2842, inlinedAt: !2904)
!2904 = distinct !DILocation(line: 288, column: 7, scope: !2891)
!2905 = !DILocation(line: 100, column: 10, scope: !2850, inlinedAt: !2904)
!2906 = !DILocation(line: 100, column: 7, scope: !2850, inlinedAt: !2904)
!2907 = !DILocation(line: 0, scope: !2850, inlinedAt: !2904)
!2908 = !DILocation(line: 100, column: 7, scope: !2842, inlinedAt: !2904)
!2909 = !DILocation(line: 101, column: 26, scope: !2850, inlinedAt: !2904)
!2910 = !DILocation(line: 101, column: 5, scope: !2850, inlinedAt: !2904)
!2911 = !DILocation(line: 103, column: 5, scope: !2850, inlinedAt: !2904)
!2912 = !DILocation(line: 292, column: 29, scope: !2891)
!2913 = distinct !{!2913, !2900, !2914, !1216}
!2914 = !DILocation(line: 293, column: 5, scope: !2885)
!2915 = !DILocation(line: 296, column: 27, scope: !2916)
!2916 = distinct !DILexicalBlock(scope: !2917, file: !754, line: 295, column: 5)
!2917 = distinct !DILexicalBlock(scope: !2885, file: !754, line: 294, column: 7)
!2918 = !DILocation(line: 296, column: 37, scope: !2916)
!2919 = !DILocation(line: 296, column: 10, scope: !2916)
!2920 = !DILocation(line: 296, column: 22, scope: !2916)
!2921 = !DILocation(line: 297, column: 28, scope: !2916)
!2922 = !DILocation(line: 297, column: 10, scope: !2916)
!2923 = !DILocation(line: 297, column: 22, scope: !2916)
!2924 = !DILocation(line: 298, column: 16, scope: !2916)
!2925 = !DILocation(line: 299, column: 5, scope: !2916)
!2926 = !DILocation(line: 300, column: 16, scope: !2927)
!2927 = distinct !DILexicalBlock(scope: !2917, file: !754, line: 300, column: 12)
!2928 = !DILocation(line: 300, column: 12, scope: !2917)
!2929 = !DILocation(line: 302, column: 5, scope: !2927)
!2930 = !DILocation(line: 303, column: 1, scope: !2885)
!2931 = !DISubprogram(name: "abort", scope: !1290, file: !1290, line: 598, type: !746, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !1154)
!2932 = distinct !DISubprogram(name: "rpl_obstack_memory_used", scope: !754, file: !754, line: 311, type: !2933, scopeLine: 312, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !753, retainedNodes: !2935)
!2933 = !DISubroutineType(types: !2934)
!2934 = !{!163, !2589}
!2935 = !{!2936, !2937, !2938}
!2936 = !DILocalVariable(name: "h", arg: 1, scope: !2932, file: !754, line: 311, type: !2589)
!2937 = !DILocalVariable(name: "nbytes", scope: !2932, file: !754, line: 313, type: !163)
!2938 = !DILocalVariable(name: "lp", scope: !2939, file: !754, line: 315, type: !2594)
!2939 = distinct !DILexicalBlock(scope: !2932, file: !754, line: 315, column: 3)
!2940 = !DILocation(line: 0, scope: !2932)
!2941 = !DILocation(line: 315, column: 39, scope: !2939)
!2942 = !DILocation(line: 0, scope: !2939)
!2943 = !DILocation(line: 315, scope: !2939)
!2944 = !DILocation(line: 315, column: 49, scope: !2945)
!2945 = distinct !DILexicalBlock(scope: !2939, file: !754, line: 315, column: 3)
!2946 = !DILocation(line: 315, column: 3, scope: !2939)
!2947 = !DILocation(line: 319, column: 3, scope: !2932)
!2948 = !DILocation(line: 317, column: 21, scope: !2949)
!2949 = distinct !DILexicalBlock(scope: !2945, file: !754, line: 316, column: 5)
!2950 = !DILocation(line: 317, column: 27, scope: !2949)
!2951 = !DILocation(line: 317, column: 14, scope: !2949)
!2952 = !DILocation(line: 315, column: 67, scope: !2945)
!2953 = distinct !{!2953, !2946, !2954, !1216}
!2954 = !DILocation(line: 318, column: 5, scope: !2939)
!2955 = distinct !DISubprogram(name: "set_program_name", scope: !766, file: !766, line: 37, type: !1120, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !765, retainedNodes: !2956)
!2956 = !{!2957, !2958, !2959}
!2957 = !DILocalVariable(name: "argv0", arg: 1, scope: !2955, file: !766, line: 37, type: !171)
!2958 = !DILocalVariable(name: "slash", scope: !2955, file: !766, line: 44, type: !171)
!2959 = !DILocalVariable(name: "base", scope: !2955, file: !766, line: 45, type: !171)
!2960 = !DILocation(line: 0, scope: !2955)
!2961 = !DILocation(line: 44, column: 23, scope: !2955)
!2962 = !DILocation(line: 45, column: 22, scope: !2955)
!2963 = !DILocation(line: 46, column: 17, scope: !2964)
!2964 = distinct !DILexicalBlock(scope: !2955, file: !766, line: 46, column: 7)
!2965 = !DILocation(line: 46, column: 9, scope: !2964)
!2966 = !DILocation(line: 46, column: 25, scope: !2964)
!2967 = !DILocation(line: 46, column: 40, scope: !2964)
!2968 = !DILocalVariable(name: "__s1", arg: 1, scope: !2969, file: !1182, line: 974, type: !1314)
!2969 = distinct !DISubprogram(name: "memeq", scope: !1182, file: !1182, line: 974, type: !2970, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !765, retainedNodes: !2972)
!2970 = !DISubroutineType(types: !2971)
!2971 = !{!112, !1314, !1314, !163}
!2972 = !{!2968, !2973, !2974}
!2973 = !DILocalVariable(name: "__s2", arg: 2, scope: !2969, file: !1182, line: 974, type: !1314)
!2974 = !DILocalVariable(name: "__n", arg: 3, scope: !2969, file: !1182, line: 974, type: !163)
!2975 = !DILocation(line: 0, scope: !2969, inlinedAt: !2976)
!2976 = distinct !DILocation(line: 46, column: 28, scope: !2964)
!2977 = !DILocation(line: 976, column: 11, scope: !2969, inlinedAt: !2976)
!2978 = !DILocation(line: 976, column: 10, scope: !2969, inlinedAt: !2976)
!2979 = !DILocation(line: 46, column: 7, scope: !2955)
!2980 = !DILocation(line: 49, column: 11, scope: !2981)
!2981 = distinct !DILexicalBlock(scope: !2982, file: !766, line: 49, column: 11)
!2982 = distinct !DILexicalBlock(scope: !2964, file: !766, line: 47, column: 5)
!2983 = !DILocation(line: 49, column: 36, scope: !2981)
!2984 = !DILocation(line: 49, column: 11, scope: !2982)
!2985 = !DILocation(line: 65, column: 16, scope: !2955)
!2986 = !DILocation(line: 71, column: 27, scope: !2955)
!2987 = !DILocation(line: 74, column: 33, scope: !2955)
!2988 = !DILocation(line: 76, column: 1, scope: !2955)
!2989 = !DISubprogram(name: "strrchr", scope: !1286, file: !1286, line: 273, type: !1301, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1154)
!2990 = !DILocation(line: 0, scope: !775)
!2991 = !DILocation(line: 40, column: 29, scope: !775)
!2992 = !DILocation(line: 41, column: 19, scope: !2993)
!2993 = distinct !DILexicalBlock(scope: !775, file: !776, line: 41, column: 7)
!2994 = !DILocation(line: 41, column: 7, scope: !775)
!2995 = !DILocation(line: 47, column: 3, scope: !775)
!2996 = !DILocation(line: 48, column: 3, scope: !775)
!2997 = !DILocation(line: 48, column: 13, scope: !775)
!2998 = !DILocalVariable(name: "ps", arg: 1, scope: !2999, file: !3000, line: 1135, type: !3003)
!2999 = distinct !DISubprogram(name: "mbszero", scope: !3000, file: !3000, line: 1135, type: !3001, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !3004)
!3000 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!3001 = !DISubroutineType(types: !3002)
!3002 = !{null, !3003}
!3003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!3004 = !{!2998}
!3005 = !DILocation(line: 0, scope: !2999, inlinedAt: !3006)
!3006 = distinct !DILocation(line: 48, column: 18, scope: !775)
!3007 = !DILocalVariable(name: "__dest", arg: 1, scope: !3008, file: !2820, line: 57, type: !161)
!3008 = distinct !DISubprogram(name: "memset", scope: !2820, file: !2820, line: 57, type: !3009, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !3011)
!3009 = !DISubroutineType(types: !3010)
!3010 = !{!161, !161, !89, !163}
!3011 = !{!3007, !3012, !3013}
!3012 = !DILocalVariable(name: "__ch", arg: 2, scope: !3008, file: !2820, line: 57, type: !89)
!3013 = !DILocalVariable(name: "__len", arg: 3, scope: !3008, file: !2820, line: 57, type: !163)
!3014 = !DILocation(line: 0, scope: !3008, inlinedAt: !3015)
!3015 = distinct !DILocation(line: 1137, column: 3, scope: !2999, inlinedAt: !3006)
!3016 = !DILocation(line: 59, column: 10, scope: !3008, inlinedAt: !3015)
!3017 = !DILocation(line: 49, column: 7, scope: !3018)
!3018 = distinct !DILexicalBlock(scope: !775, file: !776, line: 49, column: 7)
!3019 = !DILocation(line: 49, column: 39, scope: !3018)
!3020 = !DILocation(line: 49, column: 44, scope: !3018)
!3021 = !DILocation(line: 54, column: 1, scope: !775)
!3022 = !DISubprogram(name: "mbrtoc32", scope: !787, file: !787, line: 57, type: !3023, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1154)
!3023 = !DISubroutineType(types: !3024)
!3024 = !{!163, !3025, !1160, !163, !3027}
!3025 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !3026)
!3026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!3027 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !3003)
!3028 = distinct !DISubprogram(name: "clone_quoting_options", scope: !806, file: !806, line: 113, type: !3029, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !827, retainedNodes: !3032)
!3029 = !DISubroutineType(types: !3030)
!3030 = !{!3031, !3031}
!3031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!3032 = !{!3033, !3034, !3035}
!3033 = !DILocalVariable(name: "o", arg: 1, scope: !3028, file: !806, line: 113, type: !3031)
!3034 = !DILocalVariable(name: "saved_errno", scope: !3028, file: !806, line: 115, type: !89)
!3035 = !DILocalVariable(name: "p", scope: !3028, file: !806, line: 116, type: !3031)
!3036 = !DILocation(line: 0, scope: !3028)
!3037 = !DILocation(line: 115, column: 21, scope: !3028)
!3038 = !DILocation(line: 116, column: 40, scope: !3028)
!3039 = !DILocation(line: 116, column: 31, scope: !3028)
!3040 = !DILocation(line: 118, column: 9, scope: !3028)
!3041 = !DILocation(line: 119, column: 3, scope: !3028)
!3042 = distinct !DISubprogram(name: "get_quoting_style", scope: !806, file: !806, line: 124, type: !3043, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !827, retainedNodes: !3047)
!3043 = !DISubroutineType(types: !3044)
!3044 = !{!207, !3045}
!3045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3046, size: 64)
!3046 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !842)
!3047 = !{!3048}
!3048 = !DILocalVariable(name: "o", arg: 1, scope: !3042, file: !806, line: 124, type: !3045)
!3049 = !DILocation(line: 0, scope: !3042)
!3050 = !DILocation(line: 126, column: 11, scope: !3042)
!3051 = !DILocation(line: 126, column: 46, scope: !3042)
!3052 = !{!3053, !1106, i64 0}
!3053 = !{!"quoting_options", !1106, i64 0, !1170, i64 4, !1106, i64 8, !1105, i64 40, !1105, i64 48}
!3054 = !DILocation(line: 126, column: 3, scope: !3042)
!3055 = distinct !DISubprogram(name: "set_quoting_style", scope: !806, file: !806, line: 132, type: !3056, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !827, retainedNodes: !3058)
!3056 = !DISubroutineType(types: !3057)
!3057 = !{null, !3031, !207}
!3058 = !{!3059, !3060}
!3059 = !DILocalVariable(name: "o", arg: 1, scope: !3055, file: !806, line: 132, type: !3031)
!3060 = !DILocalVariable(name: "s", arg: 2, scope: !3055, file: !806, line: 132, type: !207)
!3061 = !DILocation(line: 0, scope: !3055)
!3062 = !DILocation(line: 134, column: 4, scope: !3055)
!3063 = !DILocation(line: 134, column: 45, scope: !3055)
!3064 = !DILocation(line: 135, column: 1, scope: !3055)
!3065 = distinct !DISubprogram(name: "set_char_quoting", scope: !806, file: !806, line: 143, type: !3066, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !827, retainedNodes: !3068)
!3066 = !DISubroutineType(types: !3067)
!3067 = !{!89, !3031, !4, !89}
!3068 = !{!3069, !3070, !3071, !3072, !3073, !3075, !3076}
!3069 = !DILocalVariable(name: "o", arg: 1, scope: !3065, file: !806, line: 143, type: !3031)
!3070 = !DILocalVariable(name: "c", arg: 2, scope: !3065, file: !806, line: 143, type: !4)
!3071 = !DILocalVariable(name: "i", arg: 3, scope: !3065, file: !806, line: 143, type: !89)
!3072 = !DILocalVariable(name: "uc", scope: !3065, file: !806, line: 145, type: !222)
!3073 = !DILocalVariable(name: "p", scope: !3065, file: !806, line: 146, type: !3074)
!3074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!3075 = !DILocalVariable(name: "shift", scope: !3065, file: !806, line: 148, type: !89)
!3076 = !DILocalVariable(name: "r", scope: !3065, file: !806, line: 149, type: !79)
!3077 = !DILocation(line: 0, scope: !3065)
!3078 = !DILocation(line: 147, column: 6, scope: !3065)
!3079 = !DILocation(line: 147, column: 41, scope: !3065)
!3080 = !DILocation(line: 147, column: 62, scope: !3065)
!3081 = !DILocation(line: 147, column: 57, scope: !3065)
!3082 = !DILocation(line: 148, column: 15, scope: !3065)
!3083 = !DILocation(line: 149, column: 21, scope: !3065)
!3084 = !DILocation(line: 149, column: 24, scope: !3065)
!3085 = !DILocation(line: 149, column: 34, scope: !3065)
!3086 = !DILocation(line: 150, column: 19, scope: !3065)
!3087 = !DILocation(line: 150, column: 24, scope: !3065)
!3088 = !DILocation(line: 150, column: 6, scope: !3065)
!3089 = !DILocation(line: 151, column: 3, scope: !3065)
!3090 = distinct !DISubprogram(name: "set_quoting_flags", scope: !806, file: !806, line: 159, type: !3091, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !827, retainedNodes: !3093)
!3091 = !DISubroutineType(types: !3092)
!3092 = !{!89, !3031, !89}
!3093 = !{!3094, !3095, !3096}
!3094 = !DILocalVariable(name: "o", arg: 1, scope: !3090, file: !806, line: 159, type: !3031)
!3095 = !DILocalVariable(name: "i", arg: 2, scope: !3090, file: !806, line: 159, type: !89)
!3096 = !DILocalVariable(name: "r", scope: !3090, file: !806, line: 163, type: !89)
!3097 = !DILocation(line: 0, scope: !3090)
!3098 = !DILocation(line: 161, column: 8, scope: !3099)
!3099 = distinct !DILexicalBlock(scope: !3090, file: !806, line: 161, column: 7)
!3100 = !DILocation(line: 161, column: 7, scope: !3090)
!3101 = !DILocation(line: 163, column: 14, scope: !3090)
!3102 = !{!3053, !1170, i64 4}
!3103 = !DILocation(line: 164, column: 12, scope: !3090)
!3104 = !DILocation(line: 165, column: 3, scope: !3090)
!3105 = distinct !DISubprogram(name: "set_custom_quoting", scope: !806, file: !806, line: 169, type: !3106, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !827, retainedNodes: !3108)
!3106 = !DISubroutineType(types: !3107)
!3107 = !{null, !3031, !171, !171}
!3108 = !{!3109, !3110, !3111}
!3109 = !DILocalVariable(name: "o", arg: 1, scope: !3105, file: !806, line: 169, type: !3031)
!3110 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3105, file: !806, line: 170, type: !171)
!3111 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3105, file: !806, line: 170, type: !171)
!3112 = !DILocation(line: 0, scope: !3105)
!3113 = !DILocation(line: 172, column: 8, scope: !3114)
!3114 = distinct !DILexicalBlock(scope: !3105, file: !806, line: 172, column: 7)
!3115 = !DILocation(line: 172, column: 7, scope: !3105)
!3116 = !DILocation(line: 174, column: 12, scope: !3105)
!3117 = !DILocation(line: 175, column: 8, scope: !3118)
!3118 = distinct !DILexicalBlock(scope: !3105, file: !806, line: 175, column: 7)
!3119 = !DILocation(line: 175, column: 19, scope: !3118)
!3120 = !DILocation(line: 176, column: 5, scope: !3118)
!3121 = !DILocation(line: 177, column: 6, scope: !3105)
!3122 = !DILocation(line: 177, column: 17, scope: !3105)
!3123 = !{!3053, !1105, i64 40}
!3124 = !DILocation(line: 178, column: 6, scope: !3105)
!3125 = !DILocation(line: 178, column: 18, scope: !3105)
!3126 = !{!3053, !1105, i64 48}
!3127 = !DILocation(line: 179, column: 1, scope: !3105)
!3128 = distinct !DISubprogram(name: "quotearg_buffer", scope: !806, file: !806, line: 774, type: !3129, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !827, retainedNodes: !3131)
!3129 = !DISubroutineType(types: !3130)
!3130 = !{!163, !121, !163, !171, !163, !3045}
!3131 = !{!3132, !3133, !3134, !3135, !3136, !3137, !3138, !3139}
!3132 = !DILocalVariable(name: "buffer", arg: 1, scope: !3128, file: !806, line: 774, type: !121)
!3133 = !DILocalVariable(name: "buffersize", arg: 2, scope: !3128, file: !806, line: 774, type: !163)
!3134 = !DILocalVariable(name: "arg", arg: 3, scope: !3128, file: !806, line: 775, type: !171)
!3135 = !DILocalVariable(name: "argsize", arg: 4, scope: !3128, file: !806, line: 775, type: !163)
!3136 = !DILocalVariable(name: "o", arg: 5, scope: !3128, file: !806, line: 776, type: !3045)
!3137 = !DILocalVariable(name: "p", scope: !3128, file: !806, line: 778, type: !3045)
!3138 = !DILocalVariable(name: "saved_errno", scope: !3128, file: !806, line: 779, type: !89)
!3139 = !DILocalVariable(name: "r", scope: !3128, file: !806, line: 780, type: !163)
!3140 = !DILocation(line: 0, scope: !3128)
!3141 = !DILocation(line: 778, column: 37, scope: !3128)
!3142 = !DILocation(line: 779, column: 21, scope: !3128)
!3143 = !DILocation(line: 781, column: 43, scope: !3128)
!3144 = !DILocation(line: 781, column: 53, scope: !3128)
!3145 = !DILocation(line: 781, column: 63, scope: !3128)
!3146 = !DILocation(line: 782, column: 43, scope: !3128)
!3147 = !DILocation(line: 782, column: 58, scope: !3128)
!3148 = !DILocation(line: 780, column: 14, scope: !3128)
!3149 = !DILocation(line: 783, column: 9, scope: !3128)
!3150 = !DILocation(line: 784, column: 3, scope: !3128)
!3151 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !806, file: !806, line: 251, type: !3152, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !827, retainedNodes: !3156)
!3152 = !DISubroutineType(types: !3153)
!3153 = !{!163, !121, !163, !171, !163, !207, !89, !3154, !171, !171}
!3154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3155, size: 64)
!3155 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !79)
!3156 = !{!3157, !3158, !3159, !3160, !3161, !3162, !3163, !3164, !3165, !3166, !3167, !3168, !3169, !3170, !3171, !3172, !3173, !3174, !3175, !3176, !3181, !3183, !3186, !3187, !3188, !3189, !3192, !3193, !3196, !3200, !3201, !3209, !3212, !3213, !3215, !3216, !3217, !3218}
!3157 = !DILocalVariable(name: "buffer", arg: 1, scope: !3151, file: !806, line: 251, type: !121)
!3158 = !DILocalVariable(name: "buffersize", arg: 2, scope: !3151, file: !806, line: 251, type: !163)
!3159 = !DILocalVariable(name: "arg", arg: 3, scope: !3151, file: !806, line: 252, type: !171)
!3160 = !DILocalVariable(name: "argsize", arg: 4, scope: !3151, file: !806, line: 252, type: !163)
!3161 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !3151, file: !806, line: 253, type: !207)
!3162 = !DILocalVariable(name: "flags", arg: 6, scope: !3151, file: !806, line: 253, type: !89)
!3163 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !3151, file: !806, line: 254, type: !3154)
!3164 = !DILocalVariable(name: "left_quote", arg: 8, scope: !3151, file: !806, line: 255, type: !171)
!3165 = !DILocalVariable(name: "right_quote", arg: 9, scope: !3151, file: !806, line: 256, type: !171)
!3166 = !DILocalVariable(name: "unibyte_locale", scope: !3151, file: !806, line: 258, type: !112)
!3167 = !DILocalVariable(name: "len", scope: !3151, file: !806, line: 260, type: !163)
!3168 = !DILocalVariable(name: "orig_buffersize", scope: !3151, file: !806, line: 261, type: !163)
!3169 = !DILocalVariable(name: "quote_string", scope: !3151, file: !806, line: 262, type: !171)
!3170 = !DILocalVariable(name: "quote_string_len", scope: !3151, file: !806, line: 263, type: !163)
!3171 = !DILocalVariable(name: "backslash_escapes", scope: !3151, file: !806, line: 264, type: !112)
!3172 = !DILocalVariable(name: "elide_outer_quotes", scope: !3151, file: !806, line: 265, type: !112)
!3173 = !DILocalVariable(name: "encountered_single_quote", scope: !3151, file: !806, line: 266, type: !112)
!3174 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !3151, file: !806, line: 267, type: !112)
!3175 = !DILocalVariable(name: "pending_shell_escape_end", scope: !3151, file: !806, line: 309, type: !112)
!3176 = !DILocalVariable(name: "lq", scope: !3177, file: !806, line: 361, type: !171)
!3177 = distinct !DILexicalBlock(scope: !3178, file: !806, line: 361, column: 11)
!3178 = distinct !DILexicalBlock(scope: !3179, file: !806, line: 360, column: 13)
!3179 = distinct !DILexicalBlock(scope: !3180, file: !806, line: 333, column: 7)
!3180 = distinct !DILexicalBlock(scope: !3151, file: !806, line: 312, column: 5)
!3181 = !DILocalVariable(name: "i", scope: !3182, file: !806, line: 395, type: !163)
!3182 = distinct !DILexicalBlock(scope: !3151, file: !806, line: 395, column: 3)
!3183 = !DILocalVariable(name: "is_right_quote", scope: !3184, file: !806, line: 397, type: !112)
!3184 = distinct !DILexicalBlock(scope: !3185, file: !806, line: 396, column: 5)
!3185 = distinct !DILexicalBlock(scope: !3182, file: !806, line: 395, column: 3)
!3186 = !DILocalVariable(name: "escaping", scope: !3184, file: !806, line: 398, type: !112)
!3187 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !3184, file: !806, line: 399, type: !112)
!3188 = !DILocalVariable(name: "c", scope: !3184, file: !806, line: 417, type: !222)
!3189 = !DILocalVariable(name: "m", scope: !3190, file: !806, line: 598, type: !163)
!3190 = distinct !DILexicalBlock(scope: !3191, file: !806, line: 596, column: 11)
!3191 = distinct !DILexicalBlock(scope: !3184, file: !806, line: 419, column: 9)
!3192 = !DILocalVariable(name: "printable", scope: !3190, file: !806, line: 600, type: !112)
!3193 = !DILocalVariable(name: "mbs", scope: !3194, file: !806, line: 609, type: !876)
!3194 = distinct !DILexicalBlock(scope: !3195, file: !806, line: 608, column: 15)
!3195 = distinct !DILexicalBlock(scope: !3190, file: !806, line: 602, column: 17)
!3196 = !DILocalVariable(name: "w", scope: !3197, file: !806, line: 618, type: !786)
!3197 = distinct !DILexicalBlock(scope: !3198, file: !806, line: 617, column: 19)
!3198 = distinct !DILexicalBlock(scope: !3199, file: !806, line: 616, column: 17)
!3199 = distinct !DILexicalBlock(scope: !3194, file: !806, line: 616, column: 17)
!3200 = !DILocalVariable(name: "bytes", scope: !3197, file: !806, line: 619, type: !163)
!3201 = !DILocalVariable(name: "j", scope: !3202, file: !806, line: 648, type: !163)
!3202 = distinct !DILexicalBlock(scope: !3203, file: !806, line: 648, column: 29)
!3203 = distinct !DILexicalBlock(scope: !3204, file: !806, line: 647, column: 27)
!3204 = distinct !DILexicalBlock(scope: !3205, file: !806, line: 645, column: 29)
!3205 = distinct !DILexicalBlock(scope: !3206, file: !806, line: 636, column: 23)
!3206 = distinct !DILexicalBlock(scope: !3207, file: !806, line: 628, column: 30)
!3207 = distinct !DILexicalBlock(scope: !3208, file: !806, line: 623, column: 30)
!3208 = distinct !DILexicalBlock(scope: !3197, file: !806, line: 621, column: 25)
!3209 = !DILocalVariable(name: "ilim", scope: !3210, file: !806, line: 674, type: !163)
!3210 = distinct !DILexicalBlock(scope: !3211, file: !806, line: 671, column: 15)
!3211 = distinct !DILexicalBlock(scope: !3190, file: !806, line: 670, column: 17)
!3212 = !DILabel(scope: !3151, name: "process_input", file: !806, line: 308)
!3213 = !DILabel(scope: !3214, name: "c_and_shell_escape", file: !806, line: 502)
!3214 = distinct !DILexicalBlock(scope: !3191, file: !806, line: 478, column: 9)
!3215 = !DILabel(scope: !3214, name: "c_escape", file: !806, line: 507)
!3216 = !DILabel(scope: !3184, name: "store_escape", file: !806, line: 709)
!3217 = !DILabel(scope: !3184, name: "store_c", file: !806, line: 712)
!3218 = !DILabel(scope: !3151, name: "force_outer_quoting_style", file: !806, line: 753)
!3219 = !DILocation(line: 0, scope: !3151)
!3220 = !DILocation(line: 258, column: 25, scope: !3151)
!3221 = !DILocation(line: 258, column: 36, scope: !3151)
!3222 = !DILocation(line: 267, column: 3, scope: !3151)
!3223 = !DILocation(line: 261, column: 10, scope: !3151)
!3224 = !DILocation(line: 262, column: 15, scope: !3151)
!3225 = !DILocation(line: 263, column: 10, scope: !3151)
!3226 = !DILocation(line: 308, column: 2, scope: !3151)
!3227 = !DILocation(line: 311, column: 3, scope: !3151)
!3228 = !DILocation(line: 318, column: 11, scope: !3180)
!3229 = !DILocation(line: 319, column: 9, scope: !3230)
!3230 = distinct !DILexicalBlock(scope: !3231, file: !806, line: 319, column: 9)
!3231 = distinct !DILexicalBlock(scope: !3232, file: !806, line: 319, column: 9)
!3232 = distinct !DILexicalBlock(scope: !3180, file: !806, line: 318, column: 11)
!3233 = !DILocation(line: 319, column: 9, scope: !3231)
!3234 = !DILocation(line: 0, scope: !867, inlinedAt: !3235)
!3235 = distinct !DILocation(line: 357, column: 26, scope: !3236)
!3236 = distinct !DILexicalBlock(scope: !3237, file: !806, line: 335, column: 11)
!3237 = distinct !DILexicalBlock(scope: !3179, file: !806, line: 334, column: 13)
!3238 = !DILocation(line: 199, column: 29, scope: !867, inlinedAt: !3235)
!3239 = !DILocation(line: 201, column: 19, scope: !3240, inlinedAt: !3235)
!3240 = distinct !DILexicalBlock(scope: !867, file: !806, line: 201, column: 7)
!3241 = !DILocation(line: 201, column: 7, scope: !867, inlinedAt: !3235)
!3242 = !DILocation(line: 229, column: 3, scope: !867, inlinedAt: !3235)
!3243 = !DILocation(line: 230, column: 3, scope: !867, inlinedAt: !3235)
!3244 = !DILocation(line: 230, column: 13, scope: !867, inlinedAt: !3235)
!3245 = !DILocalVariable(name: "ps", arg: 1, scope: !3246, file: !3000, line: 1135, type: !3249)
!3246 = distinct !DISubprogram(name: "mbszero", scope: !3000, file: !3000, line: 1135, type: !3247, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !827, retainedNodes: !3250)
!3247 = !DISubroutineType(types: !3248)
!3248 = !{null, !3249}
!3249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!3250 = !{!3245}
!3251 = !DILocation(line: 0, scope: !3246, inlinedAt: !3252)
!3252 = distinct !DILocation(line: 230, column: 18, scope: !867, inlinedAt: !3235)
!3253 = !DILocalVariable(name: "__dest", arg: 1, scope: !3254, file: !2820, line: 57, type: !161)
!3254 = distinct !DISubprogram(name: "memset", scope: !2820, file: !2820, line: 57, type: !3009, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !827, retainedNodes: !3255)
!3255 = !{!3253, !3256, !3257}
!3256 = !DILocalVariable(name: "__ch", arg: 2, scope: !3254, file: !2820, line: 57, type: !89)
!3257 = !DILocalVariable(name: "__len", arg: 3, scope: !3254, file: !2820, line: 57, type: !163)
!3258 = !DILocation(line: 0, scope: !3254, inlinedAt: !3259)
!3259 = distinct !DILocation(line: 1137, column: 3, scope: !3246, inlinedAt: !3252)
!3260 = !DILocation(line: 59, column: 10, scope: !3254, inlinedAt: !3259)
!3261 = !DILocation(line: 231, column: 7, scope: !3262, inlinedAt: !3235)
!3262 = distinct !DILexicalBlock(scope: !867, file: !806, line: 231, column: 7)
!3263 = !DILocation(line: 231, column: 40, scope: !3262, inlinedAt: !3235)
!3264 = !DILocation(line: 231, column: 45, scope: !3262, inlinedAt: !3235)
!3265 = !DILocation(line: 235, column: 1, scope: !867, inlinedAt: !3235)
!3266 = !DILocation(line: 0, scope: !867, inlinedAt: !3267)
!3267 = distinct !DILocation(line: 358, column: 27, scope: !3236)
!3268 = !DILocation(line: 199, column: 29, scope: !867, inlinedAt: !3267)
!3269 = !DILocation(line: 201, column: 19, scope: !3240, inlinedAt: !3267)
!3270 = !DILocation(line: 201, column: 7, scope: !867, inlinedAt: !3267)
!3271 = !DILocation(line: 229, column: 3, scope: !867, inlinedAt: !3267)
!3272 = !DILocation(line: 230, column: 3, scope: !867, inlinedAt: !3267)
!3273 = !DILocation(line: 230, column: 13, scope: !867, inlinedAt: !3267)
!3274 = !DILocation(line: 0, scope: !3246, inlinedAt: !3275)
!3275 = distinct !DILocation(line: 230, column: 18, scope: !867, inlinedAt: !3267)
!3276 = !DILocation(line: 0, scope: !3254, inlinedAt: !3277)
!3277 = distinct !DILocation(line: 1137, column: 3, scope: !3246, inlinedAt: !3275)
!3278 = !DILocation(line: 59, column: 10, scope: !3254, inlinedAt: !3277)
!3279 = !DILocation(line: 231, column: 7, scope: !3262, inlinedAt: !3267)
!3280 = !DILocation(line: 231, column: 40, scope: !3262, inlinedAt: !3267)
!3281 = !DILocation(line: 231, column: 45, scope: !3262, inlinedAt: !3267)
!3282 = !DILocation(line: 235, column: 1, scope: !867, inlinedAt: !3267)
!3283 = !DILocation(line: 360, column: 13, scope: !3179)
!3284 = !DILocation(line: 0, scope: !3177)
!3285 = !DILocation(line: 361, column: 45, scope: !3286)
!3286 = distinct !DILexicalBlock(scope: !3177, file: !806, line: 361, column: 11)
!3287 = !DILocation(line: 361, column: 11, scope: !3177)
!3288 = !DILocation(line: 362, column: 13, scope: !3289)
!3289 = distinct !DILexicalBlock(scope: !3290, file: !806, line: 362, column: 13)
!3290 = distinct !DILexicalBlock(scope: !3286, file: !806, line: 362, column: 13)
!3291 = !DILocation(line: 362, column: 13, scope: !3290)
!3292 = !DILocation(line: 361, column: 52, scope: !3286)
!3293 = distinct !{!3293, !3287, !3294, !1216}
!3294 = !DILocation(line: 362, column: 13, scope: !3177)
!3295 = !DILocation(line: 260, column: 10, scope: !3151)
!3296 = !DILocation(line: 365, column: 28, scope: !3179)
!3297 = !DILocation(line: 367, column: 7, scope: !3180)
!3298 = !DILocation(line: 370, column: 7, scope: !3180)
!3299 = !DILocation(line: 376, column: 11, scope: !3180)
!3300 = !DILocation(line: 381, column: 11, scope: !3180)
!3301 = !DILocation(line: 382, column: 9, scope: !3302)
!3302 = distinct !DILexicalBlock(scope: !3303, file: !806, line: 382, column: 9)
!3303 = distinct !DILexicalBlock(scope: !3304, file: !806, line: 382, column: 9)
!3304 = distinct !DILexicalBlock(scope: !3180, file: !806, line: 381, column: 11)
!3305 = !DILocation(line: 382, column: 9, scope: !3303)
!3306 = !DILocation(line: 389, column: 7, scope: !3180)
!3307 = !DILocation(line: 392, column: 7, scope: !3180)
!3308 = !DILocation(line: 0, scope: !3182)
!3309 = !DILocation(line: 395, column: 8, scope: !3182)
!3310 = !DILocation(line: 395, scope: !3182)
!3311 = !DILocation(line: 395, column: 34, scope: !3185)
!3312 = !DILocation(line: 395, column: 26, scope: !3185)
!3313 = !DILocation(line: 395, column: 48, scope: !3185)
!3314 = !DILocation(line: 395, column: 55, scope: !3185)
!3315 = !DILocation(line: 395, column: 3, scope: !3182)
!3316 = !DILocation(line: 395, column: 67, scope: !3185)
!3317 = !DILocation(line: 0, scope: !3184)
!3318 = !DILocation(line: 402, column: 11, scope: !3319)
!3319 = distinct !DILexicalBlock(scope: !3184, file: !806, line: 401, column: 11)
!3320 = !DILocation(line: 404, column: 17, scope: !3319)
!3321 = !DILocation(line: 405, column: 39, scope: !3319)
!3322 = !DILocation(line: 409, column: 32, scope: !3319)
!3323 = !DILocation(line: 405, column: 19, scope: !3319)
!3324 = !DILocation(line: 405, column: 15, scope: !3319)
!3325 = !DILocation(line: 410, column: 11, scope: !3319)
!3326 = !DILocation(line: 410, column: 25, scope: !3319)
!3327 = !DILocalVariable(name: "__s1", arg: 1, scope: !3328, file: !1182, line: 974, type: !1314)
!3328 = distinct !DISubprogram(name: "memeq", scope: !1182, file: !1182, line: 974, type: !2970, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !827, retainedNodes: !3329)
!3329 = !{!3327, !3330, !3331}
!3330 = !DILocalVariable(name: "__s2", arg: 2, scope: !3328, file: !1182, line: 974, type: !1314)
!3331 = !DILocalVariable(name: "__n", arg: 3, scope: !3328, file: !1182, line: 974, type: !163)
!3332 = !DILocation(line: 0, scope: !3328, inlinedAt: !3333)
!3333 = distinct !DILocation(line: 410, column: 14, scope: !3319)
!3334 = !DILocation(line: 976, column: 11, scope: !3328, inlinedAt: !3333)
!3335 = !DILocation(line: 976, column: 10, scope: !3328, inlinedAt: !3333)
!3336 = !DILocation(line: 401, column: 11, scope: !3184)
!3337 = !DILocation(line: 417, column: 25, scope: !3184)
!3338 = !DILocation(line: 418, column: 7, scope: !3184)
!3339 = !DILocation(line: 421, column: 15, scope: !3191)
!3340 = !DILocation(line: 423, column: 15, scope: !3341)
!3341 = distinct !DILexicalBlock(scope: !3342, file: !806, line: 423, column: 15)
!3342 = distinct !DILexicalBlock(scope: !3343, file: !806, line: 422, column: 13)
!3343 = distinct !DILexicalBlock(scope: !3191, file: !806, line: 421, column: 15)
!3344 = !DILocation(line: 423, column: 15, scope: !3345)
!3345 = distinct !DILexicalBlock(scope: !3341, file: !806, line: 423, column: 15)
!3346 = !DILocation(line: 423, column: 15, scope: !3347)
!3347 = distinct !DILexicalBlock(scope: !3348, file: !806, line: 423, column: 15)
!3348 = distinct !DILexicalBlock(scope: !3349, file: !806, line: 423, column: 15)
!3349 = distinct !DILexicalBlock(scope: !3345, file: !806, line: 423, column: 15)
!3350 = !DILocation(line: 423, column: 15, scope: !3348)
!3351 = !DILocation(line: 423, column: 15, scope: !3352)
!3352 = distinct !DILexicalBlock(scope: !3353, file: !806, line: 423, column: 15)
!3353 = distinct !DILexicalBlock(scope: !3349, file: !806, line: 423, column: 15)
!3354 = !DILocation(line: 423, column: 15, scope: !3353)
!3355 = !DILocation(line: 423, column: 15, scope: !3356)
!3356 = distinct !DILexicalBlock(scope: !3357, file: !806, line: 423, column: 15)
!3357 = distinct !DILexicalBlock(scope: !3349, file: !806, line: 423, column: 15)
!3358 = !DILocation(line: 423, column: 15, scope: !3357)
!3359 = !DILocation(line: 423, column: 15, scope: !3349)
!3360 = !DILocation(line: 423, column: 15, scope: !3361)
!3361 = distinct !DILexicalBlock(scope: !3362, file: !806, line: 423, column: 15)
!3362 = distinct !DILexicalBlock(scope: !3341, file: !806, line: 423, column: 15)
!3363 = !DILocation(line: 423, column: 15, scope: !3362)
!3364 = !DILocation(line: 431, column: 19, scope: !3365)
!3365 = distinct !DILexicalBlock(scope: !3342, file: !806, line: 430, column: 19)
!3366 = !DILocation(line: 431, column: 24, scope: !3365)
!3367 = !DILocation(line: 431, column: 28, scope: !3365)
!3368 = !DILocation(line: 431, column: 38, scope: !3365)
!3369 = !DILocation(line: 431, column: 48, scope: !3365)
!3370 = !DILocation(line: 431, column: 59, scope: !3365)
!3371 = !DILocation(line: 433, column: 19, scope: !3372)
!3372 = distinct !DILexicalBlock(scope: !3373, file: !806, line: 433, column: 19)
!3373 = distinct !DILexicalBlock(scope: !3374, file: !806, line: 433, column: 19)
!3374 = distinct !DILexicalBlock(scope: !3365, file: !806, line: 432, column: 17)
!3375 = !DILocation(line: 433, column: 19, scope: !3373)
!3376 = !DILocation(line: 434, column: 19, scope: !3377)
!3377 = distinct !DILexicalBlock(scope: !3378, file: !806, line: 434, column: 19)
!3378 = distinct !DILexicalBlock(scope: !3374, file: !806, line: 434, column: 19)
!3379 = !DILocation(line: 434, column: 19, scope: !3378)
!3380 = !DILocation(line: 435, column: 17, scope: !3374)
!3381 = !DILocation(line: 442, column: 20, scope: !3343)
!3382 = !DILocation(line: 447, column: 11, scope: !3191)
!3383 = !DILocation(line: 450, column: 19, scope: !3384)
!3384 = distinct !DILexicalBlock(scope: !3191, file: !806, line: 448, column: 13)
!3385 = !DILocation(line: 456, column: 19, scope: !3386)
!3386 = distinct !DILexicalBlock(scope: !3384, file: !806, line: 455, column: 19)
!3387 = !DILocation(line: 456, column: 24, scope: !3386)
!3388 = !DILocation(line: 456, column: 28, scope: !3386)
!3389 = !DILocation(line: 456, column: 38, scope: !3386)
!3390 = !DILocation(line: 456, column: 47, scope: !3386)
!3391 = !DILocation(line: 456, column: 41, scope: !3386)
!3392 = !DILocation(line: 456, column: 52, scope: !3386)
!3393 = !DILocation(line: 455, column: 19, scope: !3384)
!3394 = !DILocation(line: 457, column: 25, scope: !3386)
!3395 = !DILocation(line: 457, column: 17, scope: !3386)
!3396 = !DILocation(line: 464, column: 25, scope: !3397)
!3397 = distinct !DILexicalBlock(scope: !3386, file: !806, line: 458, column: 19)
!3398 = !DILocation(line: 468, column: 21, scope: !3399)
!3399 = distinct !DILexicalBlock(scope: !3400, file: !806, line: 468, column: 21)
!3400 = distinct !DILexicalBlock(scope: !3397, file: !806, line: 468, column: 21)
!3401 = !DILocation(line: 468, column: 21, scope: !3400)
!3402 = !DILocation(line: 469, column: 21, scope: !3403)
!3403 = distinct !DILexicalBlock(scope: !3404, file: !806, line: 469, column: 21)
!3404 = distinct !DILexicalBlock(scope: !3397, file: !806, line: 469, column: 21)
!3405 = !DILocation(line: 469, column: 21, scope: !3404)
!3406 = !DILocation(line: 470, column: 21, scope: !3407)
!3407 = distinct !DILexicalBlock(scope: !3408, file: !806, line: 470, column: 21)
!3408 = distinct !DILexicalBlock(scope: !3397, file: !806, line: 470, column: 21)
!3409 = !DILocation(line: 470, column: 21, scope: !3408)
!3410 = !DILocation(line: 471, column: 21, scope: !3411)
!3411 = distinct !DILexicalBlock(scope: !3412, file: !806, line: 471, column: 21)
!3412 = distinct !DILexicalBlock(scope: !3397, file: !806, line: 471, column: 21)
!3413 = !DILocation(line: 471, column: 21, scope: !3412)
!3414 = !DILocation(line: 472, column: 21, scope: !3397)
!3415 = !DILocation(line: 482, column: 33, scope: !3214)
!3416 = !DILocation(line: 483, column: 33, scope: !3214)
!3417 = !DILocation(line: 485, column: 33, scope: !3214)
!3418 = !DILocation(line: 486, column: 33, scope: !3214)
!3419 = !DILocation(line: 487, column: 33, scope: !3214)
!3420 = !DILocation(line: 490, column: 17, scope: !3214)
!3421 = !DILocation(line: 492, column: 21, scope: !3422)
!3422 = distinct !DILexicalBlock(scope: !3423, file: !806, line: 491, column: 15)
!3423 = distinct !DILexicalBlock(scope: !3214, file: !806, line: 490, column: 17)
!3424 = !DILocation(line: 499, column: 35, scope: !3425)
!3425 = distinct !DILexicalBlock(scope: !3214, file: !806, line: 499, column: 17)
!3426 = !DILocation(line: 0, scope: !3214)
!3427 = !DILocation(line: 502, column: 11, scope: !3214)
!3428 = !DILocation(line: 504, column: 17, scope: !3429)
!3429 = distinct !DILexicalBlock(scope: !3214, file: !806, line: 503, column: 17)
!3430 = !DILocation(line: 507, column: 11, scope: !3214)
!3431 = !DILocation(line: 508, column: 17, scope: !3214)
!3432 = !DILocation(line: 517, column: 15, scope: !3191)
!3433 = !DILocation(line: 517, column: 40, scope: !3434)
!3434 = distinct !DILexicalBlock(scope: !3191, file: !806, line: 517, column: 15)
!3435 = !DILocation(line: 517, column: 47, scope: !3434)
!3436 = !DILocation(line: 517, column: 18, scope: !3434)
!3437 = !DILocation(line: 521, column: 17, scope: !3438)
!3438 = distinct !DILexicalBlock(scope: !3191, file: !806, line: 521, column: 15)
!3439 = !DILocation(line: 521, column: 15, scope: !3191)
!3440 = !DILocation(line: 525, column: 11, scope: !3191)
!3441 = !DILocation(line: 537, column: 15, scope: !3442)
!3442 = distinct !DILexicalBlock(scope: !3191, file: !806, line: 536, column: 15)
!3443 = !DILocation(line: 536, column: 15, scope: !3191)
!3444 = !DILocation(line: 544, column: 15, scope: !3191)
!3445 = !DILocation(line: 546, column: 19, scope: !3446)
!3446 = distinct !DILexicalBlock(scope: !3447, file: !806, line: 545, column: 13)
!3447 = distinct !DILexicalBlock(scope: !3191, file: !806, line: 544, column: 15)
!3448 = !DILocation(line: 549, column: 19, scope: !3449)
!3449 = distinct !DILexicalBlock(scope: !3446, file: !806, line: 549, column: 19)
!3450 = !DILocation(line: 549, column: 30, scope: !3449)
!3451 = !DILocation(line: 558, column: 15, scope: !3452)
!3452 = distinct !DILexicalBlock(scope: !3453, file: !806, line: 558, column: 15)
!3453 = distinct !DILexicalBlock(scope: !3446, file: !806, line: 558, column: 15)
!3454 = !DILocation(line: 558, column: 15, scope: !3453)
!3455 = !DILocation(line: 559, column: 15, scope: !3456)
!3456 = distinct !DILexicalBlock(scope: !3457, file: !806, line: 559, column: 15)
!3457 = distinct !DILexicalBlock(scope: !3446, file: !806, line: 559, column: 15)
!3458 = !DILocation(line: 559, column: 15, scope: !3457)
!3459 = !DILocation(line: 560, column: 15, scope: !3460)
!3460 = distinct !DILexicalBlock(scope: !3461, file: !806, line: 560, column: 15)
!3461 = distinct !DILexicalBlock(scope: !3446, file: !806, line: 560, column: 15)
!3462 = !DILocation(line: 560, column: 15, scope: !3461)
!3463 = !DILocation(line: 562, column: 13, scope: !3446)
!3464 = !DILocation(line: 602, column: 17, scope: !3190)
!3465 = !DILocation(line: 0, scope: !3190)
!3466 = !DILocation(line: 605, column: 29, scope: !3467)
!3467 = distinct !DILexicalBlock(scope: !3195, file: !806, line: 603, column: 15)
!3468 = !DILocation(line: 605, column: 41, scope: !3467)
!3469 = !DILocation(line: 606, column: 15, scope: !3467)
!3470 = !DILocation(line: 609, column: 17, scope: !3194)
!3471 = !DILocation(line: 609, column: 27, scope: !3194)
!3472 = !DILocation(line: 0, scope: !3246, inlinedAt: !3473)
!3473 = distinct !DILocation(line: 609, column: 32, scope: !3194)
!3474 = !DILocation(line: 0, scope: !3254, inlinedAt: !3475)
!3475 = distinct !DILocation(line: 1137, column: 3, scope: !3246, inlinedAt: !3473)
!3476 = !DILocation(line: 59, column: 10, scope: !3254, inlinedAt: !3475)
!3477 = !DILocation(line: 613, column: 29, scope: !3478)
!3478 = distinct !DILexicalBlock(scope: !3194, file: !806, line: 613, column: 21)
!3479 = !DILocation(line: 613, column: 21, scope: !3194)
!3480 = !DILocation(line: 614, column: 29, scope: !3478)
!3481 = !DILocation(line: 614, column: 19, scope: !3478)
!3482 = !DILocation(line: 618, column: 21, scope: !3197)
!3483 = !DILocation(line: 620, column: 54, scope: !3197)
!3484 = !DILocation(line: 0, scope: !3197)
!3485 = !DILocation(line: 619, column: 36, scope: !3197)
!3486 = !DILocation(line: 621, column: 25, scope: !3197)
!3487 = !DILocation(line: 631, column: 38, scope: !3488)
!3488 = distinct !DILexicalBlock(scope: !3206, file: !806, line: 629, column: 23)
!3489 = !DILocation(line: 631, column: 48, scope: !3488)
!3490 = !DILocation(line: 626, column: 25, scope: !3491)
!3491 = distinct !DILexicalBlock(scope: !3207, file: !806, line: 624, column: 23)
!3492 = !DILocation(line: 631, column: 51, scope: !3488)
!3493 = !DILocation(line: 631, column: 25, scope: !3488)
!3494 = !DILocation(line: 632, column: 28, scope: !3488)
!3495 = !DILocation(line: 631, column: 34, scope: !3488)
!3496 = distinct !{!3496, !3493, !3494, !1216}
!3497 = !DILocation(line: 646, column: 29, scope: !3204)
!3498 = !DILocation(line: 0, scope: !3202)
!3499 = !DILocation(line: 649, column: 49, scope: !3500)
!3500 = distinct !DILexicalBlock(scope: !3202, file: !806, line: 648, column: 29)
!3501 = !DILocation(line: 649, column: 39, scope: !3500)
!3502 = !DILocation(line: 649, column: 31, scope: !3500)
!3503 = !DILocation(line: 648, column: 60, scope: !3500)
!3504 = !DILocation(line: 648, column: 50, scope: !3500)
!3505 = !DILocation(line: 648, column: 29, scope: !3202)
!3506 = distinct !{!3506, !3505, !3507, !1216}
!3507 = !DILocation(line: 654, column: 33, scope: !3202)
!3508 = !DILocation(line: 657, column: 43, scope: !3509)
!3509 = distinct !DILexicalBlock(scope: !3205, file: !806, line: 657, column: 29)
!3510 = !DILocalVariable(name: "wc", arg: 1, scope: !3511, file: !3512, line: 865, type: !3515)
!3511 = distinct !DISubprogram(name: "c32isprint", scope: !3512, file: !3512, line: 865, type: !3513, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !827, retainedNodes: !3517)
!3512 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!3513 = !DISubroutineType(types: !3514)
!3514 = !{!89, !3515}
!3515 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !3516, line: 20, baseType: !79)
!3516 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!3517 = !{!3510}
!3518 = !DILocation(line: 0, scope: !3511, inlinedAt: !3519)
!3519 = distinct !DILocation(line: 657, column: 31, scope: !3509)
!3520 = !DILocation(line: 871, column: 10, scope: !3511, inlinedAt: !3519)
!3521 = !DILocation(line: 657, column: 31, scope: !3509)
!3522 = !DILocation(line: 664, column: 23, scope: !3197)
!3523 = !DILocation(line: 665, column: 19, scope: !3198)
!3524 = !DILocation(line: 666, column: 15, scope: !3195)
!3525 = !DILocation(line: 753, column: 2, scope: !3151)
!3526 = !DILocation(line: 756, column: 51, scope: !3527)
!3527 = distinct !DILexicalBlock(scope: !3151, file: !806, line: 756, column: 7)
!3528 = !DILocation(line: 0, scope: !3195)
!3529 = !DILocation(line: 670, column: 19, scope: !3211)
!3530 = !DILocation(line: 670, column: 23, scope: !3211)
!3531 = !DILocation(line: 674, column: 33, scope: !3210)
!3532 = !DILocation(line: 0, scope: !3210)
!3533 = !DILocation(line: 676, column: 17, scope: !3210)
!3534 = !DILocation(line: 398, column: 12, scope: !3184)
!3535 = !DILocation(line: 678, column: 43, scope: !3536)
!3536 = distinct !DILexicalBlock(scope: !3537, file: !806, line: 678, column: 25)
!3537 = distinct !DILexicalBlock(scope: !3538, file: !806, line: 677, column: 19)
!3538 = distinct !DILexicalBlock(scope: !3539, file: !806, line: 676, column: 17)
!3539 = distinct !DILexicalBlock(scope: !3210, file: !806, line: 676, column: 17)
!3540 = !DILocation(line: 680, column: 25, scope: !3541)
!3541 = distinct !DILexicalBlock(scope: !3542, file: !806, line: 680, column: 25)
!3542 = distinct !DILexicalBlock(scope: !3536, file: !806, line: 679, column: 23)
!3543 = !DILocation(line: 680, column: 25, scope: !3544)
!3544 = distinct !DILexicalBlock(scope: !3541, file: !806, line: 680, column: 25)
!3545 = !DILocation(line: 680, column: 25, scope: !3546)
!3546 = distinct !DILexicalBlock(scope: !3547, file: !806, line: 680, column: 25)
!3547 = distinct !DILexicalBlock(scope: !3548, file: !806, line: 680, column: 25)
!3548 = distinct !DILexicalBlock(scope: !3544, file: !806, line: 680, column: 25)
!3549 = !DILocation(line: 680, column: 25, scope: !3547)
!3550 = !DILocation(line: 680, column: 25, scope: !3551)
!3551 = distinct !DILexicalBlock(scope: !3552, file: !806, line: 680, column: 25)
!3552 = distinct !DILexicalBlock(scope: !3548, file: !806, line: 680, column: 25)
!3553 = !DILocation(line: 680, column: 25, scope: !3552)
!3554 = !DILocation(line: 680, column: 25, scope: !3555)
!3555 = distinct !DILexicalBlock(scope: !3556, file: !806, line: 680, column: 25)
!3556 = distinct !DILexicalBlock(scope: !3548, file: !806, line: 680, column: 25)
!3557 = !DILocation(line: 680, column: 25, scope: !3556)
!3558 = !DILocation(line: 680, column: 25, scope: !3548)
!3559 = !DILocation(line: 680, column: 25, scope: !3560)
!3560 = distinct !DILexicalBlock(scope: !3561, file: !806, line: 680, column: 25)
!3561 = distinct !DILexicalBlock(scope: !3541, file: !806, line: 680, column: 25)
!3562 = !DILocation(line: 680, column: 25, scope: !3561)
!3563 = !DILocation(line: 681, column: 25, scope: !3564)
!3564 = distinct !DILexicalBlock(scope: !3565, file: !806, line: 681, column: 25)
!3565 = distinct !DILexicalBlock(scope: !3542, file: !806, line: 681, column: 25)
!3566 = !DILocation(line: 681, column: 25, scope: !3565)
!3567 = !DILocation(line: 682, column: 25, scope: !3568)
!3568 = distinct !DILexicalBlock(scope: !3569, file: !806, line: 682, column: 25)
!3569 = distinct !DILexicalBlock(scope: !3542, file: !806, line: 682, column: 25)
!3570 = !DILocation(line: 682, column: 25, scope: !3569)
!3571 = !DILocation(line: 683, column: 38, scope: !3542)
!3572 = !DILocation(line: 683, column: 33, scope: !3542)
!3573 = !DILocation(line: 684, column: 23, scope: !3542)
!3574 = !DILocation(line: 685, column: 30, scope: !3536)
!3575 = !DILocation(line: 687, column: 25, scope: !3576)
!3576 = distinct !DILexicalBlock(scope: !3577, file: !806, line: 687, column: 25)
!3577 = distinct !DILexicalBlock(scope: !3578, file: !806, line: 687, column: 25)
!3578 = distinct !DILexicalBlock(scope: !3579, file: !806, line: 686, column: 23)
!3579 = distinct !DILexicalBlock(scope: !3536, file: !806, line: 685, column: 30)
!3580 = !DILocation(line: 687, column: 25, scope: !3577)
!3581 = !DILocation(line: 689, column: 23, scope: !3578)
!3582 = !DILocation(line: 690, column: 35, scope: !3583)
!3583 = distinct !DILexicalBlock(scope: !3537, file: !806, line: 690, column: 25)
!3584 = !DILocation(line: 690, column: 30, scope: !3583)
!3585 = !DILocation(line: 690, column: 25, scope: !3537)
!3586 = !DILocation(line: 692, column: 21, scope: !3587)
!3587 = distinct !DILexicalBlock(scope: !3588, file: !806, line: 692, column: 21)
!3588 = distinct !DILexicalBlock(scope: !3537, file: !806, line: 692, column: 21)
!3589 = !DILocation(line: 692, column: 21, scope: !3590)
!3590 = distinct !DILexicalBlock(scope: !3591, file: !806, line: 692, column: 21)
!3591 = distinct !DILexicalBlock(scope: !3592, file: !806, line: 692, column: 21)
!3592 = distinct !DILexicalBlock(scope: !3587, file: !806, line: 692, column: 21)
!3593 = !DILocation(line: 692, column: 21, scope: !3591)
!3594 = !DILocation(line: 692, column: 21, scope: !3595)
!3595 = distinct !DILexicalBlock(scope: !3596, file: !806, line: 692, column: 21)
!3596 = distinct !DILexicalBlock(scope: !3592, file: !806, line: 692, column: 21)
!3597 = !DILocation(line: 692, column: 21, scope: !3596)
!3598 = !DILocation(line: 692, column: 21, scope: !3592)
!3599 = !DILocation(line: 0, scope: !3537)
!3600 = !DILocation(line: 693, column: 21, scope: !3601)
!3601 = distinct !DILexicalBlock(scope: !3602, file: !806, line: 693, column: 21)
!3602 = distinct !DILexicalBlock(scope: !3537, file: !806, line: 693, column: 21)
!3603 = !DILocation(line: 693, column: 21, scope: !3602)
!3604 = !DILocation(line: 694, column: 25, scope: !3537)
!3605 = !DILocation(line: 676, column: 17, scope: !3538)
!3606 = distinct !{!3606, !3607, !3608}
!3607 = !DILocation(line: 676, column: 17, scope: !3539)
!3608 = !DILocation(line: 695, column: 19, scope: !3539)
!3609 = !DILocation(line: 409, column: 30, scope: !3319)
!3610 = !DILocation(line: 702, column: 34, scope: !3611)
!3611 = distinct !DILexicalBlock(scope: !3184, file: !806, line: 702, column: 11)
!3612 = !DILocation(line: 704, column: 14, scope: !3611)
!3613 = !DILocation(line: 705, column: 14, scope: !3611)
!3614 = !DILocation(line: 705, column: 35, scope: !3611)
!3615 = !DILocation(line: 705, column: 17, scope: !3611)
!3616 = !DILocation(line: 705, column: 47, scope: !3611)
!3617 = !DILocation(line: 705, column: 65, scope: !3611)
!3618 = !DILocation(line: 706, column: 11, scope: !3611)
!3619 = !DILocation(line: 702, column: 11, scope: !3184)
!3620 = !DILocation(line: 395, column: 15, scope: !3182)
!3621 = !DILocation(line: 709, column: 5, scope: !3184)
!3622 = !DILocation(line: 710, column: 7, scope: !3623)
!3623 = distinct !DILexicalBlock(scope: !3184, file: !806, line: 710, column: 7)
!3624 = !DILocation(line: 710, column: 7, scope: !3625)
!3625 = distinct !DILexicalBlock(scope: !3623, file: !806, line: 710, column: 7)
!3626 = !DILocation(line: 710, column: 7, scope: !3627)
!3627 = distinct !DILexicalBlock(scope: !3628, file: !806, line: 710, column: 7)
!3628 = distinct !DILexicalBlock(scope: !3629, file: !806, line: 710, column: 7)
!3629 = distinct !DILexicalBlock(scope: !3625, file: !806, line: 710, column: 7)
!3630 = !DILocation(line: 710, column: 7, scope: !3628)
!3631 = !DILocation(line: 710, column: 7, scope: !3632)
!3632 = distinct !DILexicalBlock(scope: !3633, file: !806, line: 710, column: 7)
!3633 = distinct !DILexicalBlock(scope: !3629, file: !806, line: 710, column: 7)
!3634 = !DILocation(line: 710, column: 7, scope: !3633)
!3635 = !DILocation(line: 710, column: 7, scope: !3636)
!3636 = distinct !DILexicalBlock(scope: !3637, file: !806, line: 710, column: 7)
!3637 = distinct !DILexicalBlock(scope: !3629, file: !806, line: 710, column: 7)
!3638 = !DILocation(line: 710, column: 7, scope: !3637)
!3639 = !DILocation(line: 710, column: 7, scope: !3629)
!3640 = !DILocation(line: 710, column: 7, scope: !3641)
!3641 = distinct !DILexicalBlock(scope: !3642, file: !806, line: 710, column: 7)
!3642 = distinct !DILexicalBlock(scope: !3623, file: !806, line: 710, column: 7)
!3643 = !DILocation(line: 710, column: 7, scope: !3642)
!3644 = !DILocation(line: 712, column: 5, scope: !3184)
!3645 = !DILocation(line: 713, column: 7, scope: !3646)
!3646 = distinct !DILexicalBlock(scope: !3647, file: !806, line: 713, column: 7)
!3647 = distinct !DILexicalBlock(scope: !3184, file: !806, line: 713, column: 7)
!3648 = !DILocation(line: 417, column: 21, scope: !3184)
!3649 = !DILocation(line: 713, column: 7, scope: !3650)
!3650 = distinct !DILexicalBlock(scope: !3651, file: !806, line: 713, column: 7)
!3651 = distinct !DILexicalBlock(scope: !3652, file: !806, line: 713, column: 7)
!3652 = distinct !DILexicalBlock(scope: !3646, file: !806, line: 713, column: 7)
!3653 = !DILocation(line: 713, column: 7, scope: !3651)
!3654 = !DILocation(line: 713, column: 7, scope: !3655)
!3655 = distinct !DILexicalBlock(scope: !3656, file: !806, line: 713, column: 7)
!3656 = distinct !DILexicalBlock(scope: !3652, file: !806, line: 713, column: 7)
!3657 = !DILocation(line: 713, column: 7, scope: !3656)
!3658 = !DILocation(line: 713, column: 7, scope: !3652)
!3659 = !DILocation(line: 714, column: 7, scope: !3660)
!3660 = distinct !DILexicalBlock(scope: !3661, file: !806, line: 714, column: 7)
!3661 = distinct !DILexicalBlock(scope: !3184, file: !806, line: 714, column: 7)
!3662 = !DILocation(line: 714, column: 7, scope: !3661)
!3663 = !DILocation(line: 716, column: 11, scope: !3184)
!3664 = !DILocation(line: 718, column: 5, scope: !3185)
!3665 = !DILocation(line: 395, column: 82, scope: !3185)
!3666 = !DILocation(line: 395, column: 3, scope: !3185)
!3667 = distinct !{!3667, !3315, !3668, !1216}
!3668 = !DILocation(line: 718, column: 5, scope: !3182)
!3669 = !DILocation(line: 720, column: 11, scope: !3670)
!3670 = distinct !DILexicalBlock(scope: !3151, file: !806, line: 720, column: 7)
!3671 = !DILocation(line: 720, column: 16, scope: !3670)
!3672 = !DILocation(line: 728, column: 51, scope: !3673)
!3673 = distinct !DILexicalBlock(scope: !3151, file: !806, line: 728, column: 7)
!3674 = !DILocation(line: 731, column: 11, scope: !3675)
!3675 = distinct !DILexicalBlock(scope: !3673, file: !806, line: 730, column: 5)
!3676 = !DILocation(line: 732, column: 16, scope: !3677)
!3677 = distinct !DILexicalBlock(scope: !3675, file: !806, line: 731, column: 11)
!3678 = !DILocation(line: 732, column: 9, scope: !3677)
!3679 = !DILocation(line: 736, column: 18, scope: !3680)
!3680 = distinct !DILexicalBlock(scope: !3677, file: !806, line: 736, column: 16)
!3681 = !DILocation(line: 736, column: 29, scope: !3680)
!3682 = !DILocation(line: 745, column: 7, scope: !3683)
!3683 = distinct !DILexicalBlock(scope: !3151, file: !806, line: 745, column: 7)
!3684 = !DILocation(line: 745, column: 20, scope: !3683)
!3685 = !DILocation(line: 746, column: 12, scope: !3686)
!3686 = distinct !DILexicalBlock(scope: !3687, file: !806, line: 746, column: 5)
!3687 = distinct !DILexicalBlock(scope: !3683, file: !806, line: 746, column: 5)
!3688 = !DILocation(line: 746, column: 5, scope: !3687)
!3689 = !DILocation(line: 747, column: 7, scope: !3690)
!3690 = distinct !DILexicalBlock(scope: !3691, file: !806, line: 747, column: 7)
!3691 = distinct !DILexicalBlock(scope: !3686, file: !806, line: 747, column: 7)
!3692 = !DILocation(line: 747, column: 7, scope: !3691)
!3693 = !DILocation(line: 746, column: 39, scope: !3686)
!3694 = distinct !{!3694, !3688, !3695, !1216}
!3695 = !DILocation(line: 747, column: 7, scope: !3687)
!3696 = !DILocation(line: 749, column: 11, scope: !3697)
!3697 = distinct !DILexicalBlock(scope: !3151, file: !806, line: 749, column: 7)
!3698 = !DILocation(line: 749, column: 7, scope: !3151)
!3699 = !DILocation(line: 750, column: 5, scope: !3697)
!3700 = !DILocation(line: 750, column: 17, scope: !3697)
!3701 = !DILocation(line: 756, column: 21, scope: !3527)
!3702 = !DILocation(line: 760, column: 42, scope: !3151)
!3703 = !DILocation(line: 758, column: 10, scope: !3151)
!3704 = !DILocation(line: 758, column: 3, scope: !3151)
!3705 = !DILocation(line: 762, column: 1, scope: !3151)
!3706 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1290, file: !1290, line: 98, type: !3707, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1154)
!3707 = !DISubroutineType(types: !3708)
!3708 = !{!163}
!3709 = !DISubprogram(name: "iswprint", scope: !3710, file: !3710, line: 120, type: !3513, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1154)
!3710 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!3711 = distinct !DISubprogram(name: "quotearg_alloc", scope: !806, file: !806, line: 788, type: !3712, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !827, retainedNodes: !3714)
!3712 = !DISubroutineType(types: !3713)
!3713 = !{!121, !171, !163, !3045}
!3714 = !{!3715, !3716, !3717}
!3715 = !DILocalVariable(name: "arg", arg: 1, scope: !3711, file: !806, line: 788, type: !171)
!3716 = !DILocalVariable(name: "argsize", arg: 2, scope: !3711, file: !806, line: 788, type: !163)
!3717 = !DILocalVariable(name: "o", arg: 3, scope: !3711, file: !806, line: 789, type: !3045)
!3718 = !DILocation(line: 0, scope: !3711)
!3719 = !DILocalVariable(name: "arg", arg: 1, scope: !3720, file: !806, line: 801, type: !171)
!3720 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !806, file: !806, line: 801, type: !3721, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !827, retainedNodes: !3723)
!3721 = !DISubroutineType(types: !3722)
!3722 = !{!121, !171, !163, !1048, !3045}
!3723 = !{!3719, !3724, !3725, !3726, !3727, !3728, !3729, !3730, !3731}
!3724 = !DILocalVariable(name: "argsize", arg: 2, scope: !3720, file: !806, line: 801, type: !163)
!3725 = !DILocalVariable(name: "size", arg: 3, scope: !3720, file: !806, line: 801, type: !1048)
!3726 = !DILocalVariable(name: "o", arg: 4, scope: !3720, file: !806, line: 802, type: !3045)
!3727 = !DILocalVariable(name: "p", scope: !3720, file: !806, line: 804, type: !3045)
!3728 = !DILocalVariable(name: "saved_errno", scope: !3720, file: !806, line: 805, type: !89)
!3729 = !DILocalVariable(name: "flags", scope: !3720, file: !806, line: 807, type: !89)
!3730 = !DILocalVariable(name: "bufsize", scope: !3720, file: !806, line: 808, type: !163)
!3731 = !DILocalVariable(name: "buf", scope: !3720, file: !806, line: 812, type: !121)
!3732 = !DILocation(line: 0, scope: !3720, inlinedAt: !3733)
!3733 = distinct !DILocation(line: 791, column: 10, scope: !3711)
!3734 = !DILocation(line: 804, column: 37, scope: !3720, inlinedAt: !3733)
!3735 = !DILocation(line: 805, column: 21, scope: !3720, inlinedAt: !3733)
!3736 = !DILocation(line: 807, column: 18, scope: !3720, inlinedAt: !3733)
!3737 = !DILocation(line: 807, column: 24, scope: !3720, inlinedAt: !3733)
!3738 = !DILocation(line: 808, column: 72, scope: !3720, inlinedAt: !3733)
!3739 = !DILocation(line: 809, column: 56, scope: !3720, inlinedAt: !3733)
!3740 = !DILocation(line: 810, column: 49, scope: !3720, inlinedAt: !3733)
!3741 = !DILocation(line: 811, column: 49, scope: !3720, inlinedAt: !3733)
!3742 = !DILocation(line: 808, column: 20, scope: !3720, inlinedAt: !3733)
!3743 = !DILocation(line: 811, column: 62, scope: !3720, inlinedAt: !3733)
!3744 = !DILocation(line: 812, column: 15, scope: !3720, inlinedAt: !3733)
!3745 = !DILocation(line: 813, column: 60, scope: !3720, inlinedAt: !3733)
!3746 = !DILocation(line: 815, column: 32, scope: !3720, inlinedAt: !3733)
!3747 = !DILocation(line: 815, column: 47, scope: !3720, inlinedAt: !3733)
!3748 = !DILocation(line: 813, column: 3, scope: !3720, inlinedAt: !3733)
!3749 = !DILocation(line: 816, column: 9, scope: !3720, inlinedAt: !3733)
!3750 = !DILocation(line: 791, column: 3, scope: !3711)
!3751 = !DILocation(line: 0, scope: !3720)
!3752 = !DILocation(line: 804, column: 37, scope: !3720)
!3753 = !DILocation(line: 805, column: 21, scope: !3720)
!3754 = !DILocation(line: 807, column: 18, scope: !3720)
!3755 = !DILocation(line: 807, column: 27, scope: !3720)
!3756 = !DILocation(line: 807, column: 24, scope: !3720)
!3757 = !DILocation(line: 808, column: 72, scope: !3720)
!3758 = !DILocation(line: 809, column: 56, scope: !3720)
!3759 = !DILocation(line: 810, column: 49, scope: !3720)
!3760 = !DILocation(line: 811, column: 49, scope: !3720)
!3761 = !DILocation(line: 808, column: 20, scope: !3720)
!3762 = !DILocation(line: 811, column: 62, scope: !3720)
!3763 = !DILocation(line: 812, column: 15, scope: !3720)
!3764 = !DILocation(line: 813, column: 60, scope: !3720)
!3765 = !DILocation(line: 815, column: 32, scope: !3720)
!3766 = !DILocation(line: 815, column: 47, scope: !3720)
!3767 = !DILocation(line: 813, column: 3, scope: !3720)
!3768 = !DILocation(line: 816, column: 9, scope: !3720)
!3769 = !DILocation(line: 817, column: 7, scope: !3720)
!3770 = !DILocation(line: 818, column: 11, scope: !3771)
!3771 = distinct !DILexicalBlock(scope: !3720, file: !806, line: 817, column: 7)
!3772 = !DILocation(line: 818, column: 5, scope: !3771)
!3773 = !DILocation(line: 819, column: 3, scope: !3720)
!3774 = distinct !DISubprogram(name: "quotearg_free", scope: !806, file: !806, line: 837, type: !746, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !827, retainedNodes: !3775)
!3775 = !{!3776, !3777}
!3776 = !DILocalVariable(name: "sv", scope: !3774, file: !806, line: 839, type: !890)
!3777 = !DILocalVariable(name: "i", scope: !3778, file: !806, line: 840, type: !89)
!3778 = distinct !DILexicalBlock(scope: !3774, file: !806, line: 840, column: 3)
!3779 = !DILocation(line: 839, column: 24, scope: !3774)
!3780 = !DILocation(line: 0, scope: !3774)
!3781 = !DILocation(line: 0, scope: !3778)
!3782 = !DILocation(line: 840, column: 21, scope: !3783)
!3783 = distinct !DILexicalBlock(scope: !3778, file: !806, line: 840, column: 3)
!3784 = !DILocation(line: 840, column: 3, scope: !3778)
!3785 = !DILocation(line: 842, column: 13, scope: !3786)
!3786 = distinct !DILexicalBlock(scope: !3774, file: !806, line: 842, column: 7)
!3787 = !{!3788, !1105, i64 8}
!3788 = !{!"slotvec", !1472, i64 0, !1105, i64 8}
!3789 = !DILocation(line: 842, column: 17, scope: !3786)
!3790 = !DILocation(line: 842, column: 7, scope: !3774)
!3791 = !DILocation(line: 841, column: 17, scope: !3783)
!3792 = !DILocation(line: 841, column: 5, scope: !3783)
!3793 = !DILocation(line: 840, column: 32, scope: !3783)
!3794 = distinct !{!3794, !3784, !3795, !1216}
!3795 = !DILocation(line: 841, column: 20, scope: !3778)
!3796 = !DILocation(line: 844, column: 7, scope: !3797)
!3797 = distinct !DILexicalBlock(scope: !3786, file: !806, line: 843, column: 5)
!3798 = !DILocation(line: 845, column: 21, scope: !3797)
!3799 = !{!3788, !1472, i64 0}
!3800 = !DILocation(line: 846, column: 20, scope: !3797)
!3801 = !DILocation(line: 847, column: 5, scope: !3797)
!3802 = !DILocation(line: 848, column: 10, scope: !3803)
!3803 = distinct !DILexicalBlock(scope: !3774, file: !806, line: 848, column: 7)
!3804 = !DILocation(line: 848, column: 7, scope: !3774)
!3805 = !DILocation(line: 850, column: 7, scope: !3806)
!3806 = distinct !DILexicalBlock(scope: !3803, file: !806, line: 849, column: 5)
!3807 = !DILocation(line: 851, column: 15, scope: !3806)
!3808 = !DILocation(line: 852, column: 5, scope: !3806)
!3809 = !DILocation(line: 853, column: 10, scope: !3774)
!3810 = !DILocation(line: 854, column: 1, scope: !3774)
!3811 = distinct !DISubprogram(name: "quotearg_n", scope: !806, file: !806, line: 919, type: !1283, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !827, retainedNodes: !3812)
!3812 = !{!3813, !3814}
!3813 = !DILocalVariable(name: "n", arg: 1, scope: !3811, file: !806, line: 919, type: !89)
!3814 = !DILocalVariable(name: "arg", arg: 2, scope: !3811, file: !806, line: 919, type: !171)
!3815 = !DILocation(line: 0, scope: !3811)
!3816 = !DILocation(line: 921, column: 10, scope: !3811)
!3817 = !DILocation(line: 921, column: 3, scope: !3811)
!3818 = distinct !DISubprogram(name: "quotearg_n_options", scope: !806, file: !806, line: 866, type: !3819, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !827, retainedNodes: !3821)
!3819 = !DISubroutineType(types: !3820)
!3820 = !{!121, !89, !171, !163, !3045}
!3821 = !{!3822, !3823, !3824, !3825, !3826, !3827, !3828, !3829, !3832, !3833, !3835, !3836, !3837}
!3822 = !DILocalVariable(name: "n", arg: 1, scope: !3818, file: !806, line: 866, type: !89)
!3823 = !DILocalVariable(name: "arg", arg: 2, scope: !3818, file: !806, line: 866, type: !171)
!3824 = !DILocalVariable(name: "argsize", arg: 3, scope: !3818, file: !806, line: 866, type: !163)
!3825 = !DILocalVariable(name: "options", arg: 4, scope: !3818, file: !806, line: 867, type: !3045)
!3826 = !DILocalVariable(name: "saved_errno", scope: !3818, file: !806, line: 869, type: !89)
!3827 = !DILocalVariable(name: "sv", scope: !3818, file: !806, line: 871, type: !890)
!3828 = !DILocalVariable(name: "nslots_max", scope: !3818, file: !806, line: 873, type: !89)
!3829 = !DILocalVariable(name: "preallocated", scope: !3830, file: !806, line: 879, type: !112)
!3830 = distinct !DILexicalBlock(scope: !3831, file: !806, line: 878, column: 5)
!3831 = distinct !DILexicalBlock(scope: !3818, file: !806, line: 877, column: 7)
!3832 = !DILocalVariable(name: "new_nslots", scope: !3830, file: !806, line: 880, type: !177)
!3833 = !DILocalVariable(name: "size", scope: !3834, file: !806, line: 891, type: !163)
!3834 = distinct !DILexicalBlock(scope: !3818, file: !806, line: 890, column: 3)
!3835 = !DILocalVariable(name: "val", scope: !3834, file: !806, line: 892, type: !121)
!3836 = !DILocalVariable(name: "flags", scope: !3834, file: !806, line: 894, type: !89)
!3837 = !DILocalVariable(name: "qsize", scope: !3834, file: !806, line: 895, type: !163)
!3838 = !DILocation(line: 0, scope: !3818)
!3839 = !DILocation(line: 869, column: 21, scope: !3818)
!3840 = !DILocation(line: 871, column: 24, scope: !3818)
!3841 = !DILocation(line: 874, column: 17, scope: !3842)
!3842 = distinct !DILexicalBlock(scope: !3818, file: !806, line: 874, column: 7)
!3843 = !DILocation(line: 875, column: 5, scope: !3842)
!3844 = !DILocation(line: 877, column: 7, scope: !3831)
!3845 = !DILocation(line: 877, column: 14, scope: !3831)
!3846 = !DILocation(line: 877, column: 7, scope: !3818)
!3847 = !DILocation(line: 879, column: 31, scope: !3830)
!3848 = !DILocation(line: 0, scope: !3830)
!3849 = !DILocation(line: 880, column: 7, scope: !3830)
!3850 = !DILocation(line: 880, column: 26, scope: !3830)
!3851 = !DILocation(line: 880, column: 13, scope: !3830)
!3852 = !DILocation(line: 882, column: 31, scope: !3830)
!3853 = !DILocation(line: 883, column: 33, scope: !3830)
!3854 = !DILocation(line: 883, column: 42, scope: !3830)
!3855 = !DILocation(line: 883, column: 31, scope: !3830)
!3856 = !DILocation(line: 882, column: 22, scope: !3830)
!3857 = !DILocation(line: 882, column: 15, scope: !3830)
!3858 = !DILocation(line: 884, column: 11, scope: !3830)
!3859 = !DILocation(line: 885, column: 15, scope: !3860)
!3860 = distinct !DILexicalBlock(scope: !3830, file: !806, line: 884, column: 11)
!3861 = !{i64 0, i64 8, !1517, i64 8, i64 8, !1104}
!3862 = !DILocation(line: 885, column: 9, scope: !3860)
!3863 = !DILocation(line: 886, column: 20, scope: !3830)
!3864 = !DILocation(line: 886, column: 18, scope: !3830)
!3865 = !DILocation(line: 886, column: 32, scope: !3830)
!3866 = !DILocation(line: 886, column: 43, scope: !3830)
!3867 = !DILocation(line: 886, column: 53, scope: !3830)
!3868 = !DILocation(line: 0, scope: !3254, inlinedAt: !3869)
!3869 = distinct !DILocation(line: 886, column: 7, scope: !3830)
!3870 = !DILocation(line: 59, column: 10, scope: !3254, inlinedAt: !3869)
!3871 = !DILocation(line: 887, column: 16, scope: !3830)
!3872 = !DILocation(line: 887, column: 14, scope: !3830)
!3873 = !DILocation(line: 888, column: 5, scope: !3831)
!3874 = !DILocation(line: 888, column: 5, scope: !3830)
!3875 = !DILocation(line: 891, column: 19, scope: !3834)
!3876 = !DILocation(line: 891, column: 25, scope: !3834)
!3877 = !DILocation(line: 0, scope: !3834)
!3878 = !DILocation(line: 892, column: 23, scope: !3834)
!3879 = !DILocation(line: 894, column: 26, scope: !3834)
!3880 = !DILocation(line: 894, column: 32, scope: !3834)
!3881 = !DILocation(line: 896, column: 55, scope: !3834)
!3882 = !DILocation(line: 897, column: 55, scope: !3834)
!3883 = !DILocation(line: 898, column: 55, scope: !3834)
!3884 = !DILocation(line: 899, column: 55, scope: !3834)
!3885 = !DILocation(line: 895, column: 20, scope: !3834)
!3886 = !DILocation(line: 901, column: 14, scope: !3887)
!3887 = distinct !DILexicalBlock(scope: !3834, file: !806, line: 901, column: 9)
!3888 = !DILocation(line: 901, column: 9, scope: !3834)
!3889 = !DILocation(line: 903, column: 35, scope: !3890)
!3890 = distinct !DILexicalBlock(scope: !3887, file: !806, line: 902, column: 7)
!3891 = !DILocation(line: 903, column: 20, scope: !3890)
!3892 = !DILocation(line: 904, column: 17, scope: !3893)
!3893 = distinct !DILexicalBlock(scope: !3890, file: !806, line: 904, column: 13)
!3894 = !DILocation(line: 904, column: 13, scope: !3890)
!3895 = !DILocation(line: 905, column: 11, scope: !3893)
!3896 = !DILocation(line: 906, column: 27, scope: !3890)
!3897 = !DILocation(line: 906, column: 19, scope: !3890)
!3898 = !DILocation(line: 907, column: 69, scope: !3890)
!3899 = !DILocation(line: 909, column: 44, scope: !3890)
!3900 = !DILocation(line: 910, column: 44, scope: !3890)
!3901 = !DILocation(line: 907, column: 9, scope: !3890)
!3902 = !DILocation(line: 911, column: 7, scope: !3890)
!3903 = !DILocation(line: 913, column: 11, scope: !3834)
!3904 = !DILocation(line: 914, column: 5, scope: !3834)
!3905 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !806, file: !806, line: 925, type: !3906, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !827, retainedNodes: !3908)
!3906 = !DISubroutineType(types: !3907)
!3907 = !{!121, !89, !171, !163}
!3908 = !{!3909, !3910, !3911}
!3909 = !DILocalVariable(name: "n", arg: 1, scope: !3905, file: !806, line: 925, type: !89)
!3910 = !DILocalVariable(name: "arg", arg: 2, scope: !3905, file: !806, line: 925, type: !171)
!3911 = !DILocalVariable(name: "argsize", arg: 3, scope: !3905, file: !806, line: 925, type: !163)
!3912 = !DILocation(line: 0, scope: !3905)
!3913 = !DILocation(line: 927, column: 10, scope: !3905)
!3914 = !DILocation(line: 927, column: 3, scope: !3905)
!3915 = distinct !DISubprogram(name: "quotearg", scope: !806, file: !806, line: 931, type: !1292, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !827, retainedNodes: !3916)
!3916 = !{!3917}
!3917 = !DILocalVariable(name: "arg", arg: 1, scope: !3915, file: !806, line: 931, type: !171)
!3918 = !DILocation(line: 0, scope: !3915)
!3919 = !DILocation(line: 0, scope: !3811, inlinedAt: !3920)
!3920 = distinct !DILocation(line: 933, column: 10, scope: !3915)
!3921 = !DILocation(line: 921, column: 10, scope: !3811, inlinedAt: !3920)
!3922 = !DILocation(line: 933, column: 3, scope: !3915)
!3923 = distinct !DISubprogram(name: "quotearg_mem", scope: !806, file: !806, line: 937, type: !3924, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !827, retainedNodes: !3926)
!3924 = !DISubroutineType(types: !3925)
!3925 = !{!121, !171, !163}
!3926 = !{!3927, !3928}
!3927 = !DILocalVariable(name: "arg", arg: 1, scope: !3923, file: !806, line: 937, type: !171)
!3928 = !DILocalVariable(name: "argsize", arg: 2, scope: !3923, file: !806, line: 937, type: !163)
!3929 = !DILocation(line: 0, scope: !3923)
!3930 = !DILocation(line: 0, scope: !3905, inlinedAt: !3931)
!3931 = distinct !DILocation(line: 939, column: 10, scope: !3923)
!3932 = !DILocation(line: 927, column: 10, scope: !3905, inlinedAt: !3931)
!3933 = !DILocation(line: 939, column: 3, scope: !3923)
!3934 = distinct !DISubprogram(name: "quotearg_n_style", scope: !806, file: !806, line: 943, type: !3935, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !827, retainedNodes: !3937)
!3935 = !DISubroutineType(types: !3936)
!3936 = !{!121, !89, !207, !171}
!3937 = !{!3938, !3939, !3940, !3941}
!3938 = !DILocalVariable(name: "n", arg: 1, scope: !3934, file: !806, line: 943, type: !89)
!3939 = !DILocalVariable(name: "s", arg: 2, scope: !3934, file: !806, line: 943, type: !207)
!3940 = !DILocalVariable(name: "arg", arg: 3, scope: !3934, file: !806, line: 943, type: !171)
!3941 = !DILocalVariable(name: "o", scope: !3934, file: !806, line: 945, type: !3046)
!3942 = !DILocation(line: 0, scope: !3934)
!3943 = !DILocation(line: 945, column: 3, scope: !3934)
!3944 = !DILocation(line: 945, column: 32, scope: !3934)
!3945 = !{!3946}
!3946 = distinct !{!3946, !3947, !"quoting_options_from_style: argument 0"}
!3947 = distinct !{!3947, !"quoting_options_from_style"}
!3948 = !DILocation(line: 945, column: 36, scope: !3934)
!3949 = !DILocalVariable(name: "style", arg: 1, scope: !3950, file: !806, line: 183, type: !207)
!3950 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !806, file: !806, line: 183, type: !3951, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !827, retainedNodes: !3953)
!3951 = !DISubroutineType(types: !3952)
!3952 = !{!842, !207}
!3953 = !{!3949, !3954}
!3954 = !DILocalVariable(name: "o", scope: !3950, file: !806, line: 185, type: !842)
!3955 = !DILocation(line: 0, scope: !3950, inlinedAt: !3956)
!3956 = distinct !DILocation(line: 945, column: 36, scope: !3934)
!3957 = !DILocation(line: 185, column: 26, scope: !3950, inlinedAt: !3956)
!3958 = !DILocation(line: 186, column: 13, scope: !3959, inlinedAt: !3956)
!3959 = distinct !DILexicalBlock(scope: !3950, file: !806, line: 186, column: 7)
!3960 = !DILocation(line: 186, column: 7, scope: !3950, inlinedAt: !3956)
!3961 = !DILocation(line: 187, column: 5, scope: !3959, inlinedAt: !3956)
!3962 = !DILocation(line: 188, column: 11, scope: !3950, inlinedAt: !3956)
!3963 = !DILocation(line: 946, column: 10, scope: !3934)
!3964 = !DILocation(line: 947, column: 1, scope: !3934)
!3965 = !DILocation(line: 946, column: 3, scope: !3934)
!3966 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !806, file: !806, line: 950, type: !3967, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !827, retainedNodes: !3969)
!3967 = !DISubroutineType(types: !3968)
!3968 = !{!121, !89, !207, !171, !163}
!3969 = !{!3970, !3971, !3972, !3973, !3974}
!3970 = !DILocalVariable(name: "n", arg: 1, scope: !3966, file: !806, line: 950, type: !89)
!3971 = !DILocalVariable(name: "s", arg: 2, scope: !3966, file: !806, line: 950, type: !207)
!3972 = !DILocalVariable(name: "arg", arg: 3, scope: !3966, file: !806, line: 951, type: !171)
!3973 = !DILocalVariable(name: "argsize", arg: 4, scope: !3966, file: !806, line: 951, type: !163)
!3974 = !DILocalVariable(name: "o", scope: !3966, file: !806, line: 953, type: !3046)
!3975 = !DILocation(line: 0, scope: !3966)
!3976 = !DILocation(line: 953, column: 3, scope: !3966)
!3977 = !DILocation(line: 953, column: 32, scope: !3966)
!3978 = !{!3979}
!3979 = distinct !{!3979, !3980, !"quoting_options_from_style: argument 0"}
!3980 = distinct !{!3980, !"quoting_options_from_style"}
!3981 = !DILocation(line: 953, column: 36, scope: !3966)
!3982 = !DILocation(line: 0, scope: !3950, inlinedAt: !3983)
!3983 = distinct !DILocation(line: 953, column: 36, scope: !3966)
!3984 = !DILocation(line: 185, column: 26, scope: !3950, inlinedAt: !3983)
!3985 = !DILocation(line: 186, column: 13, scope: !3959, inlinedAt: !3983)
!3986 = !DILocation(line: 186, column: 7, scope: !3950, inlinedAt: !3983)
!3987 = !DILocation(line: 187, column: 5, scope: !3959, inlinedAt: !3983)
!3988 = !DILocation(line: 188, column: 11, scope: !3950, inlinedAt: !3983)
!3989 = !DILocation(line: 954, column: 10, scope: !3966)
!3990 = !DILocation(line: 955, column: 1, scope: !3966)
!3991 = !DILocation(line: 954, column: 3, scope: !3966)
!3992 = distinct !DISubprogram(name: "quotearg_style", scope: !806, file: !806, line: 958, type: !3993, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !827, retainedNodes: !3995)
!3993 = !DISubroutineType(types: !3994)
!3994 = !{!121, !207, !171}
!3995 = !{!3996, !3997}
!3996 = !DILocalVariable(name: "s", arg: 1, scope: !3992, file: !806, line: 958, type: !207)
!3997 = !DILocalVariable(name: "arg", arg: 2, scope: !3992, file: !806, line: 958, type: !171)
!3998 = !DILocation(line: 0, scope: !3992)
!3999 = !DILocation(line: 0, scope: !3934, inlinedAt: !4000)
!4000 = distinct !DILocation(line: 960, column: 10, scope: !3992)
!4001 = !DILocation(line: 945, column: 3, scope: !3934, inlinedAt: !4000)
!4002 = !DILocation(line: 945, column: 32, scope: !3934, inlinedAt: !4000)
!4003 = !{!4004}
!4004 = distinct !{!4004, !4005, !"quoting_options_from_style: argument 0"}
!4005 = distinct !{!4005, !"quoting_options_from_style"}
!4006 = !DILocation(line: 945, column: 36, scope: !3934, inlinedAt: !4000)
!4007 = !DILocation(line: 0, scope: !3950, inlinedAt: !4008)
!4008 = distinct !DILocation(line: 945, column: 36, scope: !3934, inlinedAt: !4000)
!4009 = !DILocation(line: 185, column: 26, scope: !3950, inlinedAt: !4008)
!4010 = !DILocation(line: 186, column: 13, scope: !3959, inlinedAt: !4008)
!4011 = !DILocation(line: 186, column: 7, scope: !3950, inlinedAt: !4008)
!4012 = !DILocation(line: 187, column: 5, scope: !3959, inlinedAt: !4008)
!4013 = !DILocation(line: 188, column: 11, scope: !3950, inlinedAt: !4008)
!4014 = !DILocation(line: 946, column: 10, scope: !3934, inlinedAt: !4000)
!4015 = !DILocation(line: 947, column: 1, scope: !3934, inlinedAt: !4000)
!4016 = !DILocation(line: 960, column: 3, scope: !3992)
!4017 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !806, file: !806, line: 964, type: !4018, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !827, retainedNodes: !4020)
!4018 = !DISubroutineType(types: !4019)
!4019 = !{!121, !207, !171, !163}
!4020 = !{!4021, !4022, !4023}
!4021 = !DILocalVariable(name: "s", arg: 1, scope: !4017, file: !806, line: 964, type: !207)
!4022 = !DILocalVariable(name: "arg", arg: 2, scope: !4017, file: !806, line: 964, type: !171)
!4023 = !DILocalVariable(name: "argsize", arg: 3, scope: !4017, file: !806, line: 964, type: !163)
!4024 = !DILocation(line: 0, scope: !4017)
!4025 = !DILocation(line: 0, scope: !3966, inlinedAt: !4026)
!4026 = distinct !DILocation(line: 966, column: 10, scope: !4017)
!4027 = !DILocation(line: 953, column: 3, scope: !3966, inlinedAt: !4026)
!4028 = !DILocation(line: 953, column: 32, scope: !3966, inlinedAt: !4026)
!4029 = !{!4030}
!4030 = distinct !{!4030, !4031, !"quoting_options_from_style: argument 0"}
!4031 = distinct !{!4031, !"quoting_options_from_style"}
!4032 = !DILocation(line: 953, column: 36, scope: !3966, inlinedAt: !4026)
!4033 = !DILocation(line: 0, scope: !3950, inlinedAt: !4034)
!4034 = distinct !DILocation(line: 953, column: 36, scope: !3966, inlinedAt: !4026)
!4035 = !DILocation(line: 185, column: 26, scope: !3950, inlinedAt: !4034)
!4036 = !DILocation(line: 186, column: 13, scope: !3959, inlinedAt: !4034)
!4037 = !DILocation(line: 186, column: 7, scope: !3950, inlinedAt: !4034)
!4038 = !DILocation(line: 187, column: 5, scope: !3959, inlinedAt: !4034)
!4039 = !DILocation(line: 188, column: 11, scope: !3950, inlinedAt: !4034)
!4040 = !DILocation(line: 954, column: 10, scope: !3966, inlinedAt: !4026)
!4041 = !DILocation(line: 955, column: 1, scope: !3966, inlinedAt: !4026)
!4042 = !DILocation(line: 966, column: 3, scope: !4017)
!4043 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !806, file: !806, line: 970, type: !4044, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !827, retainedNodes: !4046)
!4044 = !DISubroutineType(types: !4045)
!4045 = !{!121, !171, !163, !4}
!4046 = !{!4047, !4048, !4049, !4050}
!4047 = !DILocalVariable(name: "arg", arg: 1, scope: !4043, file: !806, line: 970, type: !171)
!4048 = !DILocalVariable(name: "argsize", arg: 2, scope: !4043, file: !806, line: 970, type: !163)
!4049 = !DILocalVariable(name: "ch", arg: 3, scope: !4043, file: !806, line: 970, type: !4)
!4050 = !DILocalVariable(name: "options", scope: !4043, file: !806, line: 972, type: !842)
!4051 = !DILocation(line: 0, scope: !4043)
!4052 = !DILocation(line: 972, column: 3, scope: !4043)
!4053 = !DILocation(line: 972, column: 26, scope: !4043)
!4054 = !DILocation(line: 973, column: 13, scope: !4043)
!4055 = !{i64 0, i64 4, !1178, i64 4, i64 4, !1169, i64 8, i64 32, !1178, i64 40, i64 8, !1104, i64 48, i64 8, !1104}
!4056 = !DILocation(line: 0, scope: !3065, inlinedAt: !4057)
!4057 = distinct !DILocation(line: 974, column: 3, scope: !4043)
!4058 = !DILocation(line: 147, column: 41, scope: !3065, inlinedAt: !4057)
!4059 = !DILocation(line: 147, column: 62, scope: !3065, inlinedAt: !4057)
!4060 = !DILocation(line: 147, column: 57, scope: !3065, inlinedAt: !4057)
!4061 = !DILocation(line: 148, column: 15, scope: !3065, inlinedAt: !4057)
!4062 = !DILocation(line: 149, column: 21, scope: !3065, inlinedAt: !4057)
!4063 = !DILocation(line: 149, column: 24, scope: !3065, inlinedAt: !4057)
!4064 = !DILocation(line: 150, column: 19, scope: !3065, inlinedAt: !4057)
!4065 = !DILocation(line: 150, column: 24, scope: !3065, inlinedAt: !4057)
!4066 = !DILocation(line: 150, column: 6, scope: !3065, inlinedAt: !4057)
!4067 = !DILocation(line: 975, column: 10, scope: !4043)
!4068 = !DILocation(line: 976, column: 1, scope: !4043)
!4069 = !DILocation(line: 975, column: 3, scope: !4043)
!4070 = distinct !DISubprogram(name: "quotearg_char", scope: !806, file: !806, line: 979, type: !4071, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !827, retainedNodes: !4073)
!4071 = !DISubroutineType(types: !4072)
!4072 = !{!121, !171, !4}
!4073 = !{!4074, !4075}
!4074 = !DILocalVariable(name: "arg", arg: 1, scope: !4070, file: !806, line: 979, type: !171)
!4075 = !DILocalVariable(name: "ch", arg: 2, scope: !4070, file: !806, line: 979, type: !4)
!4076 = !DILocation(line: 0, scope: !4070)
!4077 = !DILocation(line: 0, scope: !4043, inlinedAt: !4078)
!4078 = distinct !DILocation(line: 981, column: 10, scope: !4070)
!4079 = !DILocation(line: 972, column: 3, scope: !4043, inlinedAt: !4078)
!4080 = !DILocation(line: 972, column: 26, scope: !4043, inlinedAt: !4078)
!4081 = !DILocation(line: 973, column: 13, scope: !4043, inlinedAt: !4078)
!4082 = !DILocation(line: 0, scope: !3065, inlinedAt: !4083)
!4083 = distinct !DILocation(line: 974, column: 3, scope: !4043, inlinedAt: !4078)
!4084 = !DILocation(line: 147, column: 41, scope: !3065, inlinedAt: !4083)
!4085 = !DILocation(line: 147, column: 62, scope: !3065, inlinedAt: !4083)
!4086 = !DILocation(line: 147, column: 57, scope: !3065, inlinedAt: !4083)
!4087 = !DILocation(line: 148, column: 15, scope: !3065, inlinedAt: !4083)
!4088 = !DILocation(line: 149, column: 21, scope: !3065, inlinedAt: !4083)
!4089 = !DILocation(line: 149, column: 24, scope: !3065, inlinedAt: !4083)
!4090 = !DILocation(line: 150, column: 19, scope: !3065, inlinedAt: !4083)
!4091 = !DILocation(line: 150, column: 24, scope: !3065, inlinedAt: !4083)
!4092 = !DILocation(line: 150, column: 6, scope: !3065, inlinedAt: !4083)
!4093 = !DILocation(line: 975, column: 10, scope: !4043, inlinedAt: !4078)
!4094 = !DILocation(line: 976, column: 1, scope: !4043, inlinedAt: !4078)
!4095 = !DILocation(line: 981, column: 3, scope: !4070)
!4096 = distinct !DISubprogram(name: "quotearg_colon", scope: !806, file: !806, line: 985, type: !1292, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !827, retainedNodes: !4097)
!4097 = !{!4098}
!4098 = !DILocalVariable(name: "arg", arg: 1, scope: !4096, file: !806, line: 985, type: !171)
!4099 = !DILocation(line: 0, scope: !4096)
!4100 = !DILocation(line: 0, scope: !4070, inlinedAt: !4101)
!4101 = distinct !DILocation(line: 987, column: 10, scope: !4096)
!4102 = !DILocation(line: 0, scope: !4043, inlinedAt: !4103)
!4103 = distinct !DILocation(line: 981, column: 10, scope: !4070, inlinedAt: !4101)
!4104 = !DILocation(line: 972, column: 3, scope: !4043, inlinedAt: !4103)
!4105 = !DILocation(line: 972, column: 26, scope: !4043, inlinedAt: !4103)
!4106 = !DILocation(line: 973, column: 13, scope: !4043, inlinedAt: !4103)
!4107 = !DILocation(line: 0, scope: !3065, inlinedAt: !4108)
!4108 = distinct !DILocation(line: 974, column: 3, scope: !4043, inlinedAt: !4103)
!4109 = !DILocation(line: 147, column: 57, scope: !3065, inlinedAt: !4108)
!4110 = !DILocation(line: 149, column: 21, scope: !3065, inlinedAt: !4108)
!4111 = !DILocation(line: 150, column: 6, scope: !3065, inlinedAt: !4108)
!4112 = !DILocation(line: 975, column: 10, scope: !4043, inlinedAt: !4103)
!4113 = !DILocation(line: 976, column: 1, scope: !4043, inlinedAt: !4103)
!4114 = !DILocation(line: 987, column: 3, scope: !4096)
!4115 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !806, file: !806, line: 991, type: !3924, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !827, retainedNodes: !4116)
!4116 = !{!4117, !4118}
!4117 = !DILocalVariable(name: "arg", arg: 1, scope: !4115, file: !806, line: 991, type: !171)
!4118 = !DILocalVariable(name: "argsize", arg: 2, scope: !4115, file: !806, line: 991, type: !163)
!4119 = !DILocation(line: 0, scope: !4115)
!4120 = !DILocation(line: 0, scope: !4043, inlinedAt: !4121)
!4121 = distinct !DILocation(line: 993, column: 10, scope: !4115)
!4122 = !DILocation(line: 972, column: 3, scope: !4043, inlinedAt: !4121)
!4123 = !DILocation(line: 972, column: 26, scope: !4043, inlinedAt: !4121)
!4124 = !DILocation(line: 973, column: 13, scope: !4043, inlinedAt: !4121)
!4125 = !DILocation(line: 0, scope: !3065, inlinedAt: !4126)
!4126 = distinct !DILocation(line: 974, column: 3, scope: !4043, inlinedAt: !4121)
!4127 = !DILocation(line: 147, column: 57, scope: !3065, inlinedAt: !4126)
!4128 = !DILocation(line: 149, column: 21, scope: !3065, inlinedAt: !4126)
!4129 = !DILocation(line: 150, column: 6, scope: !3065, inlinedAt: !4126)
!4130 = !DILocation(line: 975, column: 10, scope: !4043, inlinedAt: !4121)
!4131 = !DILocation(line: 976, column: 1, scope: !4043, inlinedAt: !4121)
!4132 = !DILocation(line: 993, column: 3, scope: !4115)
!4133 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !806, file: !806, line: 997, type: !3935, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !827, retainedNodes: !4134)
!4134 = !{!4135, !4136, !4137, !4138}
!4135 = !DILocalVariable(name: "n", arg: 1, scope: !4133, file: !806, line: 997, type: !89)
!4136 = !DILocalVariable(name: "s", arg: 2, scope: !4133, file: !806, line: 997, type: !207)
!4137 = !DILocalVariable(name: "arg", arg: 3, scope: !4133, file: !806, line: 997, type: !171)
!4138 = !DILocalVariable(name: "options", scope: !4133, file: !806, line: 999, type: !842)
!4139 = !DILocation(line: 185, column: 26, scope: !3950, inlinedAt: !4140)
!4140 = distinct !DILocation(line: 1000, column: 13, scope: !4133)
!4141 = !DILocation(line: 0, scope: !4133)
!4142 = !DILocation(line: 999, column: 3, scope: !4133)
!4143 = !DILocation(line: 999, column: 26, scope: !4133)
!4144 = !DILocation(line: 0, scope: !3950, inlinedAt: !4140)
!4145 = !DILocation(line: 186, column: 13, scope: !3959, inlinedAt: !4140)
!4146 = !DILocation(line: 186, column: 7, scope: !3950, inlinedAt: !4140)
!4147 = !DILocation(line: 187, column: 5, scope: !3959, inlinedAt: !4140)
!4148 = !{!4149}
!4149 = distinct !{!4149, !4150, !"quoting_options_from_style: argument 0"}
!4150 = distinct !{!4150, !"quoting_options_from_style"}
!4151 = !DILocation(line: 1000, column: 13, scope: !4133)
!4152 = !DILocation(line: 0, scope: !3065, inlinedAt: !4153)
!4153 = distinct !DILocation(line: 1001, column: 3, scope: !4133)
!4154 = !DILocation(line: 147, column: 57, scope: !3065, inlinedAt: !4153)
!4155 = !DILocation(line: 149, column: 21, scope: !3065, inlinedAt: !4153)
!4156 = !DILocation(line: 150, column: 6, scope: !3065, inlinedAt: !4153)
!4157 = !DILocation(line: 1002, column: 10, scope: !4133)
!4158 = !DILocation(line: 1003, column: 1, scope: !4133)
!4159 = !DILocation(line: 1002, column: 3, scope: !4133)
!4160 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !806, file: !806, line: 1006, type: !4161, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !827, retainedNodes: !4163)
!4161 = !DISubroutineType(types: !4162)
!4162 = !{!121, !89, !171, !171, !171}
!4163 = !{!4164, !4165, !4166, !4167}
!4164 = !DILocalVariable(name: "n", arg: 1, scope: !4160, file: !806, line: 1006, type: !89)
!4165 = !DILocalVariable(name: "left_quote", arg: 2, scope: !4160, file: !806, line: 1006, type: !171)
!4166 = !DILocalVariable(name: "right_quote", arg: 3, scope: !4160, file: !806, line: 1007, type: !171)
!4167 = !DILocalVariable(name: "arg", arg: 4, scope: !4160, file: !806, line: 1007, type: !171)
!4168 = !DILocation(line: 0, scope: !4160)
!4169 = !DILocalVariable(name: "n", arg: 1, scope: !4170, file: !806, line: 1014, type: !89)
!4170 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !806, file: !806, line: 1014, type: !4171, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !827, retainedNodes: !4173)
!4171 = !DISubroutineType(types: !4172)
!4172 = !{!121, !89, !171, !171, !171, !163}
!4173 = !{!4169, !4174, !4175, !4176, !4177, !4178}
!4174 = !DILocalVariable(name: "left_quote", arg: 2, scope: !4170, file: !806, line: 1014, type: !171)
!4175 = !DILocalVariable(name: "right_quote", arg: 3, scope: !4170, file: !806, line: 1015, type: !171)
!4176 = !DILocalVariable(name: "arg", arg: 4, scope: !4170, file: !806, line: 1016, type: !171)
!4177 = !DILocalVariable(name: "argsize", arg: 5, scope: !4170, file: !806, line: 1016, type: !163)
!4178 = !DILocalVariable(name: "o", scope: !4170, file: !806, line: 1018, type: !842)
!4179 = !DILocation(line: 0, scope: !4170, inlinedAt: !4180)
!4180 = distinct !DILocation(line: 1009, column: 10, scope: !4160)
!4181 = !DILocation(line: 1018, column: 3, scope: !4170, inlinedAt: !4180)
!4182 = !DILocation(line: 1018, column: 26, scope: !4170, inlinedAt: !4180)
!4183 = !DILocation(line: 1018, column: 30, scope: !4170, inlinedAt: !4180)
!4184 = !DILocation(line: 0, scope: !3105, inlinedAt: !4185)
!4185 = distinct !DILocation(line: 1019, column: 3, scope: !4170, inlinedAt: !4180)
!4186 = !DILocation(line: 174, column: 12, scope: !3105, inlinedAt: !4185)
!4187 = !DILocation(line: 175, column: 8, scope: !3118, inlinedAt: !4185)
!4188 = !DILocation(line: 175, column: 19, scope: !3118, inlinedAt: !4185)
!4189 = !DILocation(line: 176, column: 5, scope: !3118, inlinedAt: !4185)
!4190 = !DILocation(line: 177, column: 6, scope: !3105, inlinedAt: !4185)
!4191 = !DILocation(line: 177, column: 17, scope: !3105, inlinedAt: !4185)
!4192 = !DILocation(line: 178, column: 6, scope: !3105, inlinedAt: !4185)
!4193 = !DILocation(line: 178, column: 18, scope: !3105, inlinedAt: !4185)
!4194 = !DILocation(line: 1020, column: 10, scope: !4170, inlinedAt: !4180)
!4195 = !DILocation(line: 1021, column: 1, scope: !4170, inlinedAt: !4180)
!4196 = !DILocation(line: 1009, column: 3, scope: !4160)
!4197 = !DILocation(line: 0, scope: !4170)
!4198 = !DILocation(line: 1018, column: 3, scope: !4170)
!4199 = !DILocation(line: 1018, column: 26, scope: !4170)
!4200 = !DILocation(line: 1018, column: 30, scope: !4170)
!4201 = !DILocation(line: 0, scope: !3105, inlinedAt: !4202)
!4202 = distinct !DILocation(line: 1019, column: 3, scope: !4170)
!4203 = !DILocation(line: 174, column: 12, scope: !3105, inlinedAt: !4202)
!4204 = !DILocation(line: 175, column: 8, scope: !3118, inlinedAt: !4202)
!4205 = !DILocation(line: 175, column: 19, scope: !3118, inlinedAt: !4202)
!4206 = !DILocation(line: 176, column: 5, scope: !3118, inlinedAt: !4202)
!4207 = !DILocation(line: 177, column: 6, scope: !3105, inlinedAt: !4202)
!4208 = !DILocation(line: 177, column: 17, scope: !3105, inlinedAt: !4202)
!4209 = !DILocation(line: 178, column: 6, scope: !3105, inlinedAt: !4202)
!4210 = !DILocation(line: 178, column: 18, scope: !3105, inlinedAt: !4202)
!4211 = !DILocation(line: 1020, column: 10, scope: !4170)
!4212 = !DILocation(line: 1021, column: 1, scope: !4170)
!4213 = !DILocation(line: 1020, column: 3, scope: !4170)
!4214 = distinct !DISubprogram(name: "quotearg_custom", scope: !806, file: !806, line: 1024, type: !4215, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !827, retainedNodes: !4217)
!4215 = !DISubroutineType(types: !4216)
!4216 = !{!121, !171, !171, !171}
!4217 = !{!4218, !4219, !4220}
!4218 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4214, file: !806, line: 1024, type: !171)
!4219 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4214, file: !806, line: 1024, type: !171)
!4220 = !DILocalVariable(name: "arg", arg: 3, scope: !4214, file: !806, line: 1025, type: !171)
!4221 = !DILocation(line: 0, scope: !4214)
!4222 = !DILocation(line: 0, scope: !4160, inlinedAt: !4223)
!4223 = distinct !DILocation(line: 1027, column: 10, scope: !4214)
!4224 = !DILocation(line: 0, scope: !4170, inlinedAt: !4225)
!4225 = distinct !DILocation(line: 1009, column: 10, scope: !4160, inlinedAt: !4223)
!4226 = !DILocation(line: 1018, column: 3, scope: !4170, inlinedAt: !4225)
!4227 = !DILocation(line: 1018, column: 26, scope: !4170, inlinedAt: !4225)
!4228 = !DILocation(line: 1018, column: 30, scope: !4170, inlinedAt: !4225)
!4229 = !DILocation(line: 0, scope: !3105, inlinedAt: !4230)
!4230 = distinct !DILocation(line: 1019, column: 3, scope: !4170, inlinedAt: !4225)
!4231 = !DILocation(line: 174, column: 12, scope: !3105, inlinedAt: !4230)
!4232 = !DILocation(line: 175, column: 8, scope: !3118, inlinedAt: !4230)
!4233 = !DILocation(line: 175, column: 19, scope: !3118, inlinedAt: !4230)
!4234 = !DILocation(line: 176, column: 5, scope: !3118, inlinedAt: !4230)
!4235 = !DILocation(line: 177, column: 6, scope: !3105, inlinedAt: !4230)
!4236 = !DILocation(line: 177, column: 17, scope: !3105, inlinedAt: !4230)
!4237 = !DILocation(line: 178, column: 6, scope: !3105, inlinedAt: !4230)
!4238 = !DILocation(line: 178, column: 18, scope: !3105, inlinedAt: !4230)
!4239 = !DILocation(line: 1020, column: 10, scope: !4170, inlinedAt: !4225)
!4240 = !DILocation(line: 1021, column: 1, scope: !4170, inlinedAt: !4225)
!4241 = !DILocation(line: 1027, column: 3, scope: !4214)
!4242 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !806, file: !806, line: 1031, type: !4243, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !827, retainedNodes: !4245)
!4243 = !DISubroutineType(types: !4244)
!4244 = !{!121, !171, !171, !171, !163}
!4245 = !{!4246, !4247, !4248, !4249}
!4246 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4242, file: !806, line: 1031, type: !171)
!4247 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4242, file: !806, line: 1031, type: !171)
!4248 = !DILocalVariable(name: "arg", arg: 3, scope: !4242, file: !806, line: 1032, type: !171)
!4249 = !DILocalVariable(name: "argsize", arg: 4, scope: !4242, file: !806, line: 1032, type: !163)
!4250 = !DILocation(line: 0, scope: !4242)
!4251 = !DILocation(line: 0, scope: !4170, inlinedAt: !4252)
!4252 = distinct !DILocation(line: 1034, column: 10, scope: !4242)
!4253 = !DILocation(line: 1018, column: 3, scope: !4170, inlinedAt: !4252)
!4254 = !DILocation(line: 1018, column: 26, scope: !4170, inlinedAt: !4252)
!4255 = !DILocation(line: 1018, column: 30, scope: !4170, inlinedAt: !4252)
!4256 = !DILocation(line: 0, scope: !3105, inlinedAt: !4257)
!4257 = distinct !DILocation(line: 1019, column: 3, scope: !4170, inlinedAt: !4252)
!4258 = !DILocation(line: 174, column: 12, scope: !3105, inlinedAt: !4257)
!4259 = !DILocation(line: 175, column: 8, scope: !3118, inlinedAt: !4257)
!4260 = !DILocation(line: 175, column: 19, scope: !3118, inlinedAt: !4257)
!4261 = !DILocation(line: 176, column: 5, scope: !3118, inlinedAt: !4257)
!4262 = !DILocation(line: 177, column: 6, scope: !3105, inlinedAt: !4257)
!4263 = !DILocation(line: 177, column: 17, scope: !3105, inlinedAt: !4257)
!4264 = !DILocation(line: 178, column: 6, scope: !3105, inlinedAt: !4257)
!4265 = !DILocation(line: 178, column: 18, scope: !3105, inlinedAt: !4257)
!4266 = !DILocation(line: 1020, column: 10, scope: !4170, inlinedAt: !4252)
!4267 = !DILocation(line: 1021, column: 1, scope: !4170, inlinedAt: !4252)
!4268 = !DILocation(line: 1034, column: 3, scope: !4242)
!4269 = distinct !DISubprogram(name: "quote_n_mem", scope: !806, file: !806, line: 1049, type: !4270, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !827, retainedNodes: !4272)
!4270 = !DISubroutineType(types: !4271)
!4271 = !{!171, !89, !171, !163}
!4272 = !{!4273, !4274, !4275}
!4273 = !DILocalVariable(name: "n", arg: 1, scope: !4269, file: !806, line: 1049, type: !89)
!4274 = !DILocalVariable(name: "arg", arg: 2, scope: !4269, file: !806, line: 1049, type: !171)
!4275 = !DILocalVariable(name: "argsize", arg: 3, scope: !4269, file: !806, line: 1049, type: !163)
!4276 = !DILocation(line: 0, scope: !4269)
!4277 = !DILocation(line: 1051, column: 10, scope: !4269)
!4278 = !DILocation(line: 1051, column: 3, scope: !4269)
!4279 = distinct !DISubprogram(name: "quote_mem", scope: !806, file: !806, line: 1055, type: !4280, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !827, retainedNodes: !4282)
!4280 = !DISubroutineType(types: !4281)
!4281 = !{!171, !171, !163}
!4282 = !{!4283, !4284}
!4283 = !DILocalVariable(name: "arg", arg: 1, scope: !4279, file: !806, line: 1055, type: !171)
!4284 = !DILocalVariable(name: "argsize", arg: 2, scope: !4279, file: !806, line: 1055, type: !163)
!4285 = !DILocation(line: 0, scope: !4279)
!4286 = !DILocation(line: 0, scope: !4269, inlinedAt: !4287)
!4287 = distinct !DILocation(line: 1057, column: 10, scope: !4279)
!4288 = !DILocation(line: 1051, column: 10, scope: !4269, inlinedAt: !4287)
!4289 = !DILocation(line: 1057, column: 3, scope: !4279)
!4290 = distinct !DISubprogram(name: "quote_n", scope: !806, file: !806, line: 1061, type: !4291, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !827, retainedNodes: !4293)
!4291 = !DISubroutineType(types: !4292)
!4292 = !{!171, !89, !171}
!4293 = !{!4294, !4295}
!4294 = !DILocalVariable(name: "n", arg: 1, scope: !4290, file: !806, line: 1061, type: !89)
!4295 = !DILocalVariable(name: "arg", arg: 2, scope: !4290, file: !806, line: 1061, type: !171)
!4296 = !DILocation(line: 0, scope: !4290)
!4297 = !DILocation(line: 0, scope: !4269, inlinedAt: !4298)
!4298 = distinct !DILocation(line: 1063, column: 10, scope: !4290)
!4299 = !DILocation(line: 1051, column: 10, scope: !4269, inlinedAt: !4298)
!4300 = !DILocation(line: 1063, column: 3, scope: !4290)
!4301 = distinct !DISubprogram(name: "quote", scope: !806, file: !806, line: 1067, type: !4302, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !827, retainedNodes: !4304)
!4302 = !DISubroutineType(types: !4303)
!4303 = !{!171, !171}
!4304 = !{!4305}
!4305 = !DILocalVariable(name: "arg", arg: 1, scope: !4301, file: !806, line: 1067, type: !171)
!4306 = !DILocation(line: 0, scope: !4301)
!4307 = !DILocation(line: 0, scope: !4290, inlinedAt: !4308)
!4308 = distinct !DILocation(line: 1069, column: 10, scope: !4301)
!4309 = !DILocation(line: 0, scope: !4269, inlinedAt: !4310)
!4310 = distinct !DILocation(line: 1063, column: 10, scope: !4290, inlinedAt: !4308)
!4311 = !DILocation(line: 1051, column: 10, scope: !4269, inlinedAt: !4310)
!4312 = !DILocation(line: 1069, column: 3, scope: !4301)
!4313 = distinct !DISubprogram(name: "version_etc_arn", scope: !902, file: !902, line: 61, type: !4314, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1035, retainedNodes: !4351)
!4314 = !DISubroutineType(types: !4315)
!4315 = !{null, !4316, !171, !171, !171, !4350, !163}
!4316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4317, size: 64)
!4317 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !115, line: 7, baseType: !4318)
!4318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !117, line: 49, size: 1728, elements: !4319)
!4319 = !{!4320, !4321, !4322, !4323, !4324, !4325, !4326, !4327, !4328, !4329, !4330, !4331, !4332, !4333, !4335, !4336, !4337, !4338, !4339, !4340, !4341, !4342, !4343, !4344, !4345, !4346, !4347, !4348, !4349}
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4318, file: !117, line: 51, baseType: !89, size: 32)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4318, file: !117, line: 54, baseType: !121, size: 64, offset: 64)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4318, file: !117, line: 55, baseType: !121, size: 64, offset: 128)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4318, file: !117, line: 56, baseType: !121, size: 64, offset: 192)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4318, file: !117, line: 57, baseType: !121, size: 64, offset: 256)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4318, file: !117, line: 58, baseType: !121, size: 64, offset: 320)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4318, file: !117, line: 59, baseType: !121, size: 64, offset: 384)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4318, file: !117, line: 60, baseType: !121, size: 64, offset: 448)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4318, file: !117, line: 61, baseType: !121, size: 64, offset: 512)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4318, file: !117, line: 64, baseType: !121, size: 64, offset: 576)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4318, file: !117, line: 65, baseType: !121, size: 64, offset: 640)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4318, file: !117, line: 66, baseType: !121, size: 64, offset: 704)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4318, file: !117, line: 68, baseType: !133, size: 64, offset: 768)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4318, file: !117, line: 70, baseType: !4334, size: 64, offset: 832)
!4334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4318, size: 64)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4318, file: !117, line: 72, baseType: !89, size: 32, offset: 896)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4318, file: !117, line: 73, baseType: !89, size: 32, offset: 928)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4318, file: !117, line: 74, baseType: !140, size: 64, offset: 960)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4318, file: !117, line: 77, baseType: !144, size: 16, offset: 1024)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4318, file: !117, line: 78, baseType: !146, size: 8, offset: 1040)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4318, file: !117, line: 79, baseType: !59, size: 8, offset: 1048)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4318, file: !117, line: 81, baseType: !149, size: 64, offset: 1088)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4318, file: !117, line: 89, baseType: !152, size: 64, offset: 1152)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4318, file: !117, line: 91, baseType: !154, size: 64, offset: 1216)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4318, file: !117, line: 92, baseType: !157, size: 64, offset: 1280)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4318, file: !117, line: 93, baseType: !4334, size: 64, offset: 1344)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4318, file: !117, line: 94, baseType: !161, size: 64, offset: 1408)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4318, file: !117, line: 95, baseType: !163, size: 64, offset: 1472)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4318, file: !117, line: 96, baseType: !89, size: 32, offset: 1536)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4318, file: !117, line: 98, baseType: !168, size: 160, offset: 1568)
!4350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!4351 = !{!4352, !4353, !4354, !4355, !4356, !4357}
!4352 = !DILocalVariable(name: "stream", arg: 1, scope: !4313, file: !902, line: 61, type: !4316)
!4353 = !DILocalVariable(name: "command_name", arg: 2, scope: !4313, file: !902, line: 62, type: !171)
!4354 = !DILocalVariable(name: "package", arg: 3, scope: !4313, file: !902, line: 62, type: !171)
!4355 = !DILocalVariable(name: "version", arg: 4, scope: !4313, file: !902, line: 63, type: !171)
!4356 = !DILocalVariable(name: "authors", arg: 5, scope: !4313, file: !902, line: 64, type: !4350)
!4357 = !DILocalVariable(name: "n_authors", arg: 6, scope: !4313, file: !902, line: 64, type: !163)
!4358 = !DILocation(line: 0, scope: !4313)
!4359 = !DILocation(line: 66, column: 7, scope: !4360)
!4360 = distinct !DILexicalBlock(scope: !4313, file: !902, line: 66, column: 7)
!4361 = !DILocation(line: 66, column: 7, scope: !4313)
!4362 = !DILocation(line: 67, column: 5, scope: !4360)
!4363 = !DILocation(line: 69, column: 5, scope: !4360)
!4364 = !DILocation(line: 83, column: 3, scope: !4313)
!4365 = !DILocation(line: 85, column: 3, scope: !4313)
!4366 = !DILocation(line: 88, column: 3, scope: !4313)
!4367 = !DILocation(line: 95, column: 3, scope: !4313)
!4368 = !DILocation(line: 97, column: 3, scope: !4313)
!4369 = !DILocation(line: 105, column: 7, scope: !4370)
!4370 = distinct !DILexicalBlock(scope: !4313, file: !902, line: 98, column: 5)
!4371 = !DILocation(line: 106, column: 7, scope: !4370)
!4372 = !DILocation(line: 109, column: 7, scope: !4370)
!4373 = !DILocation(line: 110, column: 7, scope: !4370)
!4374 = !DILocation(line: 113, column: 7, scope: !4370)
!4375 = !DILocation(line: 115, column: 7, scope: !4370)
!4376 = !DILocation(line: 120, column: 7, scope: !4370)
!4377 = !DILocation(line: 122, column: 7, scope: !4370)
!4378 = !DILocation(line: 127, column: 7, scope: !4370)
!4379 = !DILocation(line: 129, column: 7, scope: !4370)
!4380 = !DILocation(line: 134, column: 7, scope: !4370)
!4381 = !DILocation(line: 137, column: 7, scope: !4370)
!4382 = !DILocation(line: 142, column: 7, scope: !4370)
!4383 = !DILocation(line: 145, column: 7, scope: !4370)
!4384 = !DILocation(line: 150, column: 7, scope: !4370)
!4385 = !DILocation(line: 154, column: 7, scope: !4370)
!4386 = !DILocation(line: 159, column: 7, scope: !4370)
!4387 = !DILocation(line: 163, column: 7, scope: !4370)
!4388 = !DILocation(line: 170, column: 7, scope: !4370)
!4389 = !DILocation(line: 174, column: 7, scope: !4370)
!4390 = !DILocation(line: 176, column: 1, scope: !4313)
!4391 = distinct !DISubprogram(name: "version_etc_ar", scope: !902, file: !902, line: 183, type: !4392, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1035, retainedNodes: !4394)
!4392 = !DISubroutineType(types: !4393)
!4393 = !{null, !4316, !171, !171, !171, !4350}
!4394 = !{!4395, !4396, !4397, !4398, !4399, !4400}
!4395 = !DILocalVariable(name: "stream", arg: 1, scope: !4391, file: !902, line: 183, type: !4316)
!4396 = !DILocalVariable(name: "command_name", arg: 2, scope: !4391, file: !902, line: 184, type: !171)
!4397 = !DILocalVariable(name: "package", arg: 3, scope: !4391, file: !902, line: 184, type: !171)
!4398 = !DILocalVariable(name: "version", arg: 4, scope: !4391, file: !902, line: 185, type: !171)
!4399 = !DILocalVariable(name: "authors", arg: 5, scope: !4391, file: !902, line: 185, type: !4350)
!4400 = !DILocalVariable(name: "n_authors", scope: !4391, file: !902, line: 187, type: !163)
!4401 = !DILocation(line: 0, scope: !4391)
!4402 = !DILocation(line: 189, column: 8, scope: !4403)
!4403 = distinct !DILexicalBlock(scope: !4391, file: !902, line: 189, column: 3)
!4404 = !DILocation(line: 189, scope: !4403)
!4405 = !DILocation(line: 189, column: 23, scope: !4406)
!4406 = distinct !DILexicalBlock(scope: !4403, file: !902, line: 189, column: 3)
!4407 = !DILocation(line: 189, column: 3, scope: !4403)
!4408 = !DILocation(line: 189, column: 52, scope: !4406)
!4409 = distinct !{!4409, !4407, !4410, !1216}
!4410 = !DILocation(line: 190, column: 5, scope: !4403)
!4411 = !DILocation(line: 191, column: 3, scope: !4391)
!4412 = !DILocation(line: 192, column: 1, scope: !4391)
!4413 = distinct !DISubprogram(name: "version_etc_va", scope: !902, file: !902, line: 199, type: !4414, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1035, retainedNodes: !4427)
!4414 = !DISubroutineType(types: !4415)
!4415 = !{null, !4316, !171, !171, !171, !4416}
!4416 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !708, line: 52, baseType: !4417)
!4417 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !710, line: 14, baseType: !4418)
!4418 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !4419, baseType: !4420)
!4419 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!4420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !4421)
!4421 = !{!4422, !4423, !4424, !4425, !4426}
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !4420, file: !4419, line: 192, baseType: !161, size: 64)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !4420, file: !4419, line: 192, baseType: !161, size: 64, offset: 64)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !4420, file: !4419, line: 192, baseType: !161, size: 64, offset: 128)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !4420, file: !4419, line: 192, baseType: !89, size: 32, offset: 192)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !4420, file: !4419, line: 192, baseType: !89, size: 32, offset: 224)
!4427 = !{!4428, !4429, !4430, !4431, !4432, !4433, !4434}
!4428 = !DILocalVariable(name: "stream", arg: 1, scope: !4413, file: !902, line: 199, type: !4316)
!4429 = !DILocalVariable(name: "command_name", arg: 2, scope: !4413, file: !902, line: 200, type: !171)
!4430 = !DILocalVariable(name: "package", arg: 3, scope: !4413, file: !902, line: 200, type: !171)
!4431 = !DILocalVariable(name: "version", arg: 4, scope: !4413, file: !902, line: 201, type: !171)
!4432 = !DILocalVariable(name: "authors", arg: 5, scope: !4413, file: !902, line: 201, type: !4416)
!4433 = !DILocalVariable(name: "n_authors", scope: !4413, file: !902, line: 203, type: !163)
!4434 = !DILocalVariable(name: "authtab", scope: !4413, file: !902, line: 204, type: !4435)
!4435 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 640, elements: !20)
!4436 = !DILocation(line: 0, scope: !4413)
!4437 = !DILocation(line: 201, column: 46, scope: !4413)
!4438 = !DILocation(line: 204, column: 3, scope: !4413)
!4439 = !DILocation(line: 204, column: 15, scope: !4413)
!4440 = !DILocation(line: 208, column: 35, scope: !4441)
!4441 = distinct !DILexicalBlock(scope: !4442, file: !902, line: 206, column: 3)
!4442 = distinct !DILexicalBlock(scope: !4413, file: !902, line: 206, column: 3)
!4443 = !DILocation(line: 208, column: 33, scope: !4441)
!4444 = !DILocation(line: 208, column: 67, scope: !4441)
!4445 = !DILocation(line: 206, column: 3, scope: !4442)
!4446 = !DILocation(line: 208, column: 14, scope: !4441)
!4447 = !DILocation(line: 0, scope: !4442)
!4448 = !DILocation(line: 211, column: 3, scope: !4413)
!4449 = !DILocation(line: 213, column: 1, scope: !4413)
!4450 = distinct !DISubprogram(name: "version_etc", scope: !902, file: !902, line: 230, type: !4451, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1035, retainedNodes: !4453)
!4451 = !DISubroutineType(types: !4452)
!4452 = !{null, !4316, !171, !171, !171, null}
!4453 = !{!4454, !4455, !4456, !4457, !4458}
!4454 = !DILocalVariable(name: "stream", arg: 1, scope: !4450, file: !902, line: 230, type: !4316)
!4455 = !DILocalVariable(name: "command_name", arg: 2, scope: !4450, file: !902, line: 231, type: !171)
!4456 = !DILocalVariable(name: "package", arg: 3, scope: !4450, file: !902, line: 231, type: !171)
!4457 = !DILocalVariable(name: "version", arg: 4, scope: !4450, file: !902, line: 232, type: !171)
!4458 = !DILocalVariable(name: "authors", scope: !4450, file: !902, line: 234, type: !4416)
!4459 = !DILocation(line: 0, scope: !4450)
!4460 = !DILocation(line: 234, column: 3, scope: !4450)
!4461 = !DILocation(line: 234, column: 11, scope: !4450)
!4462 = !DILocation(line: 235, column: 3, scope: !4450)
!4463 = !DILocation(line: 236, column: 3, scope: !4450)
!4464 = !DILocation(line: 237, column: 3, scope: !4450)
!4465 = !DILocation(line: 238, column: 1, scope: !4450)
!4466 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !902, file: !902, line: 241, type: !746, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1035, retainedNodes: !1154)
!4467 = !DILocation(line: 243, column: 3, scope: !4466)
!4468 = !DILocation(line: 248, column: 3, scope: !4466)
!4469 = !DILocation(line: 254, column: 3, scope: !4466)
!4470 = !DILocation(line: 259, column: 3, scope: !4466)
!4471 = !DILocation(line: 261, column: 1, scope: !4466)
!4472 = distinct !DISubprogram(name: "xnrealloc", scope: !4473, file: !4473, line: 147, type: !4474, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1041, retainedNodes: !4476)
!4473 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!4474 = !DISubroutineType(types: !4475)
!4475 = !{!161, !161, !163, !163}
!4476 = !{!4477, !4478, !4479}
!4477 = !DILocalVariable(name: "p", arg: 1, scope: !4472, file: !4473, line: 147, type: !161)
!4478 = !DILocalVariable(name: "n", arg: 2, scope: !4472, file: !4473, line: 147, type: !163)
!4479 = !DILocalVariable(name: "s", arg: 3, scope: !4472, file: !4473, line: 147, type: !163)
!4480 = !DILocation(line: 0, scope: !4472)
!4481 = !DILocalVariable(name: "p", arg: 1, scope: !4482, file: !1042, line: 83, type: !161)
!4482 = distinct !DISubprogram(name: "xreallocarray", scope: !1042, file: !1042, line: 83, type: !4474, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1041, retainedNodes: !4483)
!4483 = !{!4481, !4484, !4485}
!4484 = !DILocalVariable(name: "n", arg: 2, scope: !4482, file: !1042, line: 83, type: !163)
!4485 = !DILocalVariable(name: "s", arg: 3, scope: !4482, file: !1042, line: 83, type: !163)
!4486 = !DILocation(line: 0, scope: !4482, inlinedAt: !4487)
!4487 = distinct !DILocation(line: 149, column: 10, scope: !4472)
!4488 = !DILocation(line: 85, column: 25, scope: !4482, inlinedAt: !4487)
!4489 = !DILocalVariable(name: "p", arg: 1, scope: !4490, file: !1042, line: 37, type: !161)
!4490 = distinct !DISubprogram(name: "check_nonnull", scope: !1042, file: !1042, line: 37, type: !4491, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1041, retainedNodes: !4493)
!4491 = !DISubroutineType(types: !4492)
!4492 = !{!161, !161}
!4493 = !{!4489}
!4494 = !DILocation(line: 0, scope: !4490, inlinedAt: !4495)
!4495 = distinct !DILocation(line: 85, column: 10, scope: !4482, inlinedAt: !4487)
!4496 = !DILocation(line: 39, column: 8, scope: !4497, inlinedAt: !4495)
!4497 = distinct !DILexicalBlock(scope: !4490, file: !1042, line: 39, column: 7)
!4498 = !DILocation(line: 39, column: 7, scope: !4490, inlinedAt: !4495)
!4499 = !DILocation(line: 40, column: 5, scope: !4497, inlinedAt: !4495)
!4500 = !DILocation(line: 149, column: 3, scope: !4472)
!4501 = !DILocation(line: 0, scope: !4482)
!4502 = !DILocation(line: 85, column: 25, scope: !4482)
!4503 = !DILocation(line: 0, scope: !4490, inlinedAt: !4504)
!4504 = distinct !DILocation(line: 85, column: 10, scope: !4482)
!4505 = !DILocation(line: 39, column: 8, scope: !4497, inlinedAt: !4504)
!4506 = !DILocation(line: 39, column: 7, scope: !4490, inlinedAt: !4504)
!4507 = !DILocation(line: 40, column: 5, scope: !4497, inlinedAt: !4504)
!4508 = !DILocation(line: 85, column: 3, scope: !4482)
!4509 = distinct !DISubprogram(name: "xmalloc", scope: !1042, file: !1042, line: 47, type: !305, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1041, retainedNodes: !4510)
!4510 = !{!4511}
!4511 = !DILocalVariable(name: "s", arg: 1, scope: !4509, file: !1042, line: 47, type: !163)
!4512 = !DILocation(line: 0, scope: !4509)
!4513 = !DILocation(line: 49, column: 25, scope: !4509)
!4514 = !DILocation(line: 0, scope: !4490, inlinedAt: !4515)
!4515 = distinct !DILocation(line: 49, column: 10, scope: !4509)
!4516 = !DILocation(line: 39, column: 8, scope: !4497, inlinedAt: !4515)
!4517 = !DILocation(line: 39, column: 7, scope: !4490, inlinedAt: !4515)
!4518 = !DILocation(line: 40, column: 5, scope: !4497, inlinedAt: !4515)
!4519 = !DILocation(line: 49, column: 3, scope: !4509)
!4520 = distinct !DISubprogram(name: "ximalloc", scope: !1042, file: !1042, line: 53, type: !4521, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1041, retainedNodes: !4523)
!4521 = !DISubroutineType(types: !4522)
!4522 = !{!161, !177}
!4523 = !{!4524}
!4524 = !DILocalVariable(name: "s", arg: 1, scope: !4520, file: !1042, line: 53, type: !177)
!4525 = !DILocation(line: 0, scope: !4520)
!4526 = !DILocalVariable(name: "s", arg: 1, scope: !4527, file: !4528, line: 55, type: !177)
!4527 = distinct !DISubprogram(name: "imalloc", scope: !4528, file: !4528, line: 55, type: !4521, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1041, retainedNodes: !4529)
!4528 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!4529 = !{!4526}
!4530 = !DILocation(line: 0, scope: !4527, inlinedAt: !4531)
!4531 = distinct !DILocation(line: 55, column: 25, scope: !4520)
!4532 = !DILocation(line: 57, column: 26, scope: !4527, inlinedAt: !4531)
!4533 = !DILocation(line: 0, scope: !4490, inlinedAt: !4534)
!4534 = distinct !DILocation(line: 55, column: 10, scope: !4520)
!4535 = !DILocation(line: 39, column: 8, scope: !4497, inlinedAt: !4534)
!4536 = !DILocation(line: 39, column: 7, scope: !4490, inlinedAt: !4534)
!4537 = !DILocation(line: 40, column: 5, scope: !4497, inlinedAt: !4534)
!4538 = !DILocation(line: 55, column: 3, scope: !4520)
!4539 = distinct !DISubprogram(name: "xcharalloc", scope: !1042, file: !1042, line: 59, type: !4540, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1041, retainedNodes: !4542)
!4540 = !DISubroutineType(types: !4541)
!4541 = !{!121, !163}
!4542 = !{!4543}
!4543 = !DILocalVariable(name: "n", arg: 1, scope: !4539, file: !1042, line: 59, type: !163)
!4544 = !DILocation(line: 0, scope: !4539)
!4545 = !DILocation(line: 0, scope: !4509, inlinedAt: !4546)
!4546 = distinct !DILocation(line: 61, column: 10, scope: !4539)
!4547 = !DILocation(line: 49, column: 25, scope: !4509, inlinedAt: !4546)
!4548 = !DILocation(line: 0, scope: !4490, inlinedAt: !4549)
!4549 = distinct !DILocation(line: 49, column: 10, scope: !4509, inlinedAt: !4546)
!4550 = !DILocation(line: 39, column: 8, scope: !4497, inlinedAt: !4549)
!4551 = !DILocation(line: 39, column: 7, scope: !4490, inlinedAt: !4549)
!4552 = !DILocation(line: 40, column: 5, scope: !4497, inlinedAt: !4549)
!4553 = !DILocation(line: 61, column: 3, scope: !4539)
!4554 = distinct !DISubprogram(name: "xrealloc", scope: !1042, file: !1042, line: 68, type: !309, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1041, retainedNodes: !4555)
!4555 = !{!4556, !4557}
!4556 = !DILocalVariable(name: "p", arg: 1, scope: !4554, file: !1042, line: 68, type: !161)
!4557 = !DILocalVariable(name: "s", arg: 2, scope: !4554, file: !1042, line: 68, type: !163)
!4558 = !DILocation(line: 0, scope: !4554)
!4559 = !DILocalVariable(name: "ptr", arg: 1, scope: !4560, file: !4561, line: 2057, type: !161)
!4560 = distinct !DISubprogram(name: "rpl_realloc", scope: !4561, file: !4561, line: 2057, type: !309, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1041, retainedNodes: !4562)
!4561 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!4562 = !{!4559, !4563}
!4563 = !DILocalVariable(name: "size", arg: 2, scope: !4560, file: !4561, line: 2057, type: !163)
!4564 = !DILocation(line: 0, scope: !4560, inlinedAt: !4565)
!4565 = distinct !DILocation(line: 70, column: 25, scope: !4554)
!4566 = !DILocation(line: 2059, column: 24, scope: !4560, inlinedAt: !4565)
!4567 = !DILocation(line: 2059, column: 10, scope: !4560, inlinedAt: !4565)
!4568 = !DILocation(line: 0, scope: !4490, inlinedAt: !4569)
!4569 = distinct !DILocation(line: 70, column: 10, scope: !4554)
!4570 = !DILocation(line: 39, column: 8, scope: !4497, inlinedAt: !4569)
!4571 = !DILocation(line: 39, column: 7, scope: !4490, inlinedAt: !4569)
!4572 = !DILocation(line: 40, column: 5, scope: !4497, inlinedAt: !4569)
!4573 = !DILocation(line: 70, column: 3, scope: !4554)
!4574 = !DISubprogram(name: "realloc", scope: !1290, file: !1290, line: 551, type: !309, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1154)
!4575 = distinct !DISubprogram(name: "xirealloc", scope: !1042, file: !1042, line: 74, type: !4576, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1041, retainedNodes: !4578)
!4576 = !DISubroutineType(types: !4577)
!4577 = !{!161, !161, !177}
!4578 = !{!4579, !4580}
!4579 = !DILocalVariable(name: "p", arg: 1, scope: !4575, file: !1042, line: 74, type: !161)
!4580 = !DILocalVariable(name: "s", arg: 2, scope: !4575, file: !1042, line: 74, type: !177)
!4581 = !DILocation(line: 0, scope: !4575)
!4582 = !DILocalVariable(name: "p", arg: 1, scope: !4583, file: !4528, line: 66, type: !161)
!4583 = distinct !DISubprogram(name: "irealloc", scope: !4528, file: !4528, line: 66, type: !4576, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1041, retainedNodes: !4584)
!4584 = !{!4582, !4585}
!4585 = !DILocalVariable(name: "s", arg: 2, scope: !4583, file: !4528, line: 66, type: !177)
!4586 = !DILocation(line: 0, scope: !4583, inlinedAt: !4587)
!4587 = distinct !DILocation(line: 76, column: 25, scope: !4575)
!4588 = !DILocation(line: 0, scope: !4560, inlinedAt: !4589)
!4589 = distinct !DILocation(line: 68, column: 26, scope: !4583, inlinedAt: !4587)
!4590 = !DILocation(line: 2059, column: 24, scope: !4560, inlinedAt: !4589)
!4591 = !DILocation(line: 2059, column: 10, scope: !4560, inlinedAt: !4589)
!4592 = !DILocation(line: 0, scope: !4490, inlinedAt: !4593)
!4593 = distinct !DILocation(line: 76, column: 10, scope: !4575)
!4594 = !DILocation(line: 39, column: 8, scope: !4497, inlinedAt: !4593)
!4595 = !DILocation(line: 39, column: 7, scope: !4490, inlinedAt: !4593)
!4596 = !DILocation(line: 40, column: 5, scope: !4497, inlinedAt: !4593)
!4597 = !DILocation(line: 76, column: 3, scope: !4575)
!4598 = distinct !DISubprogram(name: "xireallocarray", scope: !1042, file: !1042, line: 89, type: !4599, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1041, retainedNodes: !4601)
!4599 = !DISubroutineType(types: !4600)
!4600 = !{!161, !161, !177, !177}
!4601 = !{!4602, !4603, !4604}
!4602 = !DILocalVariable(name: "p", arg: 1, scope: !4598, file: !1042, line: 89, type: !161)
!4603 = !DILocalVariable(name: "n", arg: 2, scope: !4598, file: !1042, line: 89, type: !177)
!4604 = !DILocalVariable(name: "s", arg: 3, scope: !4598, file: !1042, line: 89, type: !177)
!4605 = !DILocation(line: 0, scope: !4598)
!4606 = !DILocalVariable(name: "p", arg: 1, scope: !4607, file: !4528, line: 98, type: !161)
!4607 = distinct !DISubprogram(name: "ireallocarray", scope: !4528, file: !4528, line: 98, type: !4599, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1041, retainedNodes: !4608)
!4608 = !{!4606, !4609, !4610}
!4609 = !DILocalVariable(name: "n", arg: 2, scope: !4607, file: !4528, line: 98, type: !177)
!4610 = !DILocalVariable(name: "s", arg: 3, scope: !4607, file: !4528, line: 98, type: !177)
!4611 = !DILocation(line: 0, scope: !4607, inlinedAt: !4612)
!4612 = distinct !DILocation(line: 91, column: 25, scope: !4598)
!4613 = !DILocation(line: 101, column: 13, scope: !4607, inlinedAt: !4612)
!4614 = !DILocation(line: 0, scope: !4490, inlinedAt: !4615)
!4615 = distinct !DILocation(line: 91, column: 10, scope: !4598)
!4616 = !DILocation(line: 39, column: 8, scope: !4497, inlinedAt: !4615)
!4617 = !DILocation(line: 39, column: 7, scope: !4490, inlinedAt: !4615)
!4618 = !DILocation(line: 40, column: 5, scope: !4497, inlinedAt: !4615)
!4619 = !DILocation(line: 91, column: 3, scope: !4598)
!4620 = distinct !DISubprogram(name: "xnmalloc", scope: !1042, file: !1042, line: 98, type: !4621, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1041, retainedNodes: !4623)
!4621 = !DISubroutineType(types: !4622)
!4622 = !{!161, !163, !163}
!4623 = !{!4624, !4625}
!4624 = !DILocalVariable(name: "n", arg: 1, scope: !4620, file: !1042, line: 98, type: !163)
!4625 = !DILocalVariable(name: "s", arg: 2, scope: !4620, file: !1042, line: 98, type: !163)
!4626 = !DILocation(line: 0, scope: !4620)
!4627 = !DILocation(line: 0, scope: !4482, inlinedAt: !4628)
!4628 = distinct !DILocation(line: 100, column: 10, scope: !4620)
!4629 = !DILocation(line: 85, column: 25, scope: !4482, inlinedAt: !4628)
!4630 = !DILocation(line: 0, scope: !4490, inlinedAt: !4631)
!4631 = distinct !DILocation(line: 85, column: 10, scope: !4482, inlinedAt: !4628)
!4632 = !DILocation(line: 39, column: 8, scope: !4497, inlinedAt: !4631)
!4633 = !DILocation(line: 39, column: 7, scope: !4490, inlinedAt: !4631)
!4634 = !DILocation(line: 40, column: 5, scope: !4497, inlinedAt: !4631)
!4635 = !DILocation(line: 100, column: 3, scope: !4620)
!4636 = distinct !DISubprogram(name: "xinmalloc", scope: !1042, file: !1042, line: 104, type: !4637, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1041, retainedNodes: !4639)
!4637 = !DISubroutineType(types: !4638)
!4638 = !{!161, !177, !177}
!4639 = !{!4640, !4641}
!4640 = !DILocalVariable(name: "n", arg: 1, scope: !4636, file: !1042, line: 104, type: !177)
!4641 = !DILocalVariable(name: "s", arg: 2, scope: !4636, file: !1042, line: 104, type: !177)
!4642 = !DILocation(line: 0, scope: !4636)
!4643 = !DILocation(line: 0, scope: !4598, inlinedAt: !4644)
!4644 = distinct !DILocation(line: 106, column: 10, scope: !4636)
!4645 = !DILocation(line: 0, scope: !4607, inlinedAt: !4646)
!4646 = distinct !DILocation(line: 91, column: 25, scope: !4598, inlinedAt: !4644)
!4647 = !DILocation(line: 101, column: 13, scope: !4607, inlinedAt: !4646)
!4648 = !DILocation(line: 0, scope: !4490, inlinedAt: !4649)
!4649 = distinct !DILocation(line: 91, column: 10, scope: !4598, inlinedAt: !4644)
!4650 = !DILocation(line: 39, column: 8, scope: !4497, inlinedAt: !4649)
!4651 = !DILocation(line: 39, column: 7, scope: !4490, inlinedAt: !4649)
!4652 = !DILocation(line: 40, column: 5, scope: !4497, inlinedAt: !4649)
!4653 = !DILocation(line: 106, column: 3, scope: !4636)
!4654 = distinct !DISubprogram(name: "x2realloc", scope: !1042, file: !1042, line: 116, type: !4655, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1041, retainedNodes: !4657)
!4655 = !DISubroutineType(types: !4656)
!4656 = !{!161, !161, !1048}
!4657 = !{!4658, !4659}
!4658 = !DILocalVariable(name: "p", arg: 1, scope: !4654, file: !1042, line: 116, type: !161)
!4659 = !DILocalVariable(name: "ps", arg: 2, scope: !4654, file: !1042, line: 116, type: !1048)
!4660 = !DILocation(line: 0, scope: !4654)
!4661 = !DILocation(line: 0, scope: !1045, inlinedAt: !4662)
!4662 = distinct !DILocation(line: 118, column: 10, scope: !4654)
!4663 = !DILocation(line: 178, column: 14, scope: !1045, inlinedAt: !4662)
!4664 = !DILocation(line: 180, column: 9, scope: !4665, inlinedAt: !4662)
!4665 = distinct !DILexicalBlock(scope: !1045, file: !1042, line: 180, column: 7)
!4666 = !DILocation(line: 180, column: 7, scope: !1045, inlinedAt: !4662)
!4667 = !DILocation(line: 182, column: 13, scope: !4668, inlinedAt: !4662)
!4668 = distinct !DILexicalBlock(scope: !4669, file: !1042, line: 182, column: 11)
!4669 = distinct !DILexicalBlock(scope: !4665, file: !1042, line: 181, column: 5)
!4670 = !DILocation(line: 182, column: 11, scope: !4669, inlinedAt: !4662)
!4671 = !DILocation(line: 197, column: 11, scope: !4672, inlinedAt: !4662)
!4672 = distinct !DILexicalBlock(scope: !4673, file: !1042, line: 197, column: 11)
!4673 = distinct !DILexicalBlock(scope: !4665, file: !1042, line: 195, column: 5)
!4674 = !DILocation(line: 197, column: 11, scope: !4673, inlinedAt: !4662)
!4675 = !DILocation(line: 198, column: 9, scope: !4672, inlinedAt: !4662)
!4676 = !DILocation(line: 0, scope: !4482, inlinedAt: !4677)
!4677 = distinct !DILocation(line: 201, column: 7, scope: !1045, inlinedAt: !4662)
!4678 = !DILocation(line: 85, column: 25, scope: !4482, inlinedAt: !4677)
!4679 = !DILocation(line: 0, scope: !4490, inlinedAt: !4680)
!4680 = distinct !DILocation(line: 85, column: 10, scope: !4482, inlinedAt: !4677)
!4681 = !DILocation(line: 39, column: 8, scope: !4497, inlinedAt: !4680)
!4682 = !DILocation(line: 39, column: 7, scope: !4490, inlinedAt: !4680)
!4683 = !DILocation(line: 40, column: 5, scope: !4497, inlinedAt: !4680)
!4684 = !DILocation(line: 202, column: 7, scope: !1045, inlinedAt: !4662)
!4685 = !DILocation(line: 118, column: 3, scope: !4654)
!4686 = !DILocation(line: 0, scope: !1045)
!4687 = !DILocation(line: 178, column: 14, scope: !1045)
!4688 = !DILocation(line: 180, column: 9, scope: !4665)
!4689 = !DILocation(line: 180, column: 7, scope: !1045)
!4690 = !DILocation(line: 182, column: 13, scope: !4668)
!4691 = !DILocation(line: 182, column: 11, scope: !4669)
!4692 = !DILocation(line: 190, column: 30, scope: !4693)
!4693 = distinct !DILexicalBlock(scope: !4668, file: !1042, line: 183, column: 9)
!4694 = !DILocation(line: 191, column: 16, scope: !4693)
!4695 = !DILocation(line: 191, column: 13, scope: !4693)
!4696 = !DILocation(line: 192, column: 9, scope: !4693)
!4697 = !DILocation(line: 197, column: 11, scope: !4672)
!4698 = !DILocation(line: 197, column: 11, scope: !4673)
!4699 = !DILocation(line: 198, column: 9, scope: !4672)
!4700 = !DILocation(line: 0, scope: !4482, inlinedAt: !4701)
!4701 = distinct !DILocation(line: 201, column: 7, scope: !1045)
!4702 = !DILocation(line: 85, column: 25, scope: !4482, inlinedAt: !4701)
!4703 = !DILocation(line: 0, scope: !4490, inlinedAt: !4704)
!4704 = distinct !DILocation(line: 85, column: 10, scope: !4482, inlinedAt: !4701)
!4705 = !DILocation(line: 39, column: 8, scope: !4497, inlinedAt: !4704)
!4706 = !DILocation(line: 39, column: 7, scope: !4490, inlinedAt: !4704)
!4707 = !DILocation(line: 40, column: 5, scope: !4497, inlinedAt: !4704)
!4708 = !DILocation(line: 202, column: 7, scope: !1045)
!4709 = !DILocation(line: 203, column: 3, scope: !1045)
!4710 = !DILocation(line: 0, scope: !1057)
!4711 = !DILocation(line: 230, column: 14, scope: !1057)
!4712 = !DILocation(line: 238, column: 7, scope: !4713)
!4713 = distinct !DILexicalBlock(scope: !1057, file: !1042, line: 238, column: 7)
!4714 = !DILocation(line: 238, column: 7, scope: !1057)
!4715 = !DILocation(line: 240, column: 9, scope: !4716)
!4716 = distinct !DILexicalBlock(scope: !1057, file: !1042, line: 240, column: 7)
!4717 = !DILocation(line: 240, column: 18, scope: !4716)
!4718 = !DILocation(line: 253, column: 8, scope: !1057)
!4719 = !DILocation(line: 258, column: 27, scope: !4720)
!4720 = distinct !DILexicalBlock(scope: !4721, file: !1042, line: 257, column: 5)
!4721 = distinct !DILexicalBlock(scope: !1057, file: !1042, line: 256, column: 7)
!4722 = !DILocation(line: 259, column: 32, scope: !4720)
!4723 = !DILocation(line: 260, column: 5, scope: !4720)
!4724 = !DILocation(line: 262, column: 9, scope: !4725)
!4725 = distinct !DILexicalBlock(scope: !1057, file: !1042, line: 262, column: 7)
!4726 = !DILocation(line: 262, column: 7, scope: !1057)
!4727 = !DILocation(line: 263, column: 9, scope: !4725)
!4728 = !DILocation(line: 263, column: 5, scope: !4725)
!4729 = !DILocation(line: 264, column: 9, scope: !4730)
!4730 = distinct !DILexicalBlock(scope: !1057, file: !1042, line: 264, column: 7)
!4731 = !DILocation(line: 264, column: 14, scope: !4730)
!4732 = !DILocation(line: 265, column: 7, scope: !4730)
!4733 = !DILocation(line: 265, column: 11, scope: !4730)
!4734 = !DILocation(line: 266, column: 11, scope: !4730)
!4735 = !DILocation(line: 267, column: 14, scope: !4730)
!4736 = !DILocation(line: 264, column: 7, scope: !1057)
!4737 = !DILocation(line: 268, column: 5, scope: !4730)
!4738 = !DILocation(line: 0, scope: !4554, inlinedAt: !4739)
!4739 = distinct !DILocation(line: 269, column: 8, scope: !1057)
!4740 = !DILocation(line: 0, scope: !4560, inlinedAt: !4741)
!4741 = distinct !DILocation(line: 70, column: 25, scope: !4554, inlinedAt: !4739)
!4742 = !DILocation(line: 2059, column: 24, scope: !4560, inlinedAt: !4741)
!4743 = !DILocation(line: 2059, column: 10, scope: !4560, inlinedAt: !4741)
!4744 = !DILocation(line: 0, scope: !4490, inlinedAt: !4745)
!4745 = distinct !DILocation(line: 70, column: 10, scope: !4554, inlinedAt: !4739)
!4746 = !DILocation(line: 39, column: 8, scope: !4497, inlinedAt: !4745)
!4747 = !DILocation(line: 39, column: 7, scope: !4490, inlinedAt: !4745)
!4748 = !DILocation(line: 40, column: 5, scope: !4497, inlinedAt: !4745)
!4749 = !DILocation(line: 270, column: 7, scope: !1057)
!4750 = !DILocation(line: 271, column: 3, scope: !1057)
!4751 = distinct !DISubprogram(name: "xzalloc", scope: !1042, file: !1042, line: 279, type: !305, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1041, retainedNodes: !4752)
!4752 = !{!4753}
!4753 = !DILocalVariable(name: "s", arg: 1, scope: !4751, file: !1042, line: 279, type: !163)
!4754 = !DILocation(line: 0, scope: !4751)
!4755 = !DILocalVariable(name: "n", arg: 1, scope: !4756, file: !1042, line: 294, type: !163)
!4756 = distinct !DISubprogram(name: "xcalloc", scope: !1042, file: !1042, line: 294, type: !4621, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1041, retainedNodes: !4757)
!4757 = !{!4755, !4758}
!4758 = !DILocalVariable(name: "s", arg: 2, scope: !4756, file: !1042, line: 294, type: !163)
!4759 = !DILocation(line: 0, scope: !4756, inlinedAt: !4760)
!4760 = distinct !DILocation(line: 281, column: 10, scope: !4751)
!4761 = !DILocation(line: 296, column: 25, scope: !4756, inlinedAt: !4760)
!4762 = !DILocation(line: 0, scope: !4490, inlinedAt: !4763)
!4763 = distinct !DILocation(line: 296, column: 10, scope: !4756, inlinedAt: !4760)
!4764 = !DILocation(line: 39, column: 8, scope: !4497, inlinedAt: !4763)
!4765 = !DILocation(line: 39, column: 7, scope: !4490, inlinedAt: !4763)
!4766 = !DILocation(line: 40, column: 5, scope: !4497, inlinedAt: !4763)
!4767 = !DILocation(line: 281, column: 3, scope: !4751)
!4768 = !DISubprogram(name: "calloc", scope: !1290, file: !1290, line: 543, type: !4621, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1154)
!4769 = !DILocation(line: 0, scope: !4756)
!4770 = !DILocation(line: 296, column: 25, scope: !4756)
!4771 = !DILocation(line: 0, scope: !4490, inlinedAt: !4772)
!4772 = distinct !DILocation(line: 296, column: 10, scope: !4756)
!4773 = !DILocation(line: 39, column: 8, scope: !4497, inlinedAt: !4772)
!4774 = !DILocation(line: 39, column: 7, scope: !4490, inlinedAt: !4772)
!4775 = !DILocation(line: 40, column: 5, scope: !4497, inlinedAt: !4772)
!4776 = !DILocation(line: 296, column: 3, scope: !4756)
!4777 = distinct !DISubprogram(name: "xizalloc", scope: !1042, file: !1042, line: 285, type: !4521, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1041, retainedNodes: !4778)
!4778 = !{!4779}
!4779 = !DILocalVariable(name: "s", arg: 1, scope: !4777, file: !1042, line: 285, type: !177)
!4780 = !DILocation(line: 0, scope: !4777)
!4781 = !DILocalVariable(name: "n", arg: 1, scope: !4782, file: !1042, line: 300, type: !177)
!4782 = distinct !DISubprogram(name: "xicalloc", scope: !1042, file: !1042, line: 300, type: !4637, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1041, retainedNodes: !4783)
!4783 = !{!4781, !4784}
!4784 = !DILocalVariable(name: "s", arg: 2, scope: !4782, file: !1042, line: 300, type: !177)
!4785 = !DILocation(line: 0, scope: !4782, inlinedAt: !4786)
!4786 = distinct !DILocation(line: 287, column: 10, scope: !4777)
!4787 = !DILocalVariable(name: "n", arg: 1, scope: !4788, file: !4528, line: 77, type: !177)
!4788 = distinct !DISubprogram(name: "icalloc", scope: !4528, file: !4528, line: 77, type: !4637, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1041, retainedNodes: !4789)
!4789 = !{!4787, !4790}
!4790 = !DILocalVariable(name: "s", arg: 2, scope: !4788, file: !4528, line: 77, type: !177)
!4791 = !DILocation(line: 0, scope: !4788, inlinedAt: !4792)
!4792 = distinct !DILocation(line: 302, column: 25, scope: !4782, inlinedAt: !4786)
!4793 = !DILocation(line: 91, column: 10, scope: !4788, inlinedAt: !4792)
!4794 = !DILocation(line: 0, scope: !4490, inlinedAt: !4795)
!4795 = distinct !DILocation(line: 302, column: 10, scope: !4782, inlinedAt: !4786)
!4796 = !DILocation(line: 39, column: 8, scope: !4497, inlinedAt: !4795)
!4797 = !DILocation(line: 39, column: 7, scope: !4490, inlinedAt: !4795)
!4798 = !DILocation(line: 40, column: 5, scope: !4497, inlinedAt: !4795)
!4799 = !DILocation(line: 287, column: 3, scope: !4777)
!4800 = !DILocation(line: 0, scope: !4782)
!4801 = !DILocation(line: 0, scope: !4788, inlinedAt: !4802)
!4802 = distinct !DILocation(line: 302, column: 25, scope: !4782)
!4803 = !DILocation(line: 91, column: 10, scope: !4788, inlinedAt: !4802)
!4804 = !DILocation(line: 0, scope: !4490, inlinedAt: !4805)
!4805 = distinct !DILocation(line: 302, column: 10, scope: !4782)
!4806 = !DILocation(line: 39, column: 8, scope: !4497, inlinedAt: !4805)
!4807 = !DILocation(line: 39, column: 7, scope: !4490, inlinedAt: !4805)
!4808 = !DILocation(line: 40, column: 5, scope: !4497, inlinedAt: !4805)
!4809 = !DILocation(line: 302, column: 3, scope: !4782)
!4810 = distinct !DISubprogram(name: "xmemdup", scope: !1042, file: !1042, line: 310, type: !4811, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1041, retainedNodes: !4813)
!4811 = !DISubroutineType(types: !4812)
!4812 = !{!161, !1314, !163}
!4813 = !{!4814, !4815}
!4814 = !DILocalVariable(name: "p", arg: 1, scope: !4810, file: !1042, line: 310, type: !1314)
!4815 = !DILocalVariable(name: "s", arg: 2, scope: !4810, file: !1042, line: 310, type: !163)
!4816 = !DILocation(line: 0, scope: !4810)
!4817 = !DILocation(line: 0, scope: !4509, inlinedAt: !4818)
!4818 = distinct !DILocation(line: 312, column: 18, scope: !4810)
!4819 = !DILocation(line: 49, column: 25, scope: !4509, inlinedAt: !4818)
!4820 = !DILocation(line: 0, scope: !4490, inlinedAt: !4821)
!4821 = distinct !DILocation(line: 49, column: 10, scope: !4509, inlinedAt: !4818)
!4822 = !DILocation(line: 39, column: 8, scope: !4497, inlinedAt: !4821)
!4823 = !DILocation(line: 39, column: 7, scope: !4490, inlinedAt: !4821)
!4824 = !DILocation(line: 40, column: 5, scope: !4497, inlinedAt: !4821)
!4825 = !DILocalVariable(name: "__dest", arg: 1, scope: !4826, file: !2820, line: 26, type: !2823)
!4826 = distinct !DISubprogram(name: "memcpy", scope: !2820, file: !2820, line: 26, type: !2821, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1041, retainedNodes: !4827)
!4827 = !{!4825, !4828, !4829}
!4828 = !DILocalVariable(name: "__src", arg: 2, scope: !4826, file: !2820, line: 26, type: !1313)
!4829 = !DILocalVariable(name: "__len", arg: 3, scope: !4826, file: !2820, line: 26, type: !163)
!4830 = !DILocation(line: 0, scope: !4826, inlinedAt: !4831)
!4831 = distinct !DILocation(line: 312, column: 10, scope: !4810)
!4832 = !DILocation(line: 29, column: 10, scope: !4826, inlinedAt: !4831)
!4833 = !DILocation(line: 312, column: 3, scope: !4810)
!4834 = distinct !DISubprogram(name: "ximemdup", scope: !1042, file: !1042, line: 316, type: !4835, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1041, retainedNodes: !4837)
!4835 = !DISubroutineType(types: !4836)
!4836 = !{!161, !1314, !177}
!4837 = !{!4838, !4839}
!4838 = !DILocalVariable(name: "p", arg: 1, scope: !4834, file: !1042, line: 316, type: !1314)
!4839 = !DILocalVariable(name: "s", arg: 2, scope: !4834, file: !1042, line: 316, type: !177)
!4840 = !DILocation(line: 0, scope: !4834)
!4841 = !DILocation(line: 0, scope: !4520, inlinedAt: !4842)
!4842 = distinct !DILocation(line: 318, column: 18, scope: !4834)
!4843 = !DILocation(line: 0, scope: !4527, inlinedAt: !4844)
!4844 = distinct !DILocation(line: 55, column: 25, scope: !4520, inlinedAt: !4842)
!4845 = !DILocation(line: 57, column: 26, scope: !4527, inlinedAt: !4844)
!4846 = !DILocation(line: 0, scope: !4490, inlinedAt: !4847)
!4847 = distinct !DILocation(line: 55, column: 10, scope: !4520, inlinedAt: !4842)
!4848 = !DILocation(line: 39, column: 8, scope: !4497, inlinedAt: !4847)
!4849 = !DILocation(line: 39, column: 7, scope: !4490, inlinedAt: !4847)
!4850 = !DILocation(line: 40, column: 5, scope: !4497, inlinedAt: !4847)
!4851 = !DILocation(line: 0, scope: !4826, inlinedAt: !4852)
!4852 = distinct !DILocation(line: 318, column: 10, scope: !4834)
!4853 = !DILocation(line: 29, column: 10, scope: !4826, inlinedAt: !4852)
!4854 = !DILocation(line: 318, column: 3, scope: !4834)
!4855 = distinct !DISubprogram(name: "ximemdup0", scope: !1042, file: !1042, line: 325, type: !4856, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1041, retainedNodes: !4858)
!4856 = !DISubroutineType(types: !4857)
!4857 = !{!121, !1314, !177}
!4858 = !{!4859, !4860, !4861}
!4859 = !DILocalVariable(name: "p", arg: 1, scope: !4855, file: !1042, line: 325, type: !1314)
!4860 = !DILocalVariable(name: "s", arg: 2, scope: !4855, file: !1042, line: 325, type: !177)
!4861 = !DILocalVariable(name: "result", scope: !4855, file: !1042, line: 327, type: !121)
!4862 = !DILocation(line: 0, scope: !4855)
!4863 = !DILocation(line: 327, column: 30, scope: !4855)
!4864 = !DILocation(line: 0, scope: !4520, inlinedAt: !4865)
!4865 = distinct !DILocation(line: 327, column: 18, scope: !4855)
!4866 = !DILocation(line: 0, scope: !4527, inlinedAt: !4867)
!4867 = distinct !DILocation(line: 55, column: 25, scope: !4520, inlinedAt: !4865)
!4868 = !DILocation(line: 57, column: 26, scope: !4527, inlinedAt: !4867)
!4869 = !DILocation(line: 0, scope: !4490, inlinedAt: !4870)
!4870 = distinct !DILocation(line: 55, column: 10, scope: !4520, inlinedAt: !4865)
!4871 = !DILocation(line: 39, column: 8, scope: !4497, inlinedAt: !4870)
!4872 = !DILocation(line: 39, column: 7, scope: !4490, inlinedAt: !4870)
!4873 = !DILocation(line: 40, column: 5, scope: !4497, inlinedAt: !4870)
!4874 = !DILocation(line: 328, column: 3, scope: !4855)
!4875 = !DILocation(line: 328, column: 13, scope: !4855)
!4876 = !DILocation(line: 0, scope: !4826, inlinedAt: !4877)
!4877 = distinct !DILocation(line: 329, column: 10, scope: !4855)
!4878 = !DILocation(line: 29, column: 10, scope: !4826, inlinedAt: !4877)
!4879 = !DILocation(line: 329, column: 3, scope: !4855)
!4880 = distinct !DISubprogram(name: "xstrdup", scope: !1042, file: !1042, line: 335, type: !1292, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1041, retainedNodes: !4881)
!4881 = !{!4882}
!4882 = !DILocalVariable(name: "string", arg: 1, scope: !4880, file: !1042, line: 335, type: !171)
!4883 = !DILocation(line: 0, scope: !4880)
!4884 = !DILocation(line: 337, column: 27, scope: !4880)
!4885 = !DILocation(line: 337, column: 43, scope: !4880)
!4886 = !DILocation(line: 0, scope: !4810, inlinedAt: !4887)
!4887 = distinct !DILocation(line: 337, column: 10, scope: !4880)
!4888 = !DILocation(line: 0, scope: !4509, inlinedAt: !4889)
!4889 = distinct !DILocation(line: 312, column: 18, scope: !4810, inlinedAt: !4887)
!4890 = !DILocation(line: 49, column: 25, scope: !4509, inlinedAt: !4889)
!4891 = !DILocation(line: 0, scope: !4490, inlinedAt: !4892)
!4892 = distinct !DILocation(line: 49, column: 10, scope: !4509, inlinedAt: !4889)
!4893 = !DILocation(line: 39, column: 8, scope: !4497, inlinedAt: !4892)
!4894 = !DILocation(line: 39, column: 7, scope: !4490, inlinedAt: !4892)
!4895 = !DILocation(line: 40, column: 5, scope: !4497, inlinedAt: !4892)
!4896 = !DILocation(line: 0, scope: !4826, inlinedAt: !4897)
!4897 = distinct !DILocation(line: 312, column: 10, scope: !4810, inlinedAt: !4887)
!4898 = !DILocation(line: 29, column: 10, scope: !4826, inlinedAt: !4897)
!4899 = !DILocation(line: 337, column: 3, scope: !4880)
!4900 = distinct !DISubprogram(name: "xalloc_die", scope: !989, file: !989, line: 32, type: !746, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1072, retainedNodes: !4901)
!4901 = !{!4902}
!4902 = !DILocalVariable(name: "__errstatus", scope: !4903, file: !989, line: 34, type: !4904)
!4903 = distinct !DILexicalBlock(scope: !4900, file: !989, line: 34, column: 3)
!4904 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !89)
!4905 = !DILocation(line: 34, column: 3, scope: !4903)
!4906 = !DILocation(line: 0, scope: !4903)
!4907 = !DILocation(line: 40, column: 3, scope: !4900)
!4908 = distinct !DISubprogram(name: "close_stream", scope: !1075, file: !1075, line: 55, type: !4909, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1074, retainedNodes: !4945)
!4909 = !DISubroutineType(types: !4910)
!4910 = !{!89, !4911}
!4911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4912, size: 64)
!4912 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !115, line: 7, baseType: !4913)
!4913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !117, line: 49, size: 1728, elements: !4914)
!4914 = !{!4915, !4916, !4917, !4918, !4919, !4920, !4921, !4922, !4923, !4924, !4925, !4926, !4927, !4928, !4930, !4931, !4932, !4933, !4934, !4935, !4936, !4937, !4938, !4939, !4940, !4941, !4942, !4943, !4944}
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4913, file: !117, line: 51, baseType: !89, size: 32)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4913, file: !117, line: 54, baseType: !121, size: 64, offset: 64)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4913, file: !117, line: 55, baseType: !121, size: 64, offset: 128)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4913, file: !117, line: 56, baseType: !121, size: 64, offset: 192)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4913, file: !117, line: 57, baseType: !121, size: 64, offset: 256)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4913, file: !117, line: 58, baseType: !121, size: 64, offset: 320)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4913, file: !117, line: 59, baseType: !121, size: 64, offset: 384)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4913, file: !117, line: 60, baseType: !121, size: 64, offset: 448)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4913, file: !117, line: 61, baseType: !121, size: 64, offset: 512)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4913, file: !117, line: 64, baseType: !121, size: 64, offset: 576)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4913, file: !117, line: 65, baseType: !121, size: 64, offset: 640)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4913, file: !117, line: 66, baseType: !121, size: 64, offset: 704)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4913, file: !117, line: 68, baseType: !133, size: 64, offset: 768)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4913, file: !117, line: 70, baseType: !4929, size: 64, offset: 832)
!4929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4913, size: 64)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4913, file: !117, line: 72, baseType: !89, size: 32, offset: 896)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4913, file: !117, line: 73, baseType: !89, size: 32, offset: 928)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4913, file: !117, line: 74, baseType: !140, size: 64, offset: 960)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4913, file: !117, line: 77, baseType: !144, size: 16, offset: 1024)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4913, file: !117, line: 78, baseType: !146, size: 8, offset: 1040)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4913, file: !117, line: 79, baseType: !59, size: 8, offset: 1048)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4913, file: !117, line: 81, baseType: !149, size: 64, offset: 1088)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4913, file: !117, line: 89, baseType: !152, size: 64, offset: 1152)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4913, file: !117, line: 91, baseType: !154, size: 64, offset: 1216)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4913, file: !117, line: 92, baseType: !157, size: 64, offset: 1280)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4913, file: !117, line: 93, baseType: !4929, size: 64, offset: 1344)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4913, file: !117, line: 94, baseType: !161, size: 64, offset: 1408)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4913, file: !117, line: 95, baseType: !163, size: 64, offset: 1472)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4913, file: !117, line: 96, baseType: !89, size: 32, offset: 1536)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4913, file: !117, line: 98, baseType: !168, size: 160, offset: 1568)
!4945 = !{!4946, !4947, !4949, !4950}
!4946 = !DILocalVariable(name: "stream", arg: 1, scope: !4908, file: !1075, line: 55, type: !4911)
!4947 = !DILocalVariable(name: "some_pending", scope: !4908, file: !1075, line: 57, type: !4948)
!4948 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !112)
!4949 = !DILocalVariable(name: "prev_fail", scope: !4908, file: !1075, line: 58, type: !4948)
!4950 = !DILocalVariable(name: "fclose_fail", scope: !4908, file: !1075, line: 59, type: !4948)
!4951 = !DILocation(line: 0, scope: !4908)
!4952 = !DILocation(line: 57, column: 30, scope: !4908)
!4953 = !DILocalVariable(name: "__stream", arg: 1, scope: !4954, file: !1536, line: 135, type: !4911)
!4954 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1536, file: !1536, line: 135, type: !4909, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1074, retainedNodes: !4955)
!4955 = !{!4953}
!4956 = !DILocation(line: 0, scope: !4954, inlinedAt: !4957)
!4957 = distinct !DILocation(line: 58, column: 27, scope: !4908)
!4958 = !DILocation(line: 137, column: 10, scope: !4954, inlinedAt: !4957)
!4959 = !DILocation(line: 58, column: 43, scope: !4908)
!4960 = !DILocation(line: 59, column: 29, scope: !4908)
!4961 = !DILocation(line: 59, column: 45, scope: !4908)
!4962 = !DILocation(line: 69, column: 17, scope: !4963)
!4963 = distinct !DILexicalBlock(scope: !4908, file: !1075, line: 69, column: 7)
!4964 = !DILocation(line: 57, column: 50, scope: !4908)
!4965 = !DILocation(line: 69, column: 33, scope: !4963)
!4966 = !DILocation(line: 69, column: 53, scope: !4963)
!4967 = !DILocation(line: 69, column: 59, scope: !4963)
!4968 = !DILocation(line: 69, column: 7, scope: !4908)
!4969 = !DILocation(line: 71, column: 11, scope: !4970)
!4970 = distinct !DILexicalBlock(scope: !4963, file: !1075, line: 70, column: 5)
!4971 = !DILocation(line: 72, column: 9, scope: !4972)
!4972 = distinct !DILexicalBlock(scope: !4970, file: !1075, line: 71, column: 11)
!4973 = !DILocation(line: 72, column: 15, scope: !4972)
!4974 = !DILocation(line: 77, column: 1, scope: !4908)
!4975 = !DISubprogram(name: "__fpending", scope: !2302, file: !2302, line: 75, type: !4976, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1154)
!4976 = !DISubroutineType(types: !4977)
!4977 = !{!163, !4911}
!4978 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !996, file: !996, line: 100, type: !4979, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !999, retainedNodes: !4982)
!4979 = !DISubroutineType(types: !4980)
!4980 = !{!163, !3026, !171, !163, !4981}
!4981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!4982 = !{!4983, !4984, !4985, !4986, !4987}
!4983 = !DILocalVariable(name: "pwc", arg: 1, scope: !4978, file: !996, line: 100, type: !3026)
!4984 = !DILocalVariable(name: "s", arg: 2, scope: !4978, file: !996, line: 100, type: !171)
!4985 = !DILocalVariable(name: "n", arg: 3, scope: !4978, file: !996, line: 100, type: !163)
!4986 = !DILocalVariable(name: "ps", arg: 4, scope: !4978, file: !996, line: 100, type: !4981)
!4987 = !DILocalVariable(name: "ret", scope: !4978, file: !996, line: 130, type: !163)
!4988 = !DILocation(line: 0, scope: !4978)
!4989 = !DILocation(line: 105, column: 9, scope: !4990)
!4990 = distinct !DILexicalBlock(scope: !4978, file: !996, line: 105, column: 7)
!4991 = !DILocation(line: 105, column: 7, scope: !4978)
!4992 = !DILocation(line: 117, column: 10, scope: !4993)
!4993 = distinct !DILexicalBlock(scope: !4978, file: !996, line: 117, column: 7)
!4994 = !DILocation(line: 117, column: 7, scope: !4978)
!4995 = !DILocation(line: 130, column: 16, scope: !4978)
!4996 = !DILocation(line: 135, column: 11, scope: !4997)
!4997 = distinct !DILexicalBlock(scope: !4978, file: !996, line: 135, column: 7)
!4998 = !DILocation(line: 135, column: 25, scope: !4997)
!4999 = !DILocation(line: 135, column: 30, scope: !4997)
!5000 = !DILocation(line: 135, column: 7, scope: !4978)
!5001 = !DILocalVariable(name: "ps", arg: 1, scope: !5002, file: !3000, line: 1135, type: !4981)
!5002 = distinct !DISubprogram(name: "mbszero", scope: !3000, file: !3000, line: 1135, type: !5003, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !999, retainedNodes: !5005)
!5003 = !DISubroutineType(types: !5004)
!5004 = !{null, !4981}
!5005 = !{!5001}
!5006 = !DILocation(line: 0, scope: !5002, inlinedAt: !5007)
!5007 = distinct !DILocation(line: 137, column: 5, scope: !4997)
!5008 = !DILocalVariable(name: "__dest", arg: 1, scope: !5009, file: !2820, line: 57, type: !161)
!5009 = distinct !DISubprogram(name: "memset", scope: !2820, file: !2820, line: 57, type: !3009, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !999, retainedNodes: !5010)
!5010 = !{!5008, !5011, !5012}
!5011 = !DILocalVariable(name: "__ch", arg: 2, scope: !5009, file: !2820, line: 57, type: !89)
!5012 = !DILocalVariable(name: "__len", arg: 3, scope: !5009, file: !2820, line: 57, type: !163)
!5013 = !DILocation(line: 0, scope: !5009, inlinedAt: !5014)
!5014 = distinct !DILocation(line: 1137, column: 3, scope: !5002, inlinedAt: !5007)
!5015 = !DILocation(line: 59, column: 10, scope: !5009, inlinedAt: !5014)
!5016 = !DILocation(line: 137, column: 5, scope: !4997)
!5017 = !DILocation(line: 138, column: 11, scope: !5018)
!5018 = distinct !DILexicalBlock(scope: !4978, file: !996, line: 138, column: 7)
!5019 = !DILocation(line: 138, column: 7, scope: !4978)
!5020 = !DILocation(line: 139, column: 5, scope: !5018)
!5021 = !DILocation(line: 143, column: 26, scope: !5022)
!5022 = distinct !DILexicalBlock(scope: !4978, file: !996, line: 143, column: 7)
!5023 = !DILocation(line: 143, column: 41, scope: !5022)
!5024 = !DILocation(line: 143, column: 7, scope: !4978)
!5025 = !DILocation(line: 145, column: 15, scope: !5026)
!5026 = distinct !DILexicalBlock(scope: !5027, file: !996, line: 145, column: 11)
!5027 = distinct !DILexicalBlock(scope: !5022, file: !996, line: 144, column: 5)
!5028 = !DILocation(line: 145, column: 11, scope: !5027)
!5029 = !DILocation(line: 146, column: 32, scope: !5026)
!5030 = !DILocation(line: 146, column: 16, scope: !5026)
!5031 = !DILocation(line: 146, column: 14, scope: !5026)
!5032 = !DILocation(line: 146, column: 9, scope: !5026)
!5033 = !DILocation(line: 286, column: 1, scope: !4978)
!5034 = !DISubprogram(name: "mbsinit", scope: !5035, file: !5035, line: 293, type: !5036, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1154)
!5035 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!5036 = !DISubroutineType(types: !5037)
!5037 = !{!89, !5038}
!5038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5039, size: 64)
!5039 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1002)
!5040 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !1077, file: !1077, line: 27, type: !4474, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1076, retainedNodes: !5041)
!5041 = !{!5042, !5043, !5044, !5045}
!5042 = !DILocalVariable(name: "ptr", arg: 1, scope: !5040, file: !1077, line: 27, type: !161)
!5043 = !DILocalVariable(name: "nmemb", arg: 2, scope: !5040, file: !1077, line: 27, type: !163)
!5044 = !DILocalVariable(name: "size", arg: 3, scope: !5040, file: !1077, line: 27, type: !163)
!5045 = !DILocalVariable(name: "nbytes", scope: !5040, file: !1077, line: 29, type: !163)
!5046 = !DILocation(line: 0, scope: !5040)
!5047 = !DILocation(line: 30, column: 7, scope: !5048)
!5048 = distinct !DILexicalBlock(scope: !5040, file: !1077, line: 30, column: 7)
!5049 = !DILocalVariable(name: "ptr", arg: 1, scope: !5050, file: !4561, line: 2057, type: !161)
!5050 = distinct !DISubprogram(name: "rpl_realloc", scope: !4561, file: !4561, line: 2057, type: !309, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1076, retainedNodes: !5051)
!5051 = !{!5049, !5052}
!5052 = !DILocalVariable(name: "size", arg: 2, scope: !5050, file: !4561, line: 2057, type: !163)
!5053 = !DILocation(line: 0, scope: !5050, inlinedAt: !5054)
!5054 = distinct !DILocation(line: 37, column: 10, scope: !5040)
!5055 = !DILocation(line: 2059, column: 24, scope: !5050, inlinedAt: !5054)
!5056 = !DILocation(line: 2059, column: 10, scope: !5050, inlinedAt: !5054)
!5057 = !DILocation(line: 37, column: 3, scope: !5040)
!5058 = !DILocation(line: 32, column: 7, scope: !5059)
!5059 = distinct !DILexicalBlock(scope: !5048, file: !1077, line: 31, column: 5)
!5060 = !DILocation(line: 32, column: 13, scope: !5059)
!5061 = !DILocation(line: 33, column: 7, scope: !5059)
!5062 = !DILocation(line: 38, column: 1, scope: !5040)
!5063 = distinct !DISubprogram(name: "hard_locale", scope: !1014, file: !1014, line: 28, type: !1601, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1079, retainedNodes: !5064)
!5064 = !{!5065, !5066}
!5065 = !DILocalVariable(name: "category", arg: 1, scope: !5063, file: !1014, line: 28, type: !89)
!5066 = !DILocalVariable(name: "locale", scope: !5063, file: !1014, line: 30, type: !5067)
!5067 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !5068)
!5068 = !{!5069}
!5069 = !DISubrange(count: 257)
!5070 = !DILocation(line: 0, scope: !5063)
!5071 = !DILocation(line: 30, column: 3, scope: !5063)
!5072 = !DILocation(line: 30, column: 8, scope: !5063)
!5073 = !DILocation(line: 32, column: 7, scope: !5074)
!5074 = distinct !DILexicalBlock(scope: !5063, file: !1014, line: 32, column: 7)
!5075 = !DILocation(line: 32, column: 7, scope: !5063)
!5076 = !DILocalVariable(name: "__s1", arg: 1, scope: !5077, file: !1182, line: 1359, type: !171)
!5077 = distinct !DISubprogram(name: "streq", scope: !1182, file: !1182, line: 1359, type: !1183, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1079, retainedNodes: !5078)
!5078 = !{!5076, !5079}
!5079 = !DILocalVariable(name: "__s2", arg: 2, scope: !5077, file: !1182, line: 1359, type: !171)
!5080 = !DILocation(line: 0, scope: !5077, inlinedAt: !5081)
!5081 = distinct !DILocation(line: 35, column: 9, scope: !5082)
!5082 = distinct !DILexicalBlock(scope: !5063, file: !1014, line: 35, column: 7)
!5083 = !DILocation(line: 1361, column: 11, scope: !5077, inlinedAt: !5081)
!5084 = !DILocation(line: 1361, column: 10, scope: !5077, inlinedAt: !5081)
!5085 = !DILocation(line: 35, column: 29, scope: !5082)
!5086 = !DILocation(line: 0, scope: !5077, inlinedAt: !5087)
!5087 = distinct !DILocation(line: 35, column: 32, scope: !5082)
!5088 = !DILocation(line: 1361, column: 11, scope: !5077, inlinedAt: !5087)
!5089 = !DILocation(line: 1361, column: 10, scope: !5077, inlinedAt: !5087)
!5090 = !DILocation(line: 35, column: 7, scope: !5063)
!5091 = !DILocation(line: 46, column: 3, scope: !5063)
!5092 = !DILocation(line: 47, column: 1, scope: !5063)
!5093 = distinct !DISubprogram(name: "setlocale_null_r", scope: !1082, file: !1082, line: 154, type: !5094, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1081, retainedNodes: !5096)
!5094 = !DISubroutineType(types: !5095)
!5095 = !{!89, !89, !121, !163}
!5096 = !{!5097, !5098, !5099}
!5097 = !DILocalVariable(name: "category", arg: 1, scope: !5093, file: !1082, line: 154, type: !89)
!5098 = !DILocalVariable(name: "buf", arg: 2, scope: !5093, file: !1082, line: 154, type: !121)
!5099 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5093, file: !1082, line: 154, type: !163)
!5100 = !DILocation(line: 0, scope: !5093)
!5101 = !DILocation(line: 159, column: 10, scope: !5093)
!5102 = !DILocation(line: 159, column: 3, scope: !5093)
!5103 = distinct !DISubprogram(name: "setlocale_null", scope: !1082, file: !1082, line: 186, type: !5104, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1081, retainedNodes: !5106)
!5104 = !DISubroutineType(types: !5105)
!5105 = !{!171, !89}
!5106 = !{!5107}
!5107 = !DILocalVariable(name: "category", arg: 1, scope: !5103, file: !1082, line: 186, type: !89)
!5108 = !DILocation(line: 0, scope: !5103)
!5109 = !DILocation(line: 189, column: 10, scope: !5103)
!5110 = !DILocation(line: 189, column: 3, scope: !5103)
!5111 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !1084, file: !1084, line: 35, type: !5104, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1083, retainedNodes: !5112)
!5112 = !{!5113, !5114}
!5113 = !DILocalVariable(name: "category", arg: 1, scope: !5111, file: !1084, line: 35, type: !89)
!5114 = !DILocalVariable(name: "result", scope: !5111, file: !1084, line: 37, type: !171)
!5115 = !DILocation(line: 0, scope: !5111)
!5116 = !DILocation(line: 37, column: 24, scope: !5111)
!5117 = !DILocation(line: 62, column: 3, scope: !5111)
!5118 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !1084, file: !1084, line: 66, type: !5094, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1083, retainedNodes: !5119)
!5119 = !{!5120, !5121, !5122, !5123, !5124}
!5120 = !DILocalVariable(name: "category", arg: 1, scope: !5118, file: !1084, line: 66, type: !89)
!5121 = !DILocalVariable(name: "buf", arg: 2, scope: !5118, file: !1084, line: 66, type: !121)
!5122 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5118, file: !1084, line: 66, type: !163)
!5123 = !DILocalVariable(name: "result", scope: !5118, file: !1084, line: 111, type: !171)
!5124 = !DILocalVariable(name: "length", scope: !5125, file: !1084, line: 125, type: !163)
!5125 = distinct !DILexicalBlock(scope: !5126, file: !1084, line: 124, column: 5)
!5126 = distinct !DILexicalBlock(scope: !5118, file: !1084, line: 113, column: 7)
!5127 = !DILocation(line: 0, scope: !5118)
!5128 = !DILocation(line: 0, scope: !5111, inlinedAt: !5129)
!5129 = distinct !DILocation(line: 111, column: 24, scope: !5118)
!5130 = !DILocation(line: 37, column: 24, scope: !5111, inlinedAt: !5129)
!5131 = !DILocation(line: 113, column: 14, scope: !5126)
!5132 = !DILocation(line: 113, column: 7, scope: !5118)
!5133 = !DILocation(line: 116, column: 19, scope: !5134)
!5134 = distinct !DILexicalBlock(scope: !5135, file: !1084, line: 116, column: 11)
!5135 = distinct !DILexicalBlock(scope: !5126, file: !1084, line: 114, column: 5)
!5136 = !DILocation(line: 116, column: 11, scope: !5135)
!5137 = !DILocation(line: 120, column: 16, scope: !5134)
!5138 = !DILocation(line: 120, column: 9, scope: !5134)
!5139 = !DILocation(line: 125, column: 23, scope: !5125)
!5140 = !DILocation(line: 0, scope: !5125)
!5141 = !DILocation(line: 126, column: 18, scope: !5142)
!5142 = distinct !DILexicalBlock(scope: !5125, file: !1084, line: 126, column: 11)
!5143 = !DILocation(line: 126, column: 11, scope: !5125)
!5144 = !DILocation(line: 128, column: 39, scope: !5145)
!5145 = distinct !DILexicalBlock(scope: !5142, file: !1084, line: 127, column: 9)
!5146 = !DILocalVariable(name: "__dest", arg: 1, scope: !5147, file: !2820, line: 26, type: !2823)
!5147 = distinct !DISubprogram(name: "memcpy", scope: !2820, file: !2820, line: 26, type: !2821, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1083, retainedNodes: !5148)
!5148 = !{!5146, !5149, !5150}
!5149 = !DILocalVariable(name: "__src", arg: 2, scope: !5147, file: !2820, line: 26, type: !1313)
!5150 = !DILocalVariable(name: "__len", arg: 3, scope: !5147, file: !2820, line: 26, type: !163)
!5151 = !DILocation(line: 0, scope: !5147, inlinedAt: !5152)
!5152 = distinct !DILocation(line: 128, column: 11, scope: !5145)
!5153 = !DILocation(line: 29, column: 10, scope: !5147, inlinedAt: !5152)
!5154 = !DILocation(line: 129, column: 11, scope: !5145)
!5155 = !DILocation(line: 133, column: 23, scope: !5156)
!5156 = distinct !DILexicalBlock(scope: !5157, file: !1084, line: 133, column: 15)
!5157 = distinct !DILexicalBlock(scope: !5142, file: !1084, line: 132, column: 9)
!5158 = !DILocation(line: 133, column: 15, scope: !5157)
!5159 = !DILocation(line: 138, column: 44, scope: !5160)
!5160 = distinct !DILexicalBlock(scope: !5156, file: !1084, line: 134, column: 13)
!5161 = !DILocation(line: 0, scope: !5147, inlinedAt: !5162)
!5162 = distinct !DILocation(line: 138, column: 15, scope: !5160)
!5163 = !DILocation(line: 29, column: 10, scope: !5147, inlinedAt: !5162)
!5164 = !DILocation(line: 139, column: 15, scope: !5160)
!5165 = !DILocation(line: 139, column: 32, scope: !5160)
!5166 = !DILocation(line: 140, column: 13, scope: !5160)
!5167 = !DILocation(line: 0, scope: !5126)
!5168 = !DILocation(line: 145, column: 1, scope: !5118)
