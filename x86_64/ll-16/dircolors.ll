; ModuleID = 'src/dircolors.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
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
@print_ls_colors = internal unnamed_addr global i1 false, align 1, !dbg !671
@.str.15 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !224
@.str.16 = private unnamed_addr constant [15 x i8] c"H. Peter Anvin\00", align 1, !dbg !229
@optind = external local_unnamed_addr global i32, align 4
@.str.17 = private unnamed_addr constant [92 x i8] c"the options to output non shell syntax,\0Aand to select a shell syntax are mutually exclusive\00", align 1, !dbg !234
@.str.18 = private unnamed_addr constant [70 x i8] c"options --print-database and --print-ls-colors are mutually exclusive\00", align 1, !dbg !239
@.str.19 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1, !dbg !241
@.str.20 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1, !dbg !246
@.str.21 = private unnamed_addr constant [60 x i8] c"file operands cannot be combined with --print-database (-p)\00", align 1, !dbg !248
@G_line = internal constant [5616 x i8] c"# Configuration file for dircolors, a utility to help you set the\00# LS_COLORS environment variable used by GNU ls with the --color option.\00# Copyright (C) 1996-2026 Free Software Foundation, Inc.\00# Copying and distribution of this file, with or without modification,\00# are permitted provided the copyright notice and this notice are preserved.\00#\00# The keywords COLOR, OPTIONS, and EIGHTBIT (honored by the\00# slackware version of dircolors) are recognized but ignored.\00# Global config options can be specified before TERM or COLORTERM entries\00# ===================================================================\00# Terminal filters\00# ===================================================================\00# Below are TERM or COLORTERM entries, which can be glob patterns, which\00# restrict following config to systems with matching environment variables.\00COLORTERM ?*\00TERM Eterm\00TERM ansi\00TERM *color*\00TERM con[0-9]*x[0-9]*\00TERM cons25\00TERM console\00TERM cygwin\00TERM *direct*\00TERM dtterm\00TERM gnome\00TERM hurd\00TERM jfbterm\00TERM konsole\00TERM kterm\00TERM linux\00TERM linux-c\00TERM mlterm\00TERM putty\00TERM rxvt*\00TERM screen*\00TERM st\00TERM terminator\00TERM tmux*\00TERM vt100\00TERM vt220\00TERM xterm*\00# ===================================================================\00# Basic file attributes\00# ===================================================================\00# Below are the color init strings for the basic file types.\00# One can use codes for 256 or more colors supported by modern terminals.\00# The default color codes use the capabilities of an 8 color terminal\00# with some additional attributes as per the following codes:\00# Attribute codes:\00# 00=none 01=bold 04=underscore 05=blink 07=reverse 08=concealed\00# Text color codes:\00# 30=black 31=red 32=green 33=yellow 34=blue 35=magenta 36=cyan 37=white\00# Background color codes:\00# 40=black 41=red 42=green 43=yellow 44=blue 45=magenta 46=cyan 47=white\00#NORMAL 00 # no color code at all\00#FILE 00 # regular file: use no color at all\00RESET 0 # reset to \22normal\22 color\00DIR 01;34 # directory\00LINK 01;36 # symbolic link. (If you set this to 'target' instead of a\00 # numerical value, the color is as for the file pointed to.)\00MULTIHARDLINK 00 # regular file with more than one link\00FIFO 40;33 # pipe\00SOCK 01;35 # socket\00DOOR 01;35 # door\00BLK 40;33;01 # block device driver\00CHR 40;33;01 # character device driver\00ORPHAN 40;31;01 # symlink to nonexistent file, or non-stat'able file ...\00MISSING 00 # ... and the files they point to\00SETUID 37;41 # regular file that is setuid (u+s)\00SETGID 30;43 # regular file that is setgid (g+s)\00CAPABILITY 00 # regular file with capability (very expensive to lookup)\00STICKY_OTHER_WRITABLE 30;42 # dir that is sticky and other-writable (+t,o+w)\00OTHER_WRITABLE 34;42 # dir that is other-writable (o+w) and not sticky\00STICKY 37;44 # dir with the sticky bit set (+t) and not other-writable\00# This is for regular files with execute permission:\00EXEC 01;32\00# ===================================================================\00# File extension attributes\00# ===================================================================\00# List any file extensions like '.gz' or '.tar' that you would like ls\00# to color below. Put the suffix, a space, and the color init string.\00# (and any comments you want to add after a '#').\00# Suffixes are matched case insensitively, but if you define different\00# init strings for separate cases, those will be honored.\00#\00# If you use DOS-style suffixes, you may want to uncomment the following:\00#.cmd 01;32 # executables (bright green)\00#.exe 01;32\00#.com 01;32\00#.btm 01;32\00#.bat 01;32\00# Or if you want to color scripts even if they do not have the\00# executable bit actually set.\00#.sh 01;32\00#.csh 01;32\00# archives or compressed (bright red)\00.7z 01;31\00.ace 01;31\00.alz 01;31\00.apk 01;31\00.arc 01;31\00.arj 01;31\00.bz 01;31\00.bz2 01;31\00.cab 01;31\00.cpio 01;31\00.crate 01;31\00.deb 01;31\00.drpm 01;31\00.dwm 01;31\00.dz 01;31\00.ear 01;31\00.egg 01;31\00.esd 01;31\00.gz 01;31\00.jar 01;31\00.lha 01;31\00.lrz 01;31\00.lz 01;31\00.lz4 01;31\00.lzh 01;31\00.lzma 01;31\00.lzo 01;31\00.pyz 01;31\00.rar 01;31\00.rpm 01;31\00.rz 01;31\00.sar 01;31\00.swm 01;31\00.t7z 01;31\00.tar 01;31\00.taz 01;31\00.tbz 01;31\00.tbz2 01;31\00.tgz 01;31\00.tlz 01;31\00.txz 01;31\00.tz 01;31\00.tzo 01;31\00.tzst 01;31\00.udeb 01;31\00.war 01;31\00.whl 01;31\00.wim 01;31\00.xz 01;31\00.z 01;31\00.zip 01;31\00.zoo 01;31\00.zst 01;31\00# image formats\00.avif 01;35\00.jpg 01;35\00.jpeg 01;35\00.jxl 01;35\00.mjpg 01;35\00.mjpeg 01;35\00.gif 01;35\00.bmp 01;35\00.pbm 01;35\00.pgm 01;35\00.ppm 01;35\00.tga 01;35\00.xbm 01;35\00.xpm 01;35\00.tif 01;35\00.tiff 01;35\00.png 01;35\00.svg 01;35\00.svgz 01;35\00.mng 01;35\00.pcx 01;35\00.mov 01;35\00.mpg 01;35\00.mpeg 01;35\00.m2v 01;35\00.mkv 01;35\00.webm 01;35\00.webp 01;35\00.ogm 01;35\00.mp4 01;35\00.m4v 01;35\00.mp4v 01;35\00.vob 01;35\00.qt 01;35\00.nuv 01;35\00.wmv 01;35\00.asf 01;35\00.rm 01;35\00.rmvb 01;35\00.flc 01;35\00.avi 01;35\00.fli 01;35\00.flv 01;35\00.gl 01;35\00.dl 01;35\00.xcf 01;35\00.xwd 01;35\00.yuv 01;35\00.cgm 01;35\00.emf 01;35\00# https://wiki.xiph.org/MIME_Types_and_File_Extensions\00.ogv 01;35\00.ogx 01;35\00# audio formats\00.aac 00;36\00.au 00;36\00.flac 00;36\00.m4a 00;36\00.mid 00;36\00.midi 00;36\00.mka 00;36\00.mp3 00;36\00.mpc 00;36\00.ogg 00;36\00.ra 00;36\00.wav 00;36\00# https://wiki.xiph.org/MIME_Types_and_File_Extensions\00.oga 00;36\00.opus 00;36\00.spx 00;36\00.xspf 00;36\00# backup files\00*~ 00;90\00*# 00;90\00.bak 00;90\00.crdownload 00;90\00.dpkg-dist 00;90\00.dpkg-new 00;90\00.dpkg-old 00;90\00.dpkg-tmp 00;90\00.old 00;90\00.orig 00;90\00.part 00;90\00.rej 00;90\00.rpmnew 00;90\00.rpmorig 00;90\00.rpmsave 00;90\00.swp 00;90\00.tmp 00;90\00.ucf-dist 00;90\00.ucf-new 00;90\00.ucf-old 00;90\00#\00# Subsequent TERM or COLORTERM entries, can be used to add / override\00# config specific to those matching environment variables.\00", align 16, !dbg !483
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
@slack_codes = internal unnamed_addr constant [38 x ptr] [ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr null], align 16, !dbg !599
@ls_codes = internal unnamed_addr constant [38 x ptr] [ptr @.str.119, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.123, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.128, ptr @.str.129, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.132, ptr @.str.133, ptr @.str.133, ptr @.str.134, ptr @.str.134, ptr @.str.135, ptr @.str.135, ptr @.str.136, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.138, ptr @.str.139, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr null], align 16, !dbg !653
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
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !692
@.str.38 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !684
@.str.1.39 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !686
@.str.2.40 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !688
@.str.3.41 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !690
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !694
@.str.42 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !700
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !732
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !702
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
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !831
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !845
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !883
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !890
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !847
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !892
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !835
@.str.10.178 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !852
@.str.11.176 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !854
@.str.12.179 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !856
@.str.13.177 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !858
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !860
@.str.186 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !895
@.str.1.187 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !898
@.str.2.188 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !900
@.str.3.189 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !902
@.str.4.190 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !904
@.str.5.191 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !906
@.str.6.192 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !911
@.str.7.193 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !916
@.str.8.194 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !918
@.str.9.195 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !923
@.str.10.196 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !928
@.str.11.197 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !930
@.str.12.198 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !935
@.str.13.199 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !937
@.str.14.200 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !939
@.str.15.201 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !944
@.str.16.202 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !949
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.207 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !951
@.str.18.208 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !953
@.str.19.209 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !955
@.str.20.210 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !957
@.str.21.211 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !959
@.str.22.212 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !961
@.str.23.213 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !963
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !968
@exit_failure = dso_local global i32 1, align 4, !dbg !976
@.str.228 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !982
@.str.1.226 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !985
@.str.2.227 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !987
@.str.233 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !989
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !992
@.str.1.238 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !1007

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !1087 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1091, metadata !DIExpression()), !dbg !1092
  %2 = icmp eq i32 %0, 0, !dbg !1093
  br i1 %2, label %8, label %3, !dbg !1095

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !1096, !tbaa !1098
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #38, !dbg !1096
  %6 = load ptr, ptr @program_name, align 8, !dbg !1096, !tbaa !1098
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #38, !dbg !1096
  br label %38, !dbg !1096

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #38, !dbg !1102
  %10 = load ptr, ptr @program_name, align 8, !dbg !1102, !tbaa !1098
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #38, !dbg !1102
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #38, !dbg !1104
  %13 = load ptr, ptr @stdout, align 8, !dbg !1104, !tbaa !1098
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !1104
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #38, !dbg !1105
  tail call fastcc void @oputs_(ptr noundef %15), !dbg !1105
  %16 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #38, !dbg !1106
  tail call fastcc void @oputs_(ptr noundef %16), !dbg !1106
  %17 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #38, !dbg !1107
  tail call fastcc void @oputs_(ptr noundef %17), !dbg !1107
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #38, !dbg !1108
  tail call fastcc void @oputs_(ptr noundef %18), !dbg !1108
  %19 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #38, !dbg !1109
  tail call fastcc void @oputs_(ptr noundef %19), !dbg !1109
  %20 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #38, !dbg !1110
  tail call fastcc void @oputs_(ptr noundef %20), !dbg !1110
  %21 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 5) #38, !dbg !1111
  %22 = load ptr, ptr @stdout, align 8, !dbg !1111, !tbaa !1098
  %23 = tail call i32 @fputs_unlocked(ptr noundef %21, ptr noundef %22), !dbg !1111
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1112, metadata !DIExpression()), !dbg !1129
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1124, metadata !DIExpression()), !dbg !1129
  call void @llvm.dbg.value(metadata ptr poison, metadata !1124, metadata !DIExpression()), !dbg !1129
  tail call void @emit_bug_reporting_address() #38, !dbg !1131
  %24 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #38, !dbg !1132
  call void @llvm.dbg.value(metadata ptr %24, metadata !1127, metadata !DIExpression()), !dbg !1129
  %25 = icmp eq ptr %24, null, !dbg !1133
  br i1 %25, label %33, label %26, !dbg !1135

26:                                               ; preds = %8
  %27 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %24, ptr noundef nonnull dereferenceable(4) @.str.57, i64 noundef 3) #39, !dbg !1136
  %28 = icmp eq i32 %27, 0, !dbg !1136
  br i1 %28, label %33, label %29, !dbg !1137

29:                                               ; preds = %26
  %30 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.58, i32 noundef 5) #38, !dbg !1138
  %31 = load ptr, ptr @stdout, align 8, !dbg !1138, !tbaa !1098
  %32 = tail call i32 @fputs_unlocked(ptr noundef %30, ptr noundef %31), !dbg !1138
  br label %33, !dbg !1140

33:                                               ; preds = %8, %26, %29
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1124, metadata !DIExpression()), !dbg !1129
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1128, metadata !DIExpression()), !dbg !1129
  %34 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.59, i32 noundef 5) #38, !dbg !1141
  %35 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %34, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.3) #38, !dbg !1141
  %36 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.60, i32 noundef 5) #38, !dbg !1142
  %37 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %36, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.61) #38, !dbg !1142
  br label %38

38:                                               ; preds = %33, %3
  tail call void @exit(i32 noundef %0) #40, !dbg !1143
  unreachable, !dbg !1143
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1144 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !1149 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !1155 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !1158 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !330 {
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !334, metadata !DIExpression()), !dbg !1162
  call void @llvm.dbg.value(metadata ptr %0, metadata !335, metadata !DIExpression()), !dbg !1162
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !1163, !tbaa !1164
  %3 = icmp eq i32 %2, -1, !dbg !1166
  br i1 %3, label %4, label %16, !dbg !1167

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.27) #38, !dbg !1168
  call void @llvm.dbg.value(metadata ptr %5, metadata !336, metadata !DIExpression()), !dbg !1169
  %6 = icmp eq ptr %5, null, !dbg !1170
  br i1 %6, label %14, label %7, !dbg !1171

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !1172, !tbaa !1173
  %9 = icmp eq i8 %8, 0, !dbg !1172
  br i1 %9, label %14, label %10, !dbg !1174

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !1175, metadata !DIExpression()), !dbg !1182
  call void @llvm.dbg.value(metadata ptr @.str.28, metadata !1181, metadata !DIExpression()), !dbg !1182
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.28) #39, !dbg !1184
  %12 = icmp eq i32 %11, 0, !dbg !1185
  %13 = zext i1 %12 to i32, !dbg !1174
  br label %14, !dbg !1174

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !1186, !tbaa !1164
  br label %16, !dbg !1187

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !1188
  %18 = icmp eq i32 %17, 0, !dbg !1188
  br i1 %18, label %22, label %19, !dbg !1190

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !1191, !tbaa !1098
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !1191
  br label %128, !dbg !1193

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !339, metadata !DIExpression()), !dbg !1162
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.29) #39, !dbg !1194
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !1195
  call void @llvm.dbg.value(metadata ptr %24, metadata !340, metadata !DIExpression()), !dbg !1162
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #39, !dbg !1196
  call void @llvm.dbg.value(metadata ptr %25, metadata !341, metadata !DIExpression()), !dbg !1162
  %26 = icmp eq ptr %25, null, !dbg !1197
  br i1 %26, label %58, label %27, !dbg !1198

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !1199
  br i1 %28, label %58, label %29, !dbg !1200

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata ptr %24, metadata !342, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i64 0, metadata !346, metadata !DIExpression()), !dbg !1201
  %30 = icmp ult ptr %24, %25, !dbg !1202
  br i1 %30, label %31, label %52, !dbg !1203

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #41, !dbg !1162
  %33 = load ptr, ptr %32, align 8, !tbaa !1098
  br label %34, !dbg !1203

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  call void @llvm.dbg.value(metadata ptr %35, metadata !342, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i64 %36, metadata !346, metadata !DIExpression()), !dbg !1201
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !1204
  call void @llvm.dbg.value(metadata ptr %37, metadata !342, metadata !DIExpression()), !dbg !1201
  %38 = load i8, ptr %35, align 1, !dbg !1204, !tbaa !1173
  %39 = sext i8 %38 to i64, !dbg !1204
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !1204
  %41 = load i16, ptr %40, align 2, !dbg !1204, !tbaa !1205
  %42 = freeze i16 %41, !dbg !1207
  %43 = lshr i16 %42, 13, !dbg !1207
  %44 = and i16 %43, 1, !dbg !1207
  %45 = zext i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !1208
  call void @llvm.dbg.value(metadata i64 %46, metadata !346, metadata !DIExpression()), !dbg !1201
  %47 = icmp ult ptr %37, %25, !dbg !1202
  %48 = icmp ult i64 %46, 2, !dbg !1209
  %49 = select i1 %47, i1 %48, i1 false, !dbg !1209
  br i1 %49, label %34, label %50, !dbg !1203, !llvm.loop !1210

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !1212
  br i1 %51, label %52, label %54, !dbg !1214

52:                                               ; preds = %29, %50
  %53 = phi i1 [ %51, %50 ], [ true, %29 ]
  br label %54, !dbg !1214

54:                                               ; preds = %50, %52
  %55 = phi i1 [ %53, %52 ], [ %51, %50 ]
  %56 = phi ptr [ %25, %52 ], [ %24, %50 ]
  %57 = zext i1 %55 to i8, !dbg !1214
  call void @llvm.dbg.value(metadata i8 %57, metadata !339, metadata !DIExpression()), !dbg !1162
  call void @llvm.dbg.value(metadata ptr %56, metadata !341, metadata !DIExpression()), !dbg !1162
  br label %58, !dbg !1215

58:                                               ; preds = %22, %27, %54
  %59 = phi ptr [ %56, %54 ], [ %24, %27 ], [ %24, %22 ], !dbg !1162
  %60 = phi i8 [ %57, %54 ], [ 1, %27 ], [ 0, %22 ], !dbg !1162
  call void @llvm.dbg.value(metadata i8 %60, metadata !339, metadata !DIExpression()), !dbg !1162
  call void @llvm.dbg.value(metadata ptr %59, metadata !341, metadata !DIExpression()), !dbg !1162
  %61 = tail call i64 @strcspn(ptr noundef %59, ptr noundef nonnull @.str.30) #39, !dbg !1216
  call void @llvm.dbg.value(metadata i64 %61, metadata !347, metadata !DIExpression()), !dbg !1162
  %62 = getelementptr inbounds i8, ptr %59, i64 %61, !dbg !1217
  call void @llvm.dbg.value(metadata ptr %62, metadata !348, metadata !DIExpression()), !dbg !1162
  br label %63, !dbg !1218

63:                                               ; preds = %96, %58
  %64 = phi ptr [ %62, %58 ], [ %97, %96 ], !dbg !1162
  %65 = phi i8 [ %60, %58 ], [ %73, %96 ], !dbg !1162
  call void @llvm.dbg.value(metadata i8 %65, metadata !339, metadata !DIExpression()), !dbg !1162
  call void @llvm.dbg.value(metadata ptr %64, metadata !348, metadata !DIExpression()), !dbg !1162
  %66 = load i8, ptr %64, align 1, !dbg !1219, !tbaa !1173
  switch i8 %66, label %72 [
    i8 0, label %98
    i8 10, label %98
    i8 45, label %67
  ], !dbg !1220

67:                                               ; preds = %63
  %68 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !1221
  %69 = load i8, ptr %68, align 1, !dbg !1224, !tbaa !1173
  %70 = icmp eq i8 %69, 45, !dbg !1225
  %71 = select i1 %70, i8 0, i8 %65, !dbg !1226
  br label %72, !dbg !1226

72:                                               ; preds = %67, %63
  %73 = phi i8 [ %65, %63 ], [ %71, %67 ], !dbg !1162
  call void @llvm.dbg.value(metadata i8 %73, metadata !339, metadata !DIExpression()), !dbg !1162
  %74 = tail call ptr @__ctype_b_loc() #41, !dbg !1227
  %75 = load ptr, ptr %74, align 8, !dbg !1227, !tbaa !1098
  %76 = sext i8 %66 to i64, !dbg !1227
  %77 = getelementptr inbounds i16, ptr %75, i64 %76, !dbg !1227
  %78 = load i16, ptr %77, align 2, !dbg !1227, !tbaa !1205
  %79 = and i16 %78, 8192, !dbg !1227
  %80 = icmp eq i16 %79, 0, !dbg !1227
  br i1 %80, label %96, label %81, !dbg !1229

81:                                               ; preds = %72
  %82 = icmp eq i8 %66, 9, !dbg !1230
  br i1 %82, label %98, label %83, !dbg !1233

83:                                               ; preds = %81
  %84 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !1234
  %85 = load i8, ptr %84, align 1, !dbg !1234, !tbaa !1173
  %86 = sext i8 %85 to i64, !dbg !1234
  %87 = getelementptr inbounds i16, ptr %75, i64 %86, !dbg !1234
  %88 = load i16, ptr %87, align 2, !dbg !1234, !tbaa !1205
  %89 = and i16 %88, 8192, !dbg !1234
  %90 = icmp eq i16 %89, 0, !dbg !1234
  br i1 %90, label %91, label %98, !dbg !1235

91:                                               ; preds = %83
  %92 = and i8 %73, 1, !dbg !1236
  %93 = icmp ne i8 %92, 0, !dbg !1236
  %94 = icmp eq i8 %85, 45
  %95 = select i1 %93, i1 true, i1 %94, !dbg !1238
  br i1 %95, label %96, label %98, !dbg !1238

96:                                               ; preds = %91, %72
  %97 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !1239
  call void @llvm.dbg.value(metadata ptr %97, metadata !348, metadata !DIExpression()), !dbg !1162
  br label %63, !dbg !1218, !llvm.loop !1240

98:                                               ; preds = %91, %63, %63, %81, %83
  %99 = ptrtoint ptr %24 to i64, !dbg !1242
  %100 = load ptr, ptr @stdout, align 8, !dbg !1242, !tbaa !1098
  %101 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %100), !dbg !1242
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1175, metadata !DIExpression()), !dbg !1243
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1175, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1175, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1175, metadata !DIExpression()), !dbg !1249
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1175, metadata !DIExpression()), !dbg !1251
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1175, metadata !DIExpression()), !dbg !1253
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1175, metadata !DIExpression()), !dbg !1255
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1175, metadata !DIExpression()), !dbg !1257
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1175, metadata !DIExpression()), !dbg !1259
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1175, metadata !DIExpression()), !dbg !1261
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !353, metadata !DIExpression()), !dbg !1162
  %102 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(7) @.str.44, i64 noundef 6) #39, !dbg !1263
  %103 = icmp eq i32 %102, 0, !dbg !1263
  br i1 %103, label %107, label %104, !dbg !1265

104:                                              ; preds = %98
  %105 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(10) @.str.45, i64 noundef 9) #39, !dbg !1266
  %106 = icmp eq i32 %105, 0, !dbg !1266
  br i1 %106, label %107, label %110, !dbg !1267

107:                                              ; preds = %104, %98
  %108 = trunc i64 %61 to i32, !dbg !1268
  %109 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %108, ptr noundef %59) #38, !dbg !1268
  br label %113, !dbg !1270

110:                                              ; preds = %104
  %111 = trunc i64 %61 to i32, !dbg !1271
  %112 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.3, i32 noundef %111, ptr noundef %59) #38, !dbg !1271
  br label %113

113:                                              ; preds = %110, %107
  %114 = load ptr, ptr @stdout, align 8, !dbg !1273, !tbaa !1098
  %115 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.50, ptr noundef %114), !dbg !1273
  %116 = load ptr, ptr @stdout, align 8, !dbg !1274, !tbaa !1098
  %117 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.51, ptr noundef %116), !dbg !1274
  %118 = ptrtoint ptr %64 to i64, !dbg !1275
  %119 = sub i64 %118, %99, !dbg !1275
  %120 = load ptr, ptr @stdout, align 8, !dbg !1275, !tbaa !1098
  %121 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %119, ptr noundef %120), !dbg !1275
  %122 = load ptr, ptr @stdout, align 8, !dbg !1276, !tbaa !1098
  %123 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.52, ptr noundef %122), !dbg !1276
  %124 = load ptr, ptr @stdout, align 8, !dbg !1277, !tbaa !1098
  %125 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.53, ptr noundef %124), !dbg !1277
  %126 = load ptr, ptr @stdout, align 8, !dbg !1278, !tbaa !1098
  %127 = tail call i32 @fputs_unlocked(ptr noundef nonnull %64, ptr noundef %126), !dbg !1278
  br label %128, !dbg !1279

128:                                              ; preds = %113, %19
  ret void, !dbg !1279
}

; Function Attrs: nounwind
declare !dbg !1280 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1284 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !1288 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1290 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1293 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1296 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1299 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1302 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1308 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1309 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !1315 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1320, metadata !DIExpression()), !dbg !1348
  call void @llvm.dbg.value(metadata ptr %1, metadata !1321, metadata !DIExpression()), !dbg !1348
  call void @llvm.dbg.value(metadata i8 1, metadata !1322, metadata !DIExpression()), !dbg !1348
  call void @llvm.dbg.value(metadata i32 2, metadata !1324, metadata !DIExpression()), !dbg !1348
  call void @llvm.dbg.value(metadata i8 0, metadata !1325, metadata !DIExpression()), !dbg !1348
  %3 = load ptr, ptr %1, align 8, !dbg !1349, !tbaa !1098
  tail call void @set_program_name(ptr noundef %3) #38, !dbg !1350
  %4 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.11) #38, !dbg !1351
  %5 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13) #38, !dbg !1352
  %6 = tail call ptr @textdomain(ptr noundef nonnull @.str.12) #38, !dbg !1353
  %7 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #38, !dbg !1354
  br label %8, !dbg !1355

8:                                                ; preds = %19, %2
  %9 = phi i1 [ false, %19 ], [ true, %2 ]
  %10 = phi i8 [ 1, %19 ], [ 0, %2 ]
  %11 = phi i32 [ %13, %19 ], [ 2, %2 ]
  br label %12, !dbg !1355

12:                                               ; preds = %17, %8
  %13 = phi i32 [ %11, %8 ], [ %18, %17 ]
  br label %14, !dbg !1355

14:                                               ; preds = %12, %20
  call void @llvm.dbg.value(metadata i32 %13, metadata !1324, metadata !DIExpression()), !dbg !1348
  call void @llvm.dbg.value(metadata i8 %10, metadata !1325, metadata !DIExpression()), !dbg !1348
  %15 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.14, ptr noundef nonnull @long_options, ptr noundef null) #38, !dbg !1356
  call void @llvm.dbg.value(metadata i32 %15, metadata !1323, metadata !DIExpression()), !dbg !1348
  switch i32 %15, label %26 [
    i32 -1, label %27
    i32 98, label %17
    i32 99, label %16
    i32 112, label %19
    i32 128, label %20
    i32 -130, label %21
    i32 -131, label %22
  ], !dbg !1355, !llvm.loop !1357

16:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i32 1, metadata !1324, metadata !DIExpression()), !dbg !1348
  br label %17, !dbg !1359

17:                                               ; preds = %14, %16
  %18 = phi i32 [ 1, %16 ], [ 0, %14 ]
  br label %12, !dbg !1355, !llvm.loop !1357

19:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i8 1, metadata !1325, metadata !DIExpression()), !dbg !1348
  br label %8, !dbg !1361, !llvm.loop !1357

20:                                               ; preds = %14
  store i1 true, ptr @print_ls_colors, align 1, !dbg !1362
  br label %14, !dbg !1363, !llvm.loop !1357

21:                                               ; preds = %14
  tail call void @usage(i32 noundef 0) #42, !dbg !1364
  unreachable, !dbg !1364

22:                                               ; preds = %14
  %23 = load ptr, ptr @stdout, align 8, !dbg !1365, !tbaa !1098
  %24 = load ptr, ptr @Version, align 8, !dbg !1365, !tbaa !1098
  %25 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.16) #38, !dbg !1365
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %23, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.15, ptr noundef %24, ptr noundef %25, ptr noundef null) #38, !dbg !1365
  tail call void @exit(i32 noundef 0) #40, !dbg !1365
  unreachable, !dbg !1365

26:                                               ; preds = %14
  tail call void @usage(i32 noundef 1) #42, !dbg !1366
  unreachable, !dbg !1366

27:                                               ; preds = %14
  %28 = load i32, ptr @optind, align 4, !dbg !1367, !tbaa !1164
  %29 = sub nsw i32 %0, %28, !dbg !1368
  call void @llvm.dbg.value(metadata i32 %29, metadata !1320, metadata !DIExpression()), !dbg !1348
  %30 = sext i32 %28 to i64, !dbg !1369
  %31 = getelementptr inbounds ptr, ptr %1, i64 %30, !dbg !1369
  call void @llvm.dbg.value(metadata ptr %31, metadata !1321, metadata !DIExpression()), !dbg !1348
  %32 = load i1, ptr @print_ls_colors, align 1, !dbg !1370
  %33 = zext i1 %32 to i8, !dbg !1372
  %34 = or i8 %10, %33, !dbg !1372
  %35 = icmp ne i8 %34, 0, !dbg !1372
  %36 = icmp ne i32 %13, 2
  %37 = select i1 %35, i1 %36, i1 false, !dbg !1373
  br i1 %37, label %38, label %40, !dbg !1373

38:                                               ; preds = %27
  %39 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.17, i32 noundef 5) #38, !dbg !1374
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %39) #38, !dbg !1374
  tail call void @usage(i32 noundef 1) #42, !dbg !1376
  unreachable, !dbg !1376

40:                                               ; preds = %27
  %41 = xor i1 %32, true, !dbg !1377
  %42 = select i1 %9, i1 true, i1 %41, !dbg !1377
  br i1 %42, label %45, label %43, !dbg !1377

43:                                               ; preds = %40
  %44 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.18, i32 noundef 5) #38, !dbg !1379
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %44) #38, !dbg !1379
  tail call void @usage(i32 noundef 1) #42, !dbg !1381
  unreachable, !dbg !1381

45:                                               ; preds = %40
  %46 = zext i1 %9 to i32, !dbg !1382
  %47 = icmp sgt i32 %29, %46, !dbg !1384
  br i1 %47, label %48, label %59, !dbg !1385

48:                                               ; preds = %45
  %49 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.19, i32 noundef 5) #38, !dbg !1386
  %50 = zext i1 %9 to i64
  %51 = getelementptr inbounds ptr, ptr %31, i64 %50, !dbg !1386
  %52 = load ptr, ptr %51, align 8, !dbg !1386, !tbaa !1098
  %53 = tail call ptr @quote(ptr noundef %52) #38, !dbg !1386
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %49, ptr noundef %53) #38, !dbg !1386
  br i1 %9, label %58, label %54, !dbg !1388

54:                                               ; preds = %48
  %55 = load ptr, ptr @stderr, align 8, !dbg !1389, !tbaa !1098
  %56 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.21, i32 noundef 5) #38, !dbg !1389
  %57 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %55, i32 noundef 1, ptr noundef nonnull @.str.20, ptr noundef %56) #38, !dbg !1389
  br label %58, !dbg !1389

58:                                               ; preds = %54, %48
  tail call void @usage(i32 noundef 1) #42, !dbg !1391
  unreachable, !dbg !1391

59:                                               ; preds = %45
  br i1 %9, label %69, label %60, !dbg !1392

60:                                               ; preds = %59, %60
  %61 = phi ptr [ %65, %60 ], [ @G_line, %59 ]
  call void @llvm.dbg.value(metadata ptr %61, metadata !1326, metadata !DIExpression()), !dbg !1393
  %62 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) %61), !dbg !1394
  %63 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %61) #39, !dbg !1396
  %64 = add i64 %63, 1, !dbg !1397
  %65 = getelementptr inbounds i8, ptr %61, i64 %64, !dbg !1398
  call void @llvm.dbg.value(metadata ptr %65, metadata !1326, metadata !DIExpression()), !dbg !1393
  %66 = ptrtoint ptr %65 to i64, !dbg !1399
  %67 = sub i64 %66, ptrtoint (ptr @G_line to i64), !dbg !1399
  %68 = icmp ult i64 %67, 5616, !dbg !1400
  br i1 %68, label %60, label %141, !dbg !1401, !llvm.loop !1402

69:                                               ; preds = %59
  %70 = select i1 %36, i1 true, i1 %32, !dbg !1404
  br i1 %70, label %87, label %71, !dbg !1404

71:                                               ; preds = %69
  %72 = tail call ptr @getenv(ptr noundef nonnull @.str.70) #38, !dbg !1406
  call void @llvm.dbg.value(metadata ptr %72, metadata !1411, metadata !DIExpression()), !dbg !1414
  %73 = icmp eq ptr %72, null, !dbg !1415
  br i1 %73, label %85, label %74, !dbg !1417

74:                                               ; preds = %71
  %75 = load i8, ptr %72, align 1, !dbg !1418, !tbaa !1173
  %76 = icmp eq i8 %75, 0, !dbg !1419
  br i1 %76, label %85, label %77, !dbg !1420

77:                                               ; preds = %74
  %78 = tail call ptr @last_component(ptr noundef nonnull %72) #39, !dbg !1421
  call void @llvm.dbg.value(metadata ptr %78, metadata !1411, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata ptr %78, metadata !1175, metadata !DIExpression()), !dbg !1422
  call void @llvm.dbg.value(metadata ptr @.str.64, metadata !1181, metadata !DIExpression()), !dbg !1422
  %79 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %78, ptr noundef nonnull dereferenceable(4) @.str.64) #39, !dbg !1425
  %80 = icmp eq i32 %79, 0, !dbg !1426
  br i1 %80, label %87, label %81, !dbg !1427

81:                                               ; preds = %77
  call void @llvm.dbg.value(metadata ptr %78, metadata !1175, metadata !DIExpression()), !dbg !1428
  call void @llvm.dbg.value(metadata ptr @.str.71, metadata !1181, metadata !DIExpression()), !dbg !1428
  %82 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %78, ptr noundef nonnull dereferenceable(5) @.str.71) #39, !dbg !1430
  %83 = icmp eq i32 %82, 0, !dbg !1431
  %84 = zext i1 %83 to i32, !dbg !1432
  br label %87, !dbg !1432

85:                                               ; preds = %74, %71
  call void @llvm.dbg.value(metadata i32 2, metadata !1324, metadata !DIExpression()), !dbg !1348
  %86 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.22, i32 noundef 5) #38, !dbg !1433
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %86) #38, !dbg !1433
  unreachable, !dbg !1433

87:                                               ; preds = %69, %81, %77
  %88 = phi i32 [ %13, %69 ], [ 1, %77 ], [ %84, %81 ], !dbg !1348
  call void @llvm.dbg.value(metadata i32 %88, metadata !1324, metadata !DIExpression()), !dbg !1348
  %89 = tail call i32 @rpl_obstack_begin(ptr noundef nonnull @lsc_obstack, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @malloc, ptr noundef nonnull @free) #38, !dbg !1435
  %90 = icmp eq i32 %28, %0, !dbg !1436
  br i1 %90, label %91, label %93, !dbg !1438

91:                                               ; preds = %87
  %92 = tail call fastcc zeroext i1 @dc_parse_stream(ptr noundef null, ptr noundef null), !dbg !1439
  call void @llvm.dbg.value(metadata i1 %92, metadata !1322, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1348
  call void @llvm.dbg.value(metadata i1 %103, metadata !1322, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1348
  br i1 %92, label %112, label %141, !dbg !1440

93:                                               ; preds = %87
  %94 = load ptr, ptr %31, align 8, !dbg !1441, !tbaa !1098
  call void @llvm.dbg.value(metadata ptr %94, metadata !1442, metadata !DIExpression()), !dbg !1448
  call void @llvm.dbg.value(metadata ptr %94, metadata !1175, metadata !DIExpression()), !dbg !1450
  call void @llvm.dbg.value(metadata ptr @.str.143, metadata !1181, metadata !DIExpression()), !dbg !1450
  %95 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %94, ptr noundef nonnull dereferenceable(2) @.str.143) #39, !dbg !1453
  %96 = icmp eq i32 %95, 0, !dbg !1454
  br i1 %96, label %101, label %97, !dbg !1455

97:                                               ; preds = %93
  %98 = load ptr, ptr @stdin, align 8, !dbg !1456, !tbaa !1098
  %99 = tail call ptr @freopen_safer(ptr noundef %94, ptr noundef nonnull @.str.144, ptr noundef %98) #38, !dbg !1457
  %100 = icmp eq ptr %99, null, !dbg !1458
  br i1 %100, label %107, label %101, !dbg !1459

101:                                              ; preds = %97, %93
  %102 = load ptr, ptr @stdin, align 8, !dbg !1460, !tbaa !1098
  %103 = tail call fastcc zeroext i1 @dc_parse_stream(ptr noundef %102, ptr noundef %94), !dbg !1461
  call void @llvm.dbg.value(metadata i1 %103, metadata !1447, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1448
  %104 = load ptr, ptr @stdin, align 8, !dbg !1462, !tbaa !1098
  %105 = tail call i32 @rpl_fclose(ptr noundef %104) #38, !dbg !1464
  %106 = icmp eq i32 %105, 0, !dbg !1465
  br i1 %106, label %111, label %107, !dbg !1466

107:                                              ; preds = %97, %101
  %108 = tail call ptr @__errno_location() #41, !dbg !1448
  %109 = load i32, ptr %108, align 4, !dbg !1448, !tbaa !1164
  %110 = tail call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %94) #38, !dbg !1448
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %109, ptr noundef nonnull @.str.145, ptr noundef %110) #38, !dbg !1448
  call void @llvm.dbg.value(metadata i1 false, metadata !1322, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1348
  br label %141, !dbg !1440

111:                                              ; preds = %101
  call void @llvm.dbg.value(metadata i1 %103, metadata !1322, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1348
  br i1 %103, label %112, label %141, !dbg !1440

112:                                              ; preds = %91, %111
  call void @llvm.dbg.value(metadata ptr @lsc_obstack, metadata !1333, metadata !DIExpression()), !dbg !1467
  %113 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1468, !tbaa !1469
  %114 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 2), align 8, !dbg !1468, !tbaa !1472
  %115 = ptrtoint ptr %113 to i64, !dbg !1468
  %116 = ptrtoint ptr %114 to i64, !dbg !1468
  %117 = sub i64 %115, %116, !dbg !1468
  call void @llvm.dbg.value(metadata i64 %117, metadata !1329, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata ptr @lsc_obstack, metadata !1338, metadata !DIExpression()), !dbg !1474
  call void @llvm.dbg.value(metadata ptr %114, metadata !1341, metadata !DIExpression()), !dbg !1474
  %118 = icmp eq ptr %113, %114, !dbg !1475
  br i1 %118, label %119, label %122, !dbg !1477

119:                                              ; preds = %112
  %120 = load i8, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 10), align 8, !dbg !1475
  %121 = or i8 %120, 2, !dbg !1475
  store i8 %121, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 10), align 8, !dbg !1475
  br label %122, !dbg !1475

122:                                              ; preds = %119, %112
  %123 = sub i64 0, %115, !dbg !1477
  %124 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 6), align 8, !dbg !1477, !tbaa !1478
  %125 = and i64 %124, %123, !dbg !1477
  %126 = getelementptr inbounds i8, ptr %113, i64 %125, !dbg !1477
  store ptr %126, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1477, !tbaa !1469
  store ptr %126, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 2), align 8, !dbg !1477, !tbaa !1472
  call void @llvm.dbg.value(metadata ptr %114, metadata !1337, metadata !DIExpression()), !dbg !1473
  %127 = icmp eq i32 %88, 0, !dbg !1479
  %128 = select i1 %127, ptr @.str.24, ptr @.str.26
  call void @llvm.dbg.value(metadata ptr %128, metadata !1343, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata ptr poison, metadata !1342, metadata !DIExpression()), !dbg !1473
  %129 = load i1, ptr @print_ls_colors, align 1, !dbg !1481
  br i1 %129, label %134, label %130, !dbg !1483

130:                                              ; preds = %122
  %131 = select i1 %127, ptr @.str.23, ptr @.str.25
  call void @llvm.dbg.value(metadata ptr %131, metadata !1342, metadata !DIExpression()), !dbg !1473
  %132 = load ptr, ptr @stdout, align 8, !dbg !1484, !tbaa !1098
  %133 = tail call i32 @fputs_unlocked(ptr noundef nonnull %131, ptr noundef %132), !dbg !1484
  br label %134, !dbg !1484

134:                                              ; preds = %130, %122
  %135 = load ptr, ptr @stdout, align 8, !dbg !1485, !tbaa !1098
  %136 = tail call i64 @fwrite_unlocked(ptr noundef %114, i64 noundef 1, i64 noundef %117, ptr noundef %135), !dbg !1485
  %137 = load i1, ptr @print_ls_colors, align 1, !dbg !1486
  br i1 %137, label %141, label %138, !dbg !1488

138:                                              ; preds = %134
  %139 = load ptr, ptr @stdout, align 8, !dbg !1489, !tbaa !1098
  %140 = tail call i32 @fputs_unlocked(ptr noundef nonnull %128, ptr noundef %139), !dbg !1489
  br label %141, !dbg !1489

141:                                              ; preds = %60, %91, %107, %134, %138, %111
  %142 = phi i32 [ 1, %111 ], [ 0, %138 ], [ 0, %134 ], [ 1, %107 ], [ 1, %91 ], [ 0, %60 ]
  call void @llvm.dbg.value(metadata i1 poison, metadata !1322, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1348
  ret i32 %142, !dbg !1490
}

; Function Attrs: nounwind
declare !dbg !1491 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1494 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1495 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1498 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !1504 noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1507 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) #11

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !1510 void @free(ptr allocptr nocapture noundef) #12

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @dc_parse_stream(ptr noundef %0, ptr noundef %1) unnamed_addr #10 !dbg !109 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !174, metadata !DIExpression()), !dbg !1511
  call void @llvm.dbg.value(metadata ptr %1, metadata !175, metadata !DIExpression()), !dbg !1511
  call void @llvm.dbg.value(metadata i64 0, metadata !176, metadata !DIExpression()), !dbg !1511
  call void @llvm.dbg.value(metadata ptr @G_line, metadata !180, metadata !DIExpression()), !dbg !1511
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #38, !dbg !1512
  call void @llvm.dbg.value(metadata ptr null, metadata !181, metadata !DIExpression()), !dbg !1511
  store ptr null, ptr %3, align 8, !dbg !1513, !tbaa !1098
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #38, !dbg !1514
  call void @llvm.dbg.value(metadata i64 0, metadata !182, metadata !DIExpression()), !dbg !1511
  store i64 0, ptr %4, align 8, !dbg !1515, !tbaa !1516
  call void @llvm.dbg.value(metadata i8 1, metadata !186, metadata !DIExpression()), !dbg !1511
  call void @llvm.dbg.value(metadata i32 3, metadata !187, metadata !DIExpression()), !dbg !1511
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.27) #38, !dbg !1517
  call void @llvm.dbg.value(metadata ptr %5, metadata !184, metadata !DIExpression()), !dbg !1511
  %6 = icmp eq ptr %5, null, !dbg !1518
  br i1 %6, label %10, label %7, !dbg !1520

7:                                                ; preds = %2
  %8 = load i8, ptr %5, align 1, !dbg !1521, !tbaa !1173
  %9 = icmp eq i8 %8, 0, !dbg !1522
  br i1 %9, label %10, label %11, !dbg !1523

10:                                               ; preds = %7, %2
  call void @llvm.dbg.value(metadata ptr @.str.72, metadata !184, metadata !DIExpression()), !dbg !1511
  br label %11, !dbg !1524

11:                                               ; preds = %10, %7
  %12 = phi ptr [ @.str.72, %10 ], [ %5, %7 ], !dbg !1511
  call void @llvm.dbg.value(metadata ptr %12, metadata !184, metadata !DIExpression()), !dbg !1511
  %13 = tail call ptr @getenv(ptr noundef nonnull @.str.73) #38, !dbg !1525
  call void @llvm.dbg.value(metadata ptr %13, metadata !185, metadata !DIExpression()), !dbg !1511
  %14 = icmp eq ptr %13, null, !dbg !1526
  %15 = select i1 %14, ptr @.str.11, ptr %13, !dbg !1528
  call void @llvm.dbg.value(metadata ptr %15, metadata !185, metadata !DIExpression()), !dbg !1511
  %16 = icmp eq ptr %0, null
  %17 = icmp eq ptr %1, null
  br label %18, !dbg !1529

18:                                               ; preds = %164, %11
  %19 = phi i64 [ %26, %164 ], [ 0, %11 ]
  %20 = phi ptr [ %51, %164 ], [ @G_line, %11 ]
  %21 = phi i8 [ %166, %164 ], [ 1, %11 ]
  %22 = phi i32 [ %167, %164 ], [ 3, %11 ]
  br label %23, !dbg !1530

23:                                               ; preds = %60, %18
  %24 = phi i64 [ %19, %18 ], [ %26, %60 ], !dbg !1511
  %25 = phi ptr [ %20, %18 ], [ %51, %60 ], !dbg !1531
  call void @llvm.dbg.value(metadata i32 %22, metadata !187, metadata !DIExpression()), !dbg !1511
  call void @llvm.dbg.value(metadata i8 %21, metadata !186, metadata !DIExpression()), !dbg !1511
  call void @llvm.dbg.value(metadata ptr %25, metadata !180, metadata !DIExpression()), !dbg !1511
  call void @llvm.dbg.value(metadata i64 %24, metadata !176, metadata !DIExpression()), !dbg !1511
  %26 = add nuw nsw i64 %24, 1, !dbg !1532
  call void @llvm.dbg.value(metadata i64 %26, metadata !176, metadata !DIExpression()), !dbg !1511
  br i1 %16, label %44, label %27, !dbg !1530

27:                                               ; preds = %23
  call void @llvm.dbg.value(metadata ptr %3, metadata !181, metadata !DIExpression(DW_OP_deref)), !dbg !1511
  call void @llvm.dbg.value(metadata ptr %4, metadata !182, metadata !DIExpression(DW_OP_deref)), !dbg !1511
  call void @llvm.dbg.value(metadata ptr %3, metadata !1533, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata ptr %4, metadata !1540, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata ptr %0, metadata !1541, metadata !DIExpression()), !dbg !1542
  %28 = call i64 @__getdelim(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 10, ptr noundef nonnull %0) #38, !dbg !1547
  %29 = icmp slt i64 %28, 1, !dbg !1548
  br i1 %29, label %30, label %42, !dbg !1549

30:                                               ; preds = %27
  call void @llvm.dbg.value(metadata ptr %0, metadata !1550, metadata !DIExpression()), !dbg !1555
  %31 = load i32, ptr %0, align 8, !dbg !1559, !tbaa !1560
  %32 = and i32 %31, 32, !dbg !1562
  %33 = icmp eq i32 %32, 0, !dbg !1562
  br i1 %33, label %39, label %34, !dbg !1563

34:                                               ; preds = %30
  %35 = tail call ptr @__errno_location() #41, !dbg !1564
  %36 = load i32, ptr %35, align 4, !dbg !1564, !tbaa !1164
  %37 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.74, i32 noundef 5) #38, !dbg !1564
  %38 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %1) #38, !dbg !1564
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %36, ptr noundef %37, ptr noundef %38) #38, !dbg !1564
  call void @llvm.dbg.value(metadata i8 0, metadata !186, metadata !DIExpression()), !dbg !1511
  br label %39, !dbg !1566

39:                                               ; preds = %34, %30
  %40 = phi i8 [ 0, %34 ], [ %21, %30 ], !dbg !1511
  call void @llvm.dbg.value(metadata i8 %40, metadata !186, metadata !DIExpression()), !dbg !1511
  %41 = load ptr, ptr %3, align 8, !dbg !1567, !tbaa !1098
  call void @llvm.dbg.value(metadata ptr %41, metadata !181, metadata !DIExpression()), !dbg !1511
  call void @free(ptr noundef %41) #38, !dbg !1568
  br label %168, !dbg !1569

42:                                               ; preds = %27
  %43 = load ptr, ptr %3, align 8, !dbg !1570, !tbaa !1098
  call void @llvm.dbg.value(metadata ptr %43, metadata !181, metadata !DIExpression()), !dbg !1511
  call void @llvm.dbg.value(metadata ptr %43, metadata !183, metadata !DIExpression()), !dbg !1511
  br label %50, !dbg !1571

44:                                               ; preds = %23
  %45 = icmp eq ptr %25, getelementptr inbounds ([5616 x i8], ptr @G_line, i64 1, i64 0), !dbg !1572
  br i1 %45, label %168, label %46, !dbg !1575

46:                                               ; preds = %44
  call void @llvm.dbg.value(metadata ptr %25, metadata !183, metadata !DIExpression()), !dbg !1511
  %47 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %25) #39, !dbg !1576
  %48 = add i64 %47, 1, !dbg !1577
  %49 = getelementptr inbounds i8, ptr %25, i64 %48, !dbg !1578
  call void @llvm.dbg.value(metadata ptr %49, metadata !180, metadata !DIExpression()), !dbg !1511
  br label %50

50:                                               ; preds = %46, %42
  %51 = phi ptr [ %25, %42 ], [ %49, %46 ], !dbg !1511
  %52 = phi ptr [ %43, %42 ], [ %25, %46 ], !dbg !1579
  call void @llvm.dbg.value(metadata ptr %52, metadata !183, metadata !DIExpression()), !dbg !1511
  call void @llvm.dbg.value(metadata ptr %51, metadata !180, metadata !DIExpression()), !dbg !1511
  call void @llvm.dbg.value(metadata ptr %52, metadata !1580, metadata !DIExpression()), !dbg !1590
  call void @llvm.dbg.value(metadata ptr undef, metadata !1585, metadata !DIExpression()), !dbg !1590
  call void @llvm.dbg.value(metadata ptr undef, metadata !1586, metadata !DIExpression()), !dbg !1590
  call void @llvm.dbg.value(metadata ptr %52, metadata !1587, metadata !DIExpression()), !dbg !1590
  br label %53, !dbg !1592

53:                                               ; preds = %57, %50
  %54 = phi ptr [ %52, %50 ], [ %58, %57 ], !dbg !1594
  call void @llvm.dbg.value(metadata ptr %54, metadata !1587, metadata !DIExpression()), !dbg !1590
  %55 = load i8, ptr %54, align 1, !dbg !1595, !tbaa !1173
  %56 = sext i8 %55 to i32, !dbg !1595
  call void @llvm.dbg.value(metadata i32 %56, metadata !1597, metadata !DIExpression()), !dbg !1603
  switch i32 %56, label %59 [
    i32 32, label %57
    i32 9, label %57
    i32 10, label %57
    i32 11, label %57
    i32 12, label %57
    i32 13, label %57
  ], !dbg !1605

57:                                               ; preds = %53, %53, %53, %53, %53, %53
  %58 = getelementptr inbounds i8, ptr %54, i64 1, !dbg !1606
  call void @llvm.dbg.value(metadata ptr %58, metadata !1587, metadata !DIExpression()), !dbg !1590
  br label %53, !dbg !1607, !llvm.loop !1608

59:                                               ; preds = %53
  switch i8 %55, label %61 [
    i8 0, label %60
    i8 35, label %60
  ], !dbg !1611

60:                                               ; preds = %59, %59
  br label %23, !dbg !1511, !llvm.loop !1613

61:                                               ; preds = %59, %67
  %62 = phi i8 [ %69, %67 ], [ %55, %59 ], !dbg !1615
  %63 = phi ptr [ %68, %67 ], [ %54, %59 ], !dbg !1590
  call void @llvm.dbg.value(metadata ptr %63, metadata !1587, metadata !DIExpression()), !dbg !1590
  %64 = sext i8 %62 to i32, !dbg !1615
  call void @llvm.dbg.value(metadata i32 %64, metadata !1597, metadata !DIExpression()), !dbg !1616
  switch i32 %64, label %65 [
    i32 32, label %70
    i32 9, label %70
    i32 10, label %70
    i32 11, label %70
    i32 12, label %70
    i32 13, label %70
  ], !dbg !1618

65:                                               ; preds = %61
  %66 = icmp eq i8 %62, 0, !dbg !1619
  br i1 %66, label %70, label %67, !dbg !1620

67:                                               ; preds = %65
  %68 = getelementptr inbounds i8, ptr %63, i64 1, !dbg !1621
  call void @llvm.dbg.value(metadata ptr %68, metadata !1587, metadata !DIExpression()), !dbg !1590
  %69 = load i8, ptr %68, align 1, !dbg !1615, !tbaa !1173
  br label %61, !dbg !1620, !llvm.loop !1623

70:                                               ; preds = %65, %61, %61, %61, %61, %61, %61
  %71 = ptrtoint ptr %63 to i64, !dbg !1625
  %72 = ptrtoint ptr %54 to i64, !dbg !1625
  %73 = sub i64 %71, %72, !dbg !1625
  %74 = call noalias nonnull ptr @ximemdup0(ptr noundef nonnull %54, i64 noundef %73) #38, !dbg !1626
  %75 = load i8, ptr %63, align 1, !dbg !1627, !tbaa !1173
  %76 = icmp eq i8 %75, 0, !dbg !1629
  br i1 %76, label %97, label %77, !dbg !1630

77:                                               ; preds = %70, %82
  %78 = phi ptr [ %79, %82 ], [ %63, %70 ], !dbg !1590
  call void @llvm.dbg.value(metadata ptr %78, metadata !1587, metadata !DIExpression()), !dbg !1590
  %79 = getelementptr inbounds i8, ptr %78, i64 1, !dbg !1631
  call void @llvm.dbg.value(metadata ptr %79, metadata !1587, metadata !DIExpression()), !dbg !1590
  %80 = load i8, ptr %79, align 1, !dbg !1633, !tbaa !1173
  %81 = sext i8 %80 to i32, !dbg !1633
  call void @llvm.dbg.value(metadata i32 %81, metadata !1597, metadata !DIExpression()), !dbg !1634
  switch i32 %81, label %83 [
    i32 32, label %82
    i32 9, label %82
    i32 10, label %82
    i32 11, label %82
    i32 12, label %82
    i32 13, label %82
  ], !dbg !1636

82:                                               ; preds = %77, %77, %77, %77, %77, %77
  br label %77, !dbg !1590, !llvm.loop !1637

83:                                               ; preds = %77
  switch i8 %80, label %84 [
    i8 0, label %97
    i8 35, label %97
  ], !dbg !1640

84:                                               ; preds = %83, %88
  %85 = phi i8 [ %90, %88 ], [ %80, %83 ], !dbg !1642
  %86 = phi ptr [ %89, %88 ], [ %79, %83 ], !dbg !1590
  call void @llvm.dbg.value(metadata ptr %86, metadata !1587, metadata !DIExpression()), !dbg !1590
  switch i8 %85, label %88 [
    i8 0, label %87
    i8 35, label %87
  ], !dbg !1643

87:                                               ; preds = %84, %84
  br label %91, !dbg !1644

88:                                               ; preds = %84
  %89 = getelementptr inbounds i8, ptr %86, i64 1, !dbg !1646
  call void @llvm.dbg.value(metadata ptr %89, metadata !1587, metadata !DIExpression()), !dbg !1590
  %90 = load i8, ptr %89, align 1, !dbg !1642, !tbaa !1173
  br label %84, !dbg !1647, !llvm.loop !1648

91:                                               ; preds = %96, %87
  %92 = phi ptr [ %86, %87 ], [ %93, %96 ]
  %93 = getelementptr inbounds i8, ptr %92, i64 -1, !dbg !1650
  call void @llvm.dbg.value(metadata ptr %93, metadata !1587, metadata !DIExpression()), !dbg !1590
  %94 = load i8, ptr %93, align 1, !dbg !1651, !tbaa !1173
  %95 = sext i8 %94 to i32, !dbg !1651
  call void @llvm.dbg.value(metadata i32 %95, metadata !1597, metadata !DIExpression()), !dbg !1653
  switch i32 %95, label %100 [
    i32 32, label %96
    i32 9, label %96
    i32 10, label %96
    i32 11, label %96
    i32 12, label %96
    i32 13, label %96
  ], !dbg !1655

96:                                               ; preds = %91, %91, %91, %91, %91, %91
  br label %91, !dbg !1650, !llvm.loop !1656

97:                                               ; preds = %83, %83, %70
  call void @llvm.dbg.value(metadata ptr %74, metadata !188, metadata !DIExpression()), !dbg !1658
  call void @llvm.dbg.value(metadata ptr undef, metadata !190, metadata !DIExpression()), !dbg !1658
  %98 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.75, i32 noundef 5) #38, !dbg !1659
  %99 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %1) #38, !dbg !1659
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %98, ptr noundef %99, i64 noundef %26) #38, !dbg !1659
  call void @llvm.dbg.value(metadata i8 0, metadata !186, metadata !DIExpression()), !dbg !1511
  call void @llvm.dbg.value(metadata ptr undef, metadata !188, metadata !DIExpression()), !dbg !1658
  br label %164, !dbg !1662, !llvm.loop !1613

100:                                              ; preds = %91
  call void @llvm.dbg.value(metadata ptr %92, metadata !1587, metadata !DIExpression()), !dbg !1590
  %101 = ptrtoint ptr %92 to i64, !dbg !1663
  %102 = ptrtoint ptr %79 to i64, !dbg !1663
  %103 = sub i64 %101, %102, !dbg !1663
  %104 = call noalias nonnull ptr @ximemdup0(ptr noundef nonnull %79, i64 noundef %103) #38, !dbg !1664
  call void @llvm.dbg.value(metadata ptr %74, metadata !188, metadata !DIExpression()), !dbg !1658
  call void @llvm.dbg.value(metadata ptr undef, metadata !190, metadata !DIExpression()), !dbg !1658
  call void @llvm.dbg.value(metadata i8 0, metadata !191, metadata !DIExpression()), !dbg !1658
  %105 = call i32 @c_strcasecmp(ptr noundef nonnull %74, ptr noundef nonnull @.str.27) #39, !dbg !1665
  %106 = icmp eq i32 %105, 0, !dbg !1666
  br i1 %106, label %107, label %113, !dbg !1667

107:                                              ; preds = %100
  %108 = icmp eq i32 %22, 2, !dbg !1668
  br i1 %108, label %161, label %109, !dbg !1671

109:                                              ; preds = %107
  %110 = call i32 @fnmatch(ptr noundef nonnull %104, ptr noundef nonnull %12, i32 noundef 0) #38, !dbg !1672
  %111 = icmp eq i32 %110, 0, !dbg !1673
  %112 = select i1 %111, i32 2, i32 0, !dbg !1672
  call void @llvm.dbg.value(metadata i32 %112, metadata !187, metadata !DIExpression()), !dbg !1511
  br label %161, !dbg !1674

113:                                              ; preds = %100
  %114 = call i32 @c_strcasecmp(ptr noundef nonnull %74, ptr noundef nonnull @.str.73) #39, !dbg !1675
  %115 = icmp eq i32 %114, 0, !dbg !1676
  %116 = icmp eq i32 %22, 2, !dbg !1677
  br i1 %115, label %117, label %122, !dbg !1678

117:                                              ; preds = %113
  br i1 %116, label %161, label %118, !dbg !1679

118:                                              ; preds = %117
  %119 = call i32 @fnmatch(ptr noundef nonnull %104, ptr noundef %15, i32 noundef 0) #38, !dbg !1681
  %120 = icmp eq i32 %119, 0, !dbg !1683
  %121 = select i1 %120, i32 2, i32 0, !dbg !1681
  call void @llvm.dbg.value(metadata i32 %121, metadata !187, metadata !DIExpression()), !dbg !1511
  br label %161, !dbg !1684

122:                                              ; preds = %113
  %123 = select i1 %116, i32 1, i32 %22, !dbg !1685
  call void @llvm.dbg.value(metadata i32 %123, metadata !187, metadata !DIExpression()), !dbg !1511
  %124 = icmp eq i32 %123, 0, !dbg !1686
  br i1 %124, label %161, label %125, !dbg !1687

125:                                              ; preds = %122
  %126 = load i8, ptr %74, align 1, !dbg !1688, !tbaa !1173
  switch i8 %126, label %129 [
    i8 46, label %127
    i8 42, label %128
  ], !dbg !1689

127:                                              ; preds = %125
  call fastcc void @append_entry(i8 noundef signext 42, ptr noundef nonnull %74, ptr noundef nonnull %104), !dbg !1690
  br label %161, !dbg !1690

128:                                              ; preds = %125
  call fastcc void @append_entry(i8 noundef signext 0, ptr noundef nonnull %74, ptr noundef nonnull %104), !dbg !1691
  br label %161, !dbg !1691

129:                                              ; preds = %125
  %130 = call i32 @c_strcasecmp(ptr noundef nonnull %74, ptr noundef nonnull @.str.76) #39, !dbg !1692
  %131 = icmp eq i32 %130, 0, !dbg !1693
  br i1 %131, label %161, label %132, !dbg !1694

132:                                              ; preds = %129
  %133 = call i32 @c_strcasecmp(ptr noundef nonnull %74, ptr noundef nonnull @.str.77) #39, !dbg !1695
  %134 = icmp eq i32 %133, 0, !dbg !1696
  br i1 %134, label %161, label %135, !dbg !1697

135:                                              ; preds = %132
  %136 = call i32 @c_strcasecmp(ptr noundef nonnull %74, ptr noundef nonnull @.str.78) #39, !dbg !1698
  %137 = icmp eq i32 %136, 0, !dbg !1699
  br i1 %137, label %161, label %138, !dbg !1700

138:                                              ; preds = %135, %144
  %139 = phi i64 [ %145, %144 ], [ 0, %135 ]
  call void @llvm.dbg.value(metadata i64 %139, metadata !192, metadata !DIExpression()), !dbg !1701
  %140 = getelementptr inbounds [38 x ptr], ptr @slack_codes, i64 0, i64 %139, !dbg !1702
  %141 = load ptr, ptr %140, align 8, !dbg !1702, !tbaa !1098
  call void @llvm.dbg.value(metadata ptr undef, metadata !188, metadata !DIExpression()), !dbg !1658
  %142 = call i32 @c_strcasecmp(ptr noundef nonnull %74, ptr noundef %141) #39, !dbg !1705
  %143 = icmp eq i32 %142, 0, !dbg !1707
  br i1 %143, label %147, label %144, !dbg !1708

144:                                              ; preds = %138
  %145 = add nuw nsw i64 %139, 1, !dbg !1709
  call void @llvm.dbg.value(metadata i64 %145, metadata !192, metadata !DIExpression()), !dbg !1701
  %146 = icmp eq i64 %145, 37, !dbg !1710
  br i1 %146, label %151, label %138, !dbg !1711, !llvm.loop !1712

147:                                              ; preds = %138
  %148 = and i64 %139, 4294967295, !dbg !1702
  %149 = getelementptr inbounds [38 x ptr], ptr @ls_codes, i64 0, i64 %148, !dbg !1714
  %150 = load ptr, ptr %149, align 8, !dbg !1714, !tbaa !1098
  call void @llvm.dbg.value(metadata ptr undef, metadata !190, metadata !DIExpression()), !dbg !1658
  call fastcc void @append_entry(i8 noundef signext 0, ptr noundef %150, ptr noundef nonnull %104), !dbg !1716
  br label %161, !dbg !1716

151:                                              ; preds = %144
  call void @llvm.dbg.value(metadata i8 poison, metadata !191, metadata !DIExpression()), !dbg !1658
  call void @llvm.dbg.value(metadata i32 %123, metadata !187, metadata !DIExpression()), !dbg !1511
  %152 = icmp ult i32 %123, 3
  br i1 %152, label %153, label %161, !dbg !1717

153:                                              ; preds = %151
  %154 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.79, i32 noundef 5) #38, !dbg !1719
  br i1 %17, label %157, label %155, !dbg !1719

155:                                              ; preds = %153
  %156 = call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef nonnull %1) #38, !dbg !1719
  br label %159, !dbg !1719

157:                                              ; preds = %153
  %158 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.80, i32 noundef 5) #38, !dbg !1719
  br label %159, !dbg !1719

159:                                              ; preds = %157, %155
  %160 = phi ptr [ %156, %155 ], [ %158, %157 ], !dbg !1719
  call void @llvm.dbg.value(metadata ptr undef, metadata !188, metadata !DIExpression()), !dbg !1658
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %154, ptr noundef %160, i64 noundef %26, ptr noundef nonnull %74) #38, !dbg !1719
  call void @llvm.dbg.value(metadata i8 0, metadata !186, metadata !DIExpression()), !dbg !1511
  br label %161, !dbg !1721

161:                                              ; preds = %122, %147, %135, %132, %129, %128, %127, %117, %118, %107, %109, %159, %151
  %162 = phi i32 [ %123, %159 ], [ %22, %151 ], [ 0, %122 ], [ %123, %147 ], [ %123, %135 ], [ %123, %132 ], [ %123, %129 ], [ %123, %128 ], [ %123, %127 ], [ 2, %117 ], [ %121, %118 ], [ 2, %107 ], [ %112, %109 ]
  %163 = phi i8 [ 0, %159 ], [ %21, %151 ], [ %21, %122 ], [ %21, %147 ], [ %21, %135 ], [ %21, %132 ], [ %21, %129 ], [ %21, %128 ], [ %21, %127 ], [ %21, %117 ], [ %21, %118 ], [ %21, %107 ], [ %21, %109 ], !dbg !1511
  call void @llvm.dbg.value(metadata i8 %163, metadata !186, metadata !DIExpression()), !dbg !1511
  call void @llvm.dbg.value(metadata ptr undef, metadata !188, metadata !DIExpression()), !dbg !1658
  call void @free(ptr noundef nonnull %74) #38, !dbg !1722
  call void @llvm.dbg.value(metadata ptr undef, metadata !190, metadata !DIExpression()), !dbg !1658
  br label %164, !dbg !1614

164:                                              ; preds = %97, %161
  %165 = phi ptr [ %104, %161 ], [ %74, %97 ]
  %166 = phi i8 [ %163, %161 ], [ 0, %97 ]
  %167 = phi i32 [ %162, %161 ], [ %22, %97 ]
  call void @free(ptr noundef nonnull %165) #38, !dbg !1658
  br label %18

168:                                              ; preds = %44, %39
  %169 = phi i8 [ %40, %39 ], [ %21, %44 ]
  %170 = and i8 %169, 1, !dbg !1723
  %171 = icmp ne i8 %170, 0, !dbg !1723
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #38, !dbg !1724
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #38, !dbg !1724
  ret i1 %171, !dbg !1725
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1726 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #13

declare !dbg !1730 i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !1735 i32 @fnmatch(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @append_entry(i8 noundef signext %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #10 !dbg !1739 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1743, metadata !DIExpression()), !dbg !1769
  call void @llvm.dbg.value(metadata ptr %1, metadata !1744, metadata !DIExpression()), !dbg !1769
  call void @llvm.dbg.value(metadata ptr %2, metadata !1745, metadata !DIExpression()), !dbg !1769
  %4 = load i1, ptr @print_ls_colors, align 1, !dbg !1770
  br i1 %4, label %5, label %14, !dbg !1771

5:                                                ; preds = %3
  tail call fastcc void @append_quoted(ptr noundef nonnull @.str.81), !dbg !1772
  tail call fastcc void @append_quoted(ptr noundef %2), !dbg !1773
  call void @llvm.dbg.value(metadata ptr @lsc_obstack, metadata !1746, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata ptr @lsc_obstack, metadata !1750, metadata !DIExpression()), !dbg !1775
  %6 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 4), align 8, !dbg !1776, !tbaa !1777
  %7 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1776, !tbaa !1469
  %8 = icmp eq ptr %6, %7, !dbg !1778
  br i1 %8, label %9, label %11, !dbg !1779

9:                                                ; preds = %5
  tail call void @rpl_obstack_newchunk(ptr noundef nonnull @lsc_obstack, i64 noundef 1) #38, !dbg !1778
  %10 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1779, !tbaa !1469
  br label %11, !dbg !1778

11:                                               ; preds = %9, %5
  %12 = phi ptr [ %10, %9 ], [ %7, %5 ], !dbg !1779
  %13 = getelementptr inbounds i8, ptr %12, i64 1, !dbg !1779
  store ptr %13, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1779, !tbaa !1469
  store i8 109, ptr %12, align 1, !dbg !1779, !tbaa !1173
  br label %14, !dbg !1780

14:                                               ; preds = %11, %3
  %15 = icmp eq i8 %0, 0, !dbg !1781
  br i1 %15, label %25, label %16, !dbg !1782

16:                                               ; preds = %14
  call void @llvm.dbg.value(metadata ptr @lsc_obstack, metadata !1753, metadata !DIExpression()), !dbg !1783
  call void @llvm.dbg.value(metadata ptr @lsc_obstack, metadata !1756, metadata !DIExpression()), !dbg !1784
  %17 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 4), align 8, !dbg !1785, !tbaa !1777
  %18 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1785, !tbaa !1469
  %19 = icmp eq ptr %17, %18, !dbg !1786
  br i1 %19, label %20, label %22, !dbg !1787

20:                                               ; preds = %16
  tail call void @rpl_obstack_newchunk(ptr noundef nonnull @lsc_obstack, i64 noundef 1) #38, !dbg !1786
  %21 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1787, !tbaa !1469
  br label %22, !dbg !1786

22:                                               ; preds = %20, %16
  %23 = phi ptr [ %21, %20 ], [ %18, %16 ], !dbg !1787
  %24 = getelementptr inbounds i8, ptr %23, i64 1, !dbg !1787
  store ptr %24, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1787, !tbaa !1469
  store i8 %0, ptr %23, align 1, !dbg !1787, !tbaa !1173
  br label %25, !dbg !1788

25:                                               ; preds = %22, %14
  tail call fastcc void @append_quoted(ptr noundef %1), !dbg !1789
  call void @llvm.dbg.value(metadata ptr @lsc_obstack, metadata !1759, metadata !DIExpression()), !dbg !1790
  call void @llvm.dbg.value(metadata ptr @lsc_obstack, metadata !1761, metadata !DIExpression()), !dbg !1791
  %26 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 4), align 8, !dbg !1792, !tbaa !1777
  %27 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1792, !tbaa !1469
  %28 = icmp eq ptr %26, %27, !dbg !1793
  br i1 %28, label %29, label %31, !dbg !1794

29:                                               ; preds = %25
  tail call void @rpl_obstack_newchunk(ptr noundef nonnull @lsc_obstack, i64 noundef 1) #38, !dbg !1793
  %30 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1794, !tbaa !1469
  br label %31, !dbg !1793

31:                                               ; preds = %29, %25
  %32 = phi ptr [ %30, %29 ], [ %27, %25 ], !dbg !1794
  %33 = load i1, ptr @print_ls_colors, align 1, !dbg !1794
  %34 = select i1 %33, i8 9, i8 61, !dbg !1794
  %35 = getelementptr inbounds i8, ptr %32, i64 1, !dbg !1794
  store ptr %35, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1794, !tbaa !1469
  store i8 %34, ptr %32, align 1, !dbg !1794, !tbaa !1173
  tail call fastcc void @append_quoted(ptr noundef %2), !dbg !1795
  %36 = load i1, ptr @print_ls_colors, align 1, !dbg !1796
  br i1 %36, label %37, label %38, !dbg !1798

37:                                               ; preds = %31
  tail call fastcc void @append_quoted(ptr noundef nonnull @.str.52), !dbg !1799
  br label %38, !dbg !1799

38:                                               ; preds = %37, %31
  call void @llvm.dbg.value(metadata ptr @lsc_obstack, metadata !1764, metadata !DIExpression()), !dbg !1800
  call void @llvm.dbg.value(metadata ptr @lsc_obstack, metadata !1766, metadata !DIExpression()), !dbg !1801
  %39 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 4), align 8, !dbg !1802, !tbaa !1777
  %40 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1802, !tbaa !1469
  %41 = icmp eq ptr %39, %40, !dbg !1803
  br i1 %41, label %42, label %44, !dbg !1804

42:                                               ; preds = %38
  tail call void @rpl_obstack_newchunk(ptr noundef nonnull @lsc_obstack, i64 noundef 1) #38, !dbg !1803
  %43 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1804, !tbaa !1469
  br label %44, !dbg !1803

44:                                               ; preds = %42, %38
  %45 = phi ptr [ %43, %42 ], [ %40, %38 ], !dbg !1804
  %46 = load i1, ptr @print_ls_colors, align 1, !dbg !1804
  %47 = select i1 %46, i8 10, i8 58, !dbg !1804
  %48 = getelementptr inbounds i8, ptr %45, i64 1, !dbg !1804
  store ptr %48, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1804, !tbaa !1469
  store i8 %47, ptr %45, align 1, !dbg !1804, !tbaa !1173
  ret void, !dbg !1805
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #13

; Function Attrs: nounwind uwtable
define internal fastcc void @append_quoted(ptr nocapture noundef readonly %0) unnamed_addr #10 !dbg !1806 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1808, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i8 1, metadata !1809, metadata !DIExpression()), !dbg !1839
  %2 = load i8, ptr %0, align 1, !dbg !1840, !tbaa !1173
  %3 = icmp eq i8 %2, 0, !dbg !1841
  br i1 %3, label %65, label %4, !dbg !1842

4:                                                ; preds = %1, %58
  %5 = phi i8 [ %63, %58 ], [ %2, %1 ]
  %6 = phi ptr [ %62, %58 ], [ %0, %1 ]
  %7 = phi i8 [ %52, %58 ], [ 1, %1 ]
  call void @llvm.dbg.value(metadata ptr %6, metadata !1808, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i8 %7, metadata !1809, metadata !DIExpression()), !dbg !1839
  %8 = load i1, ptr @print_ls_colors, align 1, !dbg !1843
  br i1 %8, label %51, label %9, !dbg !1844

9:                                                ; preds = %4
  %10 = sext i8 %5 to i32, !dbg !1840
  switch i32 %10, label %51 [
    i32 39, label %11
    i32 92, label %36
    i32 94, label %36
    i32 58, label %39
    i32 61, label %39
  ], !dbg !1845

11:                                               ; preds = %9
  call void @llvm.dbg.value(metadata ptr @lsc_obstack, metadata !1810, metadata !DIExpression()), !dbg !1846
  call void @llvm.dbg.value(metadata ptr @lsc_obstack, metadata !1815, metadata !DIExpression()), !dbg !1847
  %12 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 4), align 8, !dbg !1848, !tbaa !1777
  %13 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1848, !tbaa !1469
  %14 = icmp eq ptr %12, %13, !dbg !1849
  br i1 %14, label %15, label %17, !dbg !1850

15:                                               ; preds = %11
  tail call void @rpl_obstack_newchunk(ptr noundef nonnull @lsc_obstack, i64 noundef 1) #38, !dbg !1849
  %16 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1850, !tbaa !1469
  br label %17, !dbg !1849

17:                                               ; preds = %15, %11
  %18 = phi ptr [ %16, %15 ], [ %13, %11 ], !dbg !1850
  %19 = getelementptr inbounds i8, ptr %18, i64 1, !dbg !1850
  store ptr %19, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1850, !tbaa !1469
  store i8 39, ptr %18, align 1, !dbg !1850, !tbaa !1173
  call void @llvm.dbg.value(metadata ptr @lsc_obstack, metadata !1818, metadata !DIExpression()), !dbg !1851
  call void @llvm.dbg.value(metadata ptr @lsc_obstack, metadata !1820, metadata !DIExpression()), !dbg !1852
  %20 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 4), align 8, !dbg !1853, !tbaa !1777
  %21 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1853, !tbaa !1469
  %22 = icmp eq ptr %20, %21, !dbg !1854
  br i1 %22, label %23, label %25, !dbg !1855

23:                                               ; preds = %17
  tail call void @rpl_obstack_newchunk(ptr noundef nonnull @lsc_obstack, i64 noundef 1) #38, !dbg !1854
  %24 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1855, !tbaa !1469
  br label %25, !dbg !1854

25:                                               ; preds = %23, %17
  %26 = phi ptr [ %24, %23 ], [ %21, %17 ], !dbg !1855
  %27 = getelementptr inbounds i8, ptr %26, i64 1, !dbg !1855
  store ptr %27, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1855, !tbaa !1469
  store i8 92, ptr %26, align 1, !dbg !1855, !tbaa !1173
  call void @llvm.dbg.value(metadata ptr @lsc_obstack, metadata !1823, metadata !DIExpression()), !dbg !1856
  call void @llvm.dbg.value(metadata ptr @lsc_obstack, metadata !1825, metadata !DIExpression()), !dbg !1857
  %28 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 4), align 8, !dbg !1858, !tbaa !1777
  %29 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1858, !tbaa !1469
  %30 = icmp eq ptr %28, %29, !dbg !1859
  br i1 %30, label %31, label %33, !dbg !1860

31:                                               ; preds = %25
  tail call void @rpl_obstack_newchunk(ptr noundef nonnull @lsc_obstack, i64 noundef 1) #38, !dbg !1859
  %32 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1860, !tbaa !1469
  br label %33, !dbg !1859

33:                                               ; preds = %31, %25
  %34 = phi ptr [ %32, %31 ], [ %29, %25 ], !dbg !1860
  %35 = getelementptr inbounds i8, ptr %34, i64 1, !dbg !1860
  store ptr %35, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1860, !tbaa !1469
  store i8 39, ptr %34, align 1, !dbg !1860, !tbaa !1173
  call void @llvm.dbg.value(metadata i8 1, metadata !1809, metadata !DIExpression()), !dbg !1839
  br label %51, !dbg !1861

36:                                               ; preds = %9, %9
  %37 = and i8 %7, 1, !dbg !1862
  %38 = xor i8 %37, 1, !dbg !1863
  call void @llvm.dbg.value(metadata i8 %38, metadata !1809, metadata !DIExpression()), !dbg !1839
  br label %51, !dbg !1864

39:                                               ; preds = %9, %9
  %40 = and i8 %7, 1, !dbg !1865
  %41 = icmp eq i8 %40, 0, !dbg !1865
  br i1 %41, label %51, label %42, !dbg !1866

42:                                               ; preds = %39
  call void @llvm.dbg.value(metadata ptr @lsc_obstack, metadata !1828, metadata !DIExpression()), !dbg !1867
  call void @llvm.dbg.value(metadata ptr @lsc_obstack, metadata !1831, metadata !DIExpression()), !dbg !1868
  %43 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 4), align 8, !dbg !1869, !tbaa !1777
  %44 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1869, !tbaa !1469
  %45 = icmp eq ptr %43, %44, !dbg !1870
  br i1 %45, label %46, label %48, !dbg !1871

46:                                               ; preds = %42
  tail call void @rpl_obstack_newchunk(ptr noundef nonnull @lsc_obstack, i64 noundef 1) #38, !dbg !1870
  %47 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1871, !tbaa !1469
  br label %48, !dbg !1870

48:                                               ; preds = %46, %42
  %49 = phi ptr [ %47, %46 ], [ %44, %42 ], !dbg !1871
  %50 = getelementptr inbounds i8, ptr %49, i64 1, !dbg !1871
  store ptr %50, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1871, !tbaa !1469
  store i8 92, ptr %49, align 1, !dbg !1871, !tbaa !1173
  br label %51, !dbg !1872

51:                                               ; preds = %9, %48, %39, %33, %36, %4
  %52 = phi i8 [ %7, %4 ], [ %38, %36 ], [ 1, %33 ], [ 1, %39 ], [ 1, %48 ], [ 1, %9 ], !dbg !1839
  call void @llvm.dbg.value(metadata i8 %52, metadata !1809, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata ptr @lsc_obstack, metadata !1834, metadata !DIExpression()), !dbg !1873
  call void @llvm.dbg.value(metadata ptr @lsc_obstack, metadata !1836, metadata !DIExpression()), !dbg !1874
  %53 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 4), align 8, !dbg !1875, !tbaa !1777
  %54 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1875, !tbaa !1469
  %55 = icmp eq ptr %53, %54, !dbg !1876
  br i1 %55, label %56, label %58, !dbg !1877

56:                                               ; preds = %51
  tail call void @rpl_obstack_newchunk(ptr noundef nonnull @lsc_obstack, i64 noundef 1) #38, !dbg !1876
  %57 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1877, !tbaa !1469
  br label %58, !dbg !1876

58:                                               ; preds = %56, %51
  %59 = phi ptr [ %57, %56 ], [ %54, %51 ], !dbg !1877
  %60 = load i8, ptr %6, align 1, !dbg !1877, !tbaa !1173
  %61 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !1877
  store ptr %61, ptr getelementptr inbounds (%struct.obstack, ptr @lsc_obstack, i64 0, i32 3), align 8, !dbg !1877, !tbaa !1469
  store i8 %60, ptr %59, align 1, !dbg !1877, !tbaa !1173
  %62 = getelementptr inbounds i8, ptr %6, i64 1, !dbg !1878
  call void @llvm.dbg.value(metadata ptr %62, metadata !1808, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i8 %52, metadata !1809, metadata !DIExpression()), !dbg !1839
  %63 = load i8, ptr %62, align 1, !dbg !1840, !tbaa !1173
  %64 = icmp eq i8 %63, 0, !dbg !1841
  br i1 %64, label %65, label %4, !dbg !1842, !llvm.loop !1879

65:                                               ; preds = %58, %1
  ret void, !dbg !1881
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @last_component(ptr noundef readonly %0) local_unnamed_addr #14 !dbg !1882 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1884, metadata !DIExpression()), !dbg !1889
  call void @llvm.dbg.value(metadata ptr %0, metadata !1885, metadata !DIExpression()), !dbg !1889
  br label %2, !dbg !1890

2:                                                ; preds = %2, %1
  %3 = phi ptr [ %0, %1 ], [ %6, %2 ], !dbg !1889
  call void @llvm.dbg.value(metadata ptr %3, metadata !1885, metadata !DIExpression()), !dbg !1889
  %4 = load i8, ptr %3, align 1, !dbg !1891, !tbaa !1173
  %5 = icmp eq i8 %4, 47, !dbg !1891
  %6 = getelementptr inbounds i8, ptr %3, i64 1, !dbg !1892
  call void @llvm.dbg.value(metadata ptr %6, metadata !1885, metadata !DIExpression()), !dbg !1889
  br i1 %5, label %2, label %7, !dbg !1890, !llvm.loop !1893

7:                                                ; preds = %2, %18
  %8 = phi i8 [ %22, %18 ], [ %4, %2 ], !dbg !1894
  %9 = phi ptr [ %19, %18 ], [ %3, %2 ], !dbg !1896
  %10 = phi i8 [ %20, %18 ], [ 0, %2 ], !dbg !1889
  %11 = phi ptr [ %21, %18 ], [ %3, %2 ], !dbg !1897
  call void @llvm.dbg.value(metadata ptr %11, metadata !1887, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.value(metadata i8 %10, metadata !1886, metadata !DIExpression()), !dbg !1889
  call void @llvm.dbg.value(metadata ptr %9, metadata !1885, metadata !DIExpression()), !dbg !1889
  switch i8 %8, label %13 [
    i8 0, label %12
    i8 47, label %18
  ], !dbg !1899

12:                                               ; preds = %7
  ret ptr %9, !dbg !1900

13:                                               ; preds = %7
  %14 = and i8 %10, 1, !dbg !1901
  %15 = icmp eq i8 %14, 0, !dbg !1901
  %16 = select i1 %15, ptr %9, ptr %11, !dbg !1905
  %17 = select i1 %15, i8 %10, i8 0, !dbg !1905
  br label %18, !dbg !1905

18:                                               ; preds = %13, %7
  %19 = phi ptr [ %9, %7 ], [ %16, %13 ], !dbg !1889
  %20 = phi i8 [ 1, %7 ], [ %17, %13 ], !dbg !1889
  call void @llvm.dbg.value(metadata i8 %20, metadata !1886, metadata !DIExpression()), !dbg !1889
  call void @llvm.dbg.value(metadata ptr %19, metadata !1885, metadata !DIExpression()), !dbg !1889
  %21 = getelementptr inbounds i8, ptr %11, i64 1, !dbg !1906
  call void @llvm.dbg.value(metadata ptr %21, metadata !1887, metadata !DIExpression()), !dbg !1898
  %22 = load i8, ptr %21, align 1, !dbg !1894, !tbaa !1173
  br label %7, !dbg !1907, !llvm.loop !1908
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @base_len(ptr nocapture noundef readonly %0) local_unnamed_addr #15 !dbg !1910 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1914, metadata !DIExpression()), !dbg !1917
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #39, !dbg !1918
  call void @llvm.dbg.value(metadata i64 %2, metadata !1915, metadata !DIExpression()), !dbg !1917
  %3 = icmp ne i64 %2, 0, !dbg !1920
  %4 = zext i1 %3 to i64, !dbg !1920
  br label %5, !dbg !1920

5:                                                ; preds = %8, %1
  %6 = phi i64 [ %2, %1 ], [ %9, %8 ], !dbg !1921
  call void @llvm.dbg.value(metadata i64 %6, metadata !1915, metadata !DIExpression()), !dbg !1917
  %7 = icmp ugt i64 %6, 1, !dbg !1922
  br i1 %7, label %8, label %13, !dbg !1924

8:                                                ; preds = %5
  %9 = add i64 %6, -1, !dbg !1925
  %10 = getelementptr inbounds i8, ptr %0, i64 %9, !dbg !1925
  %11 = load i8, ptr %10, align 1, !dbg !1925, !tbaa !1173
  %12 = icmp eq i8 %11, 47, !dbg !1925
  br i1 %12, label %5, label %13, !dbg !1926, !llvm.loop !1927

13:                                               ; preds = %5, %8
  %14 = phi i64 [ %4, %5 ], [ %6, %8 ], !dbg !1921
  call void @llvm.dbg.value(metadata i64 0, metadata !1916, metadata !DIExpression()), !dbg !1917
  ret i64 %14, !dbg !1929
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @c_strcasecmp(ptr noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #14 !dbg !1930 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1932, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata ptr %1, metadata !1933, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata ptr %0, metadata !1934, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata ptr %1, metadata !1935, metadata !DIExpression()), !dbg !1941
  %3 = icmp eq ptr %0, %1, !dbg !1942
  br i1 %3, label %48, label %4, !dbg !1944

4:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %0, metadata !1934, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata ptr %1, metadata !1935, metadata !DIExpression()), !dbg !1941
  %5 = load i8, ptr %0, align 1, !dbg !1945, !tbaa !1173
  %6 = zext i8 %5 to i32, !dbg !1945
  call void @llvm.dbg.value(metadata i32 %6, metadata !1946, metadata !DIExpression()), !dbg !1951
  %7 = add nsw i32 %6, -65, !dbg !1953
  %8 = icmp ult i32 %7, 26, !dbg !1953
  %9 = add nuw nsw i32 %6, 32, !dbg !1953
  %10 = select i1 %8, i32 %9, i32 %6, !dbg !1953
  call void @llvm.dbg.value(metadata i32 %10, metadata !1936, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1954
  %11 = load i8, ptr %1, align 1, !dbg !1955, !tbaa !1173
  %12 = zext i8 %11 to i32, !dbg !1955
  call void @llvm.dbg.value(metadata i32 %12, metadata !1946, metadata !DIExpression()), !dbg !1956
  %13 = add nsw i32 %12, -65, !dbg !1958
  %14 = icmp ult i32 %13, 26, !dbg !1958
  %15 = add nuw nsw i32 %12, 32, !dbg !1958
  %16 = select i1 %14, i32 %15, i32 %12, !dbg !1958
  call void @llvm.dbg.value(metadata i32 %16, metadata !1940, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1954
  %17 = and i32 %10, 255, !dbg !1959
  %18 = icmp ne i32 %17, 0, !dbg !1961
  %19 = and i32 %16, 255
  %20 = icmp eq i32 %17, %19
  %21 = select i1 %18, i1 %20, i1 false, !dbg !1962
  br i1 %21, label %26, label %22, !dbg !1962

22:                                               ; preds = %26, %4
  %23 = phi i32 [ %17, %4 ], [ %43, %26 ], !dbg !1959
  %24 = phi i32 [ %19, %4 ], [ %45, %26 ]
  %25 = sub nsw i32 %23, %24, !dbg !1963
  br label %48

26:                                               ; preds = %4, %26
  %27 = phi ptr [ %29, %26 ], [ %0, %4 ]
  %28 = phi ptr [ %30, %26 ], [ %1, %4 ]
  call void @llvm.dbg.value(metadata ptr %27, metadata !1934, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata ptr %28, metadata !1935, metadata !DIExpression()), !dbg !1941
  %29 = getelementptr inbounds i8, ptr %27, i64 1, !dbg !1966
  call void @llvm.dbg.value(metadata ptr %29, metadata !1934, metadata !DIExpression()), !dbg !1941
  %30 = getelementptr inbounds i8, ptr %28, i64 1, !dbg !1967
  call void @llvm.dbg.value(metadata ptr %30, metadata !1935, metadata !DIExpression()), !dbg !1941
  %31 = load i8, ptr %29, align 1, !dbg !1945, !tbaa !1173
  %32 = zext i8 %31 to i32, !dbg !1945
  call void @llvm.dbg.value(metadata i32 %32, metadata !1946, metadata !DIExpression()), !dbg !1951
  %33 = add nsw i32 %32, -65, !dbg !1953
  %34 = icmp ult i32 %33, 26, !dbg !1953
  %35 = add nuw nsw i32 %32, 32, !dbg !1953
  %36 = select i1 %34, i32 %35, i32 %32, !dbg !1953
  call void @llvm.dbg.value(metadata i32 %36, metadata !1936, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1954
  %37 = load i8, ptr %30, align 1, !dbg !1955, !tbaa !1173
  %38 = zext i8 %37 to i32, !dbg !1955
  call void @llvm.dbg.value(metadata i32 %38, metadata !1946, metadata !DIExpression()), !dbg !1956
  %39 = add nsw i32 %38, -65, !dbg !1958
  %40 = icmp ult i32 %39, 26, !dbg !1958
  %41 = add nuw nsw i32 %38, 32, !dbg !1958
  %42 = select i1 %40, i32 %41, i32 %38, !dbg !1958
  call void @llvm.dbg.value(metadata i32 %42, metadata !1940, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1954
  %43 = and i32 %36, 255, !dbg !1959
  %44 = icmp ne i32 %43, 0, !dbg !1961
  %45 = and i32 %42, 255
  %46 = icmp eq i32 %43, %45
  %47 = select i1 %44, i1 %46, i1 false, !dbg !1962
  br i1 %47, label %26, label %22, !dbg !1962, !llvm.loop !1968

48:                                               ; preds = %22, %2
  %49 = phi i32 [ %25, %22 ], [ 0, %2 ], !dbg !1941
  ret i32 %49, !dbg !1971
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #16 !dbg !1972 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1974, metadata !DIExpression()), !dbg !1975
  store ptr %0, ptr @file_name, align 8, !dbg !1976, !tbaa !1098
  ret void, !dbg !1977
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef zeroext %0) local_unnamed_addr #16 !dbg !1978 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1982, metadata !DIExpression()), !dbg !1983
  store i8 %2, ptr @ignore_EPIPE, align 1, !dbg !1984, !tbaa !1985
  ret void, !dbg !1987
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1988 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1993, !tbaa !1098
  %2 = tail call i32 @close_stream(ptr noundef %1) #38, !dbg !1994
  %3 = icmp eq i32 %2, 0, !dbg !1995
  br i1 %3, label %22, label %4, !dbg !1996

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 1, !dbg !1997, !tbaa !1985, !range !1998, !noundef !1148
  %6 = icmp eq i8 %5, 0, !dbg !1997
  br i1 %6, label %11, label %7, !dbg !1999

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #41, !dbg !2000
  %9 = load i32, ptr %8, align 4, !dbg !2000, !tbaa !1164
  %10 = icmp eq i32 %9, 32, !dbg !2001
  br i1 %10, label %22, label %11, !dbg !2002

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.1.39, i32 noundef 5) #38, !dbg !2003
  call void @llvm.dbg.value(metadata ptr %12, metadata !1990, metadata !DIExpression()), !dbg !2004
  %13 = load ptr, ptr @file_name, align 8, !dbg !2005, !tbaa !1098
  %14 = icmp eq ptr %13, null, !dbg !2005
  %15 = tail call ptr @__errno_location() #41, !dbg !2007
  %16 = load i32, ptr %15, align 4, !dbg !2007, !tbaa !1164
  br i1 %14, label %19, label %17, !dbg !2008

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #38, !dbg !2009
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.40, ptr noundef %18, ptr noundef %12) #38, !dbg !2009
  br label %20, !dbg !2009

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.41, ptr noundef %12) #38, !dbg !2010
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !2011, !tbaa !1164
  tail call void @_exit(i32 noundef %21) #40, !dbg !2012
  unreachable, !dbg !2012

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !2013, !tbaa !1098
  %24 = tail call i32 @close_stream(ptr noundef %23) #38, !dbg !2015
  %25 = icmp eq i32 %24, 0, !dbg !2016
  br i1 %25, label %28, label %26, !dbg !2017

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !2018, !tbaa !1164
  tail call void @_exit(i32 noundef %27) #40, !dbg !2019
  unreachable, !dbg !2019

28:                                               ; preds = %22
  ret void, !dbg !2020
}

; Function Attrs: noreturn
declare !dbg !2021 void @_exit(i32 noundef) local_unnamed_addr #17

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #18 !dbg !2023 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2027, metadata !DIExpression()), !dbg !2031
  call void @llvm.dbg.value(metadata i32 %1, metadata !2028, metadata !DIExpression()), !dbg !2031
  call void @llvm.dbg.value(metadata ptr %2, metadata !2029, metadata !DIExpression()), !dbg !2031
  call void @llvm.dbg.value(metadata ptr %3, metadata !2030, metadata !DIExpression()), !dbg !2031
  tail call fastcc void @flush_stdout(), !dbg !2032
  %5 = load ptr, ptr @error_print_progname, align 8, !dbg !2033, !tbaa !1098
  %6 = icmp eq ptr %5, null, !dbg !2033
  br i1 %6, label %8, label %7, !dbg !2035

7:                                                ; preds = %4
  tail call void %5() #38, !dbg !2036
  br label %12, !dbg !2036

8:                                                ; preds = %4
  %9 = load ptr, ptr @stderr, align 8, !dbg !2037, !tbaa !1098
  %10 = tail call ptr @getprogname() #39, !dbg !2037
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %9, i32 noundef 1, ptr noundef nonnull @.str.42, ptr noundef %10) #38, !dbg !2037
  br label %12

12:                                               ; preds = %8, %7
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3), !dbg !2039
  ret void, !dbg !2040
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !2041 {
  call void @llvm.dbg.value(metadata i32 1, metadata !2043, metadata !DIExpression()), !dbg !2044
  call void @llvm.dbg.value(metadata i32 1, metadata !2045, metadata !DIExpression()), !dbg !2048
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #38, !dbg !2051
  %2 = icmp slt i32 %1, 0, !dbg !2052
  br i1 %2, label %6, label %3, !dbg !2053

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !2054, !tbaa !1098
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #38, !dbg !2054
  br label %6, !dbg !2054

6:                                                ; preds = %3, %0
  ret void, !dbg !2055
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #10 !dbg !2056 {
  %5 = alloca [1024 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !2058, metadata !DIExpression()), !dbg !2062
  call void @llvm.dbg.value(metadata i32 %1, metadata !2059, metadata !DIExpression()), !dbg !2062
  call void @llvm.dbg.value(metadata ptr %2, metadata !2060, metadata !DIExpression()), !dbg !2062
  call void @llvm.dbg.value(metadata ptr %3, metadata !2061, metadata !DIExpression()), !dbg !2062
  %6 = load ptr, ptr @stderr, align 8, !dbg !2063, !tbaa !1098
  call void @llvm.dbg.value(metadata ptr %6, metadata !2064, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata ptr %2, metadata !2104, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata ptr %3, metadata !2105, metadata !DIExpression()), !dbg !2106
  %7 = tail call i32 @__vfprintf_chk(ptr noundef %6, i32 noundef 1, ptr noundef nonnull %2, ptr noundef %3) #38, !dbg !2108
  %8 = load i32, ptr @error_message_count, align 4, !dbg !2109, !tbaa !1164
  %9 = add i32 %8, 1, !dbg !2109
  store i32 %9, ptr @error_message_count, align 4, !dbg !2109, !tbaa !1164
  %10 = icmp eq i32 %1, 0, !dbg !2110
  br i1 %10, label %20, label %11, !dbg !2112

11:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !2113, metadata !DIExpression()), !dbg !2121
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #38, !dbg !2123
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2117, metadata !DIExpression()), !dbg !2124
  %12 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #38, !dbg !2125
  call void @llvm.dbg.value(metadata ptr %12, metadata !2116, metadata !DIExpression()), !dbg !2121
  %13 = icmp eq ptr %12, null, !dbg !2126
  br i1 %13, label %14, label %16, !dbg !2128

14:                                               ; preds = %11
  %15 = call ptr @dcgettext(ptr noundef nonnull @.str.4.43, ptr noundef nonnull @.str.5.44, i32 noundef 5) #38, !dbg !2129
  call void @llvm.dbg.value(metadata ptr %15, metadata !2116, metadata !DIExpression()), !dbg !2121
  br label %16, !dbg !2130

16:                                               ; preds = %11, %14
  %17 = phi ptr [ %12, %11 ], [ %15, %14 ], !dbg !2121
  call void @llvm.dbg.value(metadata ptr %17, metadata !2116, metadata !DIExpression()), !dbg !2121
  %18 = load ptr, ptr @stderr, align 8, !dbg !2131, !tbaa !1098
  %19 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %18, i32 noundef 1, ptr noundef nonnull @.str.6.45, ptr noundef %17) #38, !dbg !2131
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #38, !dbg !2132
  br label %20, !dbg !2133

20:                                               ; preds = %16, %4
  %21 = load ptr, ptr @stderr, align 8, !dbg !2134, !tbaa !1098
  call void @llvm.dbg.value(metadata i32 10, metadata !2135, metadata !DIExpression()), !dbg !2141
  call void @llvm.dbg.value(metadata ptr %21, metadata !2140, metadata !DIExpression()), !dbg !2141
  %22 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 5, !dbg !2143
  %23 = load ptr, ptr %22, align 8, !dbg !2143, !tbaa !2144
  %24 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 6, !dbg !2143
  %25 = load ptr, ptr %24, align 8, !dbg !2143, !tbaa !2145
  %26 = icmp ult ptr %23, %25, !dbg !2143
  br i1 %26, label %29, label %27, !dbg !2143, !prof !2146

27:                                               ; preds = %20
  %28 = call i32 @__overflow(ptr noundef nonnull %21, i32 noundef 10) #38, !dbg !2143
  br label %31, !dbg !2143

29:                                               ; preds = %20
  %30 = getelementptr inbounds i8, ptr %23, i64 1, !dbg !2143
  store ptr %30, ptr %22, align 8, !dbg !2143, !tbaa !2144
  store i8 10, ptr %23, align 1, !dbg !2143, !tbaa !1173
  br label %31, !dbg !2143

31:                                               ; preds = %27, %29
  %32 = load ptr, ptr @stderr, align 8, !dbg !2147, !tbaa !1098
  %33 = call i32 @fflush_unlocked(ptr noundef %32) #38, !dbg !2147
  %34 = icmp eq i32 %0, 0, !dbg !2148
  br i1 %34, label %36, label %35, !dbg !2150

35:                                               ; preds = %31
  call void @exit(i32 noundef %0) #40, !dbg !2151
  unreachable, !dbg !2151

36:                                               ; preds = %31
  ret void, !dbg !2152
}

declare !dbg !2153 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !2156 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !2159 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !2162 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !2165 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !2169 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !2173, metadata !DIExpression()), !dbg !2182
  call void @llvm.dbg.value(metadata i32 %1, metadata !2174, metadata !DIExpression()), !dbg !2182
  call void @llvm.dbg.value(metadata ptr %2, metadata !2175, metadata !DIExpression()), !dbg !2182
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #38, !dbg !2183
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2176, metadata !DIExpression()), !dbg !2184
  call void @llvm.va_start(ptr nonnull %4), !dbg !2185
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %4) #43, !dbg !2186
  call void @llvm.va_end(ptr nonnull %4), !dbg !2187
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #38, !dbg !2188
  ret void, !dbg !2188
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #19

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #18 !dbg !704 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !716, metadata !DIExpression()), !dbg !2189
  call void @llvm.dbg.value(metadata i32 %1, metadata !717, metadata !DIExpression()), !dbg !2189
  call void @llvm.dbg.value(metadata ptr %2, metadata !718, metadata !DIExpression()), !dbg !2189
  call void @llvm.dbg.value(metadata i32 %3, metadata !719, metadata !DIExpression()), !dbg !2189
  call void @llvm.dbg.value(metadata ptr %4, metadata !720, metadata !DIExpression()), !dbg !2189
  call void @llvm.dbg.value(metadata ptr %5, metadata !721, metadata !DIExpression()), !dbg !2189
  %7 = load i32, ptr @error_one_per_line, align 4, !dbg !2190, !tbaa !1164
  %8 = icmp eq i32 %7, 0, !dbg !2190
  br i1 %8, label %23, label %9, !dbg !2192

9:                                                ; preds = %6
  %10 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !2193, !tbaa !1164
  %11 = icmp eq i32 %10, %3, !dbg !2196
  br i1 %11, label %12, label %22, !dbg !2197

12:                                               ; preds = %9
  %13 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !2198, !tbaa !1098
  %14 = icmp eq ptr %13, %2, !dbg !2199
  br i1 %14, label %36, label %15, !dbg !2200

15:                                               ; preds = %12
  %16 = icmp ne ptr %13, null, !dbg !2201
  %17 = icmp ne ptr %2, null
  %18 = and i1 %17, %16, !dbg !2202
  br i1 %18, label %19, label %22, !dbg !2202

19:                                               ; preds = %15
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %2) #39, !dbg !2203
  %21 = icmp eq i32 %20, 0, !dbg !2204
  br i1 %21, label %36, label %22, !dbg !2205

22:                                               ; preds = %19, %15, %9
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !2206, !tbaa !1098
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !2207, !tbaa !1164
  br label %23, !dbg !2208

23:                                               ; preds = %22, %6
  tail call fastcc void @flush_stdout(), !dbg !2209
  %24 = load ptr, ptr @error_print_progname, align 8, !dbg !2210, !tbaa !1098
  %25 = icmp eq ptr %24, null, !dbg !2210
  br i1 %25, label %27, label %26, !dbg !2212

26:                                               ; preds = %23
  tail call void %24() #38, !dbg !2213
  br label %31, !dbg !2213

27:                                               ; preds = %23
  %28 = load ptr, ptr @stderr, align 8, !dbg !2214, !tbaa !1098
  %29 = tail call ptr @getprogname() #39, !dbg !2214
  %30 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %28, i32 noundef 1, ptr noundef nonnull @.str.1.48, ptr noundef %29) #38, !dbg !2214
  br label %31

31:                                               ; preds = %27, %26
  %32 = load ptr, ptr @stderr, align 8, !dbg !2216, !tbaa !1098
  %33 = icmp eq ptr %2, null, !dbg !2216
  %34 = select i1 %33, ptr @.str.3.49, ptr @.str.2.50, !dbg !2216
  %35 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %32, i32 noundef 1, ptr noundef nonnull %34, ptr noundef %2, i32 noundef %3) #38, !dbg !2216
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef %5), !dbg !2217
  br label %36, !dbg !2218

36:                                               ; preds = %12, %19, %31
  ret void, !dbg !2218
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !2219 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !2223, metadata !DIExpression()), !dbg !2229
  call void @llvm.dbg.value(metadata i32 %1, metadata !2224, metadata !DIExpression()), !dbg !2229
  call void @llvm.dbg.value(metadata ptr %2, metadata !2225, metadata !DIExpression()), !dbg !2229
  call void @llvm.dbg.value(metadata i32 %3, metadata !2226, metadata !DIExpression()), !dbg !2229
  call void @llvm.dbg.value(metadata ptr %4, metadata !2227, metadata !DIExpression()), !dbg !2229
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #38, !dbg !2230
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2228, metadata !DIExpression()), !dbg !2231
  call void @llvm.va_start(ptr nonnull %6), !dbg !2232
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %6) #43, !dbg !2233
  call void @llvm.va_end(ptr nonnull %6), !dbg !2234
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #38, !dbg !2235
  ret void, !dbg !2235
}

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !2236 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2274, metadata !DIExpression()), !dbg !2278
  call void @llvm.dbg.value(metadata i32 0, metadata !2275, metadata !DIExpression()), !dbg !2278
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #38, !dbg !2279
  call void @llvm.dbg.value(metadata i32 %2, metadata !2276, metadata !DIExpression()), !dbg !2278
  %3 = icmp slt i32 %2, 0, !dbg !2280
  br i1 %3, label %4, label %6, !dbg !2282

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !2283
  br label %24, !dbg !2284

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #38, !dbg !2285
  %8 = icmp eq i32 %7, 0, !dbg !2285
  br i1 %8, label %13, label %9, !dbg !2287

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #38, !dbg !2288
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #38, !dbg !2289
  %12 = icmp eq i64 %11, -1, !dbg !2290
  br i1 %12, label %16, label %13, !dbg !2291

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #38, !dbg !2292
  %15 = icmp eq i32 %14, 0, !dbg !2292
  br i1 %15, label %16, label %18, !dbg !2293

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 0, metadata !2275, metadata !DIExpression()), !dbg !2278
  call void @llvm.dbg.value(metadata i32 0, metadata !2277, metadata !DIExpression()), !dbg !2278
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !2294
  call void @llvm.dbg.value(metadata i32 %17, metadata !2277, metadata !DIExpression()), !dbg !2278
  br label %24, !dbg !2295

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #41, !dbg !2296
  %20 = load i32, ptr %19, align 4, !dbg !2296, !tbaa !1164
  call void @llvm.dbg.value(metadata i32 %20, metadata !2275, metadata !DIExpression()), !dbg !2278
  call void @llvm.dbg.value(metadata i32 0, metadata !2277, metadata !DIExpression()), !dbg !2278
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !2294
  call void @llvm.dbg.value(metadata i32 %21, metadata !2277, metadata !DIExpression()), !dbg !2278
  %22 = icmp eq i32 %20, 0, !dbg !2297
  br i1 %22, label %24, label %23, !dbg !2295

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !2299, !tbaa !1164
  call void @llvm.dbg.value(metadata i32 -1, metadata !2277, metadata !DIExpression()), !dbg !2278
  br label %24, !dbg !2301

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !2278
  ret i32 %25, !dbg !2302
}

; Function Attrs: nofree nounwind
declare !dbg !2303 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !2304 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !2305 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2307 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !2310 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2348, metadata !DIExpression()), !dbg !2349
  %2 = icmp eq ptr %0, null, !dbg !2350
  br i1 %2, label %6, label %3, !dbg !2352

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #38, !dbg !2353
  %5 = icmp eq i32 %4, 0, !dbg !2353
  br i1 %5, label %6, label %8, !dbg !2354

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !2355
  br label %16, !dbg !2356

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !2357, metadata !DIExpression()), !dbg !2362
  %9 = load i32, ptr %0, align 8, !dbg !2364, !tbaa !1560
  %10 = and i32 %9, 256, !dbg !2366
  %11 = icmp eq i32 %10, 0, !dbg !2366
  br i1 %11, label %14, label %12, !dbg !2367

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #38, !dbg !2368
  br label %14, !dbg !2368

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !2369
  br label %16, !dbg !2370

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !2349
  ret i32 %17, !dbg !2371
}

; Function Attrs: nofree nounwind
declare !dbg !2372 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local ptr @freopen_safer(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2) local_unnamed_addr #10 !dbg !2373 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2411, metadata !DIExpression()), !dbg !2418
  call void @llvm.dbg.value(metadata ptr %1, metadata !2412, metadata !DIExpression()), !dbg !2418
  call void @llvm.dbg.value(metadata ptr %2, metadata !2413, metadata !DIExpression()), !dbg !2418
  call void @llvm.dbg.value(metadata i8 0, metadata !2414, metadata !DIExpression()), !dbg !2418
  call void @llvm.dbg.value(metadata i8 0, metadata !2415, metadata !DIExpression()), !dbg !2418
  call void @llvm.dbg.value(metadata i8 0, metadata !2416, metadata !DIExpression()), !dbg !2418
  %4 = tail call i32 @fileno(ptr noundef nonnull %2) #38, !dbg !2419
  switch i32 %4, label %5 [
    i32 2, label %9
    i32 1, label %14
    i32 0, label %53
  ], !dbg !2420

5:                                                ; preds = %3
  %6 = tail call i32 @dup2(i32 noundef 2, i32 noundef 2) #38, !dbg !2421
  %7 = icmp ne i32 %6, 2, !dbg !2424
  %8 = zext i1 %7 to i8, !dbg !2425
  br label %9, !dbg !2425

9:                                                ; preds = %5, %3
  %10 = phi i8 [ 0, %3 ], [ %8, %5 ], !dbg !2418
  call void @llvm.dbg.value(metadata i8 %10, metadata !2416, metadata !DIExpression()), !dbg !2418
  %11 = tail call i32 @dup2(i32 noundef 1, i32 noundef 1) #38, !dbg !2426
  %12 = icmp ne i32 %11, 1, !dbg !2428
  %13 = zext i1 %12 to i8, !dbg !2429
  br label %14, !dbg !2429

14:                                               ; preds = %3, %9
  %15 = phi i8 [ 0, %3 ], [ %13, %9 ], !dbg !2418
  %16 = phi i8 [ 0, %3 ], [ %10, %9 ], !dbg !2418
  call void @llvm.dbg.value(metadata i8 %16, metadata !2416, metadata !DIExpression()), !dbg !2418
  call void @llvm.dbg.value(metadata i8 %15, metadata !2415, metadata !DIExpression()), !dbg !2418
  %17 = tail call i32 @dup2(i32 noundef 0, i32 noundef 0) #38, !dbg !2430
  %18 = icmp ne i32 %17, 0, !dbg !2432
  call void @llvm.dbg.value(metadata i8 poison, metadata !2414, metadata !DIExpression()), !dbg !2418
  br i1 %18, label %19, label %27, !dbg !2433

19:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i32 0, metadata !2435, metadata !DIExpression()), !dbg !2439
  %20 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull @.str.146, i32 noundef 0) #38, !dbg !2441
  call void @llvm.dbg.value(metadata i32 %20, metadata !2438, metadata !DIExpression()), !dbg !2439
  %21 = icmp slt i32 %20, 1, !dbg !2442
  br i1 %21, label %25, label %22, !dbg !2442

22:                                               ; preds = %19
  %23 = tail call i32 @close(i32 noundef %20) #38, !dbg !2443
  %24 = tail call ptr @__errno_location() #41, !dbg !2448
  store i32 9, ptr %24, align 4, !dbg !2449, !tbaa !1164
  br label %58, !dbg !2450

25:                                               ; preds = %19
  %26 = icmp eq i32 %20, 0, !dbg !2451
  br i1 %26, label %27, label %58, !dbg !2450

27:                                               ; preds = %25, %14
  %28 = icmp eq i8 %15, 0, !dbg !2452
  br i1 %28, label %38, label %29, !dbg !2454

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i32 1, metadata !2435, metadata !DIExpression()), !dbg !2455
  %30 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull @.str.146, i32 noundef 0) #38, !dbg !2457
  call void @llvm.dbg.value(metadata i32 %30, metadata !2438, metadata !DIExpression()), !dbg !2455
  %31 = icmp eq i32 %30, 1, !dbg !2458
  %32 = icmp slt i32 %30, 0
  %33 = or i1 %32, %31, !dbg !2459
  br i1 %33, label %37, label %34, !dbg !2459

34:                                               ; preds = %29
  %35 = tail call i32 @close(i32 noundef %30) #38, !dbg !2460
  %36 = tail call ptr @__errno_location() #41, !dbg !2461
  store i32 9, ptr %36, align 4, !dbg !2462, !tbaa !1164
  br label %37, !dbg !2463

37:                                               ; preds = %29, %34
  br i1 %31, label %38, label %58, !dbg !2464

38:                                               ; preds = %37, %27
  %39 = phi i8 [ 1, %37 ], [ 0, %27 ]
  %40 = icmp eq i8 %16, 0, !dbg !2465
  br i1 %40, label %53, label %41, !dbg !2467

41:                                               ; preds = %38
  call void @llvm.dbg.value(metadata i32 2, metadata !2435, metadata !DIExpression()), !dbg !2468
  %42 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull @.str.146, i32 noundef 0) #38, !dbg !2470
  call void @llvm.dbg.value(metadata i32 %42, metadata !2438, metadata !DIExpression()), !dbg !2468
  %43 = icmp eq i32 %42, 2, !dbg !2471
  %44 = icmp slt i32 %42, 0
  %45 = or i1 %44, %43, !dbg !2472
  br i1 %45, label %49, label %46, !dbg !2472

46:                                               ; preds = %41
  %47 = tail call i32 @close(i32 noundef %42) #38, !dbg !2473
  %48 = tail call ptr @__errno_location() #41, !dbg !2474
  store i32 9, ptr %48, align 4, !dbg !2475, !tbaa !1164
  br label %49, !dbg !2476

49:                                               ; preds = %41, %46
  br i1 %43, label %53, label %50, !dbg !2477

50:                                               ; preds = %49
  call void @llvm.dbg.value(metadata ptr null, metadata !2413, metadata !DIExpression()), !dbg !2418
  %51 = tail call ptr @__errno_location() #41, !dbg !2478
  %52 = load i32, ptr %51, align 4, !dbg !2478, !tbaa !1164
  call void @llvm.dbg.value(metadata i32 %52, metadata !2417, metadata !DIExpression()), !dbg !2418
  br label %66, !dbg !2479

53:                                               ; preds = %3, %49, %38
  %54 = phi i8 [ 1, %49 ], [ 0, %38 ], [ 0, %3 ]
  %55 = phi i8 [ %39, %49 ], [ %39, %38 ], [ 0, %3 ]
  %56 = phi i1 [ %18, %49 ], [ %18, %38 ], [ false, %3 ]
  %57 = tail call ptr @freopen(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2) #38, !dbg !2480
  call void @llvm.dbg.value(metadata ptr %57, metadata !2413, metadata !DIExpression()), !dbg !2418
  br label %58

58:                                               ; preds = %22, %37, %25, %53
  %59 = phi i8 [ %54, %53 ], [ %16, %25 ], [ %16, %37 ], [ %16, %22 ]
  %60 = phi i8 [ %55, %53 ], [ %15, %25 ], [ 1, %37 ], [ %15, %22 ]
  %61 = phi i1 [ %56, %53 ], [ true, %25 ], [ %18, %37 ], [ true, %22 ]
  %62 = phi ptr [ %57, %53 ], [ null, %25 ], [ null, %37 ], [ null, %22 ], !dbg !2481
  call void @llvm.dbg.value(metadata ptr %62, metadata !2413, metadata !DIExpression()), !dbg !2418
  %63 = tail call ptr @__errno_location() #41, !dbg !2478
  %64 = load i32, ptr %63, align 4, !dbg !2478, !tbaa !1164
  call void @llvm.dbg.value(metadata i32 %64, metadata !2417, metadata !DIExpression()), !dbg !2418
  %65 = icmp eq i8 %59, 0, !dbg !2482
  br i1 %65, label %73, label %66, !dbg !2479

66:                                               ; preds = %50, %58
  %67 = phi i32 [ %52, %50 ], [ %64, %58 ]
  %68 = phi ptr [ %51, %50 ], [ %63, %58 ]
  %69 = phi ptr [ null, %50 ], [ %62, %58 ]
  %70 = phi i1 [ %18, %50 ], [ %61, %58 ]
  %71 = phi i8 [ %39, %50 ], [ %60, %58 ]
  %72 = tail call i32 @close(i32 noundef 2) #38, !dbg !2484
  br label %73, !dbg !2484

73:                                               ; preds = %66, %58
  %74 = phi i32 [ %67, %66 ], [ %64, %58 ]
  %75 = phi ptr [ %68, %66 ], [ %63, %58 ]
  %76 = phi ptr [ %69, %66 ], [ %62, %58 ]
  %77 = phi i1 [ %70, %66 ], [ %61, %58 ]
  %78 = phi i8 [ %71, %66 ], [ %60, %58 ]
  %79 = icmp eq i8 %78, 0, !dbg !2485
  br i1 %79, label %82, label %80, !dbg !2487

80:                                               ; preds = %73
  %81 = tail call i32 @close(i32 noundef 1) #38, !dbg !2488
  br label %82, !dbg !2488

82:                                               ; preds = %80, %73
  br i1 %77, label %83, label %85, !dbg !2489

83:                                               ; preds = %82
  %84 = tail call i32 @close(i32 noundef 0) #38, !dbg !2490
  br label %85, !dbg !2490

85:                                               ; preds = %83, %82
  %86 = icmp eq ptr %76, null, !dbg !2492
  br i1 %86, label %87, label %88, !dbg !2494

87:                                               ; preds = %85
  store i32 %74, ptr %75, align 4, !dbg !2495, !tbaa !1164
  br label %88, !dbg !2496

88:                                               ; preds = %87, %85
  ret ptr %76, !dbg !2497
}

; Function Attrs: nounwind
declare !dbg !2498 i32 @dup2(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree
declare !dbg !2501 noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #20

declare !dbg !2504 i32 @close(i32 noundef) local_unnamed_addr #3

declare !dbg !2505 ptr @freopen(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !2509 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2548, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.value(metadata i64 %1, metadata !2549, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.value(metadata i32 %2, metadata !2550, metadata !DIExpression()), !dbg !2554
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !2555
  %5 = load ptr, ptr %4, align 8, !dbg !2555, !tbaa !2556
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !2557
  %7 = load ptr, ptr %6, align 8, !dbg !2557, !tbaa !2558
  %8 = icmp eq ptr %5, %7, !dbg !2559
  br i1 %8, label %9, label %27, !dbg !2560

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !2561
  %11 = load ptr, ptr %10, align 8, !dbg !2561, !tbaa !2144
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !2562
  %13 = load ptr, ptr %12, align 8, !dbg !2562, !tbaa !2563
  %14 = icmp eq ptr %11, %13, !dbg !2564
  br i1 %14, label %15, label %27, !dbg !2565

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !2566
  %17 = load ptr, ptr %16, align 8, !dbg !2566, !tbaa !2567
  %18 = icmp eq ptr %17, null, !dbg !2568
  br i1 %18, label %19, label %27, !dbg !2569

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #38, !dbg !2570
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #38, !dbg !2571
  call void @llvm.dbg.value(metadata i64 %21, metadata !2551, metadata !DIExpression()), !dbg !2572
  %22 = icmp eq i64 %21, -1, !dbg !2573
  br i1 %22, label %29, label %23, !dbg !2575

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !2576, !tbaa !1560
  %25 = and i32 %24, -17, !dbg !2576
  store i32 %25, ptr %0, align 8, !dbg !2576, !tbaa !1560
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !2577
  store i64 %21, ptr %26, align 8, !dbg !2578, !tbaa !2579
  br label %29, !dbg !2580

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !2581
  br label %29, !dbg !2582

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !2554
  ret i32 %30, !dbg !2583
}

; Function Attrs: nofree nounwind
declare !dbg !2584 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #21 !dbg !2587 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !2590, !tbaa !1098
  ret ptr %1, !dbg !2591
}

; Function Attrs: noreturn nounwind uwtable
define internal void @print_and_abort() #0 !dbg !2592 {
  %1 = load ptr, ptr @stderr, align 8, !dbg !2593, !tbaa !1098
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.151, ptr noundef nonnull @.str.2.152, i32 noundef 5) #38, !dbg !2593
  %3 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.153, ptr noundef %2) #38, !dbg !2593
  %4 = load volatile i32, ptr @exit_failure, align 4, !dbg !2594, !tbaa !1164
  tail call void @exit(i32 noundef %4) #40, !dbg !2595
  unreachable, !dbg !2595
}

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_obstack_begin(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !2596 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2634, metadata !DIExpression()), !dbg !2639
  call void @llvm.dbg.value(metadata i64 %1, metadata !2635, metadata !DIExpression()), !dbg !2639
  call void @llvm.dbg.value(metadata i64 %2, metadata !2636, metadata !DIExpression()), !dbg !2639
  call void @llvm.dbg.value(metadata ptr %3, metadata !2637, metadata !DIExpression()), !dbg !2639
  call void @llvm.dbg.value(metadata ptr %4, metadata !2638, metadata !DIExpression()), !dbg !2639
  %6 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 7, !dbg !2640
  store ptr %3, ptr %6, align 8, !dbg !2641, !tbaa !1173
  %7 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 8, !dbg !2642
  store ptr %4, ptr %7, align 8, !dbg !2643, !tbaa !1173
  %8 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 10, !dbg !2644
  %9 = load i8, ptr %8, align 8, !dbg !2645
  %10 = and i8 %9, -2, !dbg !2645
  store i8 %10, ptr %8, align 8, !dbg !2645
  call void @llvm.dbg.value(metadata ptr %0, metadata !2646, metadata !DIExpression()), !dbg !2660
  call void @llvm.dbg.value(metadata i64 %1, metadata !2651, metadata !DIExpression()), !dbg !2660
  call void @llvm.dbg.value(metadata i64 %2, metadata !2652, metadata !DIExpression()), !dbg !2660
  %11 = icmp eq i64 %2, 0, !dbg !2662
  call void @llvm.dbg.value(metadata i64 poison, metadata !2652, metadata !DIExpression()), !dbg !2660
  %12 = add i64 %2, -1, !dbg !2664
  %13 = select i1 %11, i64 15, i64 %12, !dbg !2664
  call void @llvm.dbg.value(metadata ptr undef, metadata !2665, metadata !DIExpression()), !dbg !2672
  call void @llvm.dbg.value(metadata i64 %13, metadata !2670, metadata !DIExpression()), !dbg !2672
  call void @llvm.dbg.value(metadata i64 16, metadata !2671, metadata !DIExpression()), !dbg !2672
  %14 = and i64 %13, -16, !dbg !2674
  %15 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %14, i64 16), !dbg !2674
  %16 = extractvalue { i64, i1 } %15, 1, !dbg !2674
  %17 = extractvalue { i64, i1 } %15, 0, !dbg !2674
  call void @llvm.dbg.value(metadata i1 %16, metadata !2655, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2660
  call void @llvm.dbg.value(metadata i64 %1, metadata !2656, metadata !DIExpression()), !dbg !2660
  call void @llvm.dbg.value(metadata i64 %17, metadata !2654, metadata !DIExpression()), !dbg !2660
  %18 = icmp ugt i64 %17, %1, !dbg !2675
  %19 = tail call i64 @llvm.umax.i64(i64 %17, i64 4000), !dbg !2676
  %20 = select i1 %18, i64 %19, i64 %1, !dbg !2676
  call void @llvm.dbg.value(metadata i64 %20, metadata !2656, metadata !DIExpression()), !dbg !2660
  store i64 %20, ptr %0, align 8, !dbg !2677, !tbaa !2678
  %21 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 6, !dbg !2679
  store i64 %13, ptr %21, align 8, !dbg !2680, !tbaa !1478
  br i1 %16, label %22, label %24, !dbg !2681

22:                                               ; preds = %5
  %23 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 1, !dbg !2682
  store ptr null, ptr %23, align 8, !dbg !2683, !tbaa !2684
  call void @llvm.dbg.value(metadata ptr null, metadata !2653, metadata !DIExpression()), !dbg !2660
  br label %28, !dbg !2685

24:                                               ; preds = %5
  call void @llvm.dbg.value(metadata ptr %0, metadata !2686, metadata !DIExpression()), !dbg !2692
  call void @llvm.dbg.value(metadata i64 %20, metadata !2691, metadata !DIExpression()), !dbg !2692
  %25 = tail call ptr %3(i64 noundef %20) #38, !dbg !2694
  %26 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 1, !dbg !2682
  store ptr %25, ptr %26, align 8, !dbg !2683, !tbaa !2684
  call void @llvm.dbg.value(metadata ptr %25, metadata !2653, metadata !DIExpression()), !dbg !2660
  %27 = icmp eq ptr %25, null, !dbg !2696
  br i1 %27, label %28, label %30, !dbg !2685

28:                                               ; preds = %24, %22
  %29 = load ptr, ptr @obstack_alloc_failed_handler, align 8, !dbg !2698, !tbaa !1098
  tail call void %29() #40, !dbg !2699
  unreachable, !dbg !2699

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct._obstack_chunk, ptr %25, i64 0, i32 2, !dbg !2700
  %32 = ptrtoint ptr %31 to i64, !dbg !2700
  %33 = sub i64 0, %32, !dbg !2700
  %34 = and i64 %13, %33, !dbg !2700
  %35 = getelementptr inbounds i8, ptr %31, i64 %34, !dbg !2700
  %36 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 2, !dbg !2701
  store ptr %35, ptr %36, align 8, !dbg !2702, !tbaa !1472
  %37 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 3, !dbg !2703
  store ptr %35, ptr %37, align 8, !dbg !2704, !tbaa !1469
  %38 = getelementptr inbounds i8, ptr %25, i64 %20, !dbg !2705
  %39 = sub i64 0, %13, !dbg !2705
  %40 = getelementptr inbounds i8, ptr %38, i64 %39, !dbg !2705
  %41 = ptrtoint ptr %40 to i64, !dbg !2705
  %42 = sub i64 0, %41, !dbg !2705
  %43 = and i64 %13, %42, !dbg !2705
  %44 = getelementptr inbounds i8, ptr %40, i64 %43, !dbg !2705
  store ptr %44, ptr %25, align 8, !dbg !2706, !tbaa !1098
  %45 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 4, !dbg !2707
  store ptr %44, ptr %45, align 8, !dbg !2708, !tbaa !1777
  %46 = getelementptr inbounds %struct._obstack_chunk, ptr %25, i64 0, i32 1, !dbg !2709
  store ptr null, ptr %46, align 8, !dbg !2710, !tbaa !1098
  %47 = load i8, ptr %8, align 8, !dbg !2711
  %48 = and i8 %47, -7, !dbg !2712
  store i8 %48, ptr %8, align 8, !dbg !2712
  ret i32 1, !dbg !2713
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_obstack_begin_1(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #10 !dbg !2714 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2718, metadata !DIExpression()), !dbg !2724
  call void @llvm.dbg.value(metadata i64 %1, metadata !2719, metadata !DIExpression()), !dbg !2724
  call void @llvm.dbg.value(metadata i64 %2, metadata !2720, metadata !DIExpression()), !dbg !2724
  call void @llvm.dbg.value(metadata ptr %3, metadata !2721, metadata !DIExpression()), !dbg !2724
  call void @llvm.dbg.value(metadata ptr %4, metadata !2722, metadata !DIExpression()), !dbg !2724
  call void @llvm.dbg.value(metadata ptr %5, metadata !2723, metadata !DIExpression()), !dbg !2724
  %7 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 7, !dbg !2725
  store ptr %3, ptr %7, align 8, !dbg !2726, !tbaa !1173
  %8 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 8, !dbg !2727
  store ptr %4, ptr %8, align 8, !dbg !2728, !tbaa !1173
  %9 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 9, !dbg !2729
  store ptr %5, ptr %9, align 8, !dbg !2730, !tbaa !2731
  %10 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 10, !dbg !2732
  %11 = load i8, ptr %10, align 8, !dbg !2733
  %12 = or i8 %11, 1, !dbg !2733
  store i8 %12, ptr %10, align 8, !dbg !2733
  call void @llvm.dbg.value(metadata ptr %0, metadata !2646, metadata !DIExpression()), !dbg !2734
  call void @llvm.dbg.value(metadata i64 %1, metadata !2651, metadata !DIExpression()), !dbg !2734
  call void @llvm.dbg.value(metadata i64 %2, metadata !2652, metadata !DIExpression()), !dbg !2734
  %13 = icmp eq i64 %2, 0, !dbg !2736
  call void @llvm.dbg.value(metadata i64 poison, metadata !2652, metadata !DIExpression()), !dbg !2734
  %14 = add i64 %2, -1, !dbg !2737
  %15 = select i1 %13, i64 15, i64 %14, !dbg !2737
  call void @llvm.dbg.value(metadata ptr undef, metadata !2665, metadata !DIExpression()), !dbg !2738
  call void @llvm.dbg.value(metadata i64 %15, metadata !2670, metadata !DIExpression()), !dbg !2738
  call void @llvm.dbg.value(metadata i64 16, metadata !2671, metadata !DIExpression()), !dbg !2738
  %16 = and i64 %15, -16, !dbg !2740
  %17 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %16, i64 16), !dbg !2740
  %18 = extractvalue { i64, i1 } %17, 1, !dbg !2740
  %19 = extractvalue { i64, i1 } %17, 0, !dbg !2740
  call void @llvm.dbg.value(metadata i1 %18, metadata !2655, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2734
  call void @llvm.dbg.value(metadata i64 %1, metadata !2656, metadata !DIExpression()), !dbg !2734
  call void @llvm.dbg.value(metadata i64 %19, metadata !2654, metadata !DIExpression()), !dbg !2734
  %20 = icmp ugt i64 %19, %1, !dbg !2741
  %21 = tail call i64 @llvm.umax.i64(i64 %19, i64 4000), !dbg !2742
  %22 = select i1 %20, i64 %21, i64 %1, !dbg !2742
  call void @llvm.dbg.value(metadata i64 %22, metadata !2656, metadata !DIExpression()), !dbg !2734
  store i64 %22, ptr %0, align 8, !dbg !2743, !tbaa !2678
  %23 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 6, !dbg !2744
  store i64 %15, ptr %23, align 8, !dbg !2745, !tbaa !1478
  br i1 %18, label %24, label %26, !dbg !2746

24:                                               ; preds = %6
  %25 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 1, !dbg !2747
  store ptr null, ptr %25, align 8, !dbg !2748, !tbaa !2684
  call void @llvm.dbg.value(metadata ptr null, metadata !2653, metadata !DIExpression()), !dbg !2734
  br label %30, !dbg !2749

26:                                               ; preds = %6
  call void @llvm.dbg.value(metadata ptr %0, metadata !2686, metadata !DIExpression()), !dbg !2750
  call void @llvm.dbg.value(metadata i64 %22, metadata !2691, metadata !DIExpression()), !dbg !2750
  %27 = tail call ptr %3(ptr noundef %5, i64 noundef %22) #38, !dbg !2752
  %28 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 1, !dbg !2747
  store ptr %27, ptr %28, align 8, !dbg !2748, !tbaa !2684
  call void @llvm.dbg.value(metadata ptr %27, metadata !2653, metadata !DIExpression()), !dbg !2734
  %29 = icmp eq ptr %27, null, !dbg !2753
  br i1 %29, label %30, label %32, !dbg !2749

30:                                               ; preds = %26, %24
  %31 = load ptr, ptr @obstack_alloc_failed_handler, align 8, !dbg !2754, !tbaa !1098
  tail call void %31() #40, !dbg !2755
  unreachable, !dbg !2755

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct._obstack_chunk, ptr %27, i64 0, i32 2, !dbg !2756
  %34 = ptrtoint ptr %33 to i64, !dbg !2756
  %35 = sub i64 0, %34, !dbg !2756
  %36 = and i64 %15, %35, !dbg !2756
  %37 = getelementptr inbounds i8, ptr %33, i64 %36, !dbg !2756
  %38 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 2, !dbg !2757
  store ptr %37, ptr %38, align 8, !dbg !2758, !tbaa !1472
  %39 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 3, !dbg !2759
  store ptr %37, ptr %39, align 8, !dbg !2760, !tbaa !1469
  %40 = getelementptr inbounds i8, ptr %27, i64 %22, !dbg !2761
  %41 = sub i64 0, %15, !dbg !2761
  %42 = getelementptr inbounds i8, ptr %40, i64 %41, !dbg !2761
  %43 = ptrtoint ptr %42 to i64, !dbg !2761
  %44 = sub i64 0, %43, !dbg !2761
  %45 = and i64 %15, %44, !dbg !2761
  %46 = getelementptr inbounds i8, ptr %42, i64 %45, !dbg !2761
  store ptr %46, ptr %27, align 8, !dbg !2762, !tbaa !1098
  %47 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 4, !dbg !2763
  store ptr %46, ptr %47, align 8, !dbg !2764, !tbaa !1777
  %48 = getelementptr inbounds %struct._obstack_chunk, ptr %27, i64 0, i32 1, !dbg !2765
  store ptr null, ptr %48, align 8, !dbg !2766, !tbaa !1098
  %49 = load i8, ptr %10, align 8, !dbg !2767
  %50 = and i8 %49, -7, !dbg !2768
  store i8 %50, ptr %10, align 8, !dbg !2768
  ret i32 1, !dbg !2769
}

; Function Attrs: nounwind uwtable
define dso_local void @rpl_obstack_newchunk(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2770 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2774, metadata !DIExpression()), !dbg !2783
  call void @llvm.dbg.value(metadata i64 %1, metadata !2775, metadata !DIExpression()), !dbg !2783
  %3 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 1, !dbg !2784
  %4 = load ptr, ptr %3, align 8, !dbg !2784, !tbaa !2684
  call void @llvm.dbg.value(metadata ptr %4, metadata !2776, metadata !DIExpression()), !dbg !2783
  %5 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 3, !dbg !2785
  %6 = load ptr, ptr %5, align 8, !dbg !2785, !tbaa !1469
  %7 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 2, !dbg !2786
  %8 = load ptr, ptr %7, align 8, !dbg !2786, !tbaa !1472
  %9 = ptrtoint ptr %6 to i64, !dbg !2787
  %10 = ptrtoint ptr %8 to i64, !dbg !2787
  %11 = sub i64 %9, %10, !dbg !2787
  call void @llvm.dbg.value(metadata i64 %11, metadata !2777, metadata !DIExpression()), !dbg !2783
  call void @llvm.dbg.value(metadata i8 0, metadata !2780, metadata !DIExpression()), !dbg !2783
  %12 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %11, i64 %1), !dbg !2788
  %13 = extractvalue { i64, i1 } %12, 1, !dbg !2788
  %14 = extractvalue { i64, i1 } %12, 0, !dbg !2788
  call void @llvm.dbg.value(metadata i64 %14, metadata !2778, metadata !DIExpression()), !dbg !2783
  call void @llvm.dbg.value(metadata i1 %13, metadata !2780, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2783
  %15 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 6, !dbg !2789
  %16 = load i64, ptr %15, align 8, !dbg !2789, !tbaa !1478
  call void @llvm.dbg.value(metadata ptr undef, metadata !2665, metadata !DIExpression()), !dbg !2790
  call void @llvm.dbg.value(metadata i64 %16, metadata !2670, metadata !DIExpression()), !dbg !2790
  call void @llvm.dbg.value(metadata i64 %14, metadata !2671, metadata !DIExpression()), !dbg !2790
  %17 = sub i64 0, %14, !dbg !2792
  %18 = and i64 %16, %17, !dbg !2792
  %19 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %18, i64 %14), !dbg !2792
  %20 = extractvalue { i64, i1 } %19, 1, !dbg !2792
  %21 = extractvalue { i64, i1 } %19, 0, !dbg !2792
  %22 = or i1 %13, %20, !dbg !2793
  call void @llvm.dbg.value(metadata i1 %22, metadata !2780, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2783
  call void @llvm.dbg.value(metadata i64 %21, metadata !2778, metadata !DIExpression()), !dbg !2783
  %23 = add i64 %16, 16, !dbg !2794
  %24 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %21, i64 %23), !dbg !2794
  %25 = extractvalue { i64, i1 } %24, 1, !dbg !2794
  %26 = extractvalue { i64, i1 } %24, 0, !dbg !2794
  call void @llvm.dbg.value(metadata i64 %26, metadata !2778, metadata !DIExpression()), !dbg !2783
  %27 = or i1 %22, %25, !dbg !2795
  call void @llvm.dbg.value(metadata i1 %27, metadata !2780, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2783
  %28 = lshr i64 %11, 3, !dbg !2796
  %29 = add nuw nsw i64 %28, 100, !dbg !2796
  %30 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %26, i64 %29), !dbg !2796
  %31 = extractvalue { i64, i1 } %30, 1, !dbg !2796
  %32 = extractvalue { i64, i1 } %30, 0, !dbg !2796
  call void @llvm.dbg.value(metadata i64 %32, metadata !2779, metadata !DIExpression()), !dbg !2783
  %33 = select i1 %31, i64 %26, i64 %32, !dbg !2798
  call void @llvm.dbg.value(metadata i64 %33, metadata !2779, metadata !DIExpression()), !dbg !2783
  %34 = load i64, ptr %0, align 8, !dbg !2799, !tbaa !2678
  %35 = tail call i64 @llvm.umax.i64(i64 %33, i64 %34), !dbg !2801
  call void @llvm.dbg.value(metadata i64 %35, metadata !2779, metadata !DIExpression()), !dbg !2783
  br i1 %27, label %52, label %36, !dbg !2802

36:                                               ; preds = %2
  call void @llvm.dbg.value(metadata ptr %0, metadata !2686, metadata !DIExpression()), !dbg !2803
  call void @llvm.dbg.value(metadata i64 %35, metadata !2691, metadata !DIExpression()), !dbg !2803
  %37 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 10, !dbg !2805
  %38 = load i8, ptr %37, align 8, !dbg !2805
  %39 = and i8 %38, 1, !dbg !2805
  %40 = icmp eq i8 %39, 0, !dbg !2806
  %41 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 7, !dbg !2807
  %42 = load ptr, ptr %41, align 8, !dbg !2807, !tbaa !1173
  br i1 %40, label %47, label %43, !dbg !2808

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 9, !dbg !2809
  %45 = load ptr, ptr %44, align 8, !dbg !2809, !tbaa !2731
  %46 = tail call ptr %42(ptr noundef %45, i64 noundef %35) #38, !dbg !2810
  br label %49, !dbg !2811

47:                                               ; preds = %36
  %48 = tail call ptr %42(i64 noundef %35) #38, !dbg !2812
  br label %49, !dbg !2813

49:                                               ; preds = %47, %43
  %50 = phi ptr [ %46, %43 ], [ %48, %47 ], !dbg !2802
  call void @llvm.dbg.value(metadata ptr %50, metadata !2781, metadata !DIExpression()), !dbg !2783
  %51 = icmp eq ptr %50, null, !dbg !2814
  br i1 %51, label %52, label %54, !dbg !2816

52:                                               ; preds = %2, %49
  %53 = load ptr, ptr @obstack_alloc_failed_handler, align 8, !dbg !2817, !tbaa !1098
  tail call void %53() #40, !dbg !2818
  unreachable, !dbg !2818

54:                                               ; preds = %49
  store ptr %50, ptr %3, align 8, !dbg !2819, !tbaa !2684
  %55 = getelementptr inbounds %struct._obstack_chunk, ptr %50, i64 0, i32 1, !dbg !2820
  store ptr %4, ptr %55, align 8, !dbg !2821, !tbaa !1098
  %56 = getelementptr inbounds i8, ptr %50, i64 %35, !dbg !2822
  %57 = load i64, ptr %15, align 8, !dbg !2822, !tbaa !1478
  %58 = sub i64 0, %57, !dbg !2822
  %59 = getelementptr inbounds i8, ptr %56, i64 %58, !dbg !2822
  %60 = ptrtoint ptr %59 to i64, !dbg !2822
  %61 = sub i64 0, %60, !dbg !2822
  %62 = and i64 %57, %61, !dbg !2822
  %63 = getelementptr inbounds i8, ptr %59, i64 %62, !dbg !2822
  %64 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 4, !dbg !2823
  store ptr %63, ptr %64, align 8, !dbg !2824, !tbaa !1777
  store ptr %63, ptr %50, align 8, !dbg !2825, !tbaa !1098
  %65 = getelementptr inbounds %struct._obstack_chunk, ptr %50, i64 0, i32 2, !dbg !2826
  %66 = ptrtoint ptr %65 to i64, !dbg !2826
  %67 = sub i64 0, %66, !dbg !2826
  %68 = and i64 %57, %67, !dbg !2826
  %69 = getelementptr inbounds i8, ptr %65, i64 %68, !dbg !2826
  call void @llvm.dbg.value(metadata ptr %69, metadata !2782, metadata !DIExpression()), !dbg !2783
  %70 = load ptr, ptr %7, align 8, !dbg !2827, !tbaa !1472
  call void @llvm.dbg.value(metadata ptr %69, metadata !2828, metadata !DIExpression()), !dbg !2837
  call void @llvm.dbg.value(metadata ptr %70, metadata !2835, metadata !DIExpression()), !dbg !2837
  call void @llvm.dbg.value(metadata i64 %11, metadata !2836, metadata !DIExpression()), !dbg !2837
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %69, ptr noundef nonnull align 1 %70, i64 noundef %11, i1 noundef false) #38, !dbg !2839
  %71 = load i8, ptr %37, align 8, !dbg !2840
  %72 = and i8 %71, 2, !dbg !2842
  %73 = icmp eq i8 %72, 0, !dbg !2842
  br i1 %73, label %74, label %95, !dbg !2843

74:                                               ; preds = %54
  %75 = load ptr, ptr %7, align 8, !dbg !2844, !tbaa !1472
  %76 = getelementptr inbounds %struct._obstack_chunk, ptr %4, i64 0, i32 2, !dbg !2845
  %77 = ptrtoint ptr %76 to i64, !dbg !2845
  %78 = sub i64 0, %77, !dbg !2845
  %79 = load i64, ptr %15, align 8, !dbg !2845, !tbaa !1478
  %80 = and i64 %79, %78, !dbg !2845
  %81 = getelementptr inbounds i8, ptr %76, i64 %80, !dbg !2845
  %82 = icmp eq ptr %75, %81, !dbg !2846
  br i1 %82, label %83, label %95, !dbg !2847

83:                                               ; preds = %74
  %84 = getelementptr inbounds %struct._obstack_chunk, ptr %4, i64 0, i32 1, !dbg !2848
  %85 = load ptr, ptr %84, align 8, !dbg !2848, !tbaa !1098
  store ptr %85, ptr %55, align 8, !dbg !2850, !tbaa !1098
  call void @llvm.dbg.value(metadata ptr %0, metadata !2851, metadata !DIExpression()), !dbg !2857
  call void @llvm.dbg.value(metadata ptr %4, metadata !2856, metadata !DIExpression()), !dbg !2857
  %86 = load i8, ptr %37, align 8, !dbg !2859
  %87 = and i8 %86, 1, !dbg !2859
  %88 = icmp eq i8 %87, 0, !dbg !2861
  %89 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 8, !dbg !2862
  %90 = load ptr, ptr %89, align 8, !dbg !2862, !tbaa !1173
  br i1 %88, label %94, label %91, !dbg !2863

91:                                               ; preds = %83
  %92 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 9, !dbg !2864
  %93 = load ptr, ptr %92, align 8, !dbg !2864, !tbaa !2731
  tail call void %90(ptr noundef %93, ptr noundef nonnull %4) #38, !dbg !2865
  br label %95, !dbg !2865

94:                                               ; preds = %83
  tail call void %90(ptr noundef nonnull %4) #38, !dbg !2866
  br label %95

95:                                               ; preds = %94, %91, %74, %54
  store ptr %69, ptr %7, align 8, !dbg !2867, !tbaa !1472
  %96 = getelementptr inbounds i8, ptr %69, i64 %11, !dbg !2868
  store ptr %96, ptr %5, align 8, !dbg !2869, !tbaa !1469
  %97 = load i8, ptr %37, align 8, !dbg !2870
  %98 = and i8 %97, -3, !dbg !2870
  store i8 %98, ptr %37, align 8, !dbg !2870
  ret void, !dbg !2871
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #22

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @rpl_obstack_allocated_p(ptr nocapture noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #14 !dbg !2872 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2876, metadata !DIExpression()), !dbg !2881
  call void @llvm.dbg.value(metadata ptr %1, metadata !2877, metadata !DIExpression()), !dbg !2881
  %3 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 1, !dbg !2882
  call void @llvm.dbg.value(metadata ptr poison, metadata !2878, metadata !DIExpression()), !dbg !2881
  %4 = load ptr, ptr %3, align 8, !dbg !2881, !tbaa !1098
  call void @llvm.dbg.value(metadata ptr %4, metadata !2878, metadata !DIExpression()), !dbg !2881
  %5 = icmp eq ptr %4, null, !dbg !2883
  br i1 %5, label %16, label %6, !dbg !2884

6:                                                ; preds = %2, %12
  %7 = phi ptr [ %14, %12 ], [ %4, %2 ]
  %8 = icmp ult ptr %7, %1, !dbg !2885
  br i1 %8, label %9, label %12, !dbg !2886

9:                                                ; preds = %6
  %10 = load ptr, ptr %7, align 8, !dbg !2887, !tbaa !1098
  %11 = icmp ult ptr %10, %1, !dbg !2888
  br i1 %11, label %12, label %16, !dbg !2889

12:                                               ; preds = %6, %9
  %13 = getelementptr inbounds %struct._obstack_chunk, ptr %7, i64 0, i32 1, !dbg !2890
  call void @llvm.dbg.value(metadata ptr poison, metadata !2879, metadata !DIExpression()), !dbg !2891
  call void @llvm.dbg.value(metadata ptr poison, metadata !2878, metadata !DIExpression()), !dbg !2881
  %14 = load ptr, ptr %13, align 8, !dbg !2881, !tbaa !1098
  call void @llvm.dbg.value(metadata ptr %14, metadata !2878, metadata !DIExpression()), !dbg !2881
  %15 = icmp eq ptr %14, null, !dbg !2883
  br i1 %15, label %16, label %6, !dbg !2884, !llvm.loop !2892

16:                                               ; preds = %9, %12, %2
  %17 = phi i32 [ 0, %2 ], [ 0, %12 ], [ 1, %9 ], !dbg !2883
  ret i32 %17, !dbg !2894
}

; Function Attrs: nounwind uwtable
define dso_local void @rpl_obstack_free(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2895 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2897, metadata !DIExpression()), !dbg !2902
  call void @llvm.dbg.value(metadata ptr %1, metadata !2898, metadata !DIExpression()), !dbg !2902
  %3 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 1, !dbg !2903
  %4 = load ptr, ptr %3, align 8, !dbg !2903, !tbaa !2684
  call void @llvm.dbg.value(metadata ptr %4, metadata !2899, metadata !DIExpression()), !dbg !2902
  %5 = icmp eq ptr %4, null, !dbg !2904
  br i1 %5, label %35, label %6, !dbg !2905

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 10
  %8 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 8
  %9 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 9
  br label %10, !dbg !2905

10:                                               ; preds = %6, %26
  %11 = phi ptr [ %4, %6 ], [ %18, %26 ]
  call void @llvm.dbg.value(metadata ptr %11, metadata !2899, metadata !DIExpression()), !dbg !2902
  %12 = icmp ult ptr %11, %1, !dbg !2906
  br i1 %12, label %13, label %16, !dbg !2907

13:                                               ; preds = %10
  %14 = load ptr, ptr %11, align 8, !dbg !2908, !tbaa !1098
  %15 = icmp ult ptr %14, %1, !dbg !2909
  br i1 %15, label %16, label %30, !dbg !2910

16:                                               ; preds = %10, %13
  %17 = getelementptr inbounds %struct._obstack_chunk, ptr %11, i64 0, i32 1, !dbg !2911
  %18 = load ptr, ptr %17, align 8, !dbg !2911, !tbaa !1098
  call void @llvm.dbg.value(metadata ptr %18, metadata !2900, metadata !DIExpression()), !dbg !2912
  call void @llvm.dbg.value(metadata ptr %0, metadata !2851, metadata !DIExpression()), !dbg !2913
  call void @llvm.dbg.value(metadata ptr %11, metadata !2856, metadata !DIExpression()), !dbg !2913
  %19 = load i8, ptr %7, align 8, !dbg !2915
  %20 = and i8 %19, 1, !dbg !2915
  %21 = icmp eq i8 %20, 0, !dbg !2916
  %22 = load ptr, ptr %8, align 8, !dbg !2917, !tbaa !1173
  br i1 %21, label %25, label %23, !dbg !2918

23:                                               ; preds = %16
  %24 = load ptr, ptr %9, align 8, !dbg !2919, !tbaa !2731
  tail call void %22(ptr noundef %24, ptr noundef nonnull %11) #38, !dbg !2920
  br label %26, !dbg !2920

25:                                               ; preds = %16
  tail call void %22(ptr noundef nonnull %11) #38, !dbg !2921
  br label %26

26:                                               ; preds = %23, %25
  call void @llvm.dbg.value(metadata ptr %18, metadata !2899, metadata !DIExpression()), !dbg !2902
  %27 = load i8, ptr %7, align 8, !dbg !2922
  %28 = or i8 %27, 2, !dbg !2922
  store i8 %28, ptr %7, align 8, !dbg !2922
  %29 = icmp eq ptr %18, null, !dbg !2904
  br i1 %29, label %35, label %10, !dbg !2905, !llvm.loop !2923

30:                                               ; preds = %13
  %31 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 3, !dbg !2925
  store ptr %1, ptr %31, align 8, !dbg !2928, !tbaa !1469
  %32 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 2, !dbg !2929
  store ptr %1, ptr %32, align 8, !dbg !2930, !tbaa !1472
  %33 = load ptr, ptr %11, align 8, !dbg !2931, !tbaa !1098
  %34 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 4, !dbg !2932
  store ptr %33, ptr %34, align 8, !dbg !2933, !tbaa !1777
  store ptr %11, ptr %3, align 8, !dbg !2934, !tbaa !2684
  br label %38, !dbg !2935

35:                                               ; preds = %26, %2
  %36 = icmp eq ptr %1, null, !dbg !2936
  br i1 %36, label %38, label %37, !dbg !2938

37:                                               ; preds = %35
  tail call void @abort() #40, !dbg !2939
  unreachable, !dbg !2939

38:                                               ; preds = %35, %30
  ret void, !dbg !2940
}

; Function Attrs: noreturn nounwind
declare !dbg !2941 void @abort() local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @rpl_obstack_memory_used(ptr nocapture noundef readonly %0) local_unnamed_addr #14 !dbg !2942 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2946, metadata !DIExpression()), !dbg !2950
  call void @llvm.dbg.value(metadata i64 0, metadata !2947, metadata !DIExpression()), !dbg !2950
  %2 = getelementptr inbounds %struct.obstack, ptr %0, i64 0, i32 1, !dbg !2951
  call void @llvm.dbg.value(metadata ptr poison, metadata !2948, metadata !DIExpression()), !dbg !2952
  %3 = load ptr, ptr %2, align 8, !dbg !2953, !tbaa !1098
  call void @llvm.dbg.value(metadata ptr %3, metadata !2948, metadata !DIExpression()), !dbg !2952
  call void @llvm.dbg.value(metadata i64 0, metadata !2947, metadata !DIExpression()), !dbg !2950
  %4 = icmp eq ptr %3, null, !dbg !2954
  br i1 %4, label %5, label %7, !dbg !2956

5:                                                ; preds = %7, %1
  %6 = phi i64 [ 0, %1 ], [ %14, %7 ], !dbg !2950
  ret i64 %6, !dbg !2957

7:                                                ; preds = %1, %7
  %8 = phi ptr [ %16, %7 ], [ %3, %1 ]
  %9 = phi i64 [ %14, %7 ], [ 0, %1 ]
  call void @llvm.dbg.value(metadata i64 %9, metadata !2947, metadata !DIExpression()), !dbg !2950
  %10 = load ptr, ptr %8, align 8, !dbg !2958, !tbaa !1098
  %11 = ptrtoint ptr %10 to i64, !dbg !2960
  %12 = ptrtoint ptr %8 to i64, !dbg !2960
  %13 = sub i64 %9, %12, !dbg !2960
  %14 = add i64 %13, %11, !dbg !2961
  call void @llvm.dbg.value(metadata i64 %14, metadata !2947, metadata !DIExpression()), !dbg !2950
  %15 = getelementptr inbounds %struct._obstack_chunk, ptr %8, i64 0, i32 1, !dbg !2962
  call void @llvm.dbg.value(metadata ptr poison, metadata !2948, metadata !DIExpression()), !dbg !2952
  %16 = load ptr, ptr %15, align 8, !dbg !2953, !tbaa !1098
  call void @llvm.dbg.value(metadata ptr %16, metadata !2948, metadata !DIExpression()), !dbg !2952
  %17 = icmp eq ptr %16, null, !dbg !2954
  br i1 %17, label %5, label %7, !dbg !2956, !llvm.loop !2963
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #23 !dbg !2965 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2967, metadata !DIExpression()), !dbg !2970
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #39, !dbg !2971
  call void @llvm.dbg.value(metadata ptr %2, metadata !2968, metadata !DIExpression()), !dbg !2970
  %3 = icmp eq ptr %2, null, !dbg !2972
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !2972
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !2972
  call void @llvm.dbg.value(metadata ptr %5, metadata !2969, metadata !DIExpression()), !dbg !2970
  %6 = ptrtoint ptr %5 to i64, !dbg !2973
  %7 = ptrtoint ptr %0 to i64, !dbg !2973
  %8 = sub i64 %6, %7, !dbg !2973
  %9 = icmp sgt i64 %8, 6, !dbg !2975
  br i1 %9, label %10, label %19, !dbg !2976

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !2977
  call void @llvm.dbg.value(metadata ptr %11, metadata !2978, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.value(metadata ptr @.str.162, metadata !2983, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.value(metadata i64 7, metadata !2984, metadata !DIExpression()), !dbg !2985
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.162, i64 7), !dbg !2987
  %13 = icmp eq i32 %12, 0, !dbg !2988
  br i1 %13, label %14, label %19, !dbg !2989

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata ptr %5, metadata !2967, metadata !DIExpression()), !dbg !2970
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.163, i64 noundef 3) #39, !dbg !2990
  %16 = icmp eq i32 %15, 0, !dbg !2993
  %17 = select i1 %16, i64 3, i64 0, !dbg !2994
  %18 = getelementptr i8, ptr %5, i64 %17, !dbg !2994
  br label %19, !dbg !2994

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !2970
  call void @llvm.dbg.value(metadata ptr %21, metadata !2969, metadata !DIExpression()), !dbg !2970
  call void @llvm.dbg.value(metadata ptr %20, metadata !2967, metadata !DIExpression()), !dbg !2970
  store ptr %20, ptr @program_name, align 8, !dbg !2995, !tbaa !1098
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !2996, !tbaa !1098
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !2997, !tbaa !1098
  ret void, !dbg !2998
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2999 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #24

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !770 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.__mbstate_t, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !777, metadata !DIExpression()), !dbg !3000
  call void @llvm.dbg.value(metadata ptr %1, metadata !778, metadata !DIExpression()), !dbg !3000
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #38, !dbg !3001
  call void @llvm.dbg.value(metadata ptr %5, metadata !779, metadata !DIExpression()), !dbg !3000
  %6 = icmp eq ptr %5, %0, !dbg !3002
  br i1 %6, label %7, label %14, !dbg !3004

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #38, !dbg !3005
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #38, !dbg !3006
  call void @llvm.dbg.declare(metadata ptr %4, metadata !785, metadata !DIExpression()), !dbg !3007
  call void @llvm.dbg.value(metadata ptr %4, metadata !3008, metadata !DIExpression()), !dbg !3015
  call void @llvm.dbg.value(metadata ptr %4, metadata !3017, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i32 0, metadata !3022, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i64 8, metadata !3023, metadata !DIExpression()), !dbg !3024
  store i64 0, ptr %4, align 8, !dbg !3026
  call void @llvm.dbg.value(metadata ptr %3, metadata !780, metadata !DIExpression(DW_OP_deref)), !dbg !3000
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #38, !dbg !3027
  %9 = icmp eq i64 %8, 2, !dbg !3029
  %10 = load i32, ptr %3, align 4
  call void @llvm.dbg.value(metadata i32 %10, metadata !780, metadata !DIExpression()), !dbg !3000
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !3030
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !3000
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #38, !dbg !3031
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #38, !dbg !3031
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !3000
  ret ptr %15, !dbg !3031
}

; Function Attrs: nounwind
declare !dbg !3032 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !3038 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3043, metadata !DIExpression()), !dbg !3046
  %2 = tail call ptr @__errno_location() #41, !dbg !3047
  %3 = load i32, ptr %2, align 4, !dbg !3047, !tbaa !1164
  call void @llvm.dbg.value(metadata i32 %3, metadata !3044, metadata !DIExpression()), !dbg !3046
  %4 = icmp eq ptr %0, null, !dbg !3048
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !3048
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef %5, i64 noundef 56) #44, !dbg !3049
  call void @llvm.dbg.value(metadata ptr %6, metadata !3045, metadata !DIExpression()), !dbg !3046
  store i32 %3, ptr %2, align 4, !dbg !3050, !tbaa !1164
  ret ptr %6, !dbg !3051
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #14 !dbg !3052 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3058, metadata !DIExpression()), !dbg !3059
  %2 = icmp eq ptr %0, null, !dbg !3060
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !3060
  %4 = load i32, ptr %3, align 8, !dbg !3061, !tbaa !3062
  ret i32 %4, !dbg !3064
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #25 !dbg !3065 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3069, metadata !DIExpression()), !dbg !3071
  call void @llvm.dbg.value(metadata i32 %1, metadata !3070, metadata !DIExpression()), !dbg !3071
  %3 = icmp eq ptr %0, null, !dbg !3072
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !3072
  store i32 %1, ptr %4, align 8, !dbg !3073, !tbaa !3062
  ret void, !dbg !3074
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef signext %1, i32 noundef %2) local_unnamed_addr #26 !dbg !3075 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3079, metadata !DIExpression()), !dbg !3087
  call void @llvm.dbg.value(metadata i8 %1, metadata !3080, metadata !DIExpression()), !dbg !3087
  call void @llvm.dbg.value(metadata i32 %2, metadata !3081, metadata !DIExpression()), !dbg !3087
  call void @llvm.dbg.value(metadata i8 %1, metadata !3082, metadata !DIExpression()), !dbg !3087
  %4 = icmp eq ptr %0, null, !dbg !3088
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !3088
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !3089
  %7 = lshr i8 %1, 5, !dbg !3090
  %8 = zext i8 %7 to i64, !dbg !3090
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !3091
  call void @llvm.dbg.value(metadata ptr %9, metadata !3083, metadata !DIExpression()), !dbg !3087
  %10 = and i8 %1, 31, !dbg !3092
  %11 = zext i8 %10 to i32, !dbg !3092
  call void @llvm.dbg.value(metadata i32 %11, metadata !3085, metadata !DIExpression()), !dbg !3087
  %12 = load i32, ptr %9, align 4, !dbg !3093, !tbaa !1164
  %13 = lshr i32 %12, %11, !dbg !3094
  %14 = and i32 %13, 1, !dbg !3095
  call void @llvm.dbg.value(metadata i32 %14, metadata !3086, metadata !DIExpression()), !dbg !3087
  %15 = xor i32 %13, %2, !dbg !3096
  %16 = and i32 %15, 1, !dbg !3096
  %17 = shl nuw i32 %16, %11, !dbg !3097
  %18 = xor i32 %17, %12, !dbg !3098
  store i32 %18, ptr %9, align 4, !dbg !3098, !tbaa !1164
  ret i32 %14, !dbg !3099
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #26 !dbg !3100 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3104, metadata !DIExpression()), !dbg !3107
  call void @llvm.dbg.value(metadata i32 %1, metadata !3105, metadata !DIExpression()), !dbg !3107
  %3 = icmp eq ptr %0, null, !dbg !3108
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !3110
  call void @llvm.dbg.value(metadata ptr %4, metadata !3104, metadata !DIExpression()), !dbg !3107
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !3111
  %6 = load i32, ptr %5, align 4, !dbg !3111, !tbaa !3112
  call void @llvm.dbg.value(metadata i32 %6, metadata !3106, metadata !DIExpression()), !dbg !3107
  store i32 %1, ptr %5, align 4, !dbg !3113, !tbaa !3112
  ret i32 %6, !dbg !3114
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3115 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3119, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata ptr %1, metadata !3120, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata ptr %2, metadata !3121, metadata !DIExpression()), !dbg !3122
  %4 = icmp eq ptr %0, null, !dbg !3123
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !3125
  call void @llvm.dbg.value(metadata ptr %5, metadata !3119, metadata !DIExpression()), !dbg !3122
  store i32 10, ptr %5, align 8, !dbg !3126, !tbaa !3062
  %6 = icmp ne ptr %1, null, !dbg !3127
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !3129
  br i1 %8, label %10, label %9, !dbg !3129

9:                                                ; preds = %3
  tail call void @abort() #40, !dbg !3130
  unreachable, !dbg !3130

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3131
  store ptr %1, ptr %11, align 8, !dbg !3132, !tbaa !3133
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3134
  store ptr %2, ptr %12, align 8, !dbg !3135, !tbaa !3136
  ret void, !dbg !3137
}

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !3138 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3142, metadata !DIExpression()), !dbg !3150
  call void @llvm.dbg.value(metadata i64 %1, metadata !3143, metadata !DIExpression()), !dbg !3150
  call void @llvm.dbg.value(metadata ptr %2, metadata !3144, metadata !DIExpression()), !dbg !3150
  call void @llvm.dbg.value(metadata i64 %3, metadata !3145, metadata !DIExpression()), !dbg !3150
  call void @llvm.dbg.value(metadata ptr %4, metadata !3146, metadata !DIExpression()), !dbg !3150
  %6 = icmp eq ptr %4, null, !dbg !3151
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !3151
  call void @llvm.dbg.value(metadata ptr %7, metadata !3147, metadata !DIExpression()), !dbg !3150
  %8 = tail call ptr @__errno_location() #41, !dbg !3152
  %9 = load i32, ptr %8, align 4, !dbg !3152, !tbaa !1164
  call void @llvm.dbg.value(metadata i32 %9, metadata !3148, metadata !DIExpression()), !dbg !3150
  %10 = load i32, ptr %7, align 8, !dbg !3153, !tbaa !3062
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !3154
  %12 = load i32, ptr %11, align 4, !dbg !3154, !tbaa !3112
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !3155
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !3156
  %15 = load ptr, ptr %14, align 8, !dbg !3156, !tbaa !3133
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !3157
  %17 = load ptr, ptr %16, align 8, !dbg !3157, !tbaa !3136
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !3158
  call void @llvm.dbg.value(metadata i64 %18, metadata !3149, metadata !DIExpression()), !dbg !3150
  store i32 %9, ptr %8, align 4, !dbg !3159, !tbaa !1164
  ret i64 %18, !dbg !3160
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !3161 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.__mbstate_t, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.__mbstate_t, align 8
  %14 = alloca %struct.__mbstate_t, align 8
  %15 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !3167, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i64 %1, metadata !3168, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata ptr %2, metadata !3169, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i64 %3, metadata !3170, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i32 %4, metadata !3171, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i32 %5, metadata !3172, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata ptr %6, metadata !3173, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata ptr %7, metadata !3174, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata ptr %8, metadata !3175, metadata !DIExpression()), !dbg !3229
  %16 = tail call i64 @__ctype_get_mb_cur_max() #38, !dbg !3230
  %17 = icmp eq i64 %16, 1, !dbg !3231
  call void @llvm.dbg.value(metadata i1 %17, metadata !3176, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3229
  call void @llvm.dbg.value(metadata i64 0, metadata !3177, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i64 0, metadata !3178, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata ptr null, metadata !3179, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i64 0, metadata !3180, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i8 0, metadata !3181, metadata !DIExpression()), !dbg !3229
  %18 = trunc i32 %5 to i8, !dbg !3232
  %19 = lshr i8 %18, 1, !dbg !3232
  %20 = and i8 %19, 1, !dbg !3232
  call void @llvm.dbg.value(metadata i8 %20, metadata !3182, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i8 0, metadata !3183, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i8 1, metadata !3184, metadata !DIExpression()), !dbg !3229
  %21 = getelementptr inbounds i8, ptr %2, i64 1
  %22 = and i32 %5, 4
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 1
  %25 = icmp eq i32 %24, 0
  %26 = icmp ne ptr %6, null
  %27 = icmp eq ptr %6, null
  br label %28, !dbg !3233

28:                                               ; preds = %642, %9
  %29 = phi i32 [ %4, %9 ], [ 2, %642 ]
  %30 = phi ptr [ %7, %9 ], [ %117, %642 ]
  %31 = phi ptr [ %8, %9 ], [ %118, %642 ]
  %32 = phi i64 [ %3, %9 ], [ %139, %642 ]
  %33 = phi i64 [ 0, %9 ], [ %141, %642 ], !dbg !3234
  %34 = phi ptr [ null, %9 ], [ %120, %642 ], !dbg !3235
  %35 = phi i64 [ 0, %9 ], [ %121, %642 ], !dbg !3236
  %36 = phi i8 [ 0, %9 ], [ %122, %642 ], !dbg !3237
  %37 = phi i8 [ %20, %9 ], [ %123, %642 ], !dbg !3229
  %38 = phi i8 [ 0, %9 ], [ %142, %642 ], !dbg !3238
  %39 = phi i8 [ 1, %9 ], [ %143, %642 ], !dbg !3239
  %40 = phi i64 [ %1, %9 ], [ %141, %642 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !3168, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i8 %39, metadata !3184, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i8 %38, metadata !3183, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i8 %37, metadata !3182, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i8 %36, metadata !3181, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i64 %35, metadata !3180, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata ptr %34, metadata !3179, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i64 %33, metadata !3178, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i64 0, metadata !3177, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i64 %32, metadata !3170, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata ptr %31, metadata !3175, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata ptr %30, metadata !3174, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i32 %29, metadata !3171, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.label(metadata !3222), !dbg !3240
  call void @llvm.dbg.value(metadata i8 0, metadata !3185, metadata !DIExpression()), !dbg !3229
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
  ], !dbg !3241

41:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 1, metadata !3182, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i32 5, metadata !3171, metadata !DIExpression()), !dbg !3229
  br label %115, !dbg !3242

42:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 %37, metadata !3182, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i32 5, metadata !3171, metadata !DIExpression()), !dbg !3229
  %43 = and i8 %37, 1, !dbg !3243
  %44 = icmp eq i8 %43, 0, !dbg !3243
  br i1 %44, label %45, label %115, !dbg !3242

45:                                               ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !3245
  br i1 %46, label %115, label %47, !dbg !3248

47:                                               ; preds = %45
  store i8 34, ptr %0, align 1, !dbg !3245, !tbaa !1173
  br label %115, !dbg !3245

48:                                               ; preds = %28, %28
  call void @llvm.dbg.value(metadata ptr @.str.11.176, metadata !866, metadata !DIExpression()), !dbg !3249
  call void @llvm.dbg.value(metadata i32 %29, metadata !867, metadata !DIExpression()), !dbg !3249
  %49 = call ptr @dcgettext(ptr noundef nonnull @.str.13.177, ptr noundef nonnull @.str.11.176, i32 noundef 5) #38, !dbg !3253
  call void @llvm.dbg.value(metadata ptr %49, metadata !868, metadata !DIExpression()), !dbg !3249
  %50 = icmp eq ptr %49, @.str.11.176, !dbg !3254
  br i1 %50, label %51, label %60, !dbg !3256

51:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #38, !dbg !3257
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #38, !dbg !3258
  call void @llvm.dbg.declare(metadata ptr %13, metadata !870, metadata !DIExpression()), !dbg !3259
  call void @llvm.dbg.value(metadata ptr %13, metadata !3260, metadata !DIExpression()), !dbg !3266
  call void @llvm.dbg.value(metadata ptr %13, metadata !3268, metadata !DIExpression()), !dbg !3273
  call void @llvm.dbg.value(metadata i32 0, metadata !3271, metadata !DIExpression()), !dbg !3273
  call void @llvm.dbg.value(metadata i64 8, metadata !3272, metadata !DIExpression()), !dbg !3273
  store i64 0, ptr %13, align 8, !dbg !3275
  call void @llvm.dbg.value(metadata ptr %12, metadata !869, metadata !DIExpression(DW_OP_deref)), !dbg !3249
  %52 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #38, !dbg !3276
  %53 = icmp eq i64 %52, 3, !dbg !3278
  %54 = load i32, ptr %12, align 4
  call void @llvm.dbg.value(metadata i32 %54, metadata !869, metadata !DIExpression()), !dbg !3249
  %55 = icmp eq i32 %54, 8216
  %56 = select i1 %53, i1 %55, i1 false, !dbg !3279
  %57 = icmp eq i32 %29, 9, !dbg !3279
  %58 = select i1 %57, ptr @.str.10.178, ptr @.str.12.179, !dbg !3279
  %59 = select i1 %56, ptr @gettext_quote.quote, ptr %58, !dbg !3279
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #38, !dbg !3280
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #38, !dbg !3280
  br label %60

60:                                               ; preds = %48, %51
  %61 = phi ptr [ %59, %51 ], [ %49, %48 ], !dbg !3249
  call void @llvm.dbg.value(metadata ptr %61, metadata !3174, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata ptr @.str.12.179, metadata !866, metadata !DIExpression()), !dbg !3281
  call void @llvm.dbg.value(metadata i32 %29, metadata !867, metadata !DIExpression()), !dbg !3281
  %62 = call ptr @dcgettext(ptr noundef nonnull @.str.13.177, ptr noundef nonnull @.str.12.179, i32 noundef 5) #38, !dbg !3283
  call void @llvm.dbg.value(metadata ptr %62, metadata !868, metadata !DIExpression()), !dbg !3281
  %63 = icmp eq ptr %62, @.str.12.179, !dbg !3284
  br i1 %63, label %64, label %73, !dbg !3285

64:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #38, !dbg !3286
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #38, !dbg !3287
  call void @llvm.dbg.declare(metadata ptr %11, metadata !870, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.value(metadata ptr %11, metadata !3260, metadata !DIExpression()), !dbg !3289
  call void @llvm.dbg.value(metadata ptr %11, metadata !3268, metadata !DIExpression()), !dbg !3291
  call void @llvm.dbg.value(metadata i32 0, metadata !3271, metadata !DIExpression()), !dbg !3291
  call void @llvm.dbg.value(metadata i64 8, metadata !3272, metadata !DIExpression()), !dbg !3291
  store i64 0, ptr %11, align 8, !dbg !3293
  call void @llvm.dbg.value(metadata ptr %10, metadata !869, metadata !DIExpression(DW_OP_deref)), !dbg !3281
  %65 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #38, !dbg !3294
  %66 = icmp eq i64 %65, 3, !dbg !3295
  %67 = load i32, ptr %10, align 4
  call void @llvm.dbg.value(metadata i32 %67, metadata !869, metadata !DIExpression()), !dbg !3281
  %68 = icmp eq i32 %67, 8216
  %69 = select i1 %66, i1 %68, i1 false, !dbg !3296
  %70 = icmp eq i32 %29, 9, !dbg !3296
  %71 = select i1 %70, ptr @.str.10.178, ptr @.str.12.179, !dbg !3296
  %72 = select i1 %69, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %71, !dbg !3296
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #38, !dbg !3297
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #38, !dbg !3297
  br label %73

73:                                               ; preds = %64, %60, %28
  %74 = phi ptr [ %30, %28 ], [ %61, %60 ], [ %61, %64 ]
  %75 = phi ptr [ %31, %28 ], [ %62, %60 ], [ %72, %64 ]
  call void @llvm.dbg.value(metadata ptr %75, metadata !3175, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata ptr %74, metadata !3174, metadata !DIExpression()), !dbg !3229
  %76 = and i8 %37, 1, !dbg !3298
  %77 = icmp eq i8 %76, 0, !dbg !3298
  br i1 %77, label %78, label %93, !dbg !3299

78:                                               ; preds = %73
  call void @llvm.dbg.value(metadata ptr %74, metadata !3186, metadata !DIExpression()), !dbg !3300
  call void @llvm.dbg.value(metadata i64 0, metadata !3177, metadata !DIExpression()), !dbg !3229
  %79 = load i8, ptr %74, align 1, !dbg !3301, !tbaa !1173
  %80 = icmp eq i8 %79, 0, !dbg !3303
  br i1 %80, label %93, label %81, !dbg !3303

81:                                               ; preds = %78, %88
  %82 = phi i8 [ %91, %88 ], [ %79, %78 ]
  %83 = phi ptr [ %90, %88 ], [ %74, %78 ]
  %84 = phi i64 [ %89, %88 ], [ 0, %78 ]
  call void @llvm.dbg.value(metadata ptr %83, metadata !3186, metadata !DIExpression()), !dbg !3300
  call void @llvm.dbg.value(metadata i64 %84, metadata !3177, metadata !DIExpression()), !dbg !3229
  %85 = icmp ult i64 %84, %40, !dbg !3304
  br i1 %85, label %86, label %88, !dbg !3307

86:                                               ; preds = %81
  %87 = getelementptr inbounds i8, ptr %0, i64 %84, !dbg !3304
  store i8 %82, ptr %87, align 1, !dbg !3304, !tbaa !1173
  br label %88, !dbg !3304

88:                                               ; preds = %86, %81
  %89 = add i64 %84, 1, !dbg !3307
  call void @llvm.dbg.value(metadata i64 %89, metadata !3177, metadata !DIExpression()), !dbg !3229
  %90 = getelementptr inbounds i8, ptr %83, i64 1, !dbg !3308
  call void @llvm.dbg.value(metadata ptr %90, metadata !3186, metadata !DIExpression()), !dbg !3300
  %91 = load i8, ptr %90, align 1, !dbg !3301, !tbaa !1173
  %92 = icmp eq i8 %91, 0, !dbg !3303
  br i1 %92, label %93, label %81, !dbg !3303, !llvm.loop !3309

93:                                               ; preds = %88, %78, %73
  %94 = phi i64 [ 0, %73 ], [ 0, %78 ], [ %89, %88 ], !dbg !3311
  call void @llvm.dbg.value(metadata i64 %94, metadata !3177, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i8 1, metadata !3181, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata ptr %75, metadata !3179, metadata !DIExpression()), !dbg !3229
  %95 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %75) #39, !dbg !3312
  call void @llvm.dbg.value(metadata i64 %95, metadata !3180, metadata !DIExpression()), !dbg !3229
  br label %115, !dbg !3313

96:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 1, metadata !3181, metadata !DIExpression()), !dbg !3229
  br label %97, !dbg !3314

97:                                               ; preds = %28, %96
  %98 = phi i8 [ %36, %28 ], [ 1, %96 ], !dbg !3229
  call void @llvm.dbg.value(metadata i8 %98, metadata !3181, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i8 1, metadata !3182, metadata !DIExpression()), !dbg !3229
  br label %99, !dbg !3315

99:                                               ; preds = %28, %97
  %100 = phi i8 [ %36, %28 ], [ %98, %97 ], !dbg !3237
  %101 = phi i8 [ %37, %28 ], [ 1, %97 ], !dbg !3229
  call void @llvm.dbg.value(metadata i8 %101, metadata !3182, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i8 %100, metadata !3181, metadata !DIExpression()), !dbg !3229
  %102 = and i8 %101, 1, !dbg !3316
  %103 = icmp eq i8 %102, 0, !dbg !3316
  %104 = select i1 %103, i8 1, i8 %100, !dbg !3318
  br label %105, !dbg !3318

105:                                              ; preds = %99, %28
  %106 = phi i8 [ %36, %28 ], [ %104, %99 ], !dbg !3229
  %107 = phi i8 [ %37, %28 ], [ %101, %99 ], !dbg !3232
  call void @llvm.dbg.value(metadata i8 %107, metadata !3182, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i8 %106, metadata !3181, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i32 2, metadata !3171, metadata !DIExpression()), !dbg !3229
  %108 = and i8 %107, 1, !dbg !3319
  %109 = icmp eq i8 %108, 0, !dbg !3319
  br i1 %109, label %110, label %115, !dbg !3321

110:                                              ; preds = %105
  %111 = icmp eq i64 %40, 0, !dbg !3322
  br i1 %111, label %115, label %112, !dbg !3325

112:                                              ; preds = %110
  store i8 39, ptr %0, align 1, !dbg !3322, !tbaa !1173
  br label %115, !dbg !3322

113:                                              ; preds = %28
  call void @llvm.dbg.value(metadata i8 0, metadata !3182, metadata !DIExpression()), !dbg !3229
  br label %115, !dbg !3326

114:                                              ; preds = %28
  call void @abort() #40, !dbg !3327
  unreachable, !dbg !3327

115:                                              ; preds = %41, %105, %112, %110, %28, %42, %47, %45, %113, %93
  %116 = phi i32 [ 0, %113 ], [ %29, %93 ], [ 5, %45 ], [ 5, %47 ], [ 5, %42 ], [ %29, %28 ], [ 2, %110 ], [ 2, %112 ], [ 2, %105 ], [ 5, %41 ]
  %117 = phi ptr [ %30, %113 ], [ %74, %93 ], [ %30, %45 ], [ %30, %47 ], [ %30, %42 ], [ %30, %28 ], [ %30, %110 ], [ %30, %112 ], [ %30, %105 ], [ %30, %41 ]
  %118 = phi ptr [ %31, %113 ], [ %75, %93 ], [ %31, %45 ], [ %31, %47 ], [ %31, %42 ], [ %31, %28 ], [ %31, %110 ], [ %31, %112 ], [ %31, %105 ], [ %31, %41 ]
  %119 = phi i64 [ 0, %113 ], [ %94, %93 ], [ 1, %45 ], [ 1, %47 ], [ 0, %42 ], [ 0, %28 ], [ 1, %110 ], [ 1, %112 ], [ 0, %105 ], [ 0, %41 ], !dbg !3311
  %120 = phi ptr [ %34, %113 ], [ %75, %93 ], [ @.str.10.178, %45 ], [ @.str.10.178, %47 ], [ @.str.10.178, %42 ], [ %34, %28 ], [ @.str.12.179, %110 ], [ @.str.12.179, %112 ], [ @.str.12.179, %105 ], [ @.str.10.178, %41 ], !dbg !3229
  %121 = phi i64 [ %35, %113 ], [ %95, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ %35, %28 ], [ 1, %110 ], [ 1, %112 ], [ 1, %105 ], [ 1, %41 ], !dbg !3229
  %122 = phi i8 [ %36, %113 ], [ 1, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ 1, %28 ], [ %106, %110 ], [ %106, %112 ], [ %106, %105 ], [ 1, %41 ], !dbg !3229
  %123 = phi i8 [ 0, %113 ], [ %37, %93 ], [ %37, %45 ], [ %37, %47 ], [ %37, %42 ], [ 0, %28 ], [ %107, %110 ], [ %107, %112 ], [ %107, %105 ], [ 1, %41 ], !dbg !3229
  call void @llvm.dbg.value(metadata i8 %123, metadata !3182, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i8 %122, metadata !3181, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i64 %121, metadata !3180, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata ptr %120, metadata !3179, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i64 %119, metadata !3177, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata ptr %118, metadata !3175, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata ptr %117, metadata !3174, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i32 %116, metadata !3171, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i64 0, metadata !3191, metadata !DIExpression()), !dbg !3328
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
  br label %138, !dbg !3329

138:                                              ; preds = %617, %115
  %139 = phi i64 [ %32, %115 ], [ %618, %617 ]
  %140 = phi i64 [ %119, %115 ], [ %619, %617 ], !dbg !3311
  %141 = phi i64 [ %33, %115 ], [ %620, %617 ], !dbg !3234
  %142 = phi i8 [ %38, %115 ], [ %621, %617 ], !dbg !3238
  %143 = phi i8 [ %39, %115 ], [ %622, %617 ], !dbg !3239
  %144 = phi i8 [ 0, %115 ], [ %623, %617 ], !dbg !3330
  %145 = phi i64 [ 0, %115 ], [ %626, %617 ], !dbg !3331
  %146 = phi i64 [ %40, %115 ], [ %625, %617 ]
  call void @llvm.dbg.value(metadata i64 %146, metadata !3168, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i64 %145, metadata !3191, metadata !DIExpression()), !dbg !3328
  call void @llvm.dbg.value(metadata i8 %144, metadata !3185, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i8 %143, metadata !3184, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i8 %142, metadata !3183, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i64 %141, metadata !3178, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i64 %140, metadata !3177, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i64 %139, metadata !3170, metadata !DIExpression()), !dbg !3229
  %147 = icmp eq i64 %139, -1, !dbg !3332
  br i1 %147, label %148, label %152, !dbg !3333

148:                                              ; preds = %138
  %149 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !3334
  %150 = load i8, ptr %149, align 1, !dbg !3334, !tbaa !1173
  %151 = icmp eq i8 %150, 0, !dbg !3335
  br i1 %151, label %627, label %154, !dbg !3336

152:                                              ; preds = %138
  %153 = icmp eq i64 %145, %139, !dbg !3337
  br i1 %153, label %627, label %154, !dbg !3336

154:                                              ; preds = %148, %152
  call void @llvm.dbg.value(metadata i8 0, metadata !3193, metadata !DIExpression()), !dbg !3338
  call void @llvm.dbg.value(metadata i8 0, metadata !3196, metadata !DIExpression()), !dbg !3338
  call void @llvm.dbg.value(metadata i8 0, metadata !3197, metadata !DIExpression()), !dbg !3338
  br i1 %129, label %155, label %170, !dbg !3339

155:                                              ; preds = %154
  %156 = add i64 %145, %121, !dbg !3341
  %157 = select i1 %147, i1 %130, i1 false, !dbg !3342
  br i1 %157, label %158, label %160, !dbg !3342

158:                                              ; preds = %155
  %159 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #39, !dbg !3343
  call void @llvm.dbg.value(metadata i64 %159, metadata !3170, metadata !DIExpression()), !dbg !3229
  br label %160, !dbg !3344

160:                                              ; preds = %155, %158
  %161 = phi i64 [ %159, %158 ], [ %139, %155 ], !dbg !3344
  call void @llvm.dbg.value(metadata i64 %161, metadata !3170, metadata !DIExpression()), !dbg !3229
  %162 = icmp ugt i64 %156, %161, !dbg !3345
  br i1 %162, label %170, label %163, !dbg !3346

163:                                              ; preds = %160
  %164 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !3347
  call void @llvm.dbg.value(metadata ptr %164, metadata !3348, metadata !DIExpression()), !dbg !3353
  call void @llvm.dbg.value(metadata ptr %120, metadata !3351, metadata !DIExpression()), !dbg !3353
  call void @llvm.dbg.value(metadata i64 %121, metadata !3352, metadata !DIExpression()), !dbg !3353
  %165 = call i32 @bcmp(ptr %164, ptr %120, i64 %121), !dbg !3355
  %166 = icmp ne i32 %165, 0, !dbg !3356
  %167 = select i1 %166, i1 true, i1 %132, !dbg !3357
  %168 = xor i1 %166, true, !dbg !3357
  %169 = zext i1 %168 to i8, !dbg !3357
  br i1 %167, label %170, label %688, !dbg !3357

170:                                              ; preds = %163, %160, %154
  %171 = phi i64 [ %161, %163 ], [ %161, %160 ], [ %139, %154 ]
  %172 = phi i1 [ %166, %163 ], [ true, %160 ], [ true, %154 ], !dbg !3338
  %173 = phi i8 [ %169, %163 ], [ 0, %160 ], [ 0, %154 ], !dbg !3338
  call void @llvm.dbg.value(metadata i8 %173, metadata !3193, metadata !DIExpression()), !dbg !3338
  call void @llvm.dbg.value(metadata i64 %171, metadata !3170, metadata !DIExpression()), !dbg !3229
  %174 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !3358
  %175 = load i8, ptr %174, align 1, !dbg !3358, !tbaa !1173
  call void @llvm.dbg.value(metadata i8 %175, metadata !3198, metadata !DIExpression()), !dbg !3338
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
  ], !dbg !3359

176:                                              ; preds = %170
  br i1 %125, label %177, label %225, !dbg !3360

177:                                              ; preds = %176
  br i1 %132, label %178, label %674, !dbg !3361

178:                                              ; preds = %177
  call void @llvm.dbg.value(metadata i8 1, metadata !3196, metadata !DIExpression()), !dbg !3338
  %179 = and i8 %144, 1, !dbg !3365
  %180 = icmp eq i8 %179, 0, !dbg !3365
  %181 = select i1 %133, i1 %180, i1 false, !dbg !3365
  br i1 %181, label %182, label %198, !dbg !3365

182:                                              ; preds = %178
  %183 = icmp ult i64 %140, %146, !dbg !3367
  br i1 %183, label %184, label %186, !dbg !3371

184:                                              ; preds = %182
  %185 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !3367
  store i8 39, ptr %185, align 1, !dbg !3367, !tbaa !1173
  br label %186, !dbg !3367

186:                                              ; preds = %184, %182
  %187 = add i64 %140, 1, !dbg !3371
  call void @llvm.dbg.value(metadata i64 %187, metadata !3177, metadata !DIExpression()), !dbg !3229
  %188 = icmp ult i64 %187, %146, !dbg !3372
  br i1 %188, label %189, label %191, !dbg !3375

189:                                              ; preds = %186
  %190 = getelementptr inbounds i8, ptr %0, i64 %187, !dbg !3372
  store i8 36, ptr %190, align 1, !dbg !3372, !tbaa !1173
  br label %191, !dbg !3372

191:                                              ; preds = %189, %186
  %192 = add i64 %140, 2, !dbg !3375
  call void @llvm.dbg.value(metadata i64 %192, metadata !3177, metadata !DIExpression()), !dbg !3229
  %193 = icmp ult i64 %192, %146, !dbg !3376
  br i1 %193, label %194, label %196, !dbg !3379

194:                                              ; preds = %191
  %195 = getelementptr inbounds i8, ptr %0, i64 %192, !dbg !3376
  store i8 39, ptr %195, align 1, !dbg !3376, !tbaa !1173
  br label %196, !dbg !3376

196:                                              ; preds = %194, %191
  %197 = add i64 %140, 3, !dbg !3379
  call void @llvm.dbg.value(metadata i64 %197, metadata !3177, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i8 1, metadata !3185, metadata !DIExpression()), !dbg !3229
  br label %198, !dbg !3380

198:                                              ; preds = %178, %196
  %199 = phi i64 [ %197, %196 ], [ %140, %178 ], !dbg !3229
  %200 = phi i8 [ 1, %196 ], [ %144, %178 ], !dbg !3229
  call void @llvm.dbg.value(metadata i8 %200, metadata !3185, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i64 %199, metadata !3177, metadata !DIExpression()), !dbg !3229
  %201 = icmp ult i64 %199, %146, !dbg !3381
  br i1 %201, label %202, label %204, !dbg !3384

202:                                              ; preds = %198
  %203 = getelementptr inbounds i8, ptr %0, i64 %199, !dbg !3381
  store i8 92, ptr %203, align 1, !dbg !3381, !tbaa !1173
  br label %204, !dbg !3381

204:                                              ; preds = %202, %198
  %205 = add i64 %199, 1, !dbg !3384
  call void @llvm.dbg.value(metadata i64 %205, metadata !3177, metadata !DIExpression()), !dbg !3229
  br i1 %126, label %206, label %491, !dbg !3385

206:                                              ; preds = %204
  %207 = add i64 %145, 1, !dbg !3387
  %208 = icmp ult i64 %207, %171, !dbg !3388
  br i1 %208, label %209, label %480, !dbg !3389

209:                                              ; preds = %206
  %210 = getelementptr inbounds i8, ptr %2, i64 %207, !dbg !3390
  %211 = load i8, ptr %210, align 1, !dbg !3390, !tbaa !1173
  %212 = add i8 %211, -48, !dbg !3391
  %213 = icmp ult i8 %212, 10, !dbg !3391
  br i1 %213, label %214, label %480, !dbg !3391

214:                                              ; preds = %209
  %215 = icmp ult i64 %205, %146, !dbg !3392
  br i1 %215, label %216, label %218, !dbg !3396

216:                                              ; preds = %214
  %217 = getelementptr inbounds i8, ptr %0, i64 %205, !dbg !3392
  store i8 48, ptr %217, align 1, !dbg !3392, !tbaa !1173
  br label %218, !dbg !3392

218:                                              ; preds = %216, %214
  %219 = add i64 %199, 2, !dbg !3396
  call void @llvm.dbg.value(metadata i64 %219, metadata !3177, metadata !DIExpression()), !dbg !3229
  %220 = icmp ult i64 %219, %146, !dbg !3397
  br i1 %220, label %221, label %223, !dbg !3400

221:                                              ; preds = %218
  %222 = getelementptr inbounds i8, ptr %0, i64 %219, !dbg !3397
  store i8 48, ptr %222, align 1, !dbg !3397, !tbaa !1173
  br label %223, !dbg !3397

223:                                              ; preds = %221, %218
  %224 = add i64 %199, 3, !dbg !3400
  call void @llvm.dbg.value(metadata i64 %224, metadata !3177, metadata !DIExpression()), !dbg !3229
  br label %480, !dbg !3401

225:                                              ; preds = %176
  br i1 %25, label %491, label %617, !dbg !3402

226:                                              ; preds = %170
  switch i32 %116, label %480 [
    i32 2, label %227
    i32 5, label %228
  ], !dbg !3403

227:                                              ; preds = %226
  br i1 %132, label %480, label %670, !dbg !3404

228:                                              ; preds = %226
  br i1 %23, label %480, label %229, !dbg !3406

229:                                              ; preds = %228
  %230 = add i64 %145, 2, !dbg !3408
  %231 = icmp ult i64 %230, %171, !dbg !3409
  br i1 %231, label %232, label %480, !dbg !3410

232:                                              ; preds = %229
  %233 = add i64 %145, 1, !dbg !3411
  %234 = getelementptr inbounds i8, ptr %2, i64 %233, !dbg !3412
  %235 = load i8, ptr %234, align 1, !dbg !3412, !tbaa !1173
  %236 = icmp eq i8 %235, 63, !dbg !3413
  br i1 %236, label %237, label %480, !dbg !3414

237:                                              ; preds = %232
  %238 = getelementptr inbounds i8, ptr %2, i64 %230, !dbg !3415
  %239 = load i8, ptr %238, align 1, !dbg !3415, !tbaa !1173
  %240 = sext i8 %239 to i32, !dbg !3415
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
  ], !dbg !3416

241:                                              ; preds = %237, %237, %237, %237, %237, %237, %237, %237, %237
  br i1 %132, label %242, label %688, !dbg !3417

242:                                              ; preds = %241
  call void @llvm.dbg.value(metadata i8 %239, metadata !3198, metadata !DIExpression()), !dbg !3338
  call void @llvm.dbg.value(metadata i64 %230, metadata !3191, metadata !DIExpression()), !dbg !3328
  %243 = icmp ult i64 %140, %146, !dbg !3419
  br i1 %243, label %244, label %246, !dbg !3422

244:                                              ; preds = %242
  %245 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !3419
  store i8 63, ptr %245, align 1, !dbg !3419, !tbaa !1173
  br label %246, !dbg !3419

246:                                              ; preds = %244, %242
  %247 = add i64 %140, 1, !dbg !3422
  call void @llvm.dbg.value(metadata i64 %247, metadata !3177, metadata !DIExpression()), !dbg !3229
  %248 = icmp ult i64 %247, %146, !dbg !3423
  br i1 %248, label %249, label %251, !dbg !3426

249:                                              ; preds = %246
  %250 = getelementptr inbounds i8, ptr %0, i64 %247, !dbg !3423
  store i8 34, ptr %250, align 1, !dbg !3423, !tbaa !1173
  br label %251, !dbg !3423

251:                                              ; preds = %249, %246
  %252 = add i64 %140, 2, !dbg !3426
  call void @llvm.dbg.value(metadata i64 %252, metadata !3177, metadata !DIExpression()), !dbg !3229
  %253 = icmp ult i64 %252, %146, !dbg !3427
  br i1 %253, label %254, label %256, !dbg !3430

254:                                              ; preds = %251
  %255 = getelementptr inbounds i8, ptr %0, i64 %252, !dbg !3427
  store i8 34, ptr %255, align 1, !dbg !3427, !tbaa !1173
  br label %256, !dbg !3427

256:                                              ; preds = %254, %251
  %257 = add i64 %140, 3, !dbg !3430
  call void @llvm.dbg.value(metadata i64 %257, metadata !3177, metadata !DIExpression()), !dbg !3229
  %258 = icmp ult i64 %257, %146, !dbg !3431
  br i1 %258, label %259, label %261, !dbg !3434

259:                                              ; preds = %256
  %260 = getelementptr inbounds i8, ptr %0, i64 %257, !dbg !3431
  store i8 63, ptr %260, align 1, !dbg !3431, !tbaa !1173
  br label %261, !dbg !3431

261:                                              ; preds = %259, %256
  %262 = add i64 %140, 4, !dbg !3434
  call void @llvm.dbg.value(metadata i64 %262, metadata !3177, metadata !DIExpression()), !dbg !3229
  br label %480, !dbg !3435

263:                                              ; preds = %170
  br label %274, !dbg !3436

264:                                              ; preds = %170
  br label %274, !dbg !3437

265:                                              ; preds = %170
  br label %272, !dbg !3438

266:                                              ; preds = %170
  br label %272, !dbg !3439

267:                                              ; preds = %170
  br label %274, !dbg !3440

268:                                              ; preds = %170
  br i1 %133, label %269, label %270, !dbg !3441

269:                                              ; preds = %268
  br i1 %132, label %573, label %670, !dbg !3442

270:                                              ; preds = %268
  br i1 %125, label %271, label %491, !dbg !3445

271:                                              ; preds = %270
  br i1 %136, label %573, label %535, !dbg !3447

272:                                              ; preds = %170, %266, %265
  %273 = phi i8 [ 116, %266 ], [ 114, %265 ], [ 110, %170 ], !dbg !3448
  call void @llvm.dbg.label(metadata !3223), !dbg !3449
  br i1 %134, label %274, label %670, !dbg !3450

274:                                              ; preds = %170, %272, %267, %264, %263
  %275 = phi i8 [ %273, %272 ], [ 118, %267 ], [ 102, %264 ], [ 98, %263 ], [ 97, %170 ], !dbg !3448
  call void @llvm.dbg.label(metadata !3225), !dbg !3452
  br i1 %125, label %535, label %491, !dbg !3453

276:                                              ; preds = %170, %170
  switch i64 %171, label %480 [
    i64 -1, label %277
    i64 1, label %280
  ], !dbg !3454

277:                                              ; preds = %276
  %278 = load i8, ptr %21, align 1, !dbg !3455, !tbaa !1173
  %279 = icmp eq i8 %278, 0, !dbg !3457
  br i1 %279, label %280, label %480, !dbg !3458

280:                                              ; preds = %276, %277, %170, %170
  %281 = icmp eq i64 %145, 0, !dbg !3459
  br i1 %281, label %282, label %480, !dbg !3461

282:                                              ; preds = %280, %170
  call void @llvm.dbg.value(metadata i8 1, metadata !3197, metadata !DIExpression()), !dbg !3338
  br label %283, !dbg !3462

283:                                              ; preds = %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %282
  %284 = phi i8 [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 1, %282 ], !dbg !3338
  call void @llvm.dbg.value(metadata i8 %284, metadata !3197, metadata !DIExpression()), !dbg !3338
  br i1 %134, label %480, label %670, !dbg !3463

285:                                              ; preds = %170
  call void @llvm.dbg.value(metadata i8 1, metadata !3183, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i8 1, metadata !3197, metadata !DIExpression()), !dbg !3338
  br i1 %133, label %286, label %480, !dbg !3465

286:                                              ; preds = %285
  br i1 %132, label %287, label %670, !dbg !3466

287:                                              ; preds = %286
  %288 = icmp eq i64 %146, 0, !dbg !3469
  %289 = icmp ne i64 %141, 0
  %290 = select i1 %288, i1 true, i1 %289, !dbg !3471
  %291 = select i1 %290, i64 %141, i64 %146, !dbg !3471
  %292 = select i1 %290, i64 %146, i64 0, !dbg !3471
  call void @llvm.dbg.value(metadata i64 %292, metadata !3168, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i64 %291, metadata !3178, metadata !DIExpression()), !dbg !3229
  %293 = icmp ult i64 %140, %292, !dbg !3472
  br i1 %293, label %294, label %296, !dbg !3475

294:                                              ; preds = %287
  %295 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !3472
  store i8 39, ptr %295, align 1, !dbg !3472, !tbaa !1173
  br label %296, !dbg !3472

296:                                              ; preds = %294, %287
  %297 = add i64 %140, 1, !dbg !3475
  call void @llvm.dbg.value(metadata i64 %297, metadata !3177, metadata !DIExpression()), !dbg !3229
  %298 = icmp ult i64 %297, %292, !dbg !3476
  br i1 %298, label %299, label %301, !dbg !3479

299:                                              ; preds = %296
  %300 = getelementptr inbounds i8, ptr %0, i64 %297, !dbg !3476
  store i8 92, ptr %300, align 1, !dbg !3476, !tbaa !1173
  br label %301, !dbg !3476

301:                                              ; preds = %299, %296
  %302 = add i64 %140, 2, !dbg !3479
  call void @llvm.dbg.value(metadata i64 %302, metadata !3177, metadata !DIExpression()), !dbg !3229
  %303 = icmp ult i64 %302, %292, !dbg !3480
  br i1 %303, label %304, label %306, !dbg !3483

304:                                              ; preds = %301
  %305 = getelementptr inbounds i8, ptr %0, i64 %302, !dbg !3480
  store i8 39, ptr %305, align 1, !dbg !3480, !tbaa !1173
  br label %306, !dbg !3480

306:                                              ; preds = %304, %301
  %307 = add i64 %140, 3, !dbg !3483
  call void @llvm.dbg.value(metadata i64 %307, metadata !3177, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i8 0, metadata !3185, metadata !DIExpression()), !dbg !3229
  br label %480, !dbg !3484

308:                                              ; preds = %170
  br i1 %17, label %309, label %319, !dbg !3485

309:                                              ; preds = %308
  call void @llvm.dbg.value(metadata i64 1, metadata !3199, metadata !DIExpression()), !dbg !3486
  %310 = tail call ptr @__ctype_b_loc() #41, !dbg !3487
  %311 = load ptr, ptr %310, align 8, !dbg !3487, !tbaa !1098
  %312 = zext i8 %175 to i64
  %313 = getelementptr inbounds i16, ptr %311, i64 %312, !dbg !3487
  %314 = load i16, ptr %313, align 2, !dbg !3487, !tbaa !1205
  %315 = lshr i16 %314, 14, !dbg !3489
  %316 = trunc i16 %315 to i8, !dbg !3489
  %317 = and i8 %316, 1, !dbg !3489
  call void @llvm.dbg.value(metadata i8 %317, metadata !3202, metadata !DIExpression()), !dbg !3486
  call void @llvm.dbg.value(metadata i64 %171, metadata !3170, metadata !DIExpression()), !dbg !3229
  %318 = icmp eq i8 %317, 0, !dbg !3490
  call void @llvm.dbg.value(metadata i1 %318, metadata !3197, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3338
  br label %368, !dbg !3491

319:                                              ; preds = %308
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #38, !dbg !3492
  call void @llvm.dbg.declare(metadata ptr %14, metadata !3203, metadata !DIExpression()), !dbg !3493
  call void @llvm.dbg.value(metadata ptr %14, metadata !3260, metadata !DIExpression()), !dbg !3494
  call void @llvm.dbg.value(metadata ptr %14, metadata !3268, metadata !DIExpression()), !dbg !3496
  call void @llvm.dbg.value(metadata i32 0, metadata !3271, metadata !DIExpression()), !dbg !3496
  call void @llvm.dbg.value(metadata i64 8, metadata !3272, metadata !DIExpression()), !dbg !3496
  store i64 0, ptr %14, align 8, !dbg !3498
  call void @llvm.dbg.value(metadata i64 0, metadata !3199, metadata !DIExpression()), !dbg !3486
  call void @llvm.dbg.value(metadata i8 1, metadata !3202, metadata !DIExpression()), !dbg !3486
  %320 = icmp eq i64 %171, -1, !dbg !3499
  br i1 %320, label %321, label %323, !dbg !3501

321:                                              ; preds = %319
  %322 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #39, !dbg !3502
  call void @llvm.dbg.value(metadata i64 %322, metadata !3170, metadata !DIExpression()), !dbg !3229
  br label %323, !dbg !3503

323:                                              ; preds = %319, %321
  %324 = phi i64 [ %322, %321 ], [ %171, %319 ], !dbg !3338
  call void @llvm.dbg.value(metadata i64 %324, metadata !3170, metadata !DIExpression()), !dbg !3229
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #38, !dbg !3504
  %325 = sub i64 %324, %145, !dbg !3505
  call void @llvm.dbg.value(metadata ptr %15, metadata !3206, metadata !DIExpression(DW_OP_deref)), !dbg !3506
  %326 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %174, i64 noundef %325, ptr noundef nonnull %14) #38, !dbg !3507
  call void @llvm.dbg.value(metadata i64 %326, metadata !3210, metadata !DIExpression()), !dbg !3506
  switch i64 %326, label %341 [
    i64 0, label %360
    i64 -1, label %330
    i64 -2, label %327
  ], !dbg !3508

327:                                              ; preds = %323
  call void @llvm.dbg.value(metadata i64 0, metadata !3199, metadata !DIExpression()), !dbg !3486
  %328 = icmp ugt i64 %324, %145, !dbg !3509
  br i1 %328, label %331, label %329, !dbg !3511

329:                                              ; preds = %327
  call void @llvm.dbg.value(metadata i8 0, metadata !3202, metadata !DIExpression()), !dbg !3486
  call void @llvm.dbg.value(metadata i64 0, metadata !3199, metadata !DIExpression()), !dbg !3486
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #38, !dbg !3512
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #38, !dbg !3513
  call void @llvm.dbg.value(metadata i64 %324, metadata !3170, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i1 true, metadata !3197, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3338
  br label %368, !dbg !3491

330:                                              ; preds = %323
  call void @llvm.dbg.value(metadata i8 0, metadata !3202, metadata !DIExpression()), !dbg !3486
  br label %360, !dbg !3514

331:                                              ; preds = %327, %337
  %332 = phi i64 [ %339, %337 ], [ %145, %327 ]
  %333 = phi i64 [ %338, %337 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i64 %333, metadata !3199, metadata !DIExpression()), !dbg !3486
  %334 = getelementptr inbounds i8, ptr %2, i64 %332, !dbg !3516
  %335 = load i8, ptr %334, align 1, !dbg !3516, !tbaa !1173
  %336 = icmp eq i8 %335, 0, !dbg !3511
  br i1 %336, label %363, label %337, !dbg !3517

337:                                              ; preds = %331
  %338 = add i64 %333, 1, !dbg !3518
  call void @llvm.dbg.value(metadata i64 %338, metadata !3199, metadata !DIExpression()), !dbg !3486
  %339 = add i64 %338, %145, !dbg !3519
  %340 = icmp eq i64 %338, %325, !dbg !3509
  br i1 %340, label %363, label %331, !dbg !3511, !llvm.loop !3520

341:                                              ; preds = %323
  %342 = icmp ugt i64 %326, 1
  %343 = and i1 %135, %342, !dbg !3521
  %344 = and i1 %343, %133, !dbg !3521
  call void @llvm.dbg.value(metadata i64 1, metadata !3211, metadata !DIExpression()), !dbg !3522
  br i1 %344, label %345, label %354, !dbg !3521

345:                                              ; preds = %341, %351
  %346 = phi i64 [ %352, %351 ], [ 1, %341 ]
  call void @llvm.dbg.value(metadata i64 %346, metadata !3211, metadata !DIExpression()), !dbg !3522
  %347 = add i64 %346, %145, !dbg !3523
  %348 = getelementptr inbounds i8, ptr %2, i64 %347, !dbg !3525
  %349 = load i8, ptr %348, align 1, !dbg !3525, !tbaa !1173
  %350 = sext i8 %349 to i32, !dbg !3525
  switch i32 %350, label %351 [
    i32 91, label %359
    i32 92, label %359
    i32 94, label %359
    i32 96, label %359
    i32 124, label %359
  ], !dbg !3526

351:                                              ; preds = %345
  %352 = add nuw i64 %346, 1, !dbg !3527
  call void @llvm.dbg.value(metadata i64 %352, metadata !3211, metadata !DIExpression()), !dbg !3522
  %353 = icmp eq i64 %352, %326, !dbg !3528
  br i1 %353, label %354, label %345, !dbg !3529, !llvm.loop !3530

354:                                              ; preds = %351, %341
  %355 = load i32, ptr %15, align 4, !dbg !3532, !tbaa !1164
  call void @llvm.dbg.value(metadata i32 %355, metadata !3206, metadata !DIExpression()), !dbg !3506
  call void @llvm.dbg.value(metadata i32 %355, metadata !3534, metadata !DIExpression()), !dbg !3542
  %356 = call i32 @iswprint(i32 noundef %355) #38, !dbg !3544
  %357 = icmp ne i32 %356, 0, !dbg !3545
  %358 = zext i1 %357 to i8, !dbg !3546
  call void @llvm.dbg.value(metadata i8 %358, metadata !3202, metadata !DIExpression()), !dbg !3486
  call void @llvm.dbg.value(metadata i64 %326, metadata !3199, metadata !DIExpression()), !dbg !3486
  br label %363, !dbg !3547

359:                                              ; preds = %345, %345, %345, %345, %345
  call void @llvm.dbg.value(metadata i8 1, metadata !3202, metadata !DIExpression()), !dbg !3486
  call void @llvm.dbg.value(metadata i64 0, metadata !3199, metadata !DIExpression()), !dbg !3486
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #38, !dbg !3512
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #38, !dbg !3513
  br label %670

360:                                              ; preds = %323, %330
  %361 = phi i1 [ false, %323 ], [ true, %330 ]
  %362 = phi i8 [ 1, %323 ], [ 0, %330 ]
  call void @llvm.dbg.value(metadata i8 %362, metadata !3202, metadata !DIExpression()), !dbg !3486
  call void @llvm.dbg.value(metadata i64 0, metadata !3199, metadata !DIExpression()), !dbg !3486
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #38, !dbg !3512
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #38, !dbg !3513
  call void @llvm.dbg.value(metadata i64 %324, metadata !3170, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i1 %361, metadata !3197, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3338
  br label %368, !dbg !3491

363:                                              ; preds = %331, %337, %354
  %364 = phi i64 [ %326, %354 ], [ %333, %331 ], [ %325, %337 ]
  %365 = phi i8 [ %358, %354 ], [ 0, %337 ], [ 0, %331 ]
  call void @llvm.dbg.value(metadata i8 %365, metadata !3202, metadata !DIExpression()), !dbg !3486
  call void @llvm.dbg.value(metadata i64 %364, metadata !3199, metadata !DIExpression()), !dbg !3486
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #38, !dbg !3512
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #38, !dbg !3513
  call void @llvm.dbg.value(metadata i64 %324, metadata !3170, metadata !DIExpression()), !dbg !3229
  %366 = icmp eq i8 %365, 0, !dbg !3490
  call void @llvm.dbg.value(metadata i1 %366, metadata !3197, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3338
  %367 = icmp ugt i64 %364, 1, !dbg !3548
  br i1 %367, label %374, label %368, !dbg !3491

368:                                              ; preds = %329, %360, %309, %363
  %369 = phi i1 [ %318, %309 ], [ %366, %363 ], [ %361, %360 ], [ true, %329 ]
  %370 = phi i8 [ %317, %309 ], [ %365, %363 ], [ %362, %360 ], [ 0, %329 ]
  %371 = phi i64 [ 1, %309 ], [ %364, %363 ], [ 0, %360 ], [ 0, %329 ]
  %372 = phi i64 [ %171, %309 ], [ %324, %363 ], [ %324, %360 ], [ %324, %329 ]
  %373 = select i1 %125, i1 %369, i1 false, !dbg !3549
  br i1 %373, label %374, label %480, !dbg !3549

374:                                              ; preds = %368, %363
  %375 = phi i1 [ true, %368 ], [ %366, %363 ]
  %376 = phi i8 [ %370, %368 ], [ %365, %363 ]
  %377 = phi i64 [ %371, %368 ], [ %364, %363 ]
  %378 = phi i64 [ %372, %368 ], [ %324, %363 ]
  %379 = add i64 %377, %145, !dbg !3550
  call void @llvm.dbg.value(metadata i64 %379, metadata !3219, metadata !DIExpression()), !dbg !3551
  %380 = select i1 %125, i1 %375, i1 false
  br label %381, !dbg !3552

381:                                              ; preds = %474, %374
  %382 = phi i64 [ %140, %374 ], [ %475, %474 ], !dbg !3229
  %383 = phi i8 [ %144, %374 ], [ %470, %474 ], !dbg !3330
  %384 = phi i64 [ %145, %374 ], [ %449, %474 ], !dbg !3328
  %385 = phi i8 [ %173, %374 ], [ %446, %474 ], !dbg !3338
  %386 = phi i8 [ 0, %374 ], [ %447, %474 ], !dbg !3553
  %387 = phi i8 [ %175, %374 ], [ %477, %474 ], !dbg !3338
  call void @llvm.dbg.value(metadata i8 %387, metadata !3198, metadata !DIExpression()), !dbg !3338
  call void @llvm.dbg.value(metadata i8 %386, metadata !3196, metadata !DIExpression()), !dbg !3338
  call void @llvm.dbg.value(metadata i8 %385, metadata !3193, metadata !DIExpression()), !dbg !3338
  call void @llvm.dbg.value(metadata i64 %384, metadata !3191, metadata !DIExpression()), !dbg !3328
  call void @llvm.dbg.value(metadata i8 %383, metadata !3185, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i64 %382, metadata !3177, metadata !DIExpression()), !dbg !3229
  br i1 %380, label %388, label %434, !dbg !3554

388:                                              ; preds = %381
  br i1 %132, label %389, label %679, !dbg !3559

389:                                              ; preds = %388
  call void @llvm.dbg.value(metadata i8 1, metadata !3196, metadata !DIExpression()), !dbg !3338
  %390 = and i8 %383, 1, !dbg !3562
  %391 = icmp eq i8 %390, 0, !dbg !3562
  %392 = select i1 %133, i1 %391, i1 false, !dbg !3562
  br i1 %392, label %393, label %409, !dbg !3562

393:                                              ; preds = %389
  %394 = icmp ult i64 %382, %146, !dbg !3564
  br i1 %394, label %395, label %397, !dbg !3568

395:                                              ; preds = %393
  %396 = getelementptr inbounds i8, ptr %0, i64 %382, !dbg !3564
  store i8 39, ptr %396, align 1, !dbg !3564, !tbaa !1173
  br label %397, !dbg !3564

397:                                              ; preds = %395, %393
  %398 = add i64 %382, 1, !dbg !3568
  call void @llvm.dbg.value(metadata i64 %398, metadata !3177, metadata !DIExpression()), !dbg !3229
  %399 = icmp ult i64 %398, %146, !dbg !3569
  br i1 %399, label %400, label %402, !dbg !3572

400:                                              ; preds = %397
  %401 = getelementptr inbounds i8, ptr %0, i64 %398, !dbg !3569
  store i8 36, ptr %401, align 1, !dbg !3569, !tbaa !1173
  br label %402, !dbg !3569

402:                                              ; preds = %400, %397
  %403 = add i64 %382, 2, !dbg !3572
  call void @llvm.dbg.value(metadata i64 %403, metadata !3177, metadata !DIExpression()), !dbg !3229
  %404 = icmp ult i64 %403, %146, !dbg !3573
  br i1 %404, label %405, label %407, !dbg !3576

405:                                              ; preds = %402
  %406 = getelementptr inbounds i8, ptr %0, i64 %403, !dbg !3573
  store i8 39, ptr %406, align 1, !dbg !3573, !tbaa !1173
  br label %407, !dbg !3573

407:                                              ; preds = %405, %402
  %408 = add i64 %382, 3, !dbg !3576
  call void @llvm.dbg.value(metadata i64 %408, metadata !3177, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i8 1, metadata !3185, metadata !DIExpression()), !dbg !3229
  br label %409, !dbg !3577

409:                                              ; preds = %389, %407
  %410 = phi i64 [ %408, %407 ], [ %382, %389 ], !dbg !3229
  %411 = phi i8 [ 1, %407 ], [ %383, %389 ], !dbg !3229
  call void @llvm.dbg.value(metadata i8 %411, metadata !3185, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i64 %410, metadata !3177, metadata !DIExpression()), !dbg !3229
  %412 = icmp ult i64 %410, %146, !dbg !3578
  br i1 %412, label %413, label %415, !dbg !3581

413:                                              ; preds = %409
  %414 = getelementptr inbounds i8, ptr %0, i64 %410, !dbg !3578
  store i8 92, ptr %414, align 1, !dbg !3578, !tbaa !1173
  br label %415, !dbg !3578

415:                                              ; preds = %413, %409
  %416 = add i64 %410, 1, !dbg !3581
  call void @llvm.dbg.value(metadata i64 %416, metadata !3177, metadata !DIExpression()), !dbg !3229
  %417 = icmp ult i64 %416, %146, !dbg !3582
  br i1 %417, label %418, label %422, !dbg !3585

418:                                              ; preds = %415
  %419 = lshr i8 %387, 6
  %420 = or i8 %419, 48, !dbg !3582
  %421 = getelementptr inbounds i8, ptr %0, i64 %416, !dbg !3582
  store i8 %420, ptr %421, align 1, !dbg !3582, !tbaa !1173
  br label %422, !dbg !3582

422:                                              ; preds = %418, %415
  %423 = add i64 %410, 2, !dbg !3585
  call void @llvm.dbg.value(metadata i64 %423, metadata !3177, metadata !DIExpression()), !dbg !3229
  %424 = icmp ult i64 %423, %146, !dbg !3586
  br i1 %424, label %425, label %430, !dbg !3589

425:                                              ; preds = %422
  %426 = lshr i8 %387, 3
  %427 = and i8 %426, 7, !dbg !3586
  %428 = or i8 %427, 48, !dbg !3586
  %429 = getelementptr inbounds i8, ptr %0, i64 %423, !dbg !3586
  store i8 %428, ptr %429, align 1, !dbg !3586, !tbaa !1173
  br label %430, !dbg !3586

430:                                              ; preds = %425, %422
  %431 = add i64 %410, 3, !dbg !3589
  call void @llvm.dbg.value(metadata i64 %431, metadata !3177, metadata !DIExpression()), !dbg !3229
  %432 = and i8 %387, 7, !dbg !3590
  %433 = or i8 %432, 48, !dbg !3591
  call void @llvm.dbg.value(metadata i8 %433, metadata !3198, metadata !DIExpression()), !dbg !3338
  br label %443, !dbg !3592

434:                                              ; preds = %381
  %435 = and i8 %385, 1, !dbg !3593
  %436 = icmp eq i8 %435, 0, !dbg !3593
  br i1 %436, label %443, label %437, !dbg !3595

437:                                              ; preds = %434
  %438 = icmp ult i64 %382, %146, !dbg !3596
  br i1 %438, label %439, label %441, !dbg !3600

439:                                              ; preds = %437
  %440 = getelementptr inbounds i8, ptr %0, i64 %382, !dbg !3596
  store i8 92, ptr %440, align 1, !dbg !3596, !tbaa !1173
  br label %441, !dbg !3596

441:                                              ; preds = %439, %437
  %442 = add i64 %382, 1, !dbg !3600
  call void @llvm.dbg.value(metadata i64 %442, metadata !3177, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i8 0, metadata !3193, metadata !DIExpression()), !dbg !3338
  br label %443, !dbg !3601

443:                                              ; preds = %434, %441, %430
  %444 = phi i64 [ %442, %441 ], [ %382, %434 ], [ %431, %430 ], !dbg !3229
  %445 = phi i8 [ %383, %441 ], [ %383, %434 ], [ %411, %430 ], !dbg !3330
  %446 = phi i8 [ 0, %441 ], [ %385, %434 ], [ %385, %430 ], !dbg !3338
  %447 = phi i8 [ %386, %441 ], [ %386, %434 ], [ 1, %430 ], !dbg !3338
  %448 = phi i8 [ %387, %441 ], [ %387, %434 ], [ %433, %430 ], !dbg !3338
  call void @llvm.dbg.value(metadata i8 %448, metadata !3198, metadata !DIExpression()), !dbg !3338
  call void @llvm.dbg.value(metadata i8 %447, metadata !3196, metadata !DIExpression()), !dbg !3338
  call void @llvm.dbg.value(metadata i8 %446, metadata !3193, metadata !DIExpression()), !dbg !3338
  call void @llvm.dbg.value(metadata i8 %445, metadata !3185, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i64 %444, metadata !3177, metadata !DIExpression()), !dbg !3229
  %449 = add i64 %384, 1, !dbg !3602
  %450 = icmp ugt i64 %379, %449, !dbg !3604
  br i1 %450, label %451, label %478, !dbg !3605

451:                                              ; preds = %443
  %452 = and i8 %445, 1, !dbg !3606
  %453 = icmp ne i8 %452, 0, !dbg !3606
  %454 = and i8 %447, 1, !dbg !3606
  %455 = icmp eq i8 %454, 0, !dbg !3606
  %456 = select i1 %453, i1 %455, i1 false, !dbg !3606
  br i1 %456, label %457, label %468, !dbg !3606

457:                                              ; preds = %451
  %458 = icmp ult i64 %444, %146, !dbg !3609
  br i1 %458, label %459, label %461, !dbg !3613

459:                                              ; preds = %457
  %460 = getelementptr inbounds i8, ptr %0, i64 %444, !dbg !3609
  store i8 39, ptr %460, align 1, !dbg !3609, !tbaa !1173
  br label %461, !dbg !3609

461:                                              ; preds = %459, %457
  %462 = add i64 %444, 1, !dbg !3613
  call void @llvm.dbg.value(metadata i64 %462, metadata !3177, metadata !DIExpression()), !dbg !3229
  %463 = icmp ult i64 %462, %146, !dbg !3614
  br i1 %463, label %464, label %466, !dbg !3617

464:                                              ; preds = %461
  %465 = getelementptr inbounds i8, ptr %0, i64 %462, !dbg !3614
  store i8 39, ptr %465, align 1, !dbg !3614, !tbaa !1173
  br label %466, !dbg !3614

466:                                              ; preds = %464, %461
  %467 = add i64 %444, 2, !dbg !3617
  call void @llvm.dbg.value(metadata i64 %467, metadata !3177, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i8 0, metadata !3185, metadata !DIExpression()), !dbg !3229
  br label %468, !dbg !3618

468:                                              ; preds = %451, %466
  %469 = phi i64 [ %467, %466 ], [ %444, %451 ], !dbg !3619
  %470 = phi i8 [ 0, %466 ], [ %445, %451 ], !dbg !3229
  call void @llvm.dbg.value(metadata i8 %470, metadata !3185, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i64 %469, metadata !3177, metadata !DIExpression()), !dbg !3229
  %471 = icmp ult i64 %469, %146, !dbg !3620
  br i1 %471, label %472, label %474, !dbg !3623

472:                                              ; preds = %468
  %473 = getelementptr inbounds i8, ptr %0, i64 %469, !dbg !3620
  store i8 %448, ptr %473, align 1, !dbg !3620, !tbaa !1173
  br label %474, !dbg !3620

474:                                              ; preds = %472, %468
  %475 = add i64 %469, 1, !dbg !3623
  call void @llvm.dbg.value(metadata i64 %475, metadata !3177, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i64 %449, metadata !3191, metadata !DIExpression()), !dbg !3328
  %476 = getelementptr inbounds i8, ptr %2, i64 %449, !dbg !3624
  %477 = load i8, ptr %476, align 1, !dbg !3624, !tbaa !1173
  call void @llvm.dbg.value(metadata i8 %477, metadata !3198, metadata !DIExpression()), !dbg !3338
  br label %381, !dbg !3625, !llvm.loop !3626

478:                                              ; preds = %443
  %479 = and i8 %376, 1, !dbg !3338
  call void @llvm.dbg.value(metadata i8 %448, metadata !3198, metadata !DIExpression()), !dbg !3338
  call void @llvm.dbg.value(metadata i8 %479, metadata !3197, metadata !DIExpression()), !dbg !3338
  call void @llvm.dbg.value(metadata i8 %447, metadata !3196, metadata !DIExpression()), !dbg !3338
  call void @llvm.dbg.value(metadata i8 %446, metadata !3193, metadata !DIExpression()), !dbg !3338
  call void @llvm.dbg.value(metadata i64 %384, metadata !3191, metadata !DIExpression()), !dbg !3328
  call void @llvm.dbg.value(metadata i8 %445, metadata !3185, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i64 %444, metadata !3177, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i64 %378, metadata !3170, metadata !DIExpression()), !dbg !3229
  br label %573

480:                                              ; preds = %368, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %276, %206, %209, %223, %285, %306, %283, %280, %277, %226, %227, %261, %237, %232, %229, %228
  %481 = phi i64 [ %171, %306 ], [ %171, %285 ], [ %171, %283 ], [ %171, %280 ], [ -1, %277 ], [ %171, %226 ], [ %171, %237 ], [ %171, %261 ], [ %171, %232 ], [ %171, %229 ], [ %171, %228 ], [ %171, %227 ], [ %171, %223 ], [ %171, %209 ], [ %171, %206 ], [ %171, %276 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %372, %368 ], !dbg !3629
  %482 = phi i64 [ %307, %306 ], [ %140, %285 ], [ %140, %283 ], [ %140, %280 ], [ %140, %277 ], [ %140, %226 ], [ %140, %237 ], [ %262, %261 ], [ %140, %232 ], [ %140, %229 ], [ %140, %228 ], [ %140, %227 ], [ %224, %223 ], [ %205, %209 ], [ %205, %206 ], [ %140, %276 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %368 ], !dbg !3229
  %483 = phi i64 [ %291, %306 ], [ %141, %285 ], [ %141, %283 ], [ %141, %280 ], [ %141, %277 ], [ %141, %226 ], [ %141, %237 ], [ %141, %261 ], [ %141, %232 ], [ %141, %229 ], [ %141, %228 ], [ %141, %227 ], [ %141, %223 ], [ %141, %209 ], [ %141, %206 ], [ %141, %276 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %368 ], !dbg !3234
  %484 = phi i8 [ 1, %306 ], [ 1, %285 ], [ %142, %283 ], [ %142, %280 ], [ %142, %277 ], [ %142, %226 ], [ %142, %237 ], [ %142, %261 ], [ %142, %232 ], [ %142, %229 ], [ %142, %228 ], [ %142, %227 ], [ %142, %223 ], [ %142, %209 ], [ %142, %206 ], [ %142, %276 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %368 ], !dbg !3229
  %485 = phi i8 [ 0, %306 ], [ %144, %285 ], [ %144, %283 ], [ %144, %280 ], [ %144, %277 ], [ %144, %226 ], [ %144, %237 ], [ %144, %261 ], [ %144, %232 ], [ %144, %229 ], [ %144, %228 ], [ %144, %227 ], [ %200, %223 ], [ %200, %209 ], [ %200, %206 ], [ %144, %276 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %368 ], !dbg !3229
  %486 = phi i64 [ %145, %306 ], [ %145, %285 ], [ %145, %283 ], [ %145, %280 ], [ %145, %277 ], [ %145, %226 ], [ %145, %237 ], [ %230, %261 ], [ %145, %232 ], [ %145, %229 ], [ %145, %228 ], [ %145, %227 ], [ %145, %223 ], [ %145, %209 ], [ %145, %206 ], [ %145, %276 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %368 ], !dbg !3328
  %487 = phi i8 [ 0, %306 ], [ 0, %285 ], [ 0, %283 ], [ 0, %280 ], [ 0, %277 ], [ 0, %226 ], [ 0, %237 ], [ 0, %261 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 1, %223 ], [ 1, %209 ], [ 1, %206 ], [ 0, %276 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %368 ], !dbg !3338
  %488 = phi i8 [ 1, %306 ], [ 1, %285 ], [ %284, %283 ], [ 0, %280 ], [ 0, %277 ], [ 0, %226 ], [ 0, %237 ], [ 0, %261 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 0, %223 ], [ 0, %209 ], [ 0, %206 ], [ 0, %276 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ %370, %368 ], !dbg !3338
  %489 = phi i8 [ 39, %306 ], [ 39, %285 ], [ %175, %283 ], [ %175, %280 ], [ %175, %277 ], [ 63, %226 ], [ 63, %237 ], [ %239, %261 ], [ 63, %232 ], [ 63, %229 ], [ 63, %228 ], [ 63, %227 ], [ 48, %223 ], [ 48, %209 ], [ 48, %206 ], [ %175, %276 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %368 ], !dbg !3338
  %490 = phi i64 [ %292, %306 ], [ %146, %285 ], [ %146, %283 ], [ %146, %280 ], [ %146, %277 ], [ %146, %226 ], [ %146, %237 ], [ %146, %261 ], [ %146, %232 ], [ %146, %229 ], [ %146, %228 ], [ %146, %227 ], [ %146, %223 ], [ %146, %209 ], [ %146, %206 ], [ %146, %276 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %368 ]
  call void @llvm.dbg.value(metadata i64 %490, metadata !3168, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i8 %489, metadata !3198, metadata !DIExpression()), !dbg !3338
  call void @llvm.dbg.value(metadata i8 %488, metadata !3197, metadata !DIExpression()), !dbg !3338
  call void @llvm.dbg.value(metadata i8 %487, metadata !3196, metadata !DIExpression()), !dbg !3338
  call void @llvm.dbg.value(metadata i8 %173, metadata !3193, metadata !DIExpression()), !dbg !3338
  call void @llvm.dbg.value(metadata i64 %486, metadata !3191, metadata !DIExpression()), !dbg !3328
  call void @llvm.dbg.value(metadata i8 %485, metadata !3185, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i8 %484, metadata !3183, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i64 %483, metadata !3178, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i64 %482, metadata !3177, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i64 %481, metadata !3170, metadata !DIExpression()), !dbg !3229
  br i1 %127, label %502, label %491, !dbg !3630

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
  br i1 %137, label %503, label %524, !dbg !3632

502:                                              ; preds = %480
  br i1 %27, label %524, label %503, !dbg !3633

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
  %514 = lshr i8 %505, 5, !dbg !3634
  %515 = zext i8 %514 to i64, !dbg !3634
  %516 = getelementptr inbounds i32, ptr %6, i64 %515, !dbg !3635
  %517 = load i32, ptr %516, align 4, !dbg !3635, !tbaa !1164
  %518 = and i8 %505, 31, !dbg !3636
  %519 = zext i8 %518 to i32, !dbg !3636
  %520 = shl nuw i32 1, %519, !dbg !3637
  %521 = and i32 %517, %520, !dbg !3637
  %522 = icmp eq i32 %521, 0, !dbg !3637
  %523 = and i1 %172, %522, !dbg !3638
  br i1 %523, label %573, label %535, !dbg !3638

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
  br i1 %172, label %573, label %535, !dbg !3639

535:                                              ; preds = %271, %274, %524, %503
  %536 = phi i64 [ %513, %503 ], [ %534, %524 ], [ %171, %274 ], [ %171, %271 ], !dbg !3629
  %537 = phi i64 [ %512, %503 ], [ %533, %524 ], [ %140, %274 ], [ %140, %271 ], !dbg !3229
  %538 = phi i64 [ %511, %503 ], [ %532, %524 ], [ %141, %274 ], [ %141, %271 ], !dbg !3234
  %539 = phi i8 [ %510, %503 ], [ %531, %524 ], [ %142, %274 ], [ %142, %271 ], !dbg !3238
  %540 = phi i8 [ %509, %503 ], [ %530, %524 ], [ %144, %274 ], [ %144, %271 ], !dbg !3330
  %541 = phi i64 [ %508, %503 ], [ %529, %524 ], [ %145, %274 ], [ %145, %271 ], !dbg !3640
  %542 = phi i8 [ %506, %503 ], [ %527, %524 ], [ 0, %274 ], [ 0, %271 ], !dbg !3338
  %543 = phi i8 [ %505, %503 ], [ %526, %524 ], [ %275, %274 ], [ 92, %271 ], !dbg !3338
  %544 = phi i64 [ %504, %503 ], [ %525, %524 ], [ %146, %274 ], [ %146, %271 ]
  call void @llvm.dbg.value(metadata i64 %544, metadata !3168, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i8 %543, metadata !3198, metadata !DIExpression()), !dbg !3338
  call void @llvm.dbg.value(metadata i8 %542, metadata !3197, metadata !DIExpression()), !dbg !3338
  call void @llvm.dbg.value(metadata i64 %541, metadata !3191, metadata !DIExpression()), !dbg !3328
  call void @llvm.dbg.value(metadata i8 %540, metadata !3185, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i8 %539, metadata !3183, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i64 %538, metadata !3178, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i64 %537, metadata !3177, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i64 %536, metadata !3170, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.label(metadata !3226), !dbg !3641
  br i1 %132, label %545, label %674, !dbg !3642

545:                                              ; preds = %535
  call void @llvm.dbg.value(metadata i8 1, metadata !3196, metadata !DIExpression()), !dbg !3338
  %546 = and i8 %540, 1, !dbg !3644
  %547 = icmp eq i8 %546, 0, !dbg !3644
  %548 = select i1 %133, i1 %547, i1 false, !dbg !3644
  br i1 %548, label %549, label %565, !dbg !3644

549:                                              ; preds = %545
  %550 = icmp ult i64 %537, %544, !dbg !3646
  br i1 %550, label %551, label %553, !dbg !3650

551:                                              ; preds = %549
  %552 = getelementptr inbounds i8, ptr %0, i64 %537, !dbg !3646
  store i8 39, ptr %552, align 1, !dbg !3646, !tbaa !1173
  br label %553, !dbg !3646

553:                                              ; preds = %551, %549
  %554 = add i64 %537, 1, !dbg !3650
  call void @llvm.dbg.value(metadata i64 %554, metadata !3177, metadata !DIExpression()), !dbg !3229
  %555 = icmp ult i64 %554, %544, !dbg !3651
  br i1 %555, label %556, label %558, !dbg !3654

556:                                              ; preds = %553
  %557 = getelementptr inbounds i8, ptr %0, i64 %554, !dbg !3651
  store i8 36, ptr %557, align 1, !dbg !3651, !tbaa !1173
  br label %558, !dbg !3651

558:                                              ; preds = %556, %553
  %559 = add i64 %537, 2, !dbg !3654
  call void @llvm.dbg.value(metadata i64 %559, metadata !3177, metadata !DIExpression()), !dbg !3229
  %560 = icmp ult i64 %559, %544, !dbg !3655
  br i1 %560, label %561, label %563, !dbg !3658

561:                                              ; preds = %558
  %562 = getelementptr inbounds i8, ptr %0, i64 %559, !dbg !3655
  store i8 39, ptr %562, align 1, !dbg !3655, !tbaa !1173
  br label %563, !dbg !3655

563:                                              ; preds = %561, %558
  %564 = add i64 %537, 3, !dbg !3658
  call void @llvm.dbg.value(metadata i64 %564, metadata !3177, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i8 1, metadata !3185, metadata !DIExpression()), !dbg !3229
  br label %565, !dbg !3659

565:                                              ; preds = %545, %563
  %566 = phi i64 [ %564, %563 ], [ %537, %545 ], !dbg !3338
  %567 = phi i8 [ 1, %563 ], [ %540, %545 ], !dbg !3229
  call void @llvm.dbg.value(metadata i8 %567, metadata !3185, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i64 %566, metadata !3177, metadata !DIExpression()), !dbg !3229
  %568 = icmp ult i64 %566, %544, !dbg !3660
  br i1 %568, label %569, label %571, !dbg !3663

569:                                              ; preds = %565
  %570 = getelementptr inbounds i8, ptr %0, i64 %566, !dbg !3660
  store i8 92, ptr %570, align 1, !dbg !3660, !tbaa !1173
  br label %571, !dbg !3660

571:                                              ; preds = %565, %569
  %572 = add i64 %566, 1, !dbg !3663
  call void @llvm.dbg.value(metadata i64 %544, metadata !3168, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i8 %543, metadata !3198, metadata !DIExpression()), !dbg !3338
  call void @llvm.dbg.value(metadata i8 %542, metadata !3197, metadata !DIExpression()), !dbg !3338
  call void @llvm.dbg.value(metadata i8 1, metadata !3196, metadata !DIExpression()), !dbg !3338
  call void @llvm.dbg.value(metadata i64 %541, metadata !3191, metadata !DIExpression()), !dbg !3328
  call void @llvm.dbg.value(metadata i8 %567, metadata !3185, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i8 %539, metadata !3183, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i64 %538, metadata !3178, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i64 %572, metadata !3177, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i64 %536, metadata !3170, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.label(metadata !3227), !dbg !3664
  br label %600, !dbg !3665

573:                                              ; preds = %478, %503, %269, %271, %524
  %574 = phi i64 [ %378, %478 ], [ %534, %524 ], [ %171, %269 ], [ %171, %271 ], [ %513, %503 ], !dbg !3629
  %575 = phi i64 [ %444, %478 ], [ %533, %524 ], [ %140, %269 ], [ %140, %271 ], [ %512, %503 ], !dbg !3229
  %576 = phi i64 [ %141, %478 ], [ %532, %524 ], [ %141, %269 ], [ %141, %271 ], [ %511, %503 ], !dbg !3234
  %577 = phi i8 [ %142, %478 ], [ %531, %524 ], [ %142, %269 ], [ %142, %271 ], [ %510, %503 ], !dbg !3238
  %578 = phi i8 [ %445, %478 ], [ %530, %524 ], [ %144, %269 ], [ %144, %271 ], [ %509, %503 ], !dbg !3330
  %579 = phi i64 [ %384, %478 ], [ %529, %524 ], [ %145, %269 ], [ %145, %271 ], [ %508, %503 ], !dbg !3640
  %580 = phi i8 [ %447, %478 ], [ %528, %524 ], [ 0, %269 ], [ 0, %271 ], [ %507, %503 ], !dbg !3338
  %581 = phi i8 [ %479, %478 ], [ %527, %524 ], [ 0, %269 ], [ 0, %271 ], [ %506, %503 ], !dbg !3338
  %582 = phi i8 [ %448, %478 ], [ %526, %524 ], [ 92, %269 ], [ 92, %271 ], [ %505, %503 ], !dbg !3668
  %583 = phi i64 [ %146, %478 ], [ %525, %524 ], [ %146, %269 ], [ %146, %271 ], [ %504, %503 ]
  call void @llvm.dbg.value(metadata i64 %583, metadata !3168, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i8 %582, metadata !3198, metadata !DIExpression()), !dbg !3338
  call void @llvm.dbg.value(metadata i8 %581, metadata !3197, metadata !DIExpression()), !dbg !3338
  call void @llvm.dbg.value(metadata i8 %580, metadata !3196, metadata !DIExpression()), !dbg !3338
  call void @llvm.dbg.value(metadata i64 %579, metadata !3191, metadata !DIExpression()), !dbg !3328
  call void @llvm.dbg.value(metadata i8 %578, metadata !3185, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i8 %577, metadata !3183, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i64 %576, metadata !3178, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i64 %575, metadata !3177, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i64 %574, metadata !3170, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.label(metadata !3227), !dbg !3664
  %584 = and i8 %578, 1, !dbg !3665
  %585 = icmp ne i8 %584, 0, !dbg !3665
  %586 = and i8 %580, 1, !dbg !3665
  %587 = icmp eq i8 %586, 0, !dbg !3665
  %588 = select i1 %585, i1 %587, i1 false, !dbg !3665
  br i1 %588, label %589, label %600, !dbg !3665

589:                                              ; preds = %573
  %590 = icmp ult i64 %575, %583, !dbg !3669
  br i1 %590, label %591, label %593, !dbg !3673

591:                                              ; preds = %589
  %592 = getelementptr inbounds i8, ptr %0, i64 %575, !dbg !3669
  store i8 39, ptr %592, align 1, !dbg !3669, !tbaa !1173
  br label %593, !dbg !3669

593:                                              ; preds = %591, %589
  %594 = add i64 %575, 1, !dbg !3673
  call void @llvm.dbg.value(metadata i64 %594, metadata !3177, metadata !DIExpression()), !dbg !3229
  %595 = icmp ult i64 %594, %583, !dbg !3674
  br i1 %595, label %596, label %598, !dbg !3677

596:                                              ; preds = %593
  %597 = getelementptr inbounds i8, ptr %0, i64 %594, !dbg !3674
  store i8 39, ptr %597, align 1, !dbg !3674, !tbaa !1173
  br label %598, !dbg !3674

598:                                              ; preds = %596, %593
  %599 = add i64 %575, 2, !dbg !3677
  call void @llvm.dbg.value(metadata i64 %599, metadata !3177, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i8 0, metadata !3185, metadata !DIExpression()), !dbg !3229
  br label %600, !dbg !3678

600:                                              ; preds = %571, %573, %598
  %601 = phi i64 [ %583, %598 ], [ %583, %573 ], [ %544, %571 ]
  %602 = phi i8 [ %582, %598 ], [ %582, %573 ], [ %543, %571 ]
  %603 = phi i8 [ %581, %598 ], [ %581, %573 ], [ %542, %571 ]
  %604 = phi i64 [ %579, %598 ], [ %579, %573 ], [ %541, %571 ]
  %605 = phi i8 [ %577, %598 ], [ %577, %573 ], [ %539, %571 ]
  %606 = phi i64 [ %576, %598 ], [ %576, %573 ], [ %538, %571 ]
  %607 = phi i64 [ %574, %598 ], [ %574, %573 ], [ %536, %571 ]
  %608 = phi i64 [ %599, %598 ], [ %575, %573 ], [ %572, %571 ], !dbg !3338
  %609 = phi i8 [ 0, %598 ], [ %578, %573 ], [ %567, %571 ], !dbg !3229
  call void @llvm.dbg.value(metadata i8 %609, metadata !3185, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i64 %608, metadata !3177, metadata !DIExpression()), !dbg !3229
  %610 = icmp ult i64 %608, %601, !dbg !3679
  br i1 %610, label %611, label %613, !dbg !3682

611:                                              ; preds = %600
  %612 = getelementptr inbounds i8, ptr %0, i64 %608, !dbg !3679
  store i8 %602, ptr %612, align 1, !dbg !3679, !tbaa !1173
  br label %613, !dbg !3679

613:                                              ; preds = %611, %600
  %614 = add i64 %608, 1, !dbg !3682
  call void @llvm.dbg.value(metadata i64 %614, metadata !3177, metadata !DIExpression()), !dbg !3229
  %615 = icmp eq i8 %603, 0, !dbg !3683
  %616 = select i1 %615, i8 0, i8 %143, !dbg !3685
  call void @llvm.dbg.value(metadata i8 %616, metadata !3184, metadata !DIExpression()), !dbg !3229
  br label %617, !dbg !3686

617:                                              ; preds = %225, %613
  %618 = phi i64 [ %607, %613 ], [ %171, %225 ], !dbg !3629
  %619 = phi i64 [ %614, %613 ], [ %140, %225 ], !dbg !3229
  %620 = phi i64 [ %606, %613 ], [ %141, %225 ], !dbg !3234
  %621 = phi i8 [ %605, %613 ], [ %142, %225 ], !dbg !3238
  %622 = phi i8 [ %616, %613 ], [ %143, %225 ], !dbg !3239
  %623 = phi i8 [ %609, %613 ], [ %144, %225 ], !dbg !3330
  %624 = phi i64 [ %604, %613 ], [ %145, %225 ], !dbg !3640
  %625 = phi i64 [ %601, %613 ], [ %146, %225 ]
  call void @llvm.dbg.value(metadata i64 %625, metadata !3168, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i64 %624, metadata !3191, metadata !DIExpression()), !dbg !3328
  call void @llvm.dbg.value(metadata i8 %623, metadata !3185, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i8 %622, metadata !3184, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i8 %621, metadata !3183, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i64 %620, metadata !3178, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i64 %619, metadata !3177, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i64 %618, metadata !3170, metadata !DIExpression()), !dbg !3229
  %626 = add i64 %624, 1, !dbg !3687
  call void @llvm.dbg.value(metadata i64 %626, metadata !3191, metadata !DIExpression()), !dbg !3328
  br label %138, !dbg !3688, !llvm.loop !3689

627:                                              ; preds = %152, %148
  call void @llvm.dbg.value(metadata i64 %146, metadata !3168, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i8 %143, metadata !3184, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i8 %142, metadata !3183, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i64 %141, metadata !3178, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i64 %140, metadata !3177, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i64 %139, metadata !3170, metadata !DIExpression()), !dbg !3229
  %628 = icmp eq i64 %140, 0, !dbg !3691
  %629 = and i1 %133, %628, !dbg !3693
  %630 = xor i1 %629, true, !dbg !3693
  %631 = select i1 %630, i1 true, i1 %132, !dbg !3693
  br i1 %631, label %632, label %670, !dbg !3693

632:                                              ; preds = %627
  %633 = select i1 %133, i1 %132, i1 false, !dbg !3694
  %634 = and i8 %142, 1
  %635 = icmp ne i8 %634, 0
  %636 = select i1 %633, i1 %635, i1 false, !dbg !3694
  br i1 %636, label %637, label %646, !dbg !3694

637:                                              ; preds = %632
  %638 = and i8 %143, 1, !dbg !3696
  %639 = icmp eq i8 %638, 0, !dbg !3696
  br i1 %639, label %642, label %640, !dbg !3699

640:                                              ; preds = %637
  %641 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %141, ptr noundef %2, i64 noundef %139, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %117, ptr noundef %118), !dbg !3700
  br label %694, !dbg !3701

642:                                              ; preds = %637
  %643 = icmp eq i64 %146, 0, !dbg !3702
  %644 = icmp ne i64 %141, 0
  %645 = select i1 %643, i1 %644, i1 false, !dbg !3704
  br i1 %645, label %28, label %646, !dbg !3704

646:                                              ; preds = %642, %632
  %647 = phi i1 [ true, %642 ], [ %132, %632 ]
  %648 = icmp ne ptr %120, null, !dbg !3705
  %649 = select i1 %648, i1 %647, i1 false, !dbg !3707
  br i1 %649, label %650, label %665, !dbg !3707

650:                                              ; preds = %646
  call void @llvm.dbg.value(metadata ptr %120, metadata !3179, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i64 %140, metadata !3177, metadata !DIExpression()), !dbg !3229
  %651 = load i8, ptr %120, align 1, !dbg !3708, !tbaa !1173
  %652 = icmp eq i8 %651, 0, !dbg !3711
  br i1 %652, label %665, label %653, !dbg !3711

653:                                              ; preds = %650, %660
  %654 = phi i8 [ %663, %660 ], [ %651, %650 ]
  %655 = phi ptr [ %662, %660 ], [ %120, %650 ]
  %656 = phi i64 [ %661, %660 ], [ %140, %650 ]
  call void @llvm.dbg.value(metadata ptr %655, metadata !3179, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i64 %656, metadata !3177, metadata !DIExpression()), !dbg !3229
  %657 = icmp ult i64 %656, %146, !dbg !3712
  br i1 %657, label %658, label %660, !dbg !3715

658:                                              ; preds = %653
  %659 = getelementptr inbounds i8, ptr %0, i64 %656, !dbg !3712
  store i8 %654, ptr %659, align 1, !dbg !3712, !tbaa !1173
  br label %660, !dbg !3712

660:                                              ; preds = %658, %653
  %661 = add i64 %656, 1, !dbg !3715
  call void @llvm.dbg.value(metadata i64 %661, metadata !3177, metadata !DIExpression()), !dbg !3229
  %662 = getelementptr inbounds i8, ptr %655, i64 1, !dbg !3716
  call void @llvm.dbg.value(metadata ptr %662, metadata !3179, metadata !DIExpression()), !dbg !3229
  %663 = load i8, ptr %662, align 1, !dbg !3708, !tbaa !1173
  %664 = icmp eq i8 %663, 0, !dbg !3711
  br i1 %664, label %665, label %653, !dbg !3711, !llvm.loop !3717

665:                                              ; preds = %660, %650, %646
  %666 = phi i64 [ %140, %646 ], [ %140, %650 ], [ %661, %660 ], !dbg !3311
  call void @llvm.dbg.value(metadata i64 %666, metadata !3177, metadata !DIExpression()), !dbg !3229
  %667 = icmp ult i64 %666, %146, !dbg !3719
  br i1 %667, label %668, label %694, !dbg !3721

668:                                              ; preds = %665
  %669 = getelementptr inbounds i8, ptr %0, i64 %666, !dbg !3722
  store i8 0, ptr %669, align 1, !dbg !3723, !tbaa !1173
  br label %694, !dbg !3722

670:                                              ; preds = %627, %227, %269, %272, %283, %286, %359
  %671 = phi i64 [ %324, %359 ], [ %171, %286 ], [ %171, %283 ], [ %171, %272 ], [ %171, %269 ], [ %171, %227 ], [ %139, %627 ]
  call void @llvm.dbg.label(metadata !3228), !dbg !3724
  %672 = icmp eq i8 %124, 0, !dbg !3725
  %673 = select i1 %672, i32 2, i32 4, !dbg !3725
  br label %684, !dbg !3725

674:                                              ; preds = %177, %535
  %675 = phi i64 [ %146, %177 ], [ %544, %535 ]
  %676 = phi i64 [ %171, %177 ], [ %536, %535 ]
  %677 = icmp eq i8 %124, 0, !dbg !3725
  %678 = select i1 %677, i32 2, i32 4, !dbg !3725
  br label %679, !dbg !3727

679:                                              ; preds = %388, %674
  %680 = phi i32 [ %678, %674 ], [ 4, %388 ]
  %681 = phi i64 [ %675, %674 ], [ %146, %388 ]
  %682 = phi i64 [ %676, %674 ], [ %378, %388 ]
  call void @llvm.dbg.label(metadata !3228), !dbg !3724
  %683 = icmp eq i32 %116, 2, !dbg !3727
  br i1 %683, label %684, label %688, !dbg !3725

684:                                              ; preds = %670, %679
  %685 = phi i32 [ %673, %670 ], [ %680, %679 ]
  %686 = phi i64 [ %671, %670 ], [ %682, %679 ]
  %687 = phi i64 [ %146, %670 ], [ %681, %679 ]
  br label %688, !dbg !3725

688:                                              ; preds = %241, %163, %679, %684
  %689 = phi i64 [ %686, %684 ], [ %682, %679 ], [ %161, %163 ], [ %171, %241 ]
  %690 = phi i64 [ %687, %684 ], [ %681, %679 ], [ %146, %163 ], [ %146, %241 ]
  %691 = phi i32 [ %685, %684 ], [ %116, %679 ], [ %116, %163 ], [ 5, %241 ]
  call void @llvm.dbg.value(metadata i32 %691, metadata !3171, metadata !DIExpression()), !dbg !3229
  %692 = and i32 %5, -3, !dbg !3728
  %693 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %690, ptr noundef %2, i64 noundef %689, i32 noundef %691, i32 noundef %692, ptr noundef null, ptr noundef %117, ptr noundef %118), !dbg !3729
  br label %694, !dbg !3730

694:                                              ; preds = %665, %668, %688, %640
  %695 = phi i64 [ %693, %688 ], [ %641, %640 ], [ %666, %668 ], [ %666, %665 ]
  ret i64 %695, !dbg !3731
}

; Function Attrs: nounwind
declare !dbg !3732 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind
declare !dbg !3735 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3737 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3741, metadata !DIExpression()), !dbg !3744
  call void @llvm.dbg.value(metadata i64 %1, metadata !3742, metadata !DIExpression()), !dbg !3744
  call void @llvm.dbg.value(metadata ptr %2, metadata !3743, metadata !DIExpression()), !dbg !3744
  call void @llvm.dbg.value(metadata ptr %0, metadata !3745, metadata !DIExpression()), !dbg !3758
  call void @llvm.dbg.value(metadata i64 %1, metadata !3750, metadata !DIExpression()), !dbg !3758
  call void @llvm.dbg.value(metadata ptr null, metadata !3751, metadata !DIExpression()), !dbg !3758
  call void @llvm.dbg.value(metadata ptr %2, metadata !3752, metadata !DIExpression()), !dbg !3758
  %4 = icmp eq ptr %2, null, !dbg !3760
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !3760
  call void @llvm.dbg.value(metadata ptr %5, metadata !3753, metadata !DIExpression()), !dbg !3758
  %6 = tail call ptr @__errno_location() #41, !dbg !3761
  %7 = load i32, ptr %6, align 4, !dbg !3761, !tbaa !1164
  call void @llvm.dbg.value(metadata i32 %7, metadata !3754, metadata !DIExpression()), !dbg !3758
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !3762
  %9 = load i32, ptr %8, align 4, !dbg !3762, !tbaa !3112
  %10 = or i32 %9, 1, !dbg !3763
  call void @llvm.dbg.value(metadata i32 %10, metadata !3755, metadata !DIExpression()), !dbg !3758
  %11 = load i32, ptr %5, align 8, !dbg !3764, !tbaa !3062
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !3765
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3766
  %14 = load ptr, ptr %13, align 8, !dbg !3766, !tbaa !3133
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3767
  %16 = load ptr, ptr %15, align 8, !dbg !3767, !tbaa !3136
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !3768
  %18 = add i64 %17, 1, !dbg !3769
  call void @llvm.dbg.value(metadata i64 %18, metadata !3756, metadata !DIExpression()), !dbg !3758
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #45, !dbg !3770
  call void @llvm.dbg.value(metadata ptr %19, metadata !3757, metadata !DIExpression()), !dbg !3758
  %20 = load i32, ptr %5, align 8, !dbg !3771, !tbaa !3062
  %21 = load ptr, ptr %13, align 8, !dbg !3772, !tbaa !3133
  %22 = load ptr, ptr %15, align 8, !dbg !3773, !tbaa !3136
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !3774
  store i32 %7, ptr %6, align 4, !dbg !3775, !tbaa !1164
  ret ptr %19, !dbg !3776
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3746 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3745, metadata !DIExpression()), !dbg !3777
  call void @llvm.dbg.value(metadata i64 %1, metadata !3750, metadata !DIExpression()), !dbg !3777
  call void @llvm.dbg.value(metadata ptr %2, metadata !3751, metadata !DIExpression()), !dbg !3777
  call void @llvm.dbg.value(metadata ptr %3, metadata !3752, metadata !DIExpression()), !dbg !3777
  %5 = icmp eq ptr %3, null, !dbg !3778
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !3778
  call void @llvm.dbg.value(metadata ptr %6, metadata !3753, metadata !DIExpression()), !dbg !3777
  %7 = tail call ptr @__errno_location() #41, !dbg !3779
  %8 = load i32, ptr %7, align 4, !dbg !3779, !tbaa !1164
  call void @llvm.dbg.value(metadata i32 %8, metadata !3754, metadata !DIExpression()), !dbg !3777
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !3780
  %10 = load i32, ptr %9, align 4, !dbg !3780, !tbaa !3112
  %11 = icmp eq ptr %2, null, !dbg !3781
  %12 = zext i1 %11 to i32, !dbg !3781
  %13 = or i32 %10, %12, !dbg !3782
  call void @llvm.dbg.value(metadata i32 %13, metadata !3755, metadata !DIExpression()), !dbg !3777
  %14 = load i32, ptr %6, align 8, !dbg !3783, !tbaa !3062
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !3784
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3785
  %17 = load ptr, ptr %16, align 8, !dbg !3785, !tbaa !3133
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3786
  %19 = load ptr, ptr %18, align 8, !dbg !3786, !tbaa !3136
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !3787
  %21 = add i64 %20, 1, !dbg !3788
  call void @llvm.dbg.value(metadata i64 %21, metadata !3756, metadata !DIExpression()), !dbg !3777
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #45, !dbg !3789
  call void @llvm.dbg.value(metadata ptr %22, metadata !3757, metadata !DIExpression()), !dbg !3777
  %23 = load i32, ptr %6, align 8, !dbg !3790, !tbaa !3062
  %24 = load ptr, ptr %16, align 8, !dbg !3791, !tbaa !3133
  %25 = load ptr, ptr %18, align 8, !dbg !3792, !tbaa !3136
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !3793
  store i32 %8, ptr %7, align 4, !dbg !3794, !tbaa !1164
  br i1 %11, label %28, label %27, !dbg !3795

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !3796, !tbaa !1516
  br label %28, !dbg !3798

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !3799
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !3800 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !3805, !tbaa !1098
  call void @llvm.dbg.value(metadata ptr %1, metadata !3802, metadata !DIExpression()), !dbg !3806
  call void @llvm.dbg.value(metadata i32 1, metadata !3803, metadata !DIExpression()), !dbg !3807
  %2 = load i32, ptr @nslots, align 4, !tbaa !1164
  call void @llvm.dbg.value(metadata i32 1, metadata !3803, metadata !DIExpression()), !dbg !3807
  %3 = icmp sgt i32 %2, 1, !dbg !3808
  br i1 %3, label %4, label %6, !dbg !3810

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !3808
  br label %10, !dbg !3810

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !3811
  %8 = load ptr, ptr %7, align 8, !dbg !3811, !tbaa !3813
  %9 = icmp eq ptr %8, @slot0, !dbg !3815
  br i1 %9, label %17, label %16, !dbg !3816

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !3803, metadata !DIExpression()), !dbg !3807
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !3817
  %13 = load ptr, ptr %12, align 8, !dbg !3817, !tbaa !3813
  tail call void @free(ptr noundef %13) #38, !dbg !3818
  %14 = add nuw nsw i64 %11, 1, !dbg !3819
  call void @llvm.dbg.value(metadata i64 %14, metadata !3803, metadata !DIExpression()), !dbg !3807
  %15 = icmp eq i64 %14, %5, !dbg !3808
  br i1 %15, label %6, label %10, !dbg !3810, !llvm.loop !3820

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #38, !dbg !3822
  store i64 256, ptr @slotvec0, align 8, !dbg !3824, !tbaa !3825
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !3826, !tbaa !3813
  br label %17, !dbg !3827

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !3828
  br i1 %18, label %20, label %19, !dbg !3830

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #38, !dbg !3831
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !3833, !tbaa !1098
  br label %20, !dbg !3834

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !3835, !tbaa !1164
  ret void, !dbg !3836
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3837 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3839, metadata !DIExpression()), !dbg !3841
  call void @llvm.dbg.value(metadata ptr %1, metadata !3840, metadata !DIExpression()), !dbg !3841
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3842
  ret ptr %3, !dbg !3843
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !3844 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3848, metadata !DIExpression()), !dbg !3864
  call void @llvm.dbg.value(metadata ptr %1, metadata !3849, metadata !DIExpression()), !dbg !3864
  call void @llvm.dbg.value(metadata i64 %2, metadata !3850, metadata !DIExpression()), !dbg !3864
  call void @llvm.dbg.value(metadata ptr %3, metadata !3851, metadata !DIExpression()), !dbg !3864
  %6 = tail call ptr @__errno_location() #41, !dbg !3865
  %7 = load i32, ptr %6, align 4, !dbg !3865, !tbaa !1164
  call void @llvm.dbg.value(metadata i32 %7, metadata !3852, metadata !DIExpression()), !dbg !3864
  %8 = load ptr, ptr @slotvec, align 8, !dbg !3866, !tbaa !1098
  call void @llvm.dbg.value(metadata ptr %8, metadata !3853, metadata !DIExpression()), !dbg !3864
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !3854, metadata !DIExpression()), !dbg !3864
  %9 = icmp ugt i32 %0, 2147483646, !dbg !3867
  br i1 %9, label %10, label %11, !dbg !3867

10:                                               ; preds = %4
  tail call void @abort() #40, !dbg !3869
  unreachable, !dbg !3869

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !3870, !tbaa !1164
  %13 = icmp sgt i32 %12, %0, !dbg !3871
  br i1 %13, label %32, label %14, !dbg !3872

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !3873
  call void @llvm.dbg.value(metadata i1 %15, metadata !3855, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3874
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #38, !dbg !3875
  %16 = sext i32 %12 to i64, !dbg !3876
  call void @llvm.dbg.value(metadata i64 %16, metadata !3858, metadata !DIExpression()), !dbg !3874
  store i64 %16, ptr %5, align 8, !dbg !3877, !tbaa !1516
  %17 = select i1 %15, ptr null, ptr %8, !dbg !3878
  %18 = add nuw nsw i32 %0, 1, !dbg !3879
  %19 = sub i32 %18, %12, !dbg !3880
  %20 = sext i32 %19 to i64, !dbg !3881
  call void @llvm.dbg.value(metadata ptr %5, metadata !3858, metadata !DIExpression(DW_OP_deref)), !dbg !3874
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #38, !dbg !3882
  call void @llvm.dbg.value(metadata ptr %21, metadata !3853, metadata !DIExpression()), !dbg !3864
  store ptr %21, ptr @slotvec, align 8, !dbg !3883, !tbaa !1098
  br i1 %15, label %22, label %23, !dbg !3884

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !3885, !tbaa.struct !3887
  br label %23, !dbg !3888

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !3889, !tbaa !1164
  %25 = sext i32 %24 to i64, !dbg !3890
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !3890
  %27 = load i64, ptr %5, align 8, !dbg !3891, !tbaa !1516
  call void @llvm.dbg.value(metadata i64 %27, metadata !3858, metadata !DIExpression()), !dbg !3874
  %28 = sub nsw i64 %27, %25, !dbg !3892
  %29 = shl i64 %28, 4, !dbg !3893
  call void @llvm.dbg.value(metadata ptr %26, metadata !3268, metadata !DIExpression()), !dbg !3894
  call void @llvm.dbg.value(metadata i32 0, metadata !3271, metadata !DIExpression()), !dbg !3894
  call void @llvm.dbg.value(metadata i64 %29, metadata !3272, metadata !DIExpression()), !dbg !3894
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #38, !dbg !3896
  %30 = load i64, ptr %5, align 8, !dbg !3897, !tbaa !1516
  call void @llvm.dbg.value(metadata i64 %30, metadata !3858, metadata !DIExpression()), !dbg !3874
  %31 = trunc i64 %30 to i32, !dbg !3897
  store i32 %31, ptr @nslots, align 4, !dbg !3898, !tbaa !1164
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #38, !dbg !3899
  br label %32, !dbg !3900

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !3864
  call void @llvm.dbg.value(metadata ptr %33, metadata !3853, metadata !DIExpression()), !dbg !3864
  %34 = zext i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !3901
  %36 = load i64, ptr %35, align 8, !dbg !3902, !tbaa !3825
  call void @llvm.dbg.value(metadata i64 %36, metadata !3859, metadata !DIExpression()), !dbg !3903
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !3904
  %38 = load ptr, ptr %37, align 8, !dbg !3904, !tbaa !3813
  call void @llvm.dbg.value(metadata ptr %38, metadata !3861, metadata !DIExpression()), !dbg !3903
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !3905
  %40 = load i32, ptr %39, align 4, !dbg !3905, !tbaa !3112
  %41 = or i32 %40, 1, !dbg !3906
  call void @llvm.dbg.value(metadata i32 %41, metadata !3862, metadata !DIExpression()), !dbg !3903
  %42 = load i32, ptr %3, align 8, !dbg !3907, !tbaa !3062
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3908
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !3909
  %45 = load ptr, ptr %44, align 8, !dbg !3909, !tbaa !3133
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !3910
  %47 = load ptr, ptr %46, align 8, !dbg !3910, !tbaa !3136
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !3911
  call void @llvm.dbg.value(metadata i64 %48, metadata !3863, metadata !DIExpression()), !dbg !3903
  %49 = icmp ugt i64 %36, %48, !dbg !3912
  br i1 %49, label %60, label %50, !dbg !3914

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !3915
  call void @llvm.dbg.value(metadata i64 %51, metadata !3859, metadata !DIExpression()), !dbg !3903
  store i64 %51, ptr %35, align 8, !dbg !3917, !tbaa !3825
  %52 = icmp eq ptr %38, @slot0, !dbg !3918
  br i1 %52, label %54, label %53, !dbg !3920

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #38, !dbg !3921
  br label %54, !dbg !3921

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #45, !dbg !3922
  call void @llvm.dbg.value(metadata ptr %55, metadata !3861, metadata !DIExpression()), !dbg !3903
  store ptr %55, ptr %37, align 8, !dbg !3923, !tbaa !3813
  %56 = load i32, ptr %3, align 8, !dbg !3924, !tbaa !3062
  %57 = load ptr, ptr %44, align 8, !dbg !3925, !tbaa !3133
  %58 = load ptr, ptr %46, align 8, !dbg !3926, !tbaa !3136
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !3927
  br label %60, !dbg !3928

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !3903
  call void @llvm.dbg.value(metadata ptr %61, metadata !3861, metadata !DIExpression()), !dbg !3903
  store i32 %7, ptr %6, align 4, !dbg !3929, !tbaa !1164
  ret ptr %61, !dbg !3930
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #27

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3931 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3935, metadata !DIExpression()), !dbg !3938
  call void @llvm.dbg.value(metadata ptr %1, metadata !3936, metadata !DIExpression()), !dbg !3938
  call void @llvm.dbg.value(metadata i64 %2, metadata !3937, metadata !DIExpression()), !dbg !3938
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !3939
  ret ptr %4, !dbg !3940
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !3941 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3943, metadata !DIExpression()), !dbg !3944
  call void @llvm.dbg.value(metadata i32 0, metadata !3839, metadata !DIExpression()), !dbg !3945
  call void @llvm.dbg.value(metadata ptr %0, metadata !3840, metadata !DIExpression()), !dbg !3945
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3947
  ret ptr %2, !dbg !3948
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3949 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3953, metadata !DIExpression()), !dbg !3955
  call void @llvm.dbg.value(metadata i64 %1, metadata !3954, metadata !DIExpression()), !dbg !3955
  call void @llvm.dbg.value(metadata i32 0, metadata !3935, metadata !DIExpression()), !dbg !3956
  call void @llvm.dbg.value(metadata ptr %0, metadata !3936, metadata !DIExpression()), !dbg !3956
  call void @llvm.dbg.value(metadata i64 %1, metadata !3937, metadata !DIExpression()), !dbg !3956
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !3958
  ret ptr %3, !dbg !3959
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3960 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3964, metadata !DIExpression()), !dbg !3968
  call void @llvm.dbg.value(metadata i32 %1, metadata !3965, metadata !DIExpression()), !dbg !3968
  call void @llvm.dbg.value(metadata ptr %2, metadata !3966, metadata !DIExpression()), !dbg !3968
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !3969
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3967, metadata !DIExpression()), !dbg !3970
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3971), !dbg !3974
  call void @llvm.dbg.value(metadata i32 %1, metadata !3975, metadata !DIExpression()), !dbg !3981
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3980, metadata !DIExpression()), !dbg !3983
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3983, !alias.scope !3971
  %5 = icmp eq i32 %1, 10, !dbg !3984
  br i1 %5, label %6, label %7, !dbg !3986

6:                                                ; preds = %3
  tail call void @abort() #40, !dbg !3987, !noalias !3971
  unreachable, !dbg !3987

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !3988, !tbaa !3062, !alias.scope !3971
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3989
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !3990
  ret ptr %8, !dbg !3991
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #28

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3992 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3996, metadata !DIExpression()), !dbg !4001
  call void @llvm.dbg.value(metadata i32 %1, metadata !3997, metadata !DIExpression()), !dbg !4001
  call void @llvm.dbg.value(metadata ptr %2, metadata !3998, metadata !DIExpression()), !dbg !4001
  call void @llvm.dbg.value(metadata i64 %3, metadata !3999, metadata !DIExpression()), !dbg !4001
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #38, !dbg !4002
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4000, metadata !DIExpression()), !dbg !4003
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4004), !dbg !4007
  call void @llvm.dbg.value(metadata i32 %1, metadata !3975, metadata !DIExpression()), !dbg !4008
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3980, metadata !DIExpression()), !dbg !4010
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !4010, !alias.scope !4004
  %6 = icmp eq i32 %1, 10, !dbg !4011
  br i1 %6, label %7, label %8, !dbg !4012

7:                                                ; preds = %4
  tail call void @abort() #40, !dbg !4013, !noalias !4004
  unreachable, !dbg !4013

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !4014, !tbaa !3062, !alias.scope !4004
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !4015
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #38, !dbg !4016
  ret ptr %9, !dbg !4017
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !4018 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !4022, metadata !DIExpression()), !dbg !4024
  call void @llvm.dbg.value(metadata ptr %1, metadata !4023, metadata !DIExpression()), !dbg !4024
  call void @llvm.dbg.value(metadata i32 0, metadata !3964, metadata !DIExpression()), !dbg !4025
  call void @llvm.dbg.value(metadata i32 %0, metadata !3965, metadata !DIExpression()), !dbg !4025
  call void @llvm.dbg.value(metadata ptr %1, metadata !3966, metadata !DIExpression()), !dbg !4025
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #38, !dbg !4027
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3967, metadata !DIExpression()), !dbg !4028
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4029), !dbg !4032
  call void @llvm.dbg.value(metadata i32 %0, metadata !3975, metadata !DIExpression()), !dbg !4033
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3980, metadata !DIExpression()), !dbg !4035
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !4035, !alias.scope !4029
  %4 = icmp eq i32 %0, 10, !dbg !4036
  br i1 %4, label %5, label %6, !dbg !4037

5:                                                ; preds = %2
  tail call void @abort() #40, !dbg !4038, !noalias !4029
  unreachable, !dbg !4038

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !4039, !tbaa !3062, !alias.scope !4029
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !4040
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #38, !dbg !4041
  ret ptr %7, !dbg !4042
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4043 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !4047, metadata !DIExpression()), !dbg !4050
  call void @llvm.dbg.value(metadata ptr %1, metadata !4048, metadata !DIExpression()), !dbg !4050
  call void @llvm.dbg.value(metadata i64 %2, metadata !4049, metadata !DIExpression()), !dbg !4050
  call void @llvm.dbg.value(metadata i32 0, metadata !3996, metadata !DIExpression()), !dbg !4051
  call void @llvm.dbg.value(metadata i32 %0, metadata !3997, metadata !DIExpression()), !dbg !4051
  call void @llvm.dbg.value(metadata ptr %1, metadata !3998, metadata !DIExpression()), !dbg !4051
  call void @llvm.dbg.value(metadata i64 %2, metadata !3999, metadata !DIExpression()), !dbg !4051
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !4053
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4000, metadata !DIExpression()), !dbg !4054
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4055), !dbg !4058
  call void @llvm.dbg.value(metadata i32 %0, metadata !3975, metadata !DIExpression()), !dbg !4059
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3980, metadata !DIExpression()), !dbg !4061
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !4061, !alias.scope !4055
  %5 = icmp eq i32 %0, 10, !dbg !4062
  br i1 %5, label %6, label %7, !dbg !4063

6:                                                ; preds = %3
  tail call void @abort() #40, !dbg !4064, !noalias !4055
  unreachable, !dbg !4064

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !4065, !tbaa !3062, !alias.scope !4055
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !4066
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !4067
  ret ptr %8, !dbg !4068
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef signext %2) local_unnamed_addr #10 !dbg !4069 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4073, metadata !DIExpression()), !dbg !4077
  call void @llvm.dbg.value(metadata i64 %1, metadata !4074, metadata !DIExpression()), !dbg !4077
  call void @llvm.dbg.value(metadata i8 %2, metadata !4075, metadata !DIExpression()), !dbg !4077
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !4078
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4076, metadata !DIExpression()), !dbg !4079
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !4080, !tbaa.struct !4081
  call void @llvm.dbg.value(metadata ptr %4, metadata !3079, metadata !DIExpression()), !dbg !4082
  call void @llvm.dbg.value(metadata i8 %2, metadata !3080, metadata !DIExpression()), !dbg !4082
  call void @llvm.dbg.value(metadata i32 1, metadata !3081, metadata !DIExpression()), !dbg !4082
  call void @llvm.dbg.value(metadata i8 %2, metadata !3082, metadata !DIExpression()), !dbg !4082
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !4084
  %6 = lshr i8 %2, 5, !dbg !4085
  %7 = zext i8 %6 to i64, !dbg !4085
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !4086
  call void @llvm.dbg.value(metadata ptr %8, metadata !3083, metadata !DIExpression()), !dbg !4082
  %9 = and i8 %2, 31, !dbg !4087
  %10 = zext i8 %9 to i32, !dbg !4087
  call void @llvm.dbg.value(metadata i32 %10, metadata !3085, metadata !DIExpression()), !dbg !4082
  %11 = load i32, ptr %8, align 4, !dbg !4088, !tbaa !1164
  %12 = lshr i32 %11, %10, !dbg !4089
  call void @llvm.dbg.value(metadata i32 %12, metadata !3086, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !4082
  %13 = and i32 %12, 1, !dbg !4090
  %14 = xor i32 %13, 1, !dbg !4090
  %15 = shl nuw i32 %14, %10, !dbg !4091
  %16 = xor i32 %15, %11, !dbg !4092
  store i32 %16, ptr %8, align 4, !dbg !4092, !tbaa !1164
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !4093
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !4094
  ret ptr %17, !dbg !4095
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char(ptr noundef %0, i8 noundef signext %1) local_unnamed_addr #10 !dbg !4096 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4100, metadata !DIExpression()), !dbg !4102
  call void @llvm.dbg.value(metadata i8 %1, metadata !4101, metadata !DIExpression()), !dbg !4102
  call void @llvm.dbg.value(metadata ptr %0, metadata !4073, metadata !DIExpression()), !dbg !4103
  call void @llvm.dbg.value(metadata i64 -1, metadata !4074, metadata !DIExpression()), !dbg !4103
  call void @llvm.dbg.value(metadata i8 %1, metadata !4075, metadata !DIExpression()), !dbg !4103
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #38, !dbg !4105
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4076, metadata !DIExpression()), !dbg !4106
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !4107, !tbaa.struct !4081
  call void @llvm.dbg.value(metadata ptr %3, metadata !3079, metadata !DIExpression()), !dbg !4108
  call void @llvm.dbg.value(metadata i8 %1, metadata !3080, metadata !DIExpression()), !dbg !4108
  call void @llvm.dbg.value(metadata i32 1, metadata !3081, metadata !DIExpression()), !dbg !4108
  call void @llvm.dbg.value(metadata i8 %1, metadata !3082, metadata !DIExpression()), !dbg !4108
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !4110
  %5 = lshr i8 %1, 5, !dbg !4111
  %6 = zext i8 %5 to i64, !dbg !4111
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !4112
  call void @llvm.dbg.value(metadata ptr %7, metadata !3083, metadata !DIExpression()), !dbg !4108
  %8 = and i8 %1, 31, !dbg !4113
  %9 = zext i8 %8 to i32, !dbg !4113
  call void @llvm.dbg.value(metadata i32 %9, metadata !3085, metadata !DIExpression()), !dbg !4108
  %10 = load i32, ptr %7, align 4, !dbg !4114, !tbaa !1164
  %11 = lshr i32 %10, %9, !dbg !4115
  call void @llvm.dbg.value(metadata i32 %11, metadata !3086, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !4108
  %12 = and i32 %11, 1, !dbg !4116
  %13 = xor i32 %12, 1, !dbg !4116
  %14 = shl nuw i32 %13, %9, !dbg !4117
  %15 = xor i32 %14, %10, !dbg !4118
  store i32 %15, ptr %7, align 4, !dbg !4118, !tbaa !1164
  %16 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !4119
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #38, !dbg !4120
  ret ptr %16, !dbg !4121
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !4122 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4124, metadata !DIExpression()), !dbg !4125
  call void @llvm.dbg.value(metadata ptr %0, metadata !4100, metadata !DIExpression()), !dbg !4126
  call void @llvm.dbg.value(metadata i8 58, metadata !4101, metadata !DIExpression()), !dbg !4126
  call void @llvm.dbg.value(metadata ptr %0, metadata !4073, metadata !DIExpression()), !dbg !4128
  call void @llvm.dbg.value(metadata i64 -1, metadata !4074, metadata !DIExpression()), !dbg !4128
  call void @llvm.dbg.value(metadata i8 58, metadata !4075, metadata !DIExpression()), !dbg !4128
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #38, !dbg !4130
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4076, metadata !DIExpression()), !dbg !4131
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !4132, !tbaa.struct !4081
  call void @llvm.dbg.value(metadata ptr %2, metadata !3079, metadata !DIExpression()), !dbg !4133
  call void @llvm.dbg.value(metadata i8 58, metadata !3080, metadata !DIExpression()), !dbg !4133
  call void @llvm.dbg.value(metadata i32 1, metadata !3081, metadata !DIExpression()), !dbg !4133
  call void @llvm.dbg.value(metadata i8 58, metadata !3082, metadata !DIExpression()), !dbg !4133
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !4135
  call void @llvm.dbg.value(metadata ptr %3, metadata !3083, metadata !DIExpression()), !dbg !4133
  call void @llvm.dbg.value(metadata i32 26, metadata !3085, metadata !DIExpression()), !dbg !4133
  %4 = load i32, ptr %3, align 4, !dbg !4136, !tbaa !1164
  call void @llvm.dbg.value(metadata i32 %4, metadata !3086, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !4133
  %5 = or i32 %4, 67108864, !dbg !4137
  store i32 %5, ptr %3, align 4, !dbg !4137, !tbaa !1164
  %6 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !4138
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #38, !dbg !4139
  ret ptr %6, !dbg !4140
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4141 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4143, metadata !DIExpression()), !dbg !4145
  call void @llvm.dbg.value(metadata i64 %1, metadata !4144, metadata !DIExpression()), !dbg !4145
  call void @llvm.dbg.value(metadata ptr %0, metadata !4073, metadata !DIExpression()), !dbg !4146
  call void @llvm.dbg.value(metadata i64 %1, metadata !4074, metadata !DIExpression()), !dbg !4146
  call void @llvm.dbg.value(metadata i8 58, metadata !4075, metadata !DIExpression()), !dbg !4146
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #38, !dbg !4148
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4076, metadata !DIExpression()), !dbg !4149
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !4150, !tbaa.struct !4081
  call void @llvm.dbg.value(metadata ptr %3, metadata !3079, metadata !DIExpression()), !dbg !4151
  call void @llvm.dbg.value(metadata i8 58, metadata !3080, metadata !DIExpression()), !dbg !4151
  call void @llvm.dbg.value(metadata i32 1, metadata !3081, metadata !DIExpression()), !dbg !4151
  call void @llvm.dbg.value(metadata i8 58, metadata !3082, metadata !DIExpression()), !dbg !4151
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !4153
  call void @llvm.dbg.value(metadata ptr %4, metadata !3083, metadata !DIExpression()), !dbg !4151
  call void @llvm.dbg.value(metadata i32 26, metadata !3085, metadata !DIExpression()), !dbg !4151
  %5 = load i32, ptr %4, align 4, !dbg !4154, !tbaa !1164
  call void @llvm.dbg.value(metadata i32 %5, metadata !3086, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !4151
  %6 = or i32 %5, 67108864, !dbg !4155
  store i32 %6, ptr %4, align 4, !dbg !4155, !tbaa !1164
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !4156
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #38, !dbg !4157
  ret ptr %7, !dbg !4158
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !4159 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata ptr poison, metadata !3980, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !4165
  call void @llvm.dbg.value(metadata i32 %0, metadata !4161, metadata !DIExpression()), !dbg !4167
  call void @llvm.dbg.value(metadata i32 %1, metadata !4162, metadata !DIExpression()), !dbg !4167
  call void @llvm.dbg.value(metadata ptr %2, metadata !4163, metadata !DIExpression()), !dbg !4167
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !4168
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4164, metadata !DIExpression()), !dbg !4169
  call void @llvm.dbg.value(metadata i32 %1, metadata !3975, metadata !DIExpression()), !dbg !4170
  call void @llvm.dbg.value(metadata i32 0, metadata !3980, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !4170
  %5 = icmp eq i32 %1, 10, !dbg !4171
  br i1 %5, label %6, label %7, !dbg !4172

6:                                                ; preds = %3
  tail call void @abort() #40, !dbg !4173, !noalias !4174
  unreachable, !dbg !4173

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3980, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !4170
  store i32 %1, ptr %4, align 8, !dbg !4177, !tbaa.struct !4081
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !4177
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !4177
  call void @llvm.dbg.value(metadata ptr %4, metadata !3079, metadata !DIExpression()), !dbg !4178
  call void @llvm.dbg.value(metadata i8 58, metadata !3080, metadata !DIExpression()), !dbg !4178
  call void @llvm.dbg.value(metadata i32 1, metadata !3081, metadata !DIExpression()), !dbg !4178
  call void @llvm.dbg.value(metadata i8 58, metadata !3082, metadata !DIExpression()), !dbg !4178
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !4180
  call void @llvm.dbg.value(metadata ptr %9, metadata !3083, metadata !DIExpression()), !dbg !4178
  call void @llvm.dbg.value(metadata i32 26, metadata !3085, metadata !DIExpression()), !dbg !4178
  %10 = load i32, ptr %9, align 4, !dbg !4181, !tbaa !1164
  call void @llvm.dbg.value(metadata i32 %10, metadata !3086, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !4178
  %11 = or i32 %10, 67108864, !dbg !4182
  store i32 %11, ptr %9, align 4, !dbg !4182, !tbaa !1164
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !4183
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !4184
  ret ptr %12, !dbg !4185
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !4186 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !4190, metadata !DIExpression()), !dbg !4194
  call void @llvm.dbg.value(metadata ptr %1, metadata !4191, metadata !DIExpression()), !dbg !4194
  call void @llvm.dbg.value(metadata ptr %2, metadata !4192, metadata !DIExpression()), !dbg !4194
  call void @llvm.dbg.value(metadata ptr %3, metadata !4193, metadata !DIExpression()), !dbg !4194
  call void @llvm.dbg.value(metadata i32 %0, metadata !4195, metadata !DIExpression()), !dbg !4205
  call void @llvm.dbg.value(metadata ptr %1, metadata !4200, metadata !DIExpression()), !dbg !4205
  call void @llvm.dbg.value(metadata ptr %2, metadata !4201, metadata !DIExpression()), !dbg !4205
  call void @llvm.dbg.value(metadata ptr %3, metadata !4202, metadata !DIExpression()), !dbg !4205
  call void @llvm.dbg.value(metadata i64 -1, metadata !4203, metadata !DIExpression()), !dbg !4205
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #38, !dbg !4207
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4204, metadata !DIExpression()), !dbg !4208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4209, !tbaa.struct !4081
  call void @llvm.dbg.value(metadata ptr %5, metadata !3119, metadata !DIExpression()), !dbg !4210
  call void @llvm.dbg.value(metadata ptr %1, metadata !3120, metadata !DIExpression()), !dbg !4210
  call void @llvm.dbg.value(metadata ptr %2, metadata !3121, metadata !DIExpression()), !dbg !4210
  call void @llvm.dbg.value(metadata ptr %5, metadata !3119, metadata !DIExpression()), !dbg !4210
  store i32 10, ptr %5, align 8, !dbg !4212, !tbaa !3062
  %6 = icmp ne ptr %1, null, !dbg !4213
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !4214
  br i1 %8, label %10, label %9, !dbg !4214

9:                                                ; preds = %4
  tail call void @abort() #40, !dbg !4215
  unreachable, !dbg !4215

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !4216
  store ptr %1, ptr %11, align 8, !dbg !4217, !tbaa !3133
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !4218
  store ptr %2, ptr %12, align 8, !dbg !4219, !tbaa !3136
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !4220
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #38, !dbg !4221
  ret ptr %13, !dbg !4222
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !4196 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !4195, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.value(metadata ptr %1, metadata !4200, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.value(metadata ptr %2, metadata !4201, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.value(metadata ptr %3, metadata !4202, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.value(metadata i64 %4, metadata !4203, metadata !DIExpression()), !dbg !4223
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #38, !dbg !4224
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4204, metadata !DIExpression()), !dbg !4225
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4226, !tbaa.struct !4081
  call void @llvm.dbg.value(metadata ptr %6, metadata !3119, metadata !DIExpression()), !dbg !4227
  call void @llvm.dbg.value(metadata ptr %1, metadata !3120, metadata !DIExpression()), !dbg !4227
  call void @llvm.dbg.value(metadata ptr %2, metadata !3121, metadata !DIExpression()), !dbg !4227
  call void @llvm.dbg.value(metadata ptr %6, metadata !3119, metadata !DIExpression()), !dbg !4227
  store i32 10, ptr %6, align 8, !dbg !4229, !tbaa !3062
  %7 = icmp ne ptr %1, null, !dbg !4230
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !4231
  br i1 %9, label %11, label %10, !dbg !4231

10:                                               ; preds = %5
  tail call void @abort() #40, !dbg !4232
  unreachable, !dbg !4232

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !4233
  store ptr %1, ptr %12, align 8, !dbg !4234, !tbaa !3133
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !4235
  store ptr %2, ptr %13, align 8, !dbg !4236, !tbaa !3136
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !4237
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #38, !dbg !4238
  ret ptr %14, !dbg !4239
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !4240 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4244, metadata !DIExpression()), !dbg !4247
  call void @llvm.dbg.value(metadata ptr %1, metadata !4245, metadata !DIExpression()), !dbg !4247
  call void @llvm.dbg.value(metadata ptr %2, metadata !4246, metadata !DIExpression()), !dbg !4247
  call void @llvm.dbg.value(metadata i32 0, metadata !4190, metadata !DIExpression()), !dbg !4248
  call void @llvm.dbg.value(metadata ptr %0, metadata !4191, metadata !DIExpression()), !dbg !4248
  call void @llvm.dbg.value(metadata ptr %1, metadata !4192, metadata !DIExpression()), !dbg !4248
  call void @llvm.dbg.value(metadata ptr %2, metadata !4193, metadata !DIExpression()), !dbg !4248
  call void @llvm.dbg.value(metadata i32 0, metadata !4195, metadata !DIExpression()), !dbg !4250
  call void @llvm.dbg.value(metadata ptr %0, metadata !4200, metadata !DIExpression()), !dbg !4250
  call void @llvm.dbg.value(metadata ptr %1, metadata !4201, metadata !DIExpression()), !dbg !4250
  call void @llvm.dbg.value(metadata ptr %2, metadata !4202, metadata !DIExpression()), !dbg !4250
  call void @llvm.dbg.value(metadata i64 -1, metadata !4203, metadata !DIExpression()), !dbg !4250
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !4252
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4204, metadata !DIExpression()), !dbg !4253
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4254, !tbaa.struct !4081
  call void @llvm.dbg.value(metadata ptr %4, metadata !3119, metadata !DIExpression()), !dbg !4255
  call void @llvm.dbg.value(metadata ptr %0, metadata !3120, metadata !DIExpression()), !dbg !4255
  call void @llvm.dbg.value(metadata ptr %1, metadata !3121, metadata !DIExpression()), !dbg !4255
  call void @llvm.dbg.value(metadata ptr %4, metadata !3119, metadata !DIExpression()), !dbg !4255
  store i32 10, ptr %4, align 8, !dbg !4257, !tbaa !3062
  %5 = icmp ne ptr %0, null, !dbg !4258
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !4259
  br i1 %7, label %9, label %8, !dbg !4259

8:                                                ; preds = %3
  tail call void @abort() #40, !dbg !4260
  unreachable, !dbg !4260

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !4261
  store ptr %0, ptr %10, align 8, !dbg !4262, !tbaa !3133
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !4263
  store ptr %1, ptr %11, align 8, !dbg !4264, !tbaa !3136
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !4265
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !4266
  ret ptr %12, !dbg !4267
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !4268 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4272, metadata !DIExpression()), !dbg !4276
  call void @llvm.dbg.value(metadata ptr %1, metadata !4273, metadata !DIExpression()), !dbg !4276
  call void @llvm.dbg.value(metadata ptr %2, metadata !4274, metadata !DIExpression()), !dbg !4276
  call void @llvm.dbg.value(metadata i64 %3, metadata !4275, metadata !DIExpression()), !dbg !4276
  call void @llvm.dbg.value(metadata i32 0, metadata !4195, metadata !DIExpression()), !dbg !4277
  call void @llvm.dbg.value(metadata ptr %0, metadata !4200, metadata !DIExpression()), !dbg !4277
  call void @llvm.dbg.value(metadata ptr %1, metadata !4201, metadata !DIExpression()), !dbg !4277
  call void @llvm.dbg.value(metadata ptr %2, metadata !4202, metadata !DIExpression()), !dbg !4277
  call void @llvm.dbg.value(metadata i64 %3, metadata !4203, metadata !DIExpression()), !dbg !4277
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #38, !dbg !4279
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4204, metadata !DIExpression()), !dbg !4280
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4281, !tbaa.struct !4081
  call void @llvm.dbg.value(metadata ptr %5, metadata !3119, metadata !DIExpression()), !dbg !4282
  call void @llvm.dbg.value(metadata ptr %0, metadata !3120, metadata !DIExpression()), !dbg !4282
  call void @llvm.dbg.value(metadata ptr %1, metadata !3121, metadata !DIExpression()), !dbg !4282
  call void @llvm.dbg.value(metadata ptr %5, metadata !3119, metadata !DIExpression()), !dbg !4282
  store i32 10, ptr %5, align 8, !dbg !4284, !tbaa !3062
  %6 = icmp ne ptr %0, null, !dbg !4285
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !4286
  br i1 %8, label %10, label %9, !dbg !4286

9:                                                ; preds = %4
  tail call void @abort() #40, !dbg !4287
  unreachable, !dbg !4287

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !4288
  store ptr %0, ptr %11, align 8, !dbg !4289, !tbaa !3133
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !4290
  store ptr %1, ptr %12, align 8, !dbg !4291, !tbaa !3136
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !4292
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #38, !dbg !4293
  ret ptr %13, !dbg !4294
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4295 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4299, metadata !DIExpression()), !dbg !4302
  call void @llvm.dbg.value(metadata ptr %1, metadata !4300, metadata !DIExpression()), !dbg !4302
  call void @llvm.dbg.value(metadata i64 %2, metadata !4301, metadata !DIExpression()), !dbg !4302
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !4303
  ret ptr %4, !dbg !4304
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4305 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4309, metadata !DIExpression()), !dbg !4311
  call void @llvm.dbg.value(metadata i64 %1, metadata !4310, metadata !DIExpression()), !dbg !4311
  call void @llvm.dbg.value(metadata i32 0, metadata !4299, metadata !DIExpression()), !dbg !4312
  call void @llvm.dbg.value(metadata ptr %0, metadata !4300, metadata !DIExpression()), !dbg !4312
  call void @llvm.dbg.value(metadata i64 %1, metadata !4301, metadata !DIExpression()), !dbg !4312
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !4314
  ret ptr %3, !dbg !4315
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !4316 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4320, metadata !DIExpression()), !dbg !4322
  call void @llvm.dbg.value(metadata ptr %1, metadata !4321, metadata !DIExpression()), !dbg !4322
  call void @llvm.dbg.value(metadata i32 %0, metadata !4299, metadata !DIExpression()), !dbg !4323
  call void @llvm.dbg.value(metadata ptr %1, metadata !4300, metadata !DIExpression()), !dbg !4323
  call void @llvm.dbg.value(metadata i64 -1, metadata !4301, metadata !DIExpression()), !dbg !4323
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !4325
  ret ptr %3, !dbg !4326
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !4327 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4331, metadata !DIExpression()), !dbg !4332
  call void @llvm.dbg.value(metadata i32 0, metadata !4320, metadata !DIExpression()), !dbg !4333
  call void @llvm.dbg.value(metadata ptr %0, metadata !4321, metadata !DIExpression()), !dbg !4333
  call void @llvm.dbg.value(metadata i32 0, metadata !4299, metadata !DIExpression()), !dbg !4335
  call void @llvm.dbg.value(metadata ptr %0, metadata !4300, metadata !DIExpression()), !dbg !4335
  call void @llvm.dbg.value(metadata i64 -1, metadata !4301, metadata !DIExpression()), !dbg !4335
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !4337
  ret ptr %2, !dbg !4338
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !4339 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4378, metadata !DIExpression()), !dbg !4384
  call void @llvm.dbg.value(metadata ptr %1, metadata !4379, metadata !DIExpression()), !dbg !4384
  call void @llvm.dbg.value(metadata ptr %2, metadata !4380, metadata !DIExpression()), !dbg !4384
  call void @llvm.dbg.value(metadata ptr %3, metadata !4381, metadata !DIExpression()), !dbg !4384
  call void @llvm.dbg.value(metadata ptr %4, metadata !4382, metadata !DIExpression()), !dbg !4384
  call void @llvm.dbg.value(metadata i64 %5, metadata !4383, metadata !DIExpression()), !dbg !4384
  %7 = icmp eq ptr %1, null, !dbg !4385
  br i1 %7, label %10, label %8, !dbg !4387

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.186, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #38, !dbg !4388
  br label %12, !dbg !4388

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.187, ptr noundef %2, ptr noundef %3) #38, !dbg !4389
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.188, ptr noundef nonnull @.str.3.189, i32 noundef 5) #38, !dbg !4390
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #38, !dbg !4390
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.190, ptr noundef %0), !dbg !4391
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.188, ptr noundef nonnull @.str.5.191, i32 noundef 5) #38, !dbg !4392
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.192) #38, !dbg !4392
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.190, ptr noundef %0), !dbg !4393
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
  ], !dbg !4394

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.188, ptr noundef nonnull @.str.7.193, i32 noundef 5) #38, !dbg !4395
  %21 = load ptr, ptr %4, align 8, !dbg !4395, !tbaa !1098
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #38, !dbg !4395
  br label %147, !dbg !4397

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.188, ptr noundef nonnull @.str.8.194, i32 noundef 5) #38, !dbg !4398
  %25 = load ptr, ptr %4, align 8, !dbg !4398, !tbaa !1098
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4398
  %27 = load ptr, ptr %26, align 8, !dbg !4398, !tbaa !1098
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #38, !dbg !4398
  br label %147, !dbg !4399

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.188, ptr noundef nonnull @.str.9.195, i32 noundef 5) #38, !dbg !4400
  %31 = load ptr, ptr %4, align 8, !dbg !4400, !tbaa !1098
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4400
  %33 = load ptr, ptr %32, align 8, !dbg !4400, !tbaa !1098
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4400
  %35 = load ptr, ptr %34, align 8, !dbg !4400, !tbaa !1098
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #38, !dbg !4400
  br label %147, !dbg !4401

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.188, ptr noundef nonnull @.str.10.196, i32 noundef 5) #38, !dbg !4402
  %39 = load ptr, ptr %4, align 8, !dbg !4402, !tbaa !1098
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4402
  %41 = load ptr, ptr %40, align 8, !dbg !4402, !tbaa !1098
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4402
  %43 = load ptr, ptr %42, align 8, !dbg !4402, !tbaa !1098
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4402
  %45 = load ptr, ptr %44, align 8, !dbg !4402, !tbaa !1098
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #38, !dbg !4402
  br label %147, !dbg !4403

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.188, ptr noundef nonnull @.str.11.197, i32 noundef 5) #38, !dbg !4404
  %49 = load ptr, ptr %4, align 8, !dbg !4404, !tbaa !1098
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4404
  %51 = load ptr, ptr %50, align 8, !dbg !4404, !tbaa !1098
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4404
  %53 = load ptr, ptr %52, align 8, !dbg !4404, !tbaa !1098
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4404
  %55 = load ptr, ptr %54, align 8, !dbg !4404, !tbaa !1098
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4404
  %57 = load ptr, ptr %56, align 8, !dbg !4404, !tbaa !1098
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #38, !dbg !4404
  br label %147, !dbg !4405

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.188, ptr noundef nonnull @.str.12.198, i32 noundef 5) #38, !dbg !4406
  %61 = load ptr, ptr %4, align 8, !dbg !4406, !tbaa !1098
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4406
  %63 = load ptr, ptr %62, align 8, !dbg !4406, !tbaa !1098
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4406
  %65 = load ptr, ptr %64, align 8, !dbg !4406, !tbaa !1098
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4406
  %67 = load ptr, ptr %66, align 8, !dbg !4406, !tbaa !1098
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4406
  %69 = load ptr, ptr %68, align 8, !dbg !4406, !tbaa !1098
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4406
  %71 = load ptr, ptr %70, align 8, !dbg !4406, !tbaa !1098
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #38, !dbg !4406
  br label %147, !dbg !4407

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.188, ptr noundef nonnull @.str.13.199, i32 noundef 5) #38, !dbg !4408
  %75 = load ptr, ptr %4, align 8, !dbg !4408, !tbaa !1098
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4408
  %77 = load ptr, ptr %76, align 8, !dbg !4408, !tbaa !1098
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4408
  %79 = load ptr, ptr %78, align 8, !dbg !4408, !tbaa !1098
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4408
  %81 = load ptr, ptr %80, align 8, !dbg !4408, !tbaa !1098
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4408
  %83 = load ptr, ptr %82, align 8, !dbg !4408, !tbaa !1098
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4408
  %85 = load ptr, ptr %84, align 8, !dbg !4408, !tbaa !1098
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4408
  %87 = load ptr, ptr %86, align 8, !dbg !4408, !tbaa !1098
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #38, !dbg !4408
  br label %147, !dbg !4409

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.188, ptr noundef nonnull @.str.14.200, i32 noundef 5) #38, !dbg !4410
  %91 = load ptr, ptr %4, align 8, !dbg !4410, !tbaa !1098
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4410
  %93 = load ptr, ptr %92, align 8, !dbg !4410, !tbaa !1098
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4410
  %95 = load ptr, ptr %94, align 8, !dbg !4410, !tbaa !1098
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4410
  %97 = load ptr, ptr %96, align 8, !dbg !4410, !tbaa !1098
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4410
  %99 = load ptr, ptr %98, align 8, !dbg !4410, !tbaa !1098
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4410
  %101 = load ptr, ptr %100, align 8, !dbg !4410, !tbaa !1098
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4410
  %103 = load ptr, ptr %102, align 8, !dbg !4410, !tbaa !1098
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4410
  %105 = load ptr, ptr %104, align 8, !dbg !4410, !tbaa !1098
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #38, !dbg !4410
  br label %147, !dbg !4411

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.188, ptr noundef nonnull @.str.15.201, i32 noundef 5) #38, !dbg !4412
  %109 = load ptr, ptr %4, align 8, !dbg !4412, !tbaa !1098
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4412
  %111 = load ptr, ptr %110, align 8, !dbg !4412, !tbaa !1098
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4412
  %113 = load ptr, ptr %112, align 8, !dbg !4412, !tbaa !1098
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4412
  %115 = load ptr, ptr %114, align 8, !dbg !4412, !tbaa !1098
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4412
  %117 = load ptr, ptr %116, align 8, !dbg !4412, !tbaa !1098
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4412
  %119 = load ptr, ptr %118, align 8, !dbg !4412, !tbaa !1098
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4412
  %121 = load ptr, ptr %120, align 8, !dbg !4412, !tbaa !1098
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4412
  %123 = load ptr, ptr %122, align 8, !dbg !4412, !tbaa !1098
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4412
  %125 = load ptr, ptr %124, align 8, !dbg !4412, !tbaa !1098
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #38, !dbg !4412
  br label %147, !dbg !4413

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.188, ptr noundef nonnull @.str.16.202, i32 noundef 5) #38, !dbg !4414
  %129 = load ptr, ptr %4, align 8, !dbg !4414, !tbaa !1098
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4414
  %131 = load ptr, ptr %130, align 8, !dbg !4414, !tbaa !1098
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4414
  %133 = load ptr, ptr %132, align 8, !dbg !4414, !tbaa !1098
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4414
  %135 = load ptr, ptr %134, align 8, !dbg !4414, !tbaa !1098
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4414
  %137 = load ptr, ptr %136, align 8, !dbg !4414, !tbaa !1098
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4414
  %139 = load ptr, ptr %138, align 8, !dbg !4414, !tbaa !1098
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4414
  %141 = load ptr, ptr %140, align 8, !dbg !4414, !tbaa !1098
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4414
  %143 = load ptr, ptr %142, align 8, !dbg !4414, !tbaa !1098
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4414
  %145 = load ptr, ptr %144, align 8, !dbg !4414, !tbaa !1098
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #38, !dbg !4414
  br label %147, !dbg !4415

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !4416
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !4417 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4421, metadata !DIExpression()), !dbg !4427
  call void @llvm.dbg.value(metadata ptr %1, metadata !4422, metadata !DIExpression()), !dbg !4427
  call void @llvm.dbg.value(metadata ptr %2, metadata !4423, metadata !DIExpression()), !dbg !4427
  call void @llvm.dbg.value(metadata ptr %3, metadata !4424, metadata !DIExpression()), !dbg !4427
  call void @llvm.dbg.value(metadata ptr %4, metadata !4425, metadata !DIExpression()), !dbg !4427
  call void @llvm.dbg.value(metadata i64 0, metadata !4426, metadata !DIExpression()), !dbg !4427
  br label %6, !dbg !4428

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !4430
  call void @llvm.dbg.value(metadata i64 %7, metadata !4426, metadata !DIExpression()), !dbg !4427
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !4431
  %9 = load ptr, ptr %8, align 8, !dbg !4431, !tbaa !1098
  %10 = icmp eq ptr %9, null, !dbg !4433
  %11 = add i64 %7, 1, !dbg !4434
  call void @llvm.dbg.value(metadata i64 %11, metadata !4426, metadata !DIExpression()), !dbg !4427
  br i1 %10, label %12, label %6, !dbg !4433, !llvm.loop !4435

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !4437
  ret void, !dbg !4438
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !4439 {
  %6 = alloca [10 x ptr], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !4451, metadata !DIExpression()), !dbg !4459
  call void @llvm.dbg.value(metadata ptr %1, metadata !4452, metadata !DIExpression()), !dbg !4459
  call void @llvm.dbg.value(metadata ptr %2, metadata !4453, metadata !DIExpression()), !dbg !4459
  call void @llvm.dbg.value(metadata ptr %3, metadata !4454, metadata !DIExpression()), !dbg !4459
  call void @llvm.dbg.value(metadata ptr %4, metadata !4455, metadata !DIExpression()), !dbg !4459
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #38, !dbg !4460
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4457, metadata !DIExpression()), !dbg !4461
  call void @llvm.dbg.value(metadata i64 0, metadata !4456, metadata !DIExpression()), !dbg !4459
  %7 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %9 = load i32, ptr %4, align 8
  call void @llvm.dbg.value(metadata i64 0, metadata !4456, metadata !DIExpression()), !dbg !4459
  %10 = icmp ult i32 %9, 41, !dbg !4462
  br i1 %10, label %11, label %16, !dbg !4462

11:                                               ; preds = %5
  %12 = load ptr, ptr %8, align 8, !dbg !4462
  %13 = zext i32 %9 to i64, !dbg !4462
  %14 = getelementptr i8, ptr %12, i64 %13, !dbg !4462
  %15 = add nuw nsw i32 %9, 8, !dbg !4462
  store i32 %15, ptr %4, align 8, !dbg !4462
  br label %19, !dbg !4462

16:                                               ; preds = %5
  %17 = load ptr, ptr %7, align 8, !dbg !4462
  %18 = getelementptr i8, ptr %17, i64 8, !dbg !4462
  store ptr %18, ptr %7, align 8, !dbg !4462
  br label %19, !dbg !4462

19:                                               ; preds = %16, %11
  %20 = phi i32 [ %15, %11 ], [ %9, %16 ]
  %21 = phi ptr [ %14, %11 ], [ %17, %16 ], !dbg !4462
  %22 = load ptr, ptr %21, align 8, !dbg !4462
  store ptr %22, ptr %6, align 16, !dbg !4465, !tbaa !1098
  %23 = icmp eq ptr %22, null, !dbg !4466
  br i1 %23, label %128, label %24, !dbg !4467

24:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i64 1, metadata !4456, metadata !DIExpression()), !dbg !4459
  call void @llvm.dbg.value(metadata i64 1, metadata !4456, metadata !DIExpression()), !dbg !4459
  %25 = icmp ult i32 %20, 41, !dbg !4462
  br i1 %25, label %29, label %26, !dbg !4462

26:                                               ; preds = %24
  %27 = load ptr, ptr %7, align 8, !dbg !4462
  %28 = getelementptr i8, ptr %27, i64 8, !dbg !4462
  store ptr %28, ptr %7, align 8, !dbg !4462
  br label %34, !dbg !4462

29:                                               ; preds = %24
  %30 = load ptr, ptr %8, align 8, !dbg !4462
  %31 = zext i32 %20 to i64, !dbg !4462
  %32 = getelementptr i8, ptr %30, i64 %31, !dbg !4462
  %33 = add nuw nsw i32 %20, 8, !dbg !4462
  store i32 %33, ptr %4, align 8, !dbg !4462
  br label %34, !dbg !4462

34:                                               ; preds = %29, %26
  %35 = phi i32 [ %33, %29 ], [ %20, %26 ]
  %36 = phi ptr [ %32, %29 ], [ %27, %26 ], !dbg !4462
  %37 = load ptr, ptr %36, align 8, !dbg !4462
  %38 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !4468
  store ptr %37, ptr %38, align 8, !dbg !4465, !tbaa !1098
  %39 = icmp eq ptr %37, null, !dbg !4466
  br i1 %39, label %128, label %40, !dbg !4467

40:                                               ; preds = %34
  call void @llvm.dbg.value(metadata i64 2, metadata !4456, metadata !DIExpression()), !dbg !4459
  call void @llvm.dbg.value(metadata i64 2, metadata !4456, metadata !DIExpression()), !dbg !4459
  %41 = icmp ult i32 %35, 41, !dbg !4462
  br i1 %41, label %45, label %42, !dbg !4462

42:                                               ; preds = %40
  %43 = load ptr, ptr %7, align 8, !dbg !4462
  %44 = getelementptr i8, ptr %43, i64 8, !dbg !4462
  store ptr %44, ptr %7, align 8, !dbg !4462
  br label %50, !dbg !4462

45:                                               ; preds = %40
  %46 = load ptr, ptr %8, align 8, !dbg !4462
  %47 = zext i32 %35 to i64, !dbg !4462
  %48 = getelementptr i8, ptr %46, i64 %47, !dbg !4462
  %49 = add nuw nsw i32 %35, 8, !dbg !4462
  store i32 %49, ptr %4, align 8, !dbg !4462
  br label %50, !dbg !4462

50:                                               ; preds = %45, %42
  %51 = phi i32 [ %49, %45 ], [ %35, %42 ]
  %52 = phi ptr [ %48, %45 ], [ %43, %42 ], !dbg !4462
  %53 = load ptr, ptr %52, align 8, !dbg !4462
  %54 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !4468
  store ptr %53, ptr %54, align 16, !dbg !4465, !tbaa !1098
  %55 = icmp eq ptr %53, null, !dbg !4466
  br i1 %55, label %128, label %56, !dbg !4467

56:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i64 3, metadata !4456, metadata !DIExpression()), !dbg !4459
  call void @llvm.dbg.value(metadata i64 3, metadata !4456, metadata !DIExpression()), !dbg !4459
  %57 = icmp ult i32 %51, 41, !dbg !4462
  br i1 %57, label %61, label %58, !dbg !4462

58:                                               ; preds = %56
  %59 = load ptr, ptr %7, align 8, !dbg !4462
  %60 = getelementptr i8, ptr %59, i64 8, !dbg !4462
  store ptr %60, ptr %7, align 8, !dbg !4462
  br label %66, !dbg !4462

61:                                               ; preds = %56
  %62 = load ptr, ptr %8, align 8, !dbg !4462
  %63 = zext i32 %51 to i64, !dbg !4462
  %64 = getelementptr i8, ptr %62, i64 %63, !dbg !4462
  %65 = add nuw nsw i32 %51, 8, !dbg !4462
  store i32 %65, ptr %4, align 8, !dbg !4462
  br label %66, !dbg !4462

66:                                               ; preds = %61, %58
  %67 = phi i32 [ %65, %61 ], [ %51, %58 ]
  %68 = phi ptr [ %64, %61 ], [ %59, %58 ], !dbg !4462
  %69 = load ptr, ptr %68, align 8, !dbg !4462
  %70 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !4468
  store ptr %69, ptr %70, align 8, !dbg !4465, !tbaa !1098
  %71 = icmp eq ptr %69, null, !dbg !4466
  br i1 %71, label %128, label %72, !dbg !4467

72:                                               ; preds = %66
  call void @llvm.dbg.value(metadata i64 4, metadata !4456, metadata !DIExpression()), !dbg !4459
  call void @llvm.dbg.value(metadata i64 4, metadata !4456, metadata !DIExpression()), !dbg !4459
  %73 = icmp ult i32 %67, 41, !dbg !4462
  br i1 %73, label %77, label %74, !dbg !4462

74:                                               ; preds = %72
  %75 = load ptr, ptr %7, align 8, !dbg !4462
  %76 = getelementptr i8, ptr %75, i64 8, !dbg !4462
  store ptr %76, ptr %7, align 8, !dbg !4462
  br label %82, !dbg !4462

77:                                               ; preds = %72
  %78 = load ptr, ptr %8, align 8, !dbg !4462
  %79 = zext i32 %67 to i64, !dbg !4462
  %80 = getelementptr i8, ptr %78, i64 %79, !dbg !4462
  %81 = add nuw nsw i32 %67, 8, !dbg !4462
  store i32 %81, ptr %4, align 8, !dbg !4462
  br label %82, !dbg !4462

82:                                               ; preds = %77, %74
  %83 = phi i32 [ %81, %77 ], [ %67, %74 ]
  %84 = phi ptr [ %80, %77 ], [ %75, %74 ], !dbg !4462
  %85 = load ptr, ptr %84, align 8, !dbg !4462
  %86 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !4468
  store ptr %85, ptr %86, align 16, !dbg !4465, !tbaa !1098
  %87 = icmp eq ptr %85, null, !dbg !4466
  br i1 %87, label %128, label %88, !dbg !4467

88:                                               ; preds = %82
  call void @llvm.dbg.value(metadata i64 5, metadata !4456, metadata !DIExpression()), !dbg !4459
  call void @llvm.dbg.value(metadata i64 5, metadata !4456, metadata !DIExpression()), !dbg !4459
  %89 = icmp ult i32 %83, 41, !dbg !4462
  br i1 %89, label %93, label %90, !dbg !4462

90:                                               ; preds = %88
  %91 = load ptr, ptr %7, align 8, !dbg !4462
  %92 = getelementptr i8, ptr %91, i64 8, !dbg !4462
  store ptr %92, ptr %7, align 8, !dbg !4462
  br label %98, !dbg !4462

93:                                               ; preds = %88
  %94 = load ptr, ptr %8, align 8, !dbg !4462
  %95 = zext i32 %83 to i64, !dbg !4462
  %96 = getelementptr i8, ptr %94, i64 %95, !dbg !4462
  %97 = add nuw nsw i32 %83, 8, !dbg !4462
  store i32 %97, ptr %4, align 8, !dbg !4462
  br label %98, !dbg !4462

98:                                               ; preds = %93, %90
  %99 = phi ptr [ %96, %93 ], [ %91, %90 ], !dbg !4462
  %100 = load ptr, ptr %99, align 8, !dbg !4462
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !4468
  store ptr %100, ptr %101, align 8, !dbg !4465, !tbaa !1098
  %102 = icmp eq ptr %100, null, !dbg !4466
  br i1 %102, label %128, label %103, !dbg !4467

103:                                              ; preds = %98
  call void @llvm.dbg.value(metadata i64 6, metadata !4456, metadata !DIExpression()), !dbg !4459
  %104 = load ptr, ptr %7, align 8, !dbg !4462
  %105 = getelementptr i8, ptr %104, i64 8, !dbg !4462
  store ptr %105, ptr %7, align 8, !dbg !4462
  %106 = load ptr, ptr %104, align 8, !dbg !4462
  %107 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !4468
  store ptr %106, ptr %107, align 16, !dbg !4465, !tbaa !1098
  %108 = icmp eq ptr %106, null, !dbg !4466
  br i1 %108, label %128, label %109, !dbg !4467

109:                                              ; preds = %103
  call void @llvm.dbg.value(metadata i64 7, metadata !4456, metadata !DIExpression()), !dbg !4459
  %110 = load ptr, ptr %7, align 8, !dbg !4462
  %111 = getelementptr i8, ptr %110, i64 8, !dbg !4462
  store ptr %111, ptr %7, align 8, !dbg !4462
  %112 = load ptr, ptr %110, align 8, !dbg !4462
  %113 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !4468
  store ptr %112, ptr %113, align 8, !dbg !4465, !tbaa !1098
  %114 = icmp eq ptr %112, null, !dbg !4466
  br i1 %114, label %128, label %115, !dbg !4467

115:                                              ; preds = %109
  call void @llvm.dbg.value(metadata i64 8, metadata !4456, metadata !DIExpression()), !dbg !4459
  %116 = load ptr, ptr %7, align 8, !dbg !4462
  %117 = getelementptr i8, ptr %116, i64 8, !dbg !4462
  store ptr %117, ptr %7, align 8, !dbg !4462
  %118 = load ptr, ptr %116, align 8, !dbg !4462
  %119 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !4468
  store ptr %118, ptr %119, align 16, !dbg !4465, !tbaa !1098
  %120 = icmp eq ptr %118, null, !dbg !4466
  br i1 %120, label %128, label %121, !dbg !4467

121:                                              ; preds = %115
  call void @llvm.dbg.value(metadata i64 9, metadata !4456, metadata !DIExpression()), !dbg !4459
  %122 = load ptr, ptr %7, align 8, !dbg !4462
  %123 = getelementptr i8, ptr %122, i64 8, !dbg !4462
  store ptr %123, ptr %7, align 8, !dbg !4462
  %124 = load ptr, ptr %122, align 8, !dbg !4462
  %125 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !4468
  store ptr %124, ptr %125, align 8, !dbg !4465, !tbaa !1098
  %126 = icmp eq ptr %124, null, !dbg !4466
  %127 = select i1 %126, i64 9, i64 10, !dbg !4467
  br label %128, !dbg !4467

128:                                              ; preds = %121, %115, %109, %103, %98, %82, %66, %50, %34, %19
  %129 = phi i64 [ 0, %19 ], [ 1, %34 ], [ 2, %50 ], [ 3, %66 ], [ 4, %82 ], [ 5, %98 ], [ 6, %103 ], [ 7, %109 ], [ 8, %115 ], [ %127, %121 ], !dbg !4469
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %129), !dbg !4470
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #38, !dbg !4471
  ret void, !dbg !4471
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !4472 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !4476, metadata !DIExpression()), !dbg !4485
  call void @llvm.dbg.value(metadata ptr %1, metadata !4477, metadata !DIExpression()), !dbg !4485
  call void @llvm.dbg.value(metadata ptr %2, metadata !4478, metadata !DIExpression()), !dbg !4485
  call void @llvm.dbg.value(metadata ptr %3, metadata !4479, metadata !DIExpression()), !dbg !4485
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #38, !dbg !4486
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4480, metadata !DIExpression()), !dbg !4487
  call void @llvm.va_start(ptr nonnull %5), !dbg !4488
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5), !dbg !4489
  call void @llvm.va_end(ptr nonnull %5), !dbg !4490
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #38, !dbg !4491
  ret void, !dbg !4491
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !4492 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !4493, !tbaa !1098
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.190, ptr noundef %1), !dbg !4493
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.188, ptr noundef nonnull @.str.17.207, i32 noundef 5) #38, !dbg !4494
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.208) #38, !dbg !4494
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.188, ptr noundef nonnull @.str.19.209, i32 noundef 5) #38, !dbg !4495
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.210, ptr noundef nonnull @.str.21.211) #38, !dbg !4495
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.188, ptr noundef nonnull @.str.22.212, i32 noundef 5) #38, !dbg !4496
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.213) #38, !dbg !4496
  ret void, !dbg !4497
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #29 !dbg !4498 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4503, metadata !DIExpression()), !dbg !4506
  call void @llvm.dbg.value(metadata i64 %1, metadata !4504, metadata !DIExpression()), !dbg !4506
  call void @llvm.dbg.value(metadata i64 %2, metadata !4505, metadata !DIExpression()), !dbg !4506
  call void @llvm.dbg.value(metadata ptr %0, metadata !4507, metadata !DIExpression()), !dbg !4512
  call void @llvm.dbg.value(metadata i64 %1, metadata !4510, metadata !DIExpression()), !dbg !4512
  call void @llvm.dbg.value(metadata i64 %2, metadata !4511, metadata !DIExpression()), !dbg !4512
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #38, !dbg !4514
  call void @llvm.dbg.value(metadata ptr %4, metadata !4515, metadata !DIExpression()), !dbg !4520
  %5 = icmp eq ptr %4, null, !dbg !4522
  br i1 %5, label %6, label %7, !dbg !4524

6:                                                ; preds = %3
  tail call void @xalloc_die() #40, !dbg !4525
  unreachable, !dbg !4525

7:                                                ; preds = %3
  ret ptr %4, !dbg !4526
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #30 !dbg !4508 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4507, metadata !DIExpression()), !dbg !4527
  call void @llvm.dbg.value(metadata i64 %1, metadata !4510, metadata !DIExpression()), !dbg !4527
  call void @llvm.dbg.value(metadata i64 %2, metadata !4511, metadata !DIExpression()), !dbg !4527
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #38, !dbg !4528
  call void @llvm.dbg.value(metadata ptr %4, metadata !4515, metadata !DIExpression()), !dbg !4529
  %5 = icmp eq ptr %4, null, !dbg !4531
  br i1 %5, label %6, label %7, !dbg !4532

6:                                                ; preds = %3
  tail call void @xalloc_die() #40, !dbg !4533
  unreachable, !dbg !4533

7:                                                ; preds = %3
  ret ptr %4, !dbg !4534
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !4535 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4537, metadata !DIExpression()), !dbg !4538
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #45, !dbg !4539
  call void @llvm.dbg.value(metadata ptr %2, metadata !4515, metadata !DIExpression()), !dbg !4540
  %3 = icmp eq ptr %2, null, !dbg !4542
  br i1 %3, label %4, label %5, !dbg !4543

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !4544
  unreachable, !dbg !4544

5:                                                ; preds = %1
  ret ptr %2, !dbg !4545
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !4546 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4550, metadata !DIExpression()), !dbg !4551
  call void @llvm.dbg.value(metadata i64 %0, metadata !4552, metadata !DIExpression()), !dbg !4556
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #45, !dbg !4558
  call void @llvm.dbg.value(metadata ptr %2, metadata !4515, metadata !DIExpression()), !dbg !4559
  %3 = icmp eq ptr %2, null, !dbg !4561
  br i1 %3, label %4, label %5, !dbg !4562

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !4563
  unreachable, !dbg !4563

5:                                                ; preds = %1
  ret ptr %2, !dbg !4564
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !4565 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4569, metadata !DIExpression()), !dbg !4570
  call void @llvm.dbg.value(metadata i64 %0, metadata !4537, metadata !DIExpression()), !dbg !4571
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #45, !dbg !4573
  call void @llvm.dbg.value(metadata ptr %2, metadata !4515, metadata !DIExpression()), !dbg !4574
  %3 = icmp eq ptr %2, null, !dbg !4576
  br i1 %3, label %4, label %5, !dbg !4577

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !4578
  unreachable, !dbg !4578

5:                                                ; preds = %1
  ret ptr %2, !dbg !4579
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !4580 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4582, metadata !DIExpression()), !dbg !4584
  call void @llvm.dbg.value(metadata i64 %1, metadata !4583, metadata !DIExpression()), !dbg !4584
  call void @llvm.dbg.value(metadata ptr %0, metadata !4585, metadata !DIExpression()), !dbg !4590
  call void @llvm.dbg.value(metadata i64 %1, metadata !4589, metadata !DIExpression()), !dbg !4590
  %3 = icmp eq i64 %1, 0, !dbg !4592
  %4 = select i1 %3, i64 1, i64 %1, !dbg !4592
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #44, !dbg !4593
  call void @llvm.dbg.value(metadata ptr %5, metadata !4515, metadata !DIExpression()), !dbg !4594
  %6 = icmp eq ptr %5, null, !dbg !4596
  br i1 %6, label %7, label %8, !dbg !4597

7:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4598
  unreachable, !dbg !4598

8:                                                ; preds = %2
  ret ptr %5, !dbg !4599
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !4600 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !4601 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4605, metadata !DIExpression()), !dbg !4607
  call void @llvm.dbg.value(metadata i64 %1, metadata !4606, metadata !DIExpression()), !dbg !4607
  call void @llvm.dbg.value(metadata ptr %0, metadata !4608, metadata !DIExpression()), !dbg !4612
  call void @llvm.dbg.value(metadata i64 %1, metadata !4611, metadata !DIExpression()), !dbg !4612
  call void @llvm.dbg.value(metadata ptr %0, metadata !4585, metadata !DIExpression()), !dbg !4614
  call void @llvm.dbg.value(metadata i64 %1, metadata !4589, metadata !DIExpression()), !dbg !4614
  %3 = icmp eq i64 %1, 0, !dbg !4616
  %4 = select i1 %3, i64 1, i64 %1, !dbg !4616
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #44, !dbg !4617
  call void @llvm.dbg.value(metadata ptr %5, metadata !4515, metadata !DIExpression()), !dbg !4618
  %6 = icmp eq ptr %5, null, !dbg !4620
  br i1 %6, label %7, label %8, !dbg !4621

7:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4622
  unreachable, !dbg !4622

8:                                                ; preds = %2
  ret ptr %5, !dbg !4623
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #30 !dbg !4624 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4628, metadata !DIExpression()), !dbg !4631
  call void @llvm.dbg.value(metadata i64 %1, metadata !4629, metadata !DIExpression()), !dbg !4631
  call void @llvm.dbg.value(metadata i64 %2, metadata !4630, metadata !DIExpression()), !dbg !4631
  call void @llvm.dbg.value(metadata ptr %0, metadata !4632, metadata !DIExpression()), !dbg !4637
  call void @llvm.dbg.value(metadata i64 %1, metadata !4635, metadata !DIExpression()), !dbg !4637
  call void @llvm.dbg.value(metadata i64 %2, metadata !4636, metadata !DIExpression()), !dbg !4637
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #38, !dbg !4639
  call void @llvm.dbg.value(metadata ptr %4, metadata !4515, metadata !DIExpression()), !dbg !4640
  %5 = icmp eq ptr %4, null, !dbg !4642
  br i1 %5, label %6, label %7, !dbg !4643

6:                                                ; preds = %3
  tail call void @xalloc_die() #40, !dbg !4644
  unreachable, !dbg !4644

7:                                                ; preds = %3
  ret ptr %4, !dbg !4645
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4646 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4650, metadata !DIExpression()), !dbg !4652
  call void @llvm.dbg.value(metadata i64 %1, metadata !4651, metadata !DIExpression()), !dbg !4652
  call void @llvm.dbg.value(metadata ptr null, metadata !4507, metadata !DIExpression()), !dbg !4653
  call void @llvm.dbg.value(metadata i64 %0, metadata !4510, metadata !DIExpression()), !dbg !4653
  call void @llvm.dbg.value(metadata i64 %1, metadata !4511, metadata !DIExpression()), !dbg !4653
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #38, !dbg !4655
  call void @llvm.dbg.value(metadata ptr %3, metadata !4515, metadata !DIExpression()), !dbg !4656
  %4 = icmp eq ptr %3, null, !dbg !4658
  br i1 %4, label %5, label %6, !dbg !4659

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4660
  unreachable, !dbg !4660

6:                                                ; preds = %2
  ret ptr %3, !dbg !4661
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4662 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4666, metadata !DIExpression()), !dbg !4668
  call void @llvm.dbg.value(metadata i64 %1, metadata !4667, metadata !DIExpression()), !dbg !4668
  call void @llvm.dbg.value(metadata ptr null, metadata !4628, metadata !DIExpression()), !dbg !4669
  call void @llvm.dbg.value(metadata i64 %0, metadata !4629, metadata !DIExpression()), !dbg !4669
  call void @llvm.dbg.value(metadata i64 %1, metadata !4630, metadata !DIExpression()), !dbg !4669
  call void @llvm.dbg.value(metadata ptr null, metadata !4632, metadata !DIExpression()), !dbg !4671
  call void @llvm.dbg.value(metadata i64 %0, metadata !4635, metadata !DIExpression()), !dbg !4671
  call void @llvm.dbg.value(metadata i64 %1, metadata !4636, metadata !DIExpression()), !dbg !4671
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #38, !dbg !4673
  call void @llvm.dbg.value(metadata ptr %3, metadata !4515, metadata !DIExpression()), !dbg !4674
  %4 = icmp eq ptr %3, null, !dbg !4676
  br i1 %4, label %5, label %6, !dbg !4677

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4678
  unreachable, !dbg !4678

6:                                                ; preds = %2
  ret ptr %3, !dbg !4679
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !4680 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4684, metadata !DIExpression()), !dbg !4686
  call void @llvm.dbg.value(metadata ptr %1, metadata !4685, metadata !DIExpression()), !dbg !4686
  call void @llvm.dbg.value(metadata ptr %0, metadata !1043, metadata !DIExpression()), !dbg !4687
  call void @llvm.dbg.value(metadata ptr %1, metadata !1044, metadata !DIExpression()), !dbg !4687
  call void @llvm.dbg.value(metadata i64 1, metadata !1045, metadata !DIExpression()), !dbg !4687
  %3 = load i64, ptr %1, align 8, !dbg !4689, !tbaa !1516
  call void @llvm.dbg.value(metadata i64 %3, metadata !1046, metadata !DIExpression()), !dbg !4687
  %4 = icmp eq ptr %0, null, !dbg !4690
  br i1 %4, label %5, label %8, !dbg !4692

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4693
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4696
  br label %15, !dbg !4696

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !4697
  %10 = add nuw i64 %9, 1, !dbg !4697
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !4697
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !4697
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !4697
  call void @llvm.dbg.value(metadata i64 %13, metadata !1046, metadata !DIExpression()), !dbg !4687
  br i1 %12, label %14, label %15, !dbg !4700

14:                                               ; preds = %8
  tail call void @xalloc_die() #40, !dbg !4701
  unreachable, !dbg !4701

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !4687
  call void @llvm.dbg.value(metadata i64 %16, metadata !1046, metadata !DIExpression()), !dbg !4687
  call void @llvm.dbg.value(metadata ptr %0, metadata !4507, metadata !DIExpression()), !dbg !4702
  call void @llvm.dbg.value(metadata i64 %16, metadata !4510, metadata !DIExpression()), !dbg !4702
  call void @llvm.dbg.value(metadata i64 1, metadata !4511, metadata !DIExpression()), !dbg !4702
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #38, !dbg !4704
  call void @llvm.dbg.value(metadata ptr %17, metadata !4515, metadata !DIExpression()), !dbg !4705
  %18 = icmp eq ptr %17, null, !dbg !4707
  br i1 %18, label %19, label %20, !dbg !4708

19:                                               ; preds = %15
  tail call void @xalloc_die() #40, !dbg !4709
  unreachable, !dbg !4709

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !1043, metadata !DIExpression()), !dbg !4687
  store i64 %16, ptr %1, align 8, !dbg !4710, !tbaa !1516
  ret ptr %17, !dbg !4711
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !1038 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1043, metadata !DIExpression()), !dbg !4712
  call void @llvm.dbg.value(metadata ptr %1, metadata !1044, metadata !DIExpression()), !dbg !4712
  call void @llvm.dbg.value(metadata i64 %2, metadata !1045, metadata !DIExpression()), !dbg !4712
  %4 = load i64, ptr %1, align 8, !dbg !4713, !tbaa !1516
  call void @llvm.dbg.value(metadata i64 %4, metadata !1046, metadata !DIExpression()), !dbg !4712
  %5 = icmp eq ptr %0, null, !dbg !4714
  br i1 %5, label %6, label %13, !dbg !4715

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4716
  br i1 %7, label %8, label %20, !dbg !4717

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4718
  call void @llvm.dbg.value(metadata i64 %9, metadata !1046, metadata !DIExpression()), !dbg !4712
  %10 = icmp ugt i64 %2, 128, !dbg !4720
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !4721
  call void @llvm.dbg.value(metadata i64 %12, metadata !1046, metadata !DIExpression()), !dbg !4712
  br label %20, !dbg !4722

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !4723
  %15 = add nuw i64 %14, 1, !dbg !4723
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !4723
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !4723
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !4723
  call void @llvm.dbg.value(metadata i64 %18, metadata !1046, metadata !DIExpression()), !dbg !4712
  br i1 %17, label %19, label %20, !dbg !4724

19:                                               ; preds = %13
  tail call void @xalloc_die() #40, !dbg !4725
  unreachable, !dbg !4725

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !4712
  call void @llvm.dbg.value(metadata i64 %21, metadata !1046, metadata !DIExpression()), !dbg !4712
  call void @llvm.dbg.value(metadata ptr %0, metadata !4507, metadata !DIExpression()), !dbg !4726
  call void @llvm.dbg.value(metadata i64 %21, metadata !4510, metadata !DIExpression()), !dbg !4726
  call void @llvm.dbg.value(metadata i64 %2, metadata !4511, metadata !DIExpression()), !dbg !4726
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #38, !dbg !4728
  call void @llvm.dbg.value(metadata ptr %22, metadata !4515, metadata !DIExpression()), !dbg !4729
  %23 = icmp eq ptr %22, null, !dbg !4731
  br i1 %23, label %24, label %25, !dbg !4732

24:                                               ; preds = %20
  tail call void @xalloc_die() #40, !dbg !4733
  unreachable, !dbg !4733

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata ptr %22, metadata !1043, metadata !DIExpression()), !dbg !4712
  store i64 %21, ptr %1, align 8, !dbg !4734, !tbaa !1516
  ret ptr %22, !dbg !4735
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !1050 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1055, metadata !DIExpression()), !dbg !4736
  call void @llvm.dbg.value(metadata ptr %1, metadata !1056, metadata !DIExpression()), !dbg !4736
  call void @llvm.dbg.value(metadata i64 %2, metadata !1057, metadata !DIExpression()), !dbg !4736
  call void @llvm.dbg.value(metadata i64 %3, metadata !1058, metadata !DIExpression()), !dbg !4736
  call void @llvm.dbg.value(metadata i64 %4, metadata !1059, metadata !DIExpression()), !dbg !4736
  %6 = load i64, ptr %1, align 8, !dbg !4737, !tbaa !1516
  call void @llvm.dbg.value(metadata i64 %6, metadata !1060, metadata !DIExpression()), !dbg !4736
  %7 = ashr i64 %6, 1, !dbg !4738
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !4738
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !4738
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !4738
  call void @llvm.dbg.value(metadata i64 %10, metadata !1061, metadata !DIExpression()), !dbg !4736
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !4740
  call void @llvm.dbg.value(metadata i64 %11, metadata !1061, metadata !DIExpression()), !dbg !4736
  %12 = icmp sgt i64 %3, -1, !dbg !4741
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !4743
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !4743
  call void @llvm.dbg.value(metadata i64 %15, metadata !1061, metadata !DIExpression()), !dbg !4736
  %16 = icmp slt i64 %4, 0, !dbg !4744
  br i1 %16, label %17, label %30, !dbg !4744

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !4744
  br i1 %18, label %19, label %24, !dbg !4744

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !4744
  %21 = udiv i64 9223372036854775807, %20, !dbg !4744
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !4744
  br i1 %23, label %46, label %43, !dbg !4744

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !4744
  br i1 %25, label %43, label %26, !dbg !4744

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !4744
  %28 = udiv i64 -9223372036854775808, %27, !dbg !4744
  %29 = icmp ult i64 %28, %15, !dbg !4744
  br i1 %29, label %46, label %43, !dbg !4744

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !4744
  br i1 %31, label %43, label %32, !dbg !4744

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !4744
  br i1 %33, label %34, label %40, !dbg !4744

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !4744
  br i1 %35, label %43, label %36, !dbg !4744

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !4744
  %38 = udiv i64 -9223372036854775808, %37, !dbg !4744
  %39 = icmp ult i64 %38, %4, !dbg !4744
  br i1 %39, label %46, label %43, !dbg !4744

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4
  %42 = icmp ult i64 %41, %15, !dbg !4744
  br i1 %42, label %46, label %43, !dbg !4744

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !1062, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4736
  %44 = mul i64 %15, %4, !dbg !4744
  call void @llvm.dbg.value(metadata i64 %44, metadata !1062, metadata !DIExpression()), !dbg !4736
  %45 = icmp slt i64 %44, 128, !dbg !4744
  br i1 %45, label %46, label %51, !dbg !4744

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !1063, metadata !DIExpression()), !dbg !4736
  %48 = sdiv i64 %47, %4, !dbg !4745
  call void @llvm.dbg.value(metadata i64 %48, metadata !1061, metadata !DIExpression()), !dbg !4736
  %49 = srem i64 %47, %4, !dbg !4748
  %50 = sub nsw i64 %47, %49, !dbg !4749
  call void @llvm.dbg.value(metadata i64 %50, metadata !1062, metadata !DIExpression()), !dbg !4736
  br label %51, !dbg !4750

51:                                               ; preds = %43, %46
  %52 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !4736
  %53 = phi i64 [ %50, %46 ], [ %44, %43 ], !dbg !4736
  call void @llvm.dbg.value(metadata i64 %53, metadata !1062, metadata !DIExpression()), !dbg !4736
  call void @llvm.dbg.value(metadata i64 %52, metadata !1061, metadata !DIExpression()), !dbg !4736
  %54 = icmp eq ptr %0, null, !dbg !4751
  br i1 %54, label %55, label %56, !dbg !4753

55:                                               ; preds = %51
  store i64 0, ptr %1, align 8, !dbg !4754, !tbaa !1516
  br label %56, !dbg !4755

56:                                               ; preds = %55, %51
  %57 = sub nsw i64 %52, %6, !dbg !4756
  %58 = icmp slt i64 %57, %2, !dbg !4758
  br i1 %58, label %59, label %96, !dbg !4759

59:                                               ; preds = %56
  %60 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !4760
  %61 = extractvalue { i64, i1 } %60, 1, !dbg !4760
  %62 = extractvalue { i64, i1 } %60, 0, !dbg !4760
  call void @llvm.dbg.value(metadata i64 %62, metadata !1061, metadata !DIExpression()), !dbg !4736
  %63 = icmp sgt i64 %62, %3
  %64 = select i1 %12, i1 %63, i1 false
  %65 = or i1 %61, %64, !dbg !4761
  br i1 %65, label %95, label %66, !dbg !4761

66:                                               ; preds = %59
  br i1 %16, label %67, label %80, !dbg !4762

67:                                               ; preds = %66
  %68 = icmp slt i64 %62, 0, !dbg !4762
  br i1 %68, label %69, label %74, !dbg !4762

69:                                               ; preds = %67
  %70 = sub i64 0, %4, !dbg !4762
  %71 = udiv i64 9223372036854775807, %70, !dbg !4762
  %72 = sub nsw i64 0, %71
  %73 = icmp slt i64 %62, %72, !dbg !4762
  br i1 %73, label %95, label %93, !dbg !4762

74:                                               ; preds = %67
  %75 = icmp eq i64 %4, -1, !dbg !4762
  br i1 %75, label %93, label %76, !dbg !4762

76:                                               ; preds = %74
  %77 = sub i64 0, %4, !dbg !4762
  %78 = udiv i64 -9223372036854775808, %77, !dbg !4762
  %79 = icmp ult i64 %78, %62, !dbg !4762
  br i1 %79, label %95, label %93, !dbg !4762

80:                                               ; preds = %66
  %81 = icmp eq i64 %4, 0, !dbg !4762
  br i1 %81, label %93, label %82, !dbg !4762

82:                                               ; preds = %80
  %83 = icmp slt i64 %62, 0, !dbg !4762
  br i1 %83, label %84, label %90, !dbg !4762

84:                                               ; preds = %82
  %85 = icmp eq i64 %62, -1, !dbg !4762
  br i1 %85, label %93, label %86, !dbg !4762

86:                                               ; preds = %84
  %87 = sub i64 0, %62, !dbg !4762
  %88 = udiv i64 -9223372036854775808, %87, !dbg !4762
  %89 = icmp ult i64 %88, %4, !dbg !4762
  br i1 %89, label %95, label %93, !dbg !4762

90:                                               ; preds = %82
  %91 = udiv i64 9223372036854775807, %4
  %92 = icmp ult i64 %91, %62, !dbg !4762
  br i1 %92, label %95, label %93, !dbg !4762

93:                                               ; preds = %69, %76, %86, %90, %80, %74, %84
  call void @llvm.dbg.value(metadata !DIArgList(i64 %62, i64 %4), metadata !1062, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4736
  %94 = mul i64 %62, %4, !dbg !4762
  call void @llvm.dbg.value(metadata i64 %94, metadata !1062, metadata !DIExpression()), !dbg !4736
  br label %96, !dbg !4763

95:                                               ; preds = %69, %76, %86, %90, %59
  tail call void @xalloc_die() #40, !dbg !4764
  unreachable, !dbg !4764

96:                                               ; preds = %93, %56
  %97 = phi i64 [ %62, %93 ], [ %52, %56 ], !dbg !4736
  %98 = phi i64 [ %94, %93 ], [ %53, %56 ], !dbg !4736
  call void @llvm.dbg.value(metadata i64 %98, metadata !1062, metadata !DIExpression()), !dbg !4736
  call void @llvm.dbg.value(metadata i64 %97, metadata !1061, metadata !DIExpression()), !dbg !4736
  call void @llvm.dbg.value(metadata ptr %0, metadata !4582, metadata !DIExpression()), !dbg !4765
  call void @llvm.dbg.value(metadata i64 %98, metadata !4583, metadata !DIExpression()), !dbg !4765
  call void @llvm.dbg.value(metadata ptr %0, metadata !4585, metadata !DIExpression()), !dbg !4767
  call void @llvm.dbg.value(metadata i64 %98, metadata !4589, metadata !DIExpression()), !dbg !4767
  %99 = icmp eq i64 %98, 0, !dbg !4769
  %100 = select i1 %99, i64 1, i64 %98, !dbg !4769
  %101 = tail call ptr @realloc(ptr noundef %0, i64 noundef %100) #44, !dbg !4770
  call void @llvm.dbg.value(metadata ptr %101, metadata !4515, metadata !DIExpression()), !dbg !4771
  %102 = icmp eq ptr %101, null, !dbg !4773
  br i1 %102, label %103, label %104, !dbg !4774

103:                                              ; preds = %96
  tail call void @xalloc_die() #40, !dbg !4775
  unreachable, !dbg !4775

104:                                              ; preds = %96
  call void @llvm.dbg.value(metadata ptr %101, metadata !1055, metadata !DIExpression()), !dbg !4736
  store i64 %97, ptr %1, align 8, !dbg !4776, !tbaa !1516
  ret ptr %101, !dbg !4777
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !4778 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4780, metadata !DIExpression()), !dbg !4781
  call void @llvm.dbg.value(metadata i64 %0, metadata !4782, metadata !DIExpression()), !dbg !4786
  call void @llvm.dbg.value(metadata i64 1, metadata !4785, metadata !DIExpression()), !dbg !4786
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #46, !dbg !4788
  call void @llvm.dbg.value(metadata ptr %2, metadata !4515, metadata !DIExpression()), !dbg !4789
  %3 = icmp eq ptr %2, null, !dbg !4791
  br i1 %3, label %4, label %5, !dbg !4792

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !4793
  unreachable, !dbg !4793

5:                                                ; preds = %1
  ret ptr %2, !dbg !4794
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !4795 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #35

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4783 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4782, metadata !DIExpression()), !dbg !4796
  call void @llvm.dbg.value(metadata i64 %1, metadata !4785, metadata !DIExpression()), !dbg !4796
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #46, !dbg !4797
  call void @llvm.dbg.value(metadata ptr %3, metadata !4515, metadata !DIExpression()), !dbg !4798
  %4 = icmp eq ptr %3, null, !dbg !4800
  br i1 %4, label %5, label %6, !dbg !4801

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4802
  unreachable, !dbg !4802

6:                                                ; preds = %2
  ret ptr %3, !dbg !4803
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !4804 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4806, metadata !DIExpression()), !dbg !4807
  call void @llvm.dbg.value(metadata i64 %0, metadata !4808, metadata !DIExpression()), !dbg !4812
  call void @llvm.dbg.value(metadata i64 1, metadata !4811, metadata !DIExpression()), !dbg !4812
  call void @llvm.dbg.value(metadata i64 %0, metadata !4814, metadata !DIExpression()), !dbg !4818
  call void @llvm.dbg.value(metadata i64 1, metadata !4817, metadata !DIExpression()), !dbg !4818
  call void @llvm.dbg.value(metadata i64 %0, metadata !4814, metadata !DIExpression()), !dbg !4818
  call void @llvm.dbg.value(metadata i64 1, metadata !4817, metadata !DIExpression()), !dbg !4818
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #46, !dbg !4820
  call void @llvm.dbg.value(metadata ptr %2, metadata !4515, metadata !DIExpression()), !dbg !4821
  %3 = icmp eq ptr %2, null, !dbg !4823
  br i1 %3, label %4, label %5, !dbg !4824

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !4825
  unreachable, !dbg !4825

5:                                                ; preds = %1
  ret ptr %2, !dbg !4826
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4809 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4808, metadata !DIExpression()), !dbg !4827
  call void @llvm.dbg.value(metadata i64 %1, metadata !4811, metadata !DIExpression()), !dbg !4827
  call void @llvm.dbg.value(metadata i64 %0, metadata !4814, metadata !DIExpression()), !dbg !4828
  call void @llvm.dbg.value(metadata i64 %1, metadata !4817, metadata !DIExpression()), !dbg !4828
  call void @llvm.dbg.value(metadata i64 %0, metadata !4814, metadata !DIExpression()), !dbg !4828
  call void @llvm.dbg.value(metadata i64 %1, metadata !4817, metadata !DIExpression()), !dbg !4828
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #46, !dbg !4830
  call void @llvm.dbg.value(metadata ptr %3, metadata !4515, metadata !DIExpression()), !dbg !4831
  %4 = icmp eq ptr %3, null, !dbg !4833
  br i1 %4, label %5, label %6, !dbg !4834

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4835
  unreachable, !dbg !4835

6:                                                ; preds = %2
  ret ptr %3, !dbg !4836
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #32 !dbg !4837 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4841, metadata !DIExpression()), !dbg !4843
  call void @llvm.dbg.value(metadata i64 %1, metadata !4842, metadata !DIExpression()), !dbg !4843
  call void @llvm.dbg.value(metadata i64 %1, metadata !4537, metadata !DIExpression()), !dbg !4844
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #45, !dbg !4846
  call void @llvm.dbg.value(metadata ptr %3, metadata !4515, metadata !DIExpression()), !dbg !4847
  %4 = icmp eq ptr %3, null, !dbg !4849
  br i1 %4, label %5, label %6, !dbg !4850

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4851
  unreachable, !dbg !4851

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4852, metadata !DIExpression()), !dbg !4857
  call void @llvm.dbg.value(metadata ptr %0, metadata !4855, metadata !DIExpression()), !dbg !4857
  call void @llvm.dbg.value(metadata i64 %1, metadata !4856, metadata !DIExpression()), !dbg !4857
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #38, !dbg !4859
  ret ptr %3, !dbg !4860
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #32 !dbg !4861 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4865, metadata !DIExpression()), !dbg !4867
  call void @llvm.dbg.value(metadata i64 %1, metadata !4866, metadata !DIExpression()), !dbg !4867
  call void @llvm.dbg.value(metadata i64 %1, metadata !4550, metadata !DIExpression()), !dbg !4868
  call void @llvm.dbg.value(metadata i64 %1, metadata !4552, metadata !DIExpression()), !dbg !4870
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #45, !dbg !4872
  call void @llvm.dbg.value(metadata ptr %3, metadata !4515, metadata !DIExpression()), !dbg !4873
  %4 = icmp eq ptr %3, null, !dbg !4875
  br i1 %4, label %5, label %6, !dbg !4876

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4877
  unreachable, !dbg !4877

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4852, metadata !DIExpression()), !dbg !4878
  call void @llvm.dbg.value(metadata ptr %0, metadata !4855, metadata !DIExpression()), !dbg !4878
  call void @llvm.dbg.value(metadata i64 %1, metadata !4856, metadata !DIExpression()), !dbg !4878
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #38, !dbg !4880
  ret ptr %3, !dbg !4881
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4882 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4886, metadata !DIExpression()), !dbg !4889
  call void @llvm.dbg.value(metadata i64 %1, metadata !4887, metadata !DIExpression()), !dbg !4889
  %3 = add nsw i64 %1, 1, !dbg !4890
  call void @llvm.dbg.value(metadata i64 %3, metadata !4550, metadata !DIExpression()), !dbg !4891
  call void @llvm.dbg.value(metadata i64 %3, metadata !4552, metadata !DIExpression()), !dbg !4893
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #45, !dbg !4895
  call void @llvm.dbg.value(metadata ptr %4, metadata !4515, metadata !DIExpression()), !dbg !4896
  %5 = icmp eq ptr %4, null, !dbg !4898
  br i1 %5, label %6, label %7, !dbg !4899

6:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4900
  unreachable, !dbg !4900

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %4, metadata !4888, metadata !DIExpression()), !dbg !4889
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !4901
  store i8 0, ptr %8, align 1, !dbg !4902, !tbaa !1173
  call void @llvm.dbg.value(metadata ptr %4, metadata !4852, metadata !DIExpression()), !dbg !4903
  call void @llvm.dbg.value(metadata ptr %0, metadata !4855, metadata !DIExpression()), !dbg !4903
  call void @llvm.dbg.value(metadata i64 %1, metadata !4856, metadata !DIExpression()), !dbg !4903
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #38, !dbg !4905
  ret ptr %4, !dbg !4906
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !4907 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4909, metadata !DIExpression()), !dbg !4910
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #39, !dbg !4911
  %3 = add i64 %2, 1, !dbg !4912
  call void @llvm.dbg.value(metadata ptr %0, metadata !4841, metadata !DIExpression()), !dbg !4913
  call void @llvm.dbg.value(metadata i64 %3, metadata !4842, metadata !DIExpression()), !dbg !4913
  call void @llvm.dbg.value(metadata i64 %3, metadata !4537, metadata !DIExpression()), !dbg !4915
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #45, !dbg !4917
  call void @llvm.dbg.value(metadata ptr %4, metadata !4515, metadata !DIExpression()), !dbg !4918
  %5 = icmp eq ptr %4, null, !dbg !4920
  br i1 %5, label %6, label %7, !dbg !4921

6:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !4922
  unreachable, !dbg !4922

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !4852, metadata !DIExpression()), !dbg !4923
  call void @llvm.dbg.value(metadata ptr %0, metadata !4855, metadata !DIExpression()), !dbg !4923
  call void @llvm.dbg.value(metadata i64 %3, metadata !4856, metadata !DIExpression()), !dbg !4923
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #38, !dbg !4925
  ret ptr %4, !dbg !4926
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4927 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !4932, !tbaa !1164
  call void @llvm.dbg.value(metadata i32 %1, metadata !4929, metadata !DIExpression()), !dbg !4933
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.226, ptr noundef nonnull @.str.2.227, i32 noundef 5) #38, !dbg !4932
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.228, ptr noundef %2) #38, !dbg !4932
  %3 = icmp eq i32 %1, 0, !dbg !4932
  tail call void @llvm.assume(i1 %3), !dbg !4932
  tail call void @abort() #40, !dbg !4934
  unreachable, !dbg !4934
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #28

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !4935 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4973, metadata !DIExpression()), !dbg !4978
  %2 = tail call i64 @__fpending(ptr noundef %0) #38, !dbg !4979
  call void @llvm.dbg.value(metadata i1 poison, metadata !4974, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4978
  call void @llvm.dbg.value(metadata ptr %0, metadata !4980, metadata !DIExpression()), !dbg !4983
  %3 = load i32, ptr %0, align 8, !dbg !4985, !tbaa !1560
  %4 = and i32 %3, 32, !dbg !4986
  %5 = icmp eq i32 %4, 0, !dbg !4986
  call void @llvm.dbg.value(metadata i1 %5, metadata !4976, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4978
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #38, !dbg !4987
  %7 = icmp eq i32 %6, 0, !dbg !4988
  call void @llvm.dbg.value(metadata i1 %7, metadata !4977, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4978
  br i1 %5, label %8, label %18, !dbg !4989

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !4991
  call void @llvm.dbg.value(metadata i1 %9, metadata !4974, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4978
  %10 = select i1 %7, i1 true, i1 %9, !dbg !4992
  %11 = xor i1 %7, true, !dbg !4992
  %12 = sext i1 %11 to i32, !dbg !4992
  br i1 %10, label %21, label %13, !dbg !4992

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #41, !dbg !4993
  %15 = load i32, ptr %14, align 4, !dbg !4993, !tbaa !1164
  %16 = icmp ne i32 %15, 9, !dbg !4994
  %17 = sext i1 %16 to i32, !dbg !4995
  br label %21, !dbg !4995

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !4996

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #41, !dbg !4998
  store i32 0, ptr %20, align 4, !dbg !5000, !tbaa !1164
  br label %21, !dbg !4998

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !4978
  ret i32 %22, !dbg !5001
}

; Function Attrs: nounwind
declare !dbg !5002 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !5005 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !5010, metadata !DIExpression()), !dbg !5015
  call void @llvm.dbg.value(metadata ptr %1, metadata !5011, metadata !DIExpression()), !dbg !5015
  call void @llvm.dbg.value(metadata i64 %2, metadata !5012, metadata !DIExpression()), !dbg !5015
  call void @llvm.dbg.value(metadata ptr %3, metadata !5013, metadata !DIExpression()), !dbg !5015
  %5 = icmp eq ptr %1, null, !dbg !5016
  %6 = select i1 %5, ptr null, ptr %0, !dbg !5018
  %7 = select i1 %5, ptr @.str.233, ptr %1, !dbg !5018
  %8 = select i1 %5, i64 1, i64 %2, !dbg !5018
  call void @llvm.dbg.value(metadata i64 %8, metadata !5012, metadata !DIExpression()), !dbg !5015
  call void @llvm.dbg.value(metadata ptr %7, metadata !5011, metadata !DIExpression()), !dbg !5015
  call void @llvm.dbg.value(metadata ptr %6, metadata !5010, metadata !DIExpression()), !dbg !5015
  %9 = icmp eq ptr %3, null, !dbg !5019
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !5021
  call void @llvm.dbg.value(metadata ptr %10, metadata !5013, metadata !DIExpression()), !dbg !5015
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %10) #38, !dbg !5022
  call void @llvm.dbg.value(metadata i64 %11, metadata !5014, metadata !DIExpression()), !dbg !5015
  %12 = icmp ult i64 %11, -3, !dbg !5023
  br i1 %12, label %13, label %17, !dbg !5025

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef %10) #39, !dbg !5026
  %15 = icmp eq i32 %14, 0, !dbg !5026
  br i1 %15, label %16, label %29, !dbg !5027

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !5028, metadata !DIExpression()), !dbg !5033
  call void @llvm.dbg.value(metadata ptr %10, metadata !5035, metadata !DIExpression()), !dbg !5040
  call void @llvm.dbg.value(metadata i32 0, metadata !5038, metadata !DIExpression()), !dbg !5040
  call void @llvm.dbg.value(metadata i64 8, metadata !5039, metadata !DIExpression()), !dbg !5040
  store i64 0, ptr %10, align 1, !dbg !5042
  br label %29, !dbg !5043

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !5044
  br i1 %18, label %19, label %20, !dbg !5046

19:                                               ; preds = %17
  tail call void @abort() #40, !dbg !5047
  unreachable, !dbg !5047

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !5048

22:                                               ; preds = %20
  %23 = tail call zeroext i1 @hard_locale(i32 noundef 0) #38, !dbg !5050
  br i1 %23, label %29, label %24, !dbg !5051

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !5052
  br i1 %25, label %29, label %26, !dbg !5055

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !5056, !tbaa !1173
  %28 = zext i8 %27 to i32, !dbg !5057
  store i32 %28, ptr %6, align 4, !dbg !5058, !tbaa !1164
  br label %29, !dbg !5059

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !5015
  ret i64 %30, !dbg !5060
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !5061 i32 @mbsinit(ptr noundef) local_unnamed_addr #36

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #37 !dbg !5067 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !5069, metadata !DIExpression()), !dbg !5073
  call void @llvm.dbg.value(metadata i64 %1, metadata !5070, metadata !DIExpression()), !dbg !5073
  call void @llvm.dbg.value(metadata i64 %2, metadata !5071, metadata !DIExpression()), !dbg !5073
  %4 = icmp eq i64 %2, 0, !dbg !5074
  br i1 %4, label %8, label %5, !dbg !5074

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !5074
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !5074
  br i1 %7, label %13, label %8, !dbg !5074

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !5072, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !5073
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !5072, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !5073
  %9 = mul i64 %2, %1, !dbg !5074
  call void @llvm.dbg.value(metadata i64 %9, metadata !5072, metadata !DIExpression()), !dbg !5073
  call void @llvm.dbg.value(metadata ptr %0, metadata !5076, metadata !DIExpression()), !dbg !5080
  call void @llvm.dbg.value(metadata i64 %9, metadata !5079, metadata !DIExpression()), !dbg !5080
  %10 = icmp eq i64 %9, 0, !dbg !5082
  %11 = select i1 %10, i64 1, i64 %9, !dbg !5082
  %12 = tail call ptr @realloc(ptr noundef %0, i64 noundef %11) #44, !dbg !5083
  br label %15, !dbg !5084

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !5072, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !5073
  %14 = tail call ptr @__errno_location() #41, !dbg !5085
  store i32 12, ptr %14, align 4, !dbg !5087, !tbaa !1164
  br label %15, !dbg !5088

15:                                               ; preds = %8, %13
  %16 = phi ptr [ null, %13 ], [ %12, %8 ], !dbg !5073
  ret ptr %16, !dbg !5089
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !5090 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !5092, metadata !DIExpression()), !dbg !5097
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #38, !dbg !5098
  call void @llvm.dbg.declare(metadata ptr %2, metadata !5093, metadata !DIExpression()), !dbg !5099
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #38, !dbg !5100
  %4 = icmp eq i32 %3, 0, !dbg !5100
  br i1 %4, label %5, label %12, !dbg !5102

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !5103, metadata !DIExpression()), !dbg !5107
  %6 = load i16, ptr %2, align 16, !dbg !5110
  %7 = icmp eq i16 %6, 67, !dbg !5110
  br i1 %7, label %11, label %8, !dbg !5111

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !5103, metadata !DIExpression()), !dbg !5112
  call void @llvm.dbg.value(metadata ptr @.str.1.238, metadata !5106, metadata !DIExpression()), !dbg !5112
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.238, i64 6), !dbg !5114
  %10 = icmp eq i32 %9, 0, !dbg !5115
  br i1 %10, label %11, label %12, !dbg !5116

11:                                               ; preds = %8, %5
  br label %12, !dbg !5117

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !5097
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #38, !dbg !5118
  ret i1 %13, !dbg !5118
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !5119 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5123, metadata !DIExpression()), !dbg !5126
  call void @llvm.dbg.value(metadata ptr %1, metadata !5124, metadata !DIExpression()), !dbg !5126
  call void @llvm.dbg.value(metadata i64 %2, metadata !5125, metadata !DIExpression()), !dbg !5126
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #38, !dbg !5127
  ret i32 %4, !dbg !5128
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !5129 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5133, metadata !DIExpression()), !dbg !5134
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #38, !dbg !5135
  ret ptr %2, !dbg !5136
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !5137 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5139, metadata !DIExpression()), !dbg !5141
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #38, !dbg !5142
  call void @llvm.dbg.value(metadata ptr %2, metadata !5140, metadata !DIExpression()), !dbg !5141
  ret ptr %2, !dbg !5143
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !5144 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5146, metadata !DIExpression()), !dbg !5153
  call void @llvm.dbg.value(metadata ptr %1, metadata !5147, metadata !DIExpression()), !dbg !5153
  call void @llvm.dbg.value(metadata i64 %2, metadata !5148, metadata !DIExpression()), !dbg !5153
  call void @llvm.dbg.value(metadata i32 %0, metadata !5139, metadata !DIExpression()), !dbg !5154
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #38, !dbg !5156
  call void @llvm.dbg.value(metadata ptr %4, metadata !5140, metadata !DIExpression()), !dbg !5154
  call void @llvm.dbg.value(metadata ptr %4, metadata !5149, metadata !DIExpression()), !dbg !5153
  %5 = icmp eq ptr %4, null, !dbg !5157
  br i1 %5, label %6, label %9, !dbg !5158

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !5159
  br i1 %7, label %19, label %8, !dbg !5162

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !5163, !tbaa !1173
  br label %19, !dbg !5164

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #39, !dbg !5165
  call void @llvm.dbg.value(metadata i64 %10, metadata !5150, metadata !DIExpression()), !dbg !5166
  %11 = icmp ult i64 %10, %2, !dbg !5167
  br i1 %11, label %12, label %14, !dbg !5169

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !5170
  call void @llvm.dbg.value(metadata ptr %1, metadata !5172, metadata !DIExpression()), !dbg !5177
  call void @llvm.dbg.value(metadata ptr %4, metadata !5175, metadata !DIExpression()), !dbg !5177
  call void @llvm.dbg.value(metadata i64 %13, metadata !5176, metadata !DIExpression()), !dbg !5177
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #38, !dbg !5179
  br label %19, !dbg !5180

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !5181
  br i1 %15, label %19, label %16, !dbg !5184

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !5185
  call void @llvm.dbg.value(metadata ptr %1, metadata !5172, metadata !DIExpression()), !dbg !5187
  call void @llvm.dbg.value(metadata ptr %4, metadata !5175, metadata !DIExpression()), !dbg !5187
  call void @llvm.dbg.value(metadata i64 %17, metadata !5176, metadata !DIExpression()), !dbg !5187
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #38, !dbg !5189
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !5190
  store i8 0, ptr %18, align 1, !dbg !5191, !tbaa !1173
  br label %19, !dbg !5192

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !5193
  ret i32 %20, !dbg !5194
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
attributes #11 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn }
attributes #20 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #23 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nofree nounwind willreturn memory(argmem: read) }
attributes #25 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #29 = { inlinehint nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { nounwind allocsize(0) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { nounwind allocsize(1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { nounwind allocsize(0,1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #38 = { nounwind }
attributes #39 = { nounwind willreturn memory(read) }
attributes #40 = { noreturn nounwind }
attributes #41 = { nounwind willreturn memory(none) }
attributes #42 = { noreturn }
attributes #43 = { cold }
attributes #44 = { nounwind allocsize(1) }
attributes #45 = { nounwind allocsize(0) }
attributes #46 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!76, !677, !1010, !1012, !681, !696, !978, !1017, !1019, !1022, !1024, !1026, !748, !760, !774, !822, !1028, !970, !1034, !1065, !1067, !994, !1069, !1072, !1076, !1078}
!llvm.ident = !{!1080, !1080, !1080, !1080, !1080, !1080, !1080, !1080, !1080, !1080, !1080, !1080, !1080, !1080, !1080, !1080, !1080, !1080, !1080, !1080, !1080, !1080, !1080, !1080, !1080, !1080}
!llvm.module.flags = !{!1081, !1082, !1083, !1084, !1085, !1086}

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
!108 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !109, file: !2, line: 290, baseType: !79, size: 32, elements: !202)
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
!664 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
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
!695 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !696, file: !697, line: 66, type: !740, isLocal: false, isDefinition: true)
!696 = distinct !DICompileUnit(language: DW_LANG_C11, file: !697, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !698, globals: !699, splitDebugInlining: false, nameTableKind: None)
!697 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!698 = !{!161, !222}
!699 = !{!700, !702, !722, !724, !726, !728, !694, !730, !732, !734, !736, !738}
!700 = !DIGlobalVariableExpression(var: !701, expr: !DIExpression())
!701 = distinct !DIGlobalVariable(scope: null, file: !697, line: 272, type: !360, isLocal: true, isDefinition: true)
!702 = !DIGlobalVariableExpression(var: !703, expr: !DIExpression())
!703 = distinct !DIGlobalVariable(name: "old_file_name", scope: !704, file: !697, line: 304, type: !171, isLocal: true, isDefinition: true)
!704 = distinct !DISubprogram(name: "verror_at_line", scope: !697, file: !697, line: 298, type: !705, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !696, retainedNodes: !715)
!705 = !DISubroutineType(types: !706)
!706 = !{null, !89, !89, !171, !79, !171, !707}
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !709)
!709 = !{!710, !712, !713, !714}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !708, file: !711, baseType: !79, size: 32)
!711 = !DIFile(filename: "lib/error.c", directory: "/src")
!712 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !708, file: !711, baseType: !79, size: 32, offset: 32)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !708, file: !711, baseType: !161, size: 64, offset: 64)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !708, file: !711, baseType: !161, size: 64, offset: 128)
!715 = !{!716, !717, !718, !719, !720, !721}
!716 = !DILocalVariable(name: "status", arg: 1, scope: !704, file: !697, line: 298, type: !89)
!717 = !DILocalVariable(name: "errnum", arg: 2, scope: !704, file: !697, line: 298, type: !89)
!718 = !DILocalVariable(name: "file_name", arg: 3, scope: !704, file: !697, line: 298, type: !171)
!719 = !DILocalVariable(name: "line_number", arg: 4, scope: !704, file: !697, line: 298, type: !79)
!720 = !DILocalVariable(name: "message", arg: 5, scope: !704, file: !697, line: 298, type: !171)
!721 = !DILocalVariable(name: "args", arg: 6, scope: !704, file: !697, line: 298, type: !707)
!722 = !DIGlobalVariableExpression(var: !723, expr: !DIExpression())
!723 = distinct !DIGlobalVariable(name: "old_line_number", scope: !704, file: !697, line: 305, type: !79, isLocal: true, isDefinition: true)
!724 = !DIGlobalVariableExpression(var: !725, expr: !DIExpression())
!725 = distinct !DIGlobalVariable(scope: null, file: !697, line: 338, type: !71, isLocal: true, isDefinition: true)
!726 = !DIGlobalVariableExpression(var: !727, expr: !DIExpression())
!727 = distinct !DIGlobalVariable(scope: null, file: !697, line: 346, type: !396, isLocal: true, isDefinition: true)
!728 = !DIGlobalVariableExpression(var: !729, expr: !DIExpression())
!729 = distinct !DIGlobalVariable(scope: null, file: !697, line: 346, type: !374, isLocal: true, isDefinition: true)
!730 = !DIGlobalVariableExpression(var: !731, expr: !DIExpression())
!731 = distinct !DIGlobalVariable(name: "error_message_count", scope: !696, file: !697, line: 69, type: !79, isLocal: false, isDefinition: true)
!732 = !DIGlobalVariableExpression(var: !733, expr: !DIExpression())
!733 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !696, file: !697, line: 295, type: !89, isLocal: false, isDefinition: true)
!734 = !DIGlobalVariableExpression(var: !735, expr: !DIExpression())
!735 = distinct !DIGlobalVariable(scope: null, file: !697, line: 208, type: !391, isLocal: true, isDefinition: true)
!736 = !DIGlobalVariableExpression(var: !737, expr: !DIExpression())
!737 = distinct !DIGlobalVariable(scope: null, file: !697, line: 208, type: !262, isLocal: true, isDefinition: true)
!738 = !DIGlobalVariableExpression(var: !739, expr: !DIExpression())
!739 = distinct !DIGlobalVariable(scope: null, file: !697, line: 214, type: !360, isLocal: true, isDefinition: true)
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!741 = !DISubroutineType(types: !742)
!742 = !{null}
!743 = !DIGlobalVariableExpression(var: !744, expr: !DIExpression())
!744 = distinct !DIGlobalVariable(scope: null, file: !745, line: 40, type: !19, isLocal: true, isDefinition: true)
!745 = !DIFile(filename: "lib/freopen-safer.c", directory: "/src", checksumkind: CSK_MD5, checksum: "380f3eea209580e07073525fbfd0dac5")
!746 = !DIGlobalVariableExpression(var: !747, expr: !DIExpression())
!747 = distinct !DIGlobalVariable(name: "obstack_alloc_failed_handler", scope: !748, file: !749, line: 53, type: !740, isLocal: false, isDefinition: true)
!748 = distinct !DICompileUnit(language: DW_LANG_C11, file: !749, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !750, globals: !751, splitDebugInlining: false, nameTableKind: None)
!749 = !DIFile(filename: "lib/obstack.c", directory: "/src", checksumkind: CSK_MD5, checksum: "47f5bbc27e7c2d5a5cc3aab9403d8d27")
!750 = !{!112, !161, !121, !165}
!751 = !{!746, !752, !754, !756}
!752 = !DIGlobalVariableExpression(var: !753, expr: !DIExpression())
!753 = distinct !DIGlobalVariable(scope: null, file: !749, line: 353, type: !71, isLocal: true, isDefinition: true)
!754 = !DIGlobalVariableExpression(var: !755, expr: !DIExpression())
!755 = distinct !DIGlobalVariable(scope: null, file: !749, line: 353, type: !391, isLocal: true, isDefinition: true)
!756 = !DIGlobalVariableExpression(var: !757, expr: !DIExpression())
!757 = distinct !DIGlobalVariable(scope: null, file: !749, line: 353, type: !243, isLocal: true, isDefinition: true)
!758 = !DIGlobalVariableExpression(var: !759, expr: !DIExpression())
!759 = distinct !DIGlobalVariable(name: "program_name", scope: !760, file: !761, line: 31, type: !171, isLocal: false, isDefinition: true)
!760 = distinct !DICompileUnit(language: DW_LANG_C11, file: !761, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !762, globals: !763, splitDebugInlining: false, nameTableKind: None)
!761 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!762 = !{!121}
!763 = !{!758, !764, !766}
!764 = !DIGlobalVariableExpression(var: !765, expr: !DIExpression())
!765 = distinct !DIGlobalVariable(scope: null, file: !761, line: 46, type: !396, isLocal: true, isDefinition: true)
!766 = !DIGlobalVariableExpression(var: !767, expr: !DIExpression())
!767 = distinct !DIGlobalVariable(scope: null, file: !761, line: 49, type: !71, isLocal: true, isDefinition: true)
!768 = !DIGlobalVariableExpression(var: !769, expr: !DIExpression())
!769 = distinct !DIGlobalVariable(name: "utf07FF", scope: !770, file: !771, line: 46, type: !798, isLocal: true, isDefinition: true)
!770 = distinct !DISubprogram(name: "proper_name_lite", scope: !771, file: !771, line: 38, type: !772, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !774, retainedNodes: !776)
!771 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!772 = !DISubroutineType(types: !773)
!773 = !{!171, !171, !171}
!774 = distinct !DICompileUnit(language: DW_LANG_C11, file: !771, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !775, splitDebugInlining: false, nameTableKind: None)
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
!798 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 16, elements: !375)
!799 = !DIGlobalVariableExpression(var: !800, expr: !DIExpression())
!800 = distinct !DIGlobalVariable(scope: null, file: !801, line: 78, type: !396, isLocal: true, isDefinition: true)
!801 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!802 = !DIGlobalVariableExpression(var: !803, expr: !DIExpression())
!803 = distinct !DIGlobalVariable(scope: null, file: !801, line: 79, type: !369, isLocal: true, isDefinition: true)
!804 = !DIGlobalVariableExpression(var: !805, expr: !DIExpression())
!805 = distinct !DIGlobalVariable(scope: null, file: !801, line: 80, type: !466, isLocal: true, isDefinition: true)
!806 = !DIGlobalVariableExpression(var: !807, expr: !DIExpression())
!807 = distinct !DIGlobalVariable(scope: null, file: !801, line: 81, type: !466, isLocal: true, isDefinition: true)
!808 = !DIGlobalVariableExpression(var: !809, expr: !DIExpression())
!809 = distinct !DIGlobalVariable(scope: null, file: !801, line: 82, type: !168, isLocal: true, isDefinition: true)
!810 = !DIGlobalVariableExpression(var: !811, expr: !DIExpression())
!811 = distinct !DIGlobalVariable(scope: null, file: !801, line: 83, type: !374, isLocal: true, isDefinition: true)
!812 = !DIGlobalVariableExpression(var: !813, expr: !DIExpression())
!813 = distinct !DIGlobalVariable(scope: null, file: !801, line: 84, type: !396, isLocal: true, isDefinition: true)
!814 = !DIGlobalVariableExpression(var: !815, expr: !DIExpression())
!815 = distinct !DIGlobalVariable(scope: null, file: !801, line: 85, type: !391, isLocal: true, isDefinition: true)
!816 = !DIGlobalVariableExpression(var: !817, expr: !DIExpression())
!817 = distinct !DIGlobalVariable(scope: null, file: !801, line: 86, type: !391, isLocal: true, isDefinition: true)
!818 = !DIGlobalVariableExpression(var: !819, expr: !DIExpression())
!819 = distinct !DIGlobalVariable(scope: null, file: !801, line: 87, type: !396, isLocal: true, isDefinition: true)
!820 = !DIGlobalVariableExpression(var: !821, expr: !DIExpression())
!821 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !822, file: !801, line: 76, type: !894, isLocal: false, isDefinition: true)
!822 = distinct !DICompileUnit(language: DW_LANG_C11, file: !801, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !823, retainedTypes: !829, globals: !830, splitDebugInlining: false, nameTableKind: None)
!823 = !{!207, !824, !93}
!824 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !208, line: 254, baseType: !79, size: 32, elements: !825)
!825 = !{!826, !827, !828}
!826 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!827 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!828 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!829 = !{!89, !144, !163}
!830 = !{!799, !802, !804, !806, !808, !810, !812, !814, !816, !818, !820, !831, !835, !845, !847, !852, !854, !856, !858, !860, !883, !890, !892}
!831 = !DIGlobalVariableExpression(var: !832, expr: !DIExpression())
!832 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !822, file: !801, line: 92, type: !833, isLocal: false, isDefinition: true)
!833 = !DICompositeType(tag: DW_TAG_array_type, baseType: !834, size: 320, elements: !20)
!834 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !207)
!835 = !DIGlobalVariableExpression(var: !836, expr: !DIExpression())
!836 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !822, file: !801, line: 1040, type: !837, isLocal: false, isDefinition: true)
!837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !801, line: 56, size: 448, elements: !838)
!838 = !{!839, !840, !841, !843, !844}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !837, file: !801, line: 59, baseType: !207, size: 32)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !837, file: !801, line: 62, baseType: !89, size: 32, offset: 32)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !837, file: !801, line: 66, baseType: !842, size: 256, offset: 64)
!842 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 256, elements: !397)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !837, file: !801, line: 69, baseType: !171, size: 64, offset: 320)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !837, file: !801, line: 72, baseType: !171, size: 64, offset: 384)
!845 = !DIGlobalVariableExpression(var: !846, expr: !DIExpression())
!846 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !822, file: !801, line: 107, type: !837, isLocal: true, isDefinition: true)
!847 = !DIGlobalVariableExpression(var: !848, expr: !DIExpression())
!848 = distinct !DIGlobalVariable(name: "slot0", scope: !822, file: !801, line: 831, type: !849, isLocal: true, isDefinition: true)
!849 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !850)
!850 = !{!851}
!851 = !DISubrange(count: 256)
!852 = !DIGlobalVariableExpression(var: !853, expr: !DIExpression())
!853 = distinct !DIGlobalVariable(scope: null, file: !801, line: 321, type: !374, isLocal: true, isDefinition: true)
!854 = !DIGlobalVariableExpression(var: !855, expr: !DIExpression())
!855 = distinct !DIGlobalVariable(scope: null, file: !801, line: 357, type: !374, isLocal: true, isDefinition: true)
!856 = !DIGlobalVariableExpression(var: !857, expr: !DIExpression())
!857 = distinct !DIGlobalVariable(scope: null, file: !801, line: 358, type: !374, isLocal: true, isDefinition: true)
!858 = !DIGlobalVariableExpression(var: !859, expr: !DIExpression())
!859 = distinct !DIGlobalVariable(scope: null, file: !801, line: 199, type: !391, isLocal: true, isDefinition: true)
!860 = !DIGlobalVariableExpression(var: !861, expr: !DIExpression())
!861 = distinct !DIGlobalVariable(name: "quote", scope: !862, file: !801, line: 228, type: !881, isLocal: true, isDefinition: true)
!862 = distinct !DISubprogram(name: "gettext_quote", scope: !801, file: !801, line: 197, type: !863, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !822, retainedNodes: !865)
!863 = !DISubroutineType(types: !864)
!864 = !{!171, !171, !207}
!865 = !{!866, !867, !868, !869, !870}
!866 = !DILocalVariable(name: "msgid", arg: 1, scope: !862, file: !801, line: 197, type: !171)
!867 = !DILocalVariable(name: "s", arg: 2, scope: !862, file: !801, line: 197, type: !207)
!868 = !DILocalVariable(name: "translation", scope: !862, file: !801, line: 199, type: !171)
!869 = !DILocalVariable(name: "w", scope: !862, file: !801, line: 229, type: !781)
!870 = !DILocalVariable(name: "mbs", scope: !862, file: !801, line: 230, type: !871)
!871 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !787, line: 6, baseType: !872)
!872 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !789, line: 21, baseType: !873)
!873 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !789, line: 13, size: 64, elements: !874)
!874 = !{!875, !876}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !873, file: !789, line: 15, baseType: !89, size: 32)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !873, file: !789, line: 20, baseType: !877, size: 32, offset: 32)
!877 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !873, file: !789, line: 16, size: 32, elements: !878)
!878 = !{!879, !880}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !877, file: !789, line: 18, baseType: !79, size: 32)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !877, file: !789, line: 19, baseType: !71, size: 32)
!881 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 64, elements: !882)
!882 = !{!376, !73}
!883 = !DIGlobalVariableExpression(var: !884, expr: !DIExpression())
!884 = distinct !DIGlobalVariable(name: "slotvec", scope: !822, file: !801, line: 834, type: !885, isLocal: true, isDefinition: true)
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !801, line: 823, size: 128, elements: !887)
!887 = !{!888, !889}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !886, file: !801, line: 825, baseType: !163, size: 64)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !886, file: !801, line: 826, baseType: !121, size: 64, offset: 64)
!890 = !DIGlobalVariableExpression(var: !891, expr: !DIExpression())
!891 = distinct !DIGlobalVariable(name: "nslots", scope: !822, file: !801, line: 832, type: !89, isLocal: true, isDefinition: true)
!892 = !DIGlobalVariableExpression(var: !893, expr: !DIExpression())
!893 = distinct !DIGlobalVariable(name: "slotvec0", scope: !822, file: !801, line: 833, type: !886, isLocal: true, isDefinition: true)
!894 = !DICompositeType(tag: DW_TAG_array_type, baseType: !602, size: 704, elements: !521)
!895 = !DIGlobalVariableExpression(var: !896, expr: !DIExpression())
!896 = distinct !DIGlobalVariable(scope: null, file: !897, line: 67, type: !257, isLocal: true, isDefinition: true)
!897 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!898 = !DIGlobalVariableExpression(var: !899, expr: !DIExpression())
!899 = distinct !DIGlobalVariable(scope: null, file: !897, line: 69, type: !391, isLocal: true, isDefinition: true)
!900 = !DIGlobalVariableExpression(var: !901, expr: !DIExpression())
!901 = distinct !DIGlobalVariable(scope: null, file: !897, line: 83, type: !391, isLocal: true, isDefinition: true)
!902 = !DIGlobalVariableExpression(var: !903, expr: !DIExpression())
!903 = distinct !DIGlobalVariable(scope: null, file: !897, line: 83, type: !71, isLocal: true, isDefinition: true)
!904 = !DIGlobalVariableExpression(var: !905, expr: !DIExpression())
!905 = distinct !DIGlobalVariable(scope: null, file: !897, line: 85, type: !374, isLocal: true, isDefinition: true)
!906 = !DIGlobalVariableExpression(var: !907, expr: !DIExpression())
!907 = distinct !DIGlobalVariable(scope: null, file: !897, line: 88, type: !908, isLocal: true, isDefinition: true)
!908 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !909)
!909 = !{!910}
!910 = !DISubrange(count: 171)
!911 = !DIGlobalVariableExpression(var: !912, expr: !DIExpression())
!912 = distinct !DIGlobalVariable(scope: null, file: !897, line: 88, type: !913, isLocal: true, isDefinition: true)
!913 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !914)
!914 = !{!915}
!915 = !DISubrange(count: 34)
!916 = !DIGlobalVariableExpression(var: !917, expr: !DIExpression())
!917 = distinct !DIGlobalVariable(scope: null, file: !897, line: 105, type: !435, isLocal: true, isDefinition: true)
!918 = !DIGlobalVariableExpression(var: !919, expr: !DIExpression())
!919 = distinct !DIGlobalVariable(scope: null, file: !897, line: 109, type: !920, isLocal: true, isDefinition: true)
!920 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !921)
!921 = !{!922}
!922 = !DISubrange(count: 23)
!923 = !DIGlobalVariableExpression(var: !924, expr: !DIExpression())
!924 = distinct !DIGlobalVariable(scope: null, file: !897, line: 113, type: !925, isLocal: true, isDefinition: true)
!925 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !926)
!926 = !{!927}
!927 = !DISubrange(count: 28)
!928 = !DIGlobalVariableExpression(var: !929, expr: !DIExpression())
!929 = distinct !DIGlobalVariable(scope: null, file: !897, line: 120, type: !515, isLocal: true, isDefinition: true)
!930 = !DIGlobalVariableExpression(var: !931, expr: !DIExpression())
!931 = distinct !DIGlobalVariable(scope: null, file: !897, line: 127, type: !932, isLocal: true, isDefinition: true)
!932 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !933)
!933 = !{!934}
!934 = !DISubrange(count: 36)
!935 = !DIGlobalVariableExpression(var: !936, expr: !DIExpression())
!936 = distinct !DIGlobalVariable(scope: null, file: !897, line: 134, type: !415, isLocal: true, isDefinition: true)
!937 = !DIGlobalVariableExpression(var: !938, expr: !DIExpression())
!938 = distinct !DIGlobalVariable(scope: null, file: !897, line: 142, type: !501, isLocal: true, isDefinition: true)
!939 = !DIGlobalVariableExpression(var: !940, expr: !DIExpression())
!940 = distinct !DIGlobalVariable(scope: null, file: !897, line: 150, type: !941, isLocal: true, isDefinition: true)
!941 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !942)
!942 = !{!943}
!943 = !DISubrange(count: 48)
!944 = !DIGlobalVariableExpression(var: !945, expr: !DIExpression())
!945 = distinct !DIGlobalVariable(scope: null, file: !897, line: 159, type: !946, isLocal: true, isDefinition: true)
!946 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !947)
!947 = !{!948}
!948 = !DISubrange(count: 52)
!949 = !DIGlobalVariableExpression(var: !950, expr: !DIExpression())
!950 = distinct !DIGlobalVariable(scope: null, file: !897, line: 170, type: !250, isLocal: true, isDefinition: true)
!951 = !DIGlobalVariableExpression(var: !952, expr: !DIExpression())
!952 = distinct !DIGlobalVariable(scope: null, file: !897, line: 248, type: !168, isLocal: true, isDefinition: true)
!953 = !DIGlobalVariableExpression(var: !954, expr: !DIExpression())
!954 = distinct !DIGlobalVariable(scope: null, file: !897, line: 248, type: !440, isLocal: true, isDefinition: true)
!955 = !DIGlobalVariableExpression(var: !956, expr: !DIExpression())
!956 = distinct !DIGlobalVariable(scope: null, file: !897, line: 254, type: !168, isLocal: true, isDefinition: true)
!957 = !DIGlobalVariableExpression(var: !958, expr: !DIExpression())
!958 = distinct !DIGlobalVariable(scope: null, file: !897, line: 254, type: !226, isLocal: true, isDefinition: true)
!959 = !DIGlobalVariableExpression(var: !960, expr: !DIExpression())
!960 = distinct !DIGlobalVariable(scope: null, file: !897, line: 254, type: !415, isLocal: true, isDefinition: true)
!961 = !DIGlobalVariableExpression(var: !962, expr: !DIExpression())
!962 = distinct !DIGlobalVariable(scope: null, file: !897, line: 259, type: !3, isLocal: true, isDefinition: true)
!963 = !DIGlobalVariableExpression(var: !964, expr: !DIExpression())
!964 = distinct !DIGlobalVariable(scope: null, file: !897, line: 259, type: !965, isLocal: true, isDefinition: true)
!965 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !966)
!966 = !{!967}
!967 = !DISubrange(count: 29)
!968 = !DIGlobalVariableExpression(var: !969, expr: !DIExpression())
!969 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !970, file: !971, line: 26, type: !973, isLocal: false, isDefinition: true)
!970 = distinct !DICompileUnit(language: DW_LANG_C11, file: !971, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !972, splitDebugInlining: false, nameTableKind: None)
!971 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!972 = !{!968}
!973 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 376, elements: !974)
!974 = !{!975}
!975 = !DISubrange(count: 47)
!976 = !DIGlobalVariableExpression(var: !977, expr: !DIExpression())
!977 = distinct !DIGlobalVariable(name: "exit_failure", scope: !978, file: !979, line: 24, type: !981, isLocal: false, isDefinition: true)
!978 = distinct !DICompileUnit(language: DW_LANG_C11, file: !979, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !980, splitDebugInlining: false, nameTableKind: None)
!979 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!980 = !{!976}
!981 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !89)
!982 = !DIGlobalVariableExpression(var: !983, expr: !DIExpression())
!983 = distinct !DIGlobalVariable(scope: null, file: !984, line: 34, type: !272, isLocal: true, isDefinition: true)
!984 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!985 = !DIGlobalVariableExpression(var: !986, expr: !DIExpression())
!986 = distinct !DIGlobalVariable(scope: null, file: !984, line: 34, type: !391, isLocal: true, isDefinition: true)
!987 = !DIGlobalVariableExpression(var: !988, expr: !DIExpression())
!988 = distinct !DIGlobalVariable(scope: null, file: !984, line: 34, type: !243, isLocal: true, isDefinition: true)
!989 = !DIGlobalVariableExpression(var: !990, expr: !DIExpression())
!990 = distinct !DIGlobalVariable(scope: null, file: !991, line: 108, type: !59, isLocal: true, isDefinition: true)
!991 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!992 = !DIGlobalVariableExpression(var: !993, expr: !DIExpression())
!993 = distinct !DIGlobalVariable(name: "internal_state", scope: !994, file: !991, line: 97, type: !997, isLocal: true, isDefinition: true)
!994 = distinct !DICompileUnit(language: DW_LANG_C11, file: !991, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !995, globals: !996, splitDebugInlining: false, nameTableKind: None)
!995 = !{!161, !163, !222}
!996 = !{!989, !992}
!997 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !787, line: 6, baseType: !998)
!998 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !789, line: 21, baseType: !999)
!999 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !789, line: 13, size: 64, elements: !1000)
!1000 = !{!1001, !1002}
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !999, file: !789, line: 15, baseType: !89, size: 32)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !999, file: !789, line: 20, baseType: !1003, size: 32, offset: 32)
!1003 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !999, file: !789, line: 16, size: 32, elements: !1004)
!1004 = !{!1005, !1006}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1003, file: !789, line: 18, baseType: !79, size: 32)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1003, file: !789, line: 19, baseType: !71, size: 32)
!1007 = !DIGlobalVariableExpression(var: !1008, expr: !DIExpression())
!1008 = distinct !DIGlobalVariable(scope: null, file: !1009, line: 35, type: !369, isLocal: true, isDefinition: true)
!1009 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!1010 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1011, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !762, splitDebugInlining: false, nameTableKind: None)
!1011 = !DIFile(filename: "lib/basename-lgpl.c", directory: "/src", checksumkind: CSK_MD5, checksum: "0c866bbc0b14fb4f9b15561a581e91dd")
!1012 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1013, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !1014, splitDebugInlining: false, nameTableKind: None)
!1013 = !DIFile(filename: "lib/c-strcasecmp.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7d8203371740f321f2a78256f94ab3b7")
!1014 = !{!1015}
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1016 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !222)
!1017 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1018, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1018 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!1019 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1020, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !1021, splitDebugInlining: false, nameTableKind: None)
!1020 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!1021 = !{!161}
!1022 = distinct !DICompileUnit(language: DW_LANG_C11, file: !745, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !1023, splitDebugInlining: false, nameTableKind: None)
!1023 = !{!743}
!1024 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1025, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !1021, splitDebugInlining: false, nameTableKind: None)
!1025 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!1026 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1027, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1027 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!1028 = distinct !DICompileUnit(language: DW_LANG_C11, file: !897, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !1029, retainedTypes: !1021, globals: !1033, splitDebugInlining: false, nameTableKind: None)
!1029 = !{!1030}
!1030 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !897, line: 40, baseType: !79, size: 32, elements: !1031)
!1031 = !{!1032}
!1032 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!1033 = !{!895, !898, !900, !902, !904, !906, !911, !916, !918, !923, !928, !930, !935, !937, !939, !944, !949, !951, !953, !955, !957, !959, !961, !963}
!1034 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1035, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !1036, retainedTypes: !1064, splitDebugInlining: false, nameTableKind: None)
!1035 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!1036 = !{!1037, !1049}
!1037 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !1038, file: !1035, line: 188, baseType: !79, size: 32, elements: !1047)
!1038 = distinct !DISubprogram(name: "x2nrealloc", scope: !1035, file: !1035, line: 176, type: !1039, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1034, retainedNodes: !1042)
!1039 = !DISubroutineType(types: !1040)
!1040 = !{!161, !161, !1041, !163}
!1041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!1042 = !{!1043, !1044, !1045, !1046}
!1043 = !DILocalVariable(name: "p", arg: 1, scope: !1038, file: !1035, line: 176, type: !161)
!1044 = !DILocalVariable(name: "pn", arg: 2, scope: !1038, file: !1035, line: 176, type: !1041)
!1045 = !DILocalVariable(name: "s", arg: 3, scope: !1038, file: !1035, line: 176, type: !163)
!1046 = !DILocalVariable(name: "n", scope: !1038, file: !1035, line: 178, type: !163)
!1047 = !{!1048}
!1048 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!1049 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !1050, file: !1035, line: 228, baseType: !79, size: 32, elements: !1047)
!1050 = distinct !DISubprogram(name: "xpalloc", scope: !1035, file: !1035, line: 223, type: !1051, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1034, retainedNodes: !1054)
!1051 = !DISubroutineType(types: !1052)
!1052 = !{!161, !161, !1053, !177, !179, !177}
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!1054 = !{!1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063}
!1055 = !DILocalVariable(name: "pa", arg: 1, scope: !1050, file: !1035, line: 223, type: !161)
!1056 = !DILocalVariable(name: "pn", arg: 2, scope: !1050, file: !1035, line: 223, type: !1053)
!1057 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !1050, file: !1035, line: 223, type: !177)
!1058 = !DILocalVariable(name: "n_max", arg: 4, scope: !1050, file: !1035, line: 223, type: !179)
!1059 = !DILocalVariable(name: "s", arg: 5, scope: !1050, file: !1035, line: 223, type: !177)
!1060 = !DILocalVariable(name: "n0", scope: !1050, file: !1035, line: 230, type: !177)
!1061 = !DILocalVariable(name: "n", scope: !1050, file: !1035, line: 237, type: !177)
!1062 = !DILocalVariable(name: "nbytes", scope: !1050, file: !1035, line: 248, type: !177)
!1063 = !DILocalVariable(name: "adjusted_nbytes", scope: !1050, file: !1035, line: 252, type: !177)
!1064 = !{!121, !161, !112, !142, !165}
!1065 = distinct !DICompileUnit(language: DW_LANG_C11, file: !984, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !1066, splitDebugInlining: false, nameTableKind: None)
!1066 = !{!982, !985, !987}
!1067 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1068, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1068 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!1069 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1070, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !1071, splitDebugInlining: false, nameTableKind: None)
!1070 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!1071 = !{!112, !165, !161}
!1072 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1009, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !1073, splitDebugInlining: false, nameTableKind: None)
!1073 = !{!1074, !1007}
!1074 = !DIGlobalVariableExpression(var: !1075, expr: !DIExpression())
!1075 = distinct !DIGlobalVariable(scope: null, file: !1009, line: 35, type: !374, isLocal: true, isDefinition: true)
!1076 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1077, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1077 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!1078 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1079, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !1021, splitDebugInlining: false, nameTableKind: None)
!1079 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!1080 = !{!"Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)"}
!1081 = !{i32 7, !"Dwarf Version", i32 5}
!1082 = !{i32 2, !"Debug Info Version", i32 3}
!1083 = !{i32 1, !"wchar_size", i32 4}
!1084 = !{i32 8, !"PIC Level", i32 2}
!1085 = !{i32 7, !"PIE Level", i32 2}
!1086 = !{i32 7, !"uwtable", i32 2}
!1087 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 96, type: !1088, scopeLine: 97, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1090)
!1088 = !DISubroutineType(types: !1089)
!1089 = !{null, !89}
!1090 = !{!1091}
!1091 = !DILocalVariable(name: "status", arg: 1, scope: !1087, file: !2, line: 96, type: !89)
!1092 = !DILocation(line: 0, scope: !1087)
!1093 = !DILocation(line: 98, column: 14, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !1087, file: !2, line: 98, column: 7)
!1095 = !DILocation(line: 98, column: 7, scope: !1087)
!1096 = !DILocation(line: 99, column: 5, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !1094, file: !2, line: 99, column: 5)
!1098 = !{!1099, !1099, i64 0}
!1099 = !{!"any pointer", !1100, i64 0}
!1100 = !{!"omnipotent char", !1101, i64 0}
!1101 = !{!"Simple C/C++ TBAA"}
!1102 = !DILocation(line: 102, column: 7, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1094, file: !2, line: 101, column: 5)
!1104 = !DILocation(line: 103, column: 7, scope: !1103)
!1105 = !DILocation(line: 108, column: 7, scope: !1103)
!1106 = !DILocation(line: 112, column: 7, scope: !1103)
!1107 = !DILocation(line: 116, column: 7, scope: !1103)
!1108 = !DILocation(line: 120, column: 7, scope: !1103)
!1109 = !DILocation(line: 124, column: 7, scope: !1103)
!1110 = !DILocation(line: 125, column: 7, scope: !1103)
!1111 = !DILocation(line: 126, column: 7, scope: !1103)
!1112 = !DILocalVariable(name: "program", arg: 1, scope: !1113, file: !88, line: 836, type: !171)
!1113 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !88, file: !88, line: 836, type: !1114, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1116)
!1114 = !DISubroutineType(types: !1115)
!1115 = !{null, !171}
!1116 = !{!1112, !1117, !1124, !1125, !1127, !1128}
!1117 = !DILocalVariable(name: "infomap", scope: !1113, file: !88, line: 838, type: !1118)
!1118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1119, size: 896, elements: !392)
!1119 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1120)
!1120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !1113, file: !88, line: 838, size: 128, elements: !1121)
!1121 = !{!1122, !1123}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !1120, file: !88, line: 838, baseType: !171, size: 64)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1120, file: !88, line: 838, baseType: !171, size: 64, offset: 64)
!1124 = !DILocalVariable(name: "node", scope: !1113, file: !88, line: 848, type: !171)
!1125 = !DILocalVariable(name: "map_prog", scope: !1113, file: !88, line: 849, type: !1126)
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1119, size: 64)
!1127 = !DILocalVariable(name: "lc_messages", scope: !1113, file: !88, line: 861, type: !171)
!1128 = !DILocalVariable(name: "url_program", scope: !1113, file: !88, line: 874, type: !171)
!1129 = !DILocation(line: 0, scope: !1113, inlinedAt: !1130)
!1130 = distinct !DILocation(line: 132, column: 7, scope: !1103)
!1131 = !DILocation(line: 857, column: 3, scope: !1113, inlinedAt: !1130)
!1132 = !DILocation(line: 861, column: 29, scope: !1113, inlinedAt: !1130)
!1133 = !DILocation(line: 862, column: 7, scope: !1134, inlinedAt: !1130)
!1134 = distinct !DILexicalBlock(scope: !1113, file: !88, line: 862, column: 7)
!1135 = !DILocation(line: 862, column: 19, scope: !1134, inlinedAt: !1130)
!1136 = !DILocation(line: 862, column: 22, scope: !1134, inlinedAt: !1130)
!1137 = !DILocation(line: 862, column: 7, scope: !1113, inlinedAt: !1130)
!1138 = !DILocation(line: 868, column: 7, scope: !1139, inlinedAt: !1130)
!1139 = distinct !DILexicalBlock(scope: !1134, file: !88, line: 863, column: 5)
!1140 = !DILocation(line: 870, column: 5, scope: !1139, inlinedAt: !1130)
!1141 = !DILocation(line: 875, column: 3, scope: !1113, inlinedAt: !1130)
!1142 = !DILocation(line: 877, column: 3, scope: !1113, inlinedAt: !1130)
!1143 = !DILocation(line: 135, column: 3, scope: !1087)
!1144 = !DISubprogram(name: "dcgettext", scope: !1145, file: !1145, line: 51, type: !1146, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1148)
!1145 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!1146 = !DISubroutineType(types: !1147)
!1147 = !{!121, !171, !171, !89}
!1148 = !{}
!1149 = !DISubprogram(name: "__fprintf_chk", scope: !1150, file: !1150, line: 93, type: !1151, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1148)
!1150 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!1151 = !DISubroutineType(types: !1152)
!1152 = !{!89, !1153, !89, !1154, null}
!1153 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !113)
!1154 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !171)
!1155 = !DISubprogram(name: "__printf_chk", scope: !1150, file: !1150, line: 95, type: !1156, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1148)
!1156 = !DISubroutineType(types: !1157)
!1157 = !{!89, !89, !1154, null}
!1158 = !DISubprogram(name: "fputs_unlocked", scope: !1159, file: !1159, line: 691, type: !1160, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1148)
!1159 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!1160 = !DISubroutineType(types: !1161)
!1161 = !{!89, !1154, !1153}
!1162 = !DILocation(line: 0, scope: !330)
!1163 = !DILocation(line: 581, column: 7, scope: !338)
!1164 = !{!1165, !1165, i64 0}
!1165 = !{!"int", !1100, i64 0}
!1166 = !DILocation(line: 581, column: 19, scope: !338)
!1167 = !DILocation(line: 581, column: 7, scope: !330)
!1168 = !DILocation(line: 585, column: 26, scope: !337)
!1169 = !DILocation(line: 0, scope: !337)
!1170 = !DILocation(line: 586, column: 23, scope: !337)
!1171 = !DILocation(line: 586, column: 28, scope: !337)
!1172 = !DILocation(line: 586, column: 32, scope: !337)
!1173 = !{!1100, !1100, i64 0}
!1174 = !DILocation(line: 586, column: 38, scope: !337)
!1175 = !DILocalVariable(name: "__s1", arg: 1, scope: !1176, file: !1177, line: 1359, type: !171)
!1176 = distinct !DISubprogram(name: "streq", scope: !1177, file: !1177, line: 1359, type: !1178, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1180)
!1177 = !DIFile(filename: "./lib/string.h", directory: "/src")
!1178 = !DISubroutineType(types: !1179)
!1179 = !{!112, !171, !171}
!1180 = !{!1175, !1181}
!1181 = !DILocalVariable(name: "__s2", arg: 2, scope: !1176, file: !1177, line: 1359, type: !171)
!1182 = !DILocation(line: 0, scope: !1176, inlinedAt: !1183)
!1183 = distinct !DILocation(line: 586, column: 41, scope: !337)
!1184 = !DILocation(line: 1361, column: 11, scope: !1176, inlinedAt: !1183)
!1185 = !DILocation(line: 1361, column: 10, scope: !1176, inlinedAt: !1183)
!1186 = !DILocation(line: 586, column: 19, scope: !337)
!1187 = !DILocation(line: 587, column: 5, scope: !337)
!1188 = !DILocation(line: 588, column: 7, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !330, file: !88, line: 588, column: 7)
!1190 = !DILocation(line: 588, column: 7, scope: !330)
!1191 = !DILocation(line: 590, column: 7, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1189, file: !88, line: 589, column: 5)
!1193 = !DILocation(line: 591, column: 7, scope: !1192)
!1194 = !DILocation(line: 595, column: 37, scope: !330)
!1195 = !DILocation(line: 595, column: 35, scope: !330)
!1196 = !DILocation(line: 596, column: 29, scope: !330)
!1197 = !DILocation(line: 597, column: 8, scope: !345)
!1198 = !DILocation(line: 597, column: 7, scope: !330)
!1199 = !DILocation(line: 604, column: 24, scope: !344)
!1200 = !DILocation(line: 604, column: 12, scope: !345)
!1201 = !DILocation(line: 0, scope: !343)
!1202 = !DILocation(line: 610, column: 16, scope: !343)
!1203 = !DILocation(line: 610, column: 7, scope: !343)
!1204 = !DILocation(line: 611, column: 21, scope: !343)
!1205 = !{!1206, !1206, i64 0}
!1206 = !{!"short", !1100, i64 0}
!1207 = !DILocation(line: 611, column: 19, scope: !343)
!1208 = !DILocation(line: 611, column: 16, scope: !343)
!1209 = !DILocation(line: 610, column: 30, scope: !343)
!1210 = distinct !{!1210, !1203, !1204, !1211}
!1211 = !{!"llvm.loop.mustprogress"}
!1212 = !DILocation(line: 612, column: 18, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !343, file: !88, line: 612, column: 11)
!1214 = !DILocation(line: 612, column: 11, scope: !343)
!1215 = !DILocation(line: 618, column: 5, scope: !343)
!1216 = !DILocation(line: 620, column: 23, scope: !330)
!1217 = !DILocation(line: 625, column: 39, scope: !330)
!1218 = !DILocation(line: 626, column: 3, scope: !330)
!1219 = !DILocation(line: 626, column: 10, scope: !330)
!1220 = !DILocation(line: 626, column: 21, scope: !330)
!1221 = !DILocation(line: 628, column: 44, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1223, file: !88, line: 628, column: 11)
!1223 = distinct !DILexicalBlock(scope: !330, file: !88, line: 627, column: 5)
!1224 = !DILocation(line: 628, column: 32, scope: !1222)
!1225 = !DILocation(line: 628, column: 49, scope: !1222)
!1226 = !DILocation(line: 628, column: 11, scope: !1223)
!1227 = !DILocation(line: 630, column: 11, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !1223, file: !88, line: 630, column: 11)
!1229 = !DILocation(line: 630, column: 11, scope: !1223)
!1230 = !DILocation(line: 632, column: 26, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1232, file: !88, line: 632, column: 15)
!1232 = distinct !DILexicalBlock(scope: !1228, file: !88, line: 631, column: 9)
!1233 = !DILocation(line: 632, column: 34, scope: !1231)
!1234 = !DILocation(line: 632, column: 37, scope: !1231)
!1235 = !DILocation(line: 632, column: 15, scope: !1232)
!1236 = !DILocation(line: 636, column: 16, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1232, file: !88, line: 636, column: 15)
!1238 = !DILocation(line: 636, column: 29, scope: !1237)
!1239 = !DILocation(line: 640, column: 16, scope: !1223)
!1240 = distinct !{!1240, !1218, !1241, !1211}
!1241 = !DILocation(line: 641, column: 5, scope: !330)
!1242 = !DILocation(line: 644, column: 3, scope: !330)
!1243 = !DILocation(line: 0, scope: !1176, inlinedAt: !1244)
!1244 = distinct !DILocation(line: 648, column: 31, scope: !330)
!1245 = !DILocation(line: 0, scope: !1176, inlinedAt: !1246)
!1246 = distinct !DILocation(line: 649, column: 31, scope: !330)
!1247 = !DILocation(line: 0, scope: !1176, inlinedAt: !1248)
!1248 = distinct !DILocation(line: 650, column: 31, scope: !330)
!1249 = !DILocation(line: 0, scope: !1176, inlinedAt: !1250)
!1250 = distinct !DILocation(line: 651, column: 31, scope: !330)
!1251 = !DILocation(line: 0, scope: !1176, inlinedAt: !1252)
!1252 = distinct !DILocation(line: 652, column: 31, scope: !330)
!1253 = !DILocation(line: 0, scope: !1176, inlinedAt: !1254)
!1254 = distinct !DILocation(line: 653, column: 31, scope: !330)
!1255 = !DILocation(line: 0, scope: !1176, inlinedAt: !1256)
!1256 = distinct !DILocation(line: 654, column: 31, scope: !330)
!1257 = !DILocation(line: 0, scope: !1176, inlinedAt: !1258)
!1258 = distinct !DILocation(line: 655, column: 31, scope: !330)
!1259 = !DILocation(line: 0, scope: !1176, inlinedAt: !1260)
!1260 = distinct !DILocation(line: 656, column: 31, scope: !330)
!1261 = !DILocation(line: 0, scope: !1176, inlinedAt: !1262)
!1262 = distinct !DILocation(line: 657, column: 31, scope: !330)
!1263 = !DILocation(line: 663, column: 7, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !330, file: !88, line: 663, column: 7)
!1265 = !DILocation(line: 664, column: 7, scope: !1264)
!1266 = !DILocation(line: 664, column: 10, scope: !1264)
!1267 = !DILocation(line: 663, column: 7, scope: !330)
!1268 = !DILocation(line: 669, column: 7, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1264, file: !88, line: 665, column: 5)
!1270 = !DILocation(line: 671, column: 5, scope: !1269)
!1271 = !DILocation(line: 676, column: 7, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !1264, file: !88, line: 673, column: 5)
!1273 = !DILocation(line: 679, column: 3, scope: !330)
!1274 = !DILocation(line: 683, column: 3, scope: !330)
!1275 = !DILocation(line: 686, column: 3, scope: !330)
!1276 = !DILocation(line: 688, column: 3, scope: !330)
!1277 = !DILocation(line: 691, column: 3, scope: !330)
!1278 = !DILocation(line: 695, column: 3, scope: !330)
!1279 = !DILocation(line: 696, column: 1, scope: !330)
!1280 = !DISubprogram(name: "setlocale", scope: !1281, file: !1281, line: 122, type: !1282, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1148)
!1281 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1282 = !DISubroutineType(types: !1283)
!1283 = !{!121, !89, !171}
!1284 = !DISubprogram(name: "strncmp", scope: !1285, file: !1285, line: 159, type: !1286, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1148)
!1285 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1286 = !DISubroutineType(types: !1287)
!1287 = !{!89, !171, !171, !163}
!1288 = !DISubprogram(name: "exit", scope: !1289, file: !1289, line: 624, type: !1088, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !1148)
!1289 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1290 = !DISubprogram(name: "getenv", scope: !1289, file: !1289, line: 641, type: !1291, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1148)
!1291 = !DISubroutineType(types: !1292)
!1292 = !{!121, !171}
!1293 = !DISubprogram(name: "strcmp", scope: !1285, file: !1285, line: 156, type: !1294, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1148)
!1294 = !DISubroutineType(types: !1295)
!1295 = !{!89, !171, !171}
!1296 = !DISubprogram(name: "strspn", scope: !1285, file: !1285, line: 297, type: !1297, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1148)
!1297 = !DISubroutineType(types: !1298)
!1298 = !{!165, !171, !171}
!1299 = !DISubprogram(name: "strchr", scope: !1285, file: !1285, line: 246, type: !1300, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1148)
!1300 = !DISubroutineType(types: !1301)
!1301 = !{!121, !171, !89}
!1302 = !DISubprogram(name: "__ctype_b_loc", scope: !94, file: !94, line: 79, type: !1303, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1148)
!1303 = !DISubroutineType(types: !1304)
!1304 = !{!1305}
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1306, size: 64)
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1307, size: 64)
!1307 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !144)
!1308 = !DISubprogram(name: "strcspn", scope: !1285, file: !1285, line: 293, type: !1297, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1148)
!1309 = !DISubprogram(name: "fwrite_unlocked", scope: !1159, file: !1159, line: 704, type: !1310, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1148)
!1310 = !DISubroutineType(types: !1311)
!1311 = !{!163, !1312, !163, !163, !1153}
!1312 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1313)
!1313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1314, size: 64)
!1314 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1315 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 429, type: !1316, scopeLine: 430, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1319)
!1316 = !DISubroutineType(types: !1317)
!1317 = !{!89, !89, !1318}
!1318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!1319 = !{!1320, !1321, !1322, !1323, !1324, !1325, !1326, !1329, !1333, !1337, !1338, !1341, !1342, !1343, !1344, !1346, !1347}
!1320 = !DILocalVariable(name: "argc", arg: 1, scope: !1315, file: !2, line: 429, type: !89)
!1321 = !DILocalVariable(name: "argv", arg: 2, scope: !1315, file: !2, line: 429, type: !1318)
!1322 = !DILocalVariable(name: "ok", scope: !1315, file: !2, line: 431, type: !112)
!1323 = !DILocalVariable(name: "optc", scope: !1315, file: !2, line: 432, type: !89)
!1324 = !DILocalVariable(name: "syntax", scope: !1315, file: !2, line: 433, type: !78)
!1325 = !DILocalVariable(name: "print_database", scope: !1315, file: !2, line: 434, type: !112)
!1326 = !DILocalVariable(name: "p", scope: !1327, file: !2, line: 505, type: !171)
!1327 = distinct !DILexicalBlock(scope: !1328, file: !2, line: 504, column: 5)
!1328 = distinct !DILexicalBlock(scope: !1315, file: !2, line: 503, column: 7)
!1329 = !DILocalVariable(name: "len", scope: !1330, file: !2, line: 532, type: !163)
!1330 = distinct !DILexicalBlock(scope: !1331, file: !2, line: 531, column: 9)
!1331 = distinct !DILexicalBlock(scope: !1332, file: !2, line: 530, column: 11)
!1332 = distinct !DILexicalBlock(scope: !1328, file: !2, line: 513, column: 5)
!1333 = !DILocalVariable(name: "__o", scope: !1334, file: !2, line: 532, type: !1335)
!1334 = distinct !DILexicalBlock(scope: !1330, file: !2, line: 532, column: 24)
!1335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1336, size: 64)
!1336 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !277)
!1337 = !DILocalVariable(name: "s", scope: !1330, file: !2, line: 533, type: !121)
!1338 = !DILocalVariable(name: "__o1", scope: !1339, file: !2, line: 533, type: !1340)
!1339 = distinct !DILexicalBlock(scope: !1330, file: !2, line: 533, column: 21)
!1340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!1341 = !DILocalVariable(name: "__value", scope: !1339, file: !2, line: 533, type: !161)
!1342 = !DILocalVariable(name: "prefix", scope: !1330, file: !2, line: 534, type: !171)
!1343 = !DILocalVariable(name: "suffix", scope: !1330, file: !2, line: 535, type: !171)
!1344 = !DILocalVariable(name: "__ptr", scope: !1345, file: !2, line: 549, type: !171)
!1345 = distinct !DILexicalBlock(scope: !1330, file: !2, line: 549, column: 11)
!1346 = !DILocalVariable(name: "__stream", scope: !1345, file: !2, line: 549, type: !113)
!1347 = !DILocalVariable(name: "__cnt", scope: !1345, file: !2, line: 549, type: !163)
!1348 = !DILocation(line: 0, scope: !1315)
!1349 = !DILocation(line: 437, column: 21, scope: !1315)
!1350 = !DILocation(line: 437, column: 3, scope: !1315)
!1351 = !DILocation(line: 438, column: 3, scope: !1315)
!1352 = !DILocation(line: 439, column: 3, scope: !1315)
!1353 = !DILocation(line: 440, column: 3, scope: !1315)
!1354 = !DILocation(line: 442, column: 3, scope: !1315)
!1355 = !DILocation(line: 444, column: 3, scope: !1315)
!1356 = !DILocation(line: 444, column: 18, scope: !1315)
!1357 = distinct !{!1357, !1355, !1358, !1211}
!1358 = !DILocation(line: 469, column: 7, scope: !1315)
!1359 = !DILocation(line: 453, column: 9, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !1315, file: !2, line: 446, column: 7)
!1361 = !DILocation(line: 457, column: 9, scope: !1360)
!1362 = !DILocation(line: 460, column: 25, scope: !1360)
!1363 = !DILocation(line: 461, column: 9, scope: !1360)
!1364 = !DILocation(line: 463, column: 7, scope: !1360)
!1365 = !DILocation(line: 465, column: 7, scope: !1360)
!1366 = !DILocation(line: 468, column: 9, scope: !1360)
!1367 = !DILocation(line: 471, column: 11, scope: !1315)
!1368 = !DILocation(line: 471, column: 8, scope: !1315)
!1369 = !DILocation(line: 472, column: 8, scope: !1315)
!1370 = !DILocation(line: 476, column: 25, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1315, file: !2, line: 476, column: 7)
!1372 = !DILocation(line: 476, column: 23, scope: !1371)
!1373 = !DILocation(line: 476, column: 42, scope: !1371)
!1374 = !DILocation(line: 478, column: 7, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1371, file: !2, line: 477, column: 5)
!1376 = !DILocation(line: 481, column: 7, scope: !1375)
!1377 = !DILocation(line: 484, column: 22, scope: !1378)
!1378 = distinct !DILexicalBlock(scope: !1315, file: !2, line: 484, column: 7)
!1379 = !DILocation(line: 486, column: 7, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !1378, file: !2, line: 485, column: 5)
!1381 = !DILocation(line: 489, column: 7, scope: !1380)
!1382 = !DILocation(line: 492, column: 8, scope: !1383)
!1383 = distinct !DILexicalBlock(scope: !1315, file: !2, line: 492, column: 7)
!1384 = !DILocation(line: 492, column: 25, scope: !1383)
!1385 = !DILocation(line: 492, column: 7, scope: !1315)
!1386 = !DILocation(line: 494, column: 7, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !1383, file: !2, line: 493, column: 5)
!1388 = !DILocation(line: 496, column: 11, scope: !1387)
!1389 = !DILocation(line: 497, column: 9, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1387, file: !2, line: 496, column: 11)
!1391 = !DILocation(line: 500, column: 7, scope: !1387)
!1392 = !DILocation(line: 503, column: 7, scope: !1315)
!1393 = !DILocation(line: 0, scope: !1327)
!1394 = !DILocation(line: 508, column: 11, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1327, file: !2, line: 507, column: 9)
!1396 = !DILocation(line: 509, column: 16, scope: !1395)
!1397 = !DILocation(line: 509, column: 27, scope: !1395)
!1398 = !DILocation(line: 509, column: 13, scope: !1395)
!1399 = !DILocation(line: 506, column: 16, scope: !1327)
!1400 = !DILocation(line: 506, column: 25, scope: !1327)
!1401 = !DILocation(line: 506, column: 7, scope: !1327)
!1402 = distinct !{!1402, !1401, !1403, !1211}
!1403 = !DILocation(line: 510, column: 9, scope: !1327)
!1404 = !DILocation(line: 515, column: 42, scope: !1405)
!1405 = distinct !DILexicalBlock(scope: !1332, file: !2, line: 515, column: 11)
!1406 = !DILocation(line: 146, column: 11, scope: !1407, inlinedAt: !1412)
!1407 = distinct !DISubprogram(name: "guess_shell_syntax", scope: !2, file: !2, line: 142, type: !1408, scopeLine: 143, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1410)
!1408 = !DISubroutineType(types: !1409)
!1409 = !{!78}
!1410 = !{!1411}
!1411 = !DILocalVariable(name: "shell", scope: !1407, file: !2, line: 144, type: !121)
!1412 = distinct !DILocation(line: 517, column: 20, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !1405, file: !2, line: 516, column: 9)
!1414 = !DILocation(line: 0, scope: !1407, inlinedAt: !1412)
!1415 = !DILocation(line: 147, column: 13, scope: !1416, inlinedAt: !1412)
!1416 = distinct !DILexicalBlock(scope: !1407, file: !2, line: 147, column: 7)
!1417 = !DILocation(line: 147, column: 21, scope: !1416, inlinedAt: !1412)
!1418 = !DILocation(line: 147, column: 24, scope: !1416, inlinedAt: !1412)
!1419 = !DILocation(line: 147, column: 31, scope: !1416, inlinedAt: !1412)
!1420 = !DILocation(line: 147, column: 7, scope: !1407, inlinedAt: !1412)
!1421 = !DILocation(line: 150, column: 11, scope: !1407, inlinedAt: !1412)
!1422 = !DILocation(line: 0, scope: !1176, inlinedAt: !1423)
!1423 = distinct !DILocation(line: 152, column: 7, scope: !1424, inlinedAt: !1412)
!1424 = distinct !DILexicalBlock(scope: !1407, file: !2, line: 152, column: 7)
!1425 = !DILocation(line: 1361, column: 11, scope: !1176, inlinedAt: !1423)
!1426 = !DILocation(line: 1361, column: 10, scope: !1176, inlinedAt: !1423)
!1427 = !DILocation(line: 152, column: 28, scope: !1424, inlinedAt: !1412)
!1428 = !DILocation(line: 0, scope: !1176, inlinedAt: !1429)
!1429 = distinct !DILocation(line: 152, column: 31, scope: !1424, inlinedAt: !1412)
!1430 = !DILocation(line: 1361, column: 11, scope: !1176, inlinedAt: !1429)
!1431 = !DILocation(line: 1361, column: 10, scope: !1176, inlinedAt: !1429)
!1432 = !DILocation(line: 152, column: 7, scope: !1407, inlinedAt: !1412)
!1433 = !DILocation(line: 519, column: 13, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1413, file: !2, line: 518, column: 15)
!1435 = !DILocation(line: 524, column: 7, scope: !1332)
!1436 = !DILocation(line: 525, column: 16, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !1332, file: !2, line: 525, column: 11)
!1438 = !DILocation(line: 525, column: 11, scope: !1332)
!1439 = !DILocation(line: 526, column: 14, scope: !1437)
!1440 = !DILocation(line: 530, column: 11, scope: !1332)
!1441 = !DILocation(line: 528, column: 29, scope: !1437)
!1442 = !DILocalVariable(name: "filename", arg: 1, scope: !1443, file: !2, line: 407, type: !171)
!1443 = distinct !DISubprogram(name: "dc_parse_file", scope: !2, file: !2, line: 407, type: !1444, scopeLine: 408, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1446)
!1444 = !DISubroutineType(types: !1445)
!1445 = !{!112, !171}
!1446 = !{!1442, !1447}
!1447 = !DILocalVariable(name: "ok", scope: !1443, file: !2, line: 409, type: !112)
!1448 = !DILocation(line: 0, scope: !1443, inlinedAt: !1449)
!1449 = distinct !DILocation(line: 528, column: 14, scope: !1437)
!1450 = !DILocation(line: 0, scope: !1176, inlinedAt: !1451)
!1451 = distinct !DILocation(line: 411, column: 9, scope: !1452, inlinedAt: !1449)
!1452 = distinct !DILexicalBlock(scope: !1443, file: !2, line: 411, column: 7)
!1453 = !DILocation(line: 1361, column: 11, scope: !1176, inlinedAt: !1451)
!1454 = !DILocation(line: 1361, column: 10, scope: !1176, inlinedAt: !1451)
!1455 = !DILocation(line: 411, column: 31, scope: !1452, inlinedAt: !1449)
!1456 = !DILocation(line: 411, column: 58, scope: !1452, inlinedAt: !1449)
!1457 = !DILocation(line: 411, column: 34, scope: !1452, inlinedAt: !1449)
!1458 = !DILocation(line: 411, column: 65, scope: !1452, inlinedAt: !1449)
!1459 = !DILocation(line: 411, column: 7, scope: !1443, inlinedAt: !1449)
!1460 = !DILocation(line: 417, column: 25, scope: !1443, inlinedAt: !1449)
!1461 = !DILocation(line: 417, column: 8, scope: !1443, inlinedAt: !1449)
!1462 = !DILocation(line: 419, column: 15, scope: !1463, inlinedAt: !1449)
!1463 = distinct !DILexicalBlock(scope: !1443, file: !2, line: 419, column: 7)
!1464 = !DILocation(line: 419, column: 7, scope: !1463, inlinedAt: !1449)
!1465 = !DILocation(line: 419, column: 22, scope: !1463, inlinedAt: !1449)
!1466 = !DILocation(line: 419, column: 7, scope: !1443, inlinedAt: !1449)
!1467 = !DILocation(line: 0, scope: !1334)
!1468 = !DILocation(line: 532, column: 24, scope: !1334)
!1469 = !{!1470, !1099, i64 24}
!1470 = !{!"obstack", !1471, i64 0, !1099, i64 8, !1099, i64 16, !1099, i64 24, !1099, i64 32, !1100, i64 40, !1471, i64 48, !1100, i64 56, !1100, i64 64, !1099, i64 72, !1165, i64 80, !1165, i64 80, !1165, i64 80}
!1471 = !{!"long", !1100, i64 0}
!1472 = !{!1470, !1099, i64 16}
!1473 = !DILocation(line: 0, scope: !1330)
!1474 = !DILocation(line: 0, scope: !1339)
!1475 = !DILocation(line: 533, column: 21, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !1339, file: !2, line: 533, column: 21)
!1477 = !DILocation(line: 533, column: 21, scope: !1339)
!1478 = !{!1470, !1471, i64 48}
!1479 = !DILocation(line: 537, column: 22, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !1330, file: !2, line: 537, column: 15)
!1481 = !DILocation(line: 547, column: 17, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !1330, file: !2, line: 547, column: 15)
!1483 = !DILocation(line: 547, column: 15, scope: !1330)
!1484 = !DILocation(line: 548, column: 13, scope: !1482)
!1485 = !DILocation(line: 549, column: 11, scope: !1330)
!1486 = !DILocation(line: 550, column: 17, scope: !1487)
!1487 = distinct !DILexicalBlock(scope: !1330, file: !2, line: 550, column: 15)
!1488 = !DILocation(line: 550, column: 15, scope: !1330)
!1489 = !DILocation(line: 551, column: 13, scope: !1487)
!1490 = !DILocation(line: 555, column: 3, scope: !1315)
!1491 = !DISubprogram(name: "bindtextdomain", scope: !1145, file: !1145, line: 86, type: !1492, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1148)
!1492 = !DISubroutineType(types: !1493)
!1493 = !{!121, !171, !171}
!1494 = !DISubprogram(name: "textdomain", scope: !1145, file: !1145, line: 82, type: !1291, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1148)
!1495 = !DISubprogram(name: "atexit", scope: !1289, file: !1289, line: 602, type: !1496, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1148)
!1496 = !DISubroutineType(types: !1497)
!1497 = !{!89, !740}
!1498 = !DISubprogram(name: "getopt_long", scope: !664, file: !664, line: 66, type: !1499, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1148)
!1499 = !DISubroutineType(types: !1500)
!1500 = !{!89, !89, !1501, !171, !1503, !669}
!1501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1502, size: 64)
!1502 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !121)
!1503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!1504 = !DISubprogram(name: "puts", scope: !1159, file: !1159, line: 661, type: !1505, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1148)
!1505 = !DISubroutineType(types: !1506)
!1506 = !{!89, !171}
!1507 = !DISubprogram(name: "strlen", scope: !1285, file: !1285, line: 407, type: !1508, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1148)
!1508 = !DISubroutineType(types: !1509)
!1509 = !{!165, !171}
!1510 = !DISubprogram(name: "free", scope: !1289, file: !1289, line: 555, type: !316, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1148)
!1511 = !DILocation(line: 0, scope: !109)
!1512 = !DILocation(line: 282, column: 3, scope: !109)
!1513 = !DILocation(line: 282, column: 9, scope: !109)
!1514 = !DILocation(line: 283, column: 3, scope: !109)
!1515 = !DILocation(line: 283, column: 10, scope: !109)
!1516 = !{!1471, !1471, i64 0}
!1517 = !DILocation(line: 293, column: 10, scope: !109)
!1518 = !DILocation(line: 294, column: 12, scope: !1519)
!1519 = distinct !DILexicalBlock(scope: !109, file: !2, line: 294, column: 7)
!1520 = !DILocation(line: 294, column: 20, scope: !1519)
!1521 = !DILocation(line: 294, column: 23, scope: !1519)
!1522 = !DILocation(line: 294, column: 29, scope: !1519)
!1523 = !DILocation(line: 294, column: 7, scope: !109)
!1524 = !DILocation(line: 295, column: 5, scope: !1519)
!1525 = !DILocation(line: 298, column: 15, scope: !109)
!1526 = !DILocation(line: 299, column: 17, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !109, file: !2, line: 299, column: 7)
!1528 = !DILocation(line: 299, column: 7, scope: !109)
!1529 = !DILocation(line: 302, column: 3, scope: !109)
!1530 = !DILocation(line: 309, column: 11, scope: !189)
!1531 = !DILocation(line: 281, column: 15, scope: !109)
!1532 = !DILocation(line: 307, column: 7, scope: !189)
!1533 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !1534, file: !1535, line: 118, type: !1318)
!1534 = distinct !DISubprogram(name: "getline", scope: !1535, file: !1535, line: 118, type: !1536, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1539)
!1535 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1536 = !DISubroutineType(types: !1537)
!1537 = !{!1538, !1318, !1041, !113}
!1538 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !141, line: 194, baseType: !142)
!1539 = !{!1533, !1540, !1541}
!1540 = !DILocalVariable(name: "__n", arg: 2, scope: !1534, file: !1535, line: 118, type: !1041)
!1541 = !DILocalVariable(name: "__stream", arg: 3, scope: !1534, file: !1535, line: 118, type: !113)
!1542 = !DILocation(line: 0, scope: !1534, inlinedAt: !1543)
!1543 = distinct !DILocation(line: 311, column: 15, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1545, file: !2, line: 311, column: 15)
!1545 = distinct !DILexicalBlock(scope: !1546, file: !2, line: 310, column: 9)
!1546 = distinct !DILexicalBlock(scope: !189, file: !2, line: 309, column: 11)
!1547 = !DILocation(line: 120, column: 10, scope: !1534, inlinedAt: !1543)
!1548 = !DILocation(line: 311, column: 59, scope: !1544)
!1549 = !DILocation(line: 311, column: 15, scope: !1545)
!1550 = !DILocalVariable(name: "__stream", arg: 1, scope: !1551, file: !1535, line: 135, type: !113)
!1551 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1535, file: !1535, line: 135, type: !1552, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1554)
!1552 = !DISubroutineType(types: !1553)
!1553 = !{!89, !113}
!1554 = !{!1550}
!1555 = !DILocation(line: 0, scope: !1551, inlinedAt: !1556)
!1556 = distinct !DILocation(line: 313, column: 19, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !1558, file: !2, line: 313, column: 19)
!1558 = distinct !DILexicalBlock(scope: !1544, file: !2, line: 312, column: 13)
!1559 = !DILocation(line: 137, column: 10, scope: !1551, inlinedAt: !1556)
!1560 = !{!1561, !1165, i64 0}
!1561 = !{!"_IO_FILE", !1165, i64 0, !1099, i64 8, !1099, i64 16, !1099, i64 24, !1099, i64 32, !1099, i64 40, !1099, i64 48, !1099, i64 56, !1099, i64 64, !1099, i64 72, !1099, i64 80, !1099, i64 88, !1099, i64 96, !1099, i64 104, !1165, i64 112, !1165, i64 116, !1471, i64 120, !1206, i64 128, !1100, i64 130, !1100, i64 131, !1099, i64 136, !1471, i64 144, !1099, i64 152, !1099, i64 160, !1099, i64 168, !1099, i64 176, !1471, i64 184, !1165, i64 192, !1100, i64 196}
!1562 = !DILocation(line: 313, column: 19, scope: !1557)
!1563 = !DILocation(line: 313, column: 19, scope: !1558)
!1564 = !DILocation(line: 315, column: 19, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !1557, file: !2, line: 314, column: 17)
!1566 = !DILocation(line: 317, column: 17, scope: !1565)
!1567 = !DILocation(line: 318, column: 21, scope: !1558)
!1568 = !DILocation(line: 318, column: 15, scope: !1558)
!1569 = !DILocation(line: 319, column: 15, scope: !1558)
!1570 = !DILocation(line: 321, column: 18, scope: !1545)
!1571 = !DILocation(line: 322, column: 9, scope: !1545)
!1572 = !DILocation(line: 325, column: 27, scope: !1573)
!1573 = distinct !DILexicalBlock(scope: !1574, file: !2, line: 325, column: 15)
!1574 = distinct !DILexicalBlock(scope: !1546, file: !2, line: 324, column: 9)
!1575 = !DILocation(line: 325, column: 15, scope: !1574)
!1576 = !DILocation(line: 328, column: 26, scope: !1574)
!1577 = !DILocation(line: 328, column: 47, scope: !1574)
!1578 = !DILocation(line: 328, column: 23, scope: !1574)
!1579 = !DILocation(line: 0, scope: !1546)
!1580 = !DILocalVariable(name: "line", arg: 1, scope: !1581, file: !2, line: 159, type: !171)
!1581 = distinct !DISubprogram(name: "parse_line", scope: !2, file: !2, line: 159, type: !1582, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1584)
!1582 = !DISubroutineType(types: !1583)
!1583 = !{null, !171, !1318, !1318}
!1584 = !{!1580, !1585, !1586, !1587, !1588, !1589}
!1585 = !DILocalVariable(name: "keyword", arg: 2, scope: !1581, file: !2, line: 159, type: !1318)
!1586 = !DILocalVariable(name: "arg", arg: 3, scope: !1581, file: !2, line: 159, type: !1318)
!1587 = !DILocalVariable(name: "p", scope: !1581, file: !2, line: 161, type: !171)
!1588 = !DILocalVariable(name: "keyword_start", scope: !1581, file: !2, line: 162, type: !171)
!1589 = !DILocalVariable(name: "arg_start", scope: !1581, file: !2, line: 163, type: !171)
!1590 = !DILocation(line: 0, scope: !1581, inlinedAt: !1591)
!1591 = distinct !DILocation(line: 331, column: 7, scope: !189)
!1592 = !DILocation(line: 168, column: 8, scope: !1593, inlinedAt: !1591)
!1593 = distinct !DILexicalBlock(scope: !1581, file: !2, line: 168, column: 3)
!1594 = !DILocation(line: 168, scope: !1593, inlinedAt: !1591)
!1595 = !DILocation(line: 168, column: 29, scope: !1596, inlinedAt: !1591)
!1596 = distinct !DILexicalBlock(scope: !1593, file: !2, line: 168, column: 3)
!1597 = !DILocalVariable(name: "c", arg: 1, scope: !1598, file: !1599, line: 300, type: !89)
!1598 = distinct !DISubprogram(name: "c_isspace", scope: !1599, file: !1599, line: 300, type: !1600, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1602)
!1599 = !DIFile(filename: "./lib/c-ctype.h", directory: "/src", checksumkind: CSK_MD5, checksum: "ae3bc10b98afd74391aea9e3c38adcb1")
!1600 = !DISubroutineType(types: !1601)
!1601 = !{!112, !89}
!1602 = !{!1597}
!1603 = !DILocation(line: 0, scope: !1598, inlinedAt: !1604)
!1604 = distinct !DILocation(line: 168, column: 18, scope: !1596, inlinedAt: !1591)
!1605 = !DILocation(line: 302, column: 3, scope: !1598, inlinedAt: !1604)
!1606 = !DILocation(line: 168, column: 34, scope: !1596, inlinedAt: !1591)
!1607 = !DILocation(line: 168, column: 3, scope: !1596, inlinedAt: !1591)
!1608 = distinct !{!1608, !1609, !1610, !1211}
!1609 = !DILocation(line: 168, column: 3, scope: !1593, inlinedAt: !1591)
!1610 = !DILocation(line: 169, column: 5, scope: !1593, inlinedAt: !1591)
!1611 = !DILocation(line: 172, column: 18, scope: !1612, inlinedAt: !1591)
!1612 = distinct !DILexicalBlock(scope: !1581, file: !2, line: 172, column: 7)
!1613 = distinct !{!1613, !1529, !1614}
!1614 = !DILocation(line: 401, column: 5, scope: !109)
!1615 = !DILocation(line: 177, column: 22, scope: !1581, inlinedAt: !1591)
!1616 = !DILocation(line: 0, scope: !1598, inlinedAt: !1617)
!1617 = distinct !DILocation(line: 177, column: 11, scope: !1581, inlinedAt: !1591)
!1618 = !DILocation(line: 302, column: 3, scope: !1598, inlinedAt: !1617)
!1619 = !DILocation(line: 177, column: 32, scope: !1581, inlinedAt: !1591)
!1620 = !DILocation(line: 177, column: 3, scope: !1581, inlinedAt: !1591)
!1621 = !DILocation(line: 179, column: 7, scope: !1622, inlinedAt: !1591)
!1622 = distinct !DILexicalBlock(scope: !1581, file: !2, line: 178, column: 5)
!1623 = distinct !{!1623, !1620, !1624, !1211}
!1624 = !DILocation(line: 180, column: 5, scope: !1581, inlinedAt: !1591)
!1625 = !DILocation(line: 182, column: 42, scope: !1581, inlinedAt: !1591)
!1626 = !DILocation(line: 182, column: 14, scope: !1581, inlinedAt: !1591)
!1627 = !DILocation(line: 183, column: 7, scope: !1628, inlinedAt: !1591)
!1628 = distinct !DILexicalBlock(scope: !1581, file: !2, line: 183, column: 7)
!1629 = !DILocation(line: 183, column: 11, scope: !1628, inlinedAt: !1591)
!1630 = !DILocation(line: 183, column: 7, scope: !1581, inlinedAt: !1591)
!1631 = !DILocation(line: 188, column: 7, scope: !1632, inlinedAt: !1591)
!1632 = distinct !DILexicalBlock(scope: !1581, file: !2, line: 187, column: 5)
!1633 = !DILocation(line: 190, column: 21, scope: !1581, inlinedAt: !1591)
!1634 = !DILocation(line: 0, scope: !1598, inlinedAt: !1635)
!1635 = distinct !DILocation(line: 190, column: 10, scope: !1581, inlinedAt: !1591)
!1636 = !DILocation(line: 302, column: 3, scope: !1598, inlinedAt: !1635)
!1637 = distinct !{!1637, !1638, !1639, !1211}
!1638 = !DILocation(line: 186, column: 3, scope: !1581, inlinedAt: !1591)
!1639 = !DILocation(line: 190, column: 24, scope: !1581, inlinedAt: !1591)
!1640 = !DILocation(line: 192, column: 18, scope: !1641, inlinedAt: !1591)
!1641 = distinct !DILexicalBlock(scope: !1581, file: !2, line: 192, column: 7)
!1642 = !DILocation(line: 197, column: 10, scope: !1581, inlinedAt: !1591)
!1643 = !DILocation(line: 197, column: 21, scope: !1581, inlinedAt: !1591)
!1644 = !DILocation(line: 200, column: 3, scope: !1645, inlinedAt: !1591)
!1645 = distinct !DILexicalBlock(scope: !1581, file: !2, line: 200, column: 3)
!1646 = !DILocation(line: 198, column: 5, scope: !1581, inlinedAt: !1591)
!1647 = !DILocation(line: 197, column: 3, scope: !1581, inlinedAt: !1591)
!1648 = distinct !{!1648, !1647, !1649, !1211}
!1649 = !DILocation(line: 198, column: 7, scope: !1581, inlinedAt: !1591)
!1650 = !DILocation(line: 200, scope: !1645, inlinedAt: !1591)
!1651 = !DILocation(line: 200, column: 24, scope: !1652, inlinedAt: !1591)
!1652 = distinct !DILexicalBlock(scope: !1645, file: !2, line: 200, column: 3)
!1653 = !DILocation(line: 0, scope: !1598, inlinedAt: !1654)
!1654 = distinct !DILocation(line: 200, column: 13, scope: !1652, inlinedAt: !1591)
!1655 = !DILocation(line: 302, column: 3, scope: !1598, inlinedAt: !1654)
!1656 = distinct !{!1656, !1644, !1657, !1211}
!1657 = !DILocation(line: 201, column: 5, scope: !1645, inlinedAt: !1591)
!1658 = !DILocation(line: 0, scope: !189)
!1659 = !DILocation(line: 338, column: 11, scope: !1660)
!1660 = distinct !DILexicalBlock(scope: !1661, file: !2, line: 337, column: 9)
!1661 = distinct !DILexicalBlock(scope: !189, file: !2, line: 336, column: 11)
!1662 = !DILocation(line: 342, column: 11, scope: !1660)
!1663 = !DILocation(line: 204, column: 34, scope: !1581, inlinedAt: !1591)
!1664 = !DILocation(line: 204, column: 10, scope: !1581, inlinedAt: !1591)
!1665 = !DILocation(line: 346, column: 11, scope: !201)
!1666 = !DILocation(line: 346, column: 40, scope: !201)
!1667 = !DILocation(line: 346, column: 11, scope: !189)
!1668 = !DILocation(line: 348, column: 21, scope: !1669)
!1669 = distinct !DILexicalBlock(scope: !1670, file: !2, line: 348, column: 15)
!1670 = distinct !DILexicalBlock(scope: !201, file: !2, line: 347, column: 9)
!1671 = !DILocation(line: 348, column: 15, scope: !1670)
!1672 = !DILocation(line: 349, column: 21, scope: !1669)
!1673 = !DILocation(line: 349, column: 44, scope: !1669)
!1674 = !DILocation(line: 349, column: 13, scope: !1669)
!1675 = !DILocation(line: 351, column: 16, scope: !200)
!1676 = !DILocation(line: 351, column: 50, scope: !200)
!1677 = !DILocation(line: 0, scope: !200)
!1678 = !DILocation(line: 351, column: 16, scope: !201)
!1679 = !DILocation(line: 353, column: 15, scope: !1680)
!1680 = distinct !DILexicalBlock(scope: !200, file: !2, line: 352, column: 9)
!1681 = !DILocation(line: 354, column: 21, scope: !1682)
!1682 = distinct !DILexicalBlock(scope: !1680, file: !2, line: 353, column: 15)
!1683 = !DILocation(line: 354, column: 49, scope: !1682)
!1684 = !DILocation(line: 354, column: 13, scope: !1682)
!1685 = !DILocation(line: 358, column: 15, scope: !199)
!1686 = !DILocation(line: 361, column: 21, scope: !198)
!1687 = !DILocation(line: 361, column: 15, scope: !199)
!1688 = !DILocation(line: 363, column: 19, scope: !196)
!1689 = !DILocation(line: 363, column: 19, scope: !197)
!1690 = !DILocation(line: 364, column: 17, scope: !196)
!1691 = !DILocation(line: 366, column: 17, scope: !195)
!1692 = !DILocation(line: 367, column: 24, scope: !194)
!1693 = !DILocation(line: 367, column: 56, scope: !194)
!1694 = !DILocation(line: 368, column: 24, scope: !194)
!1695 = !DILocation(line: 368, column: 27, scope: !194)
!1696 = !DILocation(line: 368, column: 57, scope: !194)
!1697 = !DILocation(line: 369, column: 24, scope: !194)
!1698 = !DILocation(line: 369, column: 27, scope: !194)
!1699 = !DILocation(line: 369, column: 60, scope: !194)
!1700 = !DILocation(line: 367, column: 24, scope: !195)
!1701 = !DILocation(line: 0, scope: !193)
!1702 = !DILocation(line: 377, column: 31, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !1704, file: !2, line: 377, column: 19)
!1704 = distinct !DILexicalBlock(scope: !193, file: !2, line: 377, column: 19)
!1705 = !DILocation(line: 378, column: 25, scope: !1706)
!1706 = distinct !DILexicalBlock(scope: !1703, file: !2, line: 378, column: 25)
!1707 = !DILocation(line: 378, column: 62, scope: !1706)
!1708 = !DILocation(line: 378, column: 25, scope: !1703)
!1709 = !DILocation(line: 377, column: 55, scope: !1703)
!1710 = !DILocation(line: 377, column: 46, scope: !1703)
!1711 = !DILocation(line: 377, column: 19, scope: !1704)
!1712 = distinct !{!1712, !1711, !1713, !1211}
!1713 = !DILocation(line: 379, column: 23, scope: !1704)
!1714 = !DILocation(line: 382, column: 38, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !193, file: !2, line: 381, column: 23)
!1716 = !DILocation(line: 382, column: 21, scope: !1715)
!1717 = !DILocation(line: 391, column: 24, scope: !1718)
!1718 = distinct !DILexicalBlock(scope: !189, file: !2, line: 391, column: 11)
!1719 = !DILocation(line: 393, column: 11, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1718, file: !2, line: 392, column: 9)
!1721 = !DILocation(line: 397, column: 9, scope: !1720)
!1722 = !DILocation(line: 399, column: 7, scope: !189)
!1723 = !DILocation(line: 403, column: 10, scope: !109)
!1724 = !DILocation(line: 404, column: 1, scope: !109)
!1725 = !DILocation(line: 403, column: 3, scope: !109)
!1726 = !DISubprogram(name: "__errno_location", scope: !1727, file: !1727, line: 37, type: !1728, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1148)
!1727 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1728 = !DISubroutineType(types: !1729)
!1729 = !{!669}
!1730 = !DISubprogram(name: "__getdelim", scope: !1159, file: !1159, line: 632, type: !1731, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1148)
!1731 = !DISubroutineType(types: !1732)
!1732 = !{!1538, !1733, !1734, !89, !1153}
!1733 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1318)
!1734 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1041)
!1735 = !DISubprogram(name: "fnmatch", scope: !1736, file: !1736, line: 56, type: !1737, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1148)
!1736 = !DIFile(filename: "/usr/include/fnmatch.h", directory: "", checksumkind: CSK_MD5, checksum: "78cf7a81a1368221bdf9e99a720bc0a5")
!1737 = !DISubroutineType(types: !1738)
!1738 = !{!89, !171, !171, !89}
!1739 = distinct !DISubprogram(name: "append_entry", scope: !2, file: !2, line: 252, type: !1740, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1742)
!1740 = !DISubroutineType(types: !1741)
!1741 = !{null, !4, !171, !171}
!1742 = !{!1743, !1744, !1745, !1746, !1750, !1753, !1756, !1759, !1761, !1764, !1766}
!1743 = !DILocalVariable(name: "prefix", arg: 1, scope: !1739, file: !2, line: 252, type: !4)
!1744 = !DILocalVariable(name: "item", arg: 2, scope: !1739, file: !2, line: 252, type: !171)
!1745 = !DILocalVariable(name: "arg", arg: 3, scope: !1739, file: !2, line: 252, type: !171)
!1746 = !DILocalVariable(name: "__o", scope: !1747, file: !2, line: 258, type: !1340)
!1747 = distinct !DILexicalBlock(scope: !1748, file: !2, line: 258, column: 7)
!1748 = distinct !DILexicalBlock(scope: !1749, file: !2, line: 255, column: 5)
!1749 = distinct !DILexicalBlock(scope: !1739, file: !2, line: 254, column: 7)
!1750 = !DILocalVariable(name: "__o1", scope: !1751, file: !2, line: 258, type: !1335)
!1751 = distinct !DILexicalBlock(scope: !1752, file: !2, line: 258, column: 7)
!1752 = distinct !DILexicalBlock(scope: !1747, file: !2, line: 258, column: 7)
!1753 = !DILocalVariable(name: "__o", scope: !1754, file: !2, line: 261, type: !1340)
!1754 = distinct !DILexicalBlock(scope: !1755, file: !2, line: 261, column: 5)
!1755 = distinct !DILexicalBlock(scope: !1739, file: !2, line: 260, column: 7)
!1756 = !DILocalVariable(name: "__o1", scope: !1757, file: !2, line: 261, type: !1335)
!1757 = distinct !DILexicalBlock(scope: !1758, file: !2, line: 261, column: 5)
!1758 = distinct !DILexicalBlock(scope: !1754, file: !2, line: 261, column: 5)
!1759 = !DILocalVariable(name: "__o", scope: !1760, file: !2, line: 263, type: !1340)
!1760 = distinct !DILexicalBlock(scope: !1739, file: !2, line: 263, column: 3)
!1761 = !DILocalVariable(name: "__o1", scope: !1762, file: !2, line: 263, type: !1335)
!1762 = distinct !DILexicalBlock(scope: !1763, file: !2, line: 263, column: 3)
!1763 = distinct !DILexicalBlock(scope: !1760, file: !2, line: 263, column: 3)
!1764 = !DILocalVariable(name: "__o", scope: !1765, file: !2, line: 267, type: !1340)
!1765 = distinct !DILexicalBlock(scope: !1739, file: !2, line: 267, column: 3)
!1766 = !DILocalVariable(name: "__o1", scope: !1767, file: !2, line: 267, type: !1335)
!1767 = distinct !DILexicalBlock(scope: !1768, file: !2, line: 267, column: 3)
!1768 = distinct !DILexicalBlock(scope: !1765, file: !2, line: 267, column: 3)
!1769 = !DILocation(line: 0, scope: !1739)
!1770 = !DILocation(line: 254, column: 7, scope: !1749)
!1771 = !DILocation(line: 254, column: 7, scope: !1739)
!1772 = !DILocation(line: 256, column: 7, scope: !1748)
!1773 = !DILocation(line: 257, column: 7, scope: !1748)
!1774 = !DILocation(line: 0, scope: !1747)
!1775 = !DILocation(line: 0, scope: !1751)
!1776 = !DILocation(line: 258, column: 7, scope: !1751)
!1777 = !{!1470, !1099, i64 32}
!1778 = !DILocation(line: 258, column: 7, scope: !1752)
!1779 = !DILocation(line: 258, column: 7, scope: !1747)
!1780 = !DILocation(line: 259, column: 5, scope: !1748)
!1781 = !DILocation(line: 260, column: 7, scope: !1755)
!1782 = !DILocation(line: 260, column: 7, scope: !1739)
!1783 = !DILocation(line: 0, scope: !1754)
!1784 = !DILocation(line: 0, scope: !1757)
!1785 = !DILocation(line: 261, column: 5, scope: !1757)
!1786 = !DILocation(line: 261, column: 5, scope: !1758)
!1787 = !DILocation(line: 261, column: 5, scope: !1754)
!1788 = !DILocation(line: 261, column: 5, scope: !1755)
!1789 = !DILocation(line: 262, column: 3, scope: !1739)
!1790 = !DILocation(line: 0, scope: !1760)
!1791 = !DILocation(line: 0, scope: !1762)
!1792 = !DILocation(line: 263, column: 3, scope: !1762)
!1793 = !DILocation(line: 263, column: 3, scope: !1763)
!1794 = !DILocation(line: 263, column: 3, scope: !1760)
!1795 = !DILocation(line: 264, column: 3, scope: !1739)
!1796 = !DILocation(line: 265, column: 7, scope: !1797)
!1797 = distinct !DILexicalBlock(scope: !1739, file: !2, line: 265, column: 7)
!1798 = !DILocation(line: 265, column: 7, scope: !1739)
!1799 = !DILocation(line: 266, column: 5, scope: !1797)
!1800 = !DILocation(line: 0, scope: !1765)
!1801 = !DILocation(line: 0, scope: !1767)
!1802 = !DILocation(line: 267, column: 3, scope: !1767)
!1803 = !DILocation(line: 267, column: 3, scope: !1768)
!1804 = !DILocation(line: 267, column: 3, scope: !1765)
!1805 = !DILocation(line: 268, column: 1, scope: !1739)
!1806 = distinct !DISubprogram(name: "append_quoted", scope: !2, file: !2, line: 211, type: !1114, scopeLine: 212, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1807)
!1807 = !{!1808, !1809, !1810, !1815, !1818, !1820, !1823, !1825, !1828, !1831, !1834, !1836}
!1808 = !DILocalVariable(name: "str", arg: 1, scope: !1806, file: !2, line: 211, type: !171)
!1809 = !DILocalVariable(name: "need_backslash", scope: !1806, file: !2, line: 213, type: !112)
!1810 = !DILocalVariable(name: "__o", scope: !1811, file: !2, line: 221, type: !1340)
!1811 = distinct !DILexicalBlock(scope: !1812, file: !2, line: 221, column: 13)
!1812 = distinct !DILexicalBlock(scope: !1813, file: !2, line: 219, column: 11)
!1813 = distinct !DILexicalBlock(scope: !1814, file: !2, line: 217, column: 11)
!1814 = distinct !DILexicalBlock(scope: !1806, file: !2, line: 216, column: 5)
!1815 = !DILocalVariable(name: "__o1", scope: !1816, file: !2, line: 221, type: !1335)
!1816 = distinct !DILexicalBlock(scope: !1817, file: !2, line: 221, column: 13)
!1817 = distinct !DILexicalBlock(scope: !1811, file: !2, line: 221, column: 13)
!1818 = !DILocalVariable(name: "__o", scope: !1819, file: !2, line: 222, type: !1340)
!1819 = distinct !DILexicalBlock(scope: !1812, file: !2, line: 222, column: 13)
!1820 = !DILocalVariable(name: "__o1", scope: !1821, file: !2, line: 222, type: !1335)
!1821 = distinct !DILexicalBlock(scope: !1822, file: !2, line: 222, column: 13)
!1822 = distinct !DILexicalBlock(scope: !1819, file: !2, line: 222, column: 13)
!1823 = !DILocalVariable(name: "__o", scope: !1824, file: !2, line: 223, type: !1340)
!1824 = distinct !DILexicalBlock(scope: !1812, file: !2, line: 223, column: 13)
!1825 = !DILocalVariable(name: "__o1", scope: !1826, file: !2, line: 223, type: !1335)
!1826 = distinct !DILexicalBlock(scope: !1827, file: !2, line: 223, column: 13)
!1827 = distinct !DILexicalBlock(scope: !1824, file: !2, line: 223, column: 13)
!1828 = !DILocalVariable(name: "__o", scope: !1829, file: !2, line: 235, type: !1340)
!1829 = distinct !DILexicalBlock(scope: !1830, file: !2, line: 235, column: 15)
!1830 = distinct !DILexicalBlock(scope: !1812, file: !2, line: 234, column: 17)
!1831 = !DILocalVariable(name: "__o1", scope: !1832, file: !2, line: 235, type: !1335)
!1832 = distinct !DILexicalBlock(scope: !1833, file: !2, line: 235, column: 15)
!1833 = distinct !DILexicalBlock(scope: !1829, file: !2, line: 235, column: 15)
!1834 = !DILocalVariable(name: "__o", scope: !1835, file: !2, line: 243, type: !1340)
!1835 = distinct !DILexicalBlock(scope: !1814, file: !2, line: 243, column: 7)
!1836 = !DILocalVariable(name: "__o1", scope: !1837, file: !2, line: 243, type: !1335)
!1837 = distinct !DILexicalBlock(scope: !1838, file: !2, line: 243, column: 7)
!1838 = distinct !DILexicalBlock(scope: !1835, file: !2, line: 243, column: 7)
!1839 = !DILocation(line: 0, scope: !1806)
!1840 = !DILocation(line: 215, column: 10, scope: !1806)
!1841 = !DILocation(line: 215, column: 15, scope: !1806)
!1842 = !DILocation(line: 215, column: 3, scope: !1806)
!1843 = !DILocation(line: 217, column: 13, scope: !1813)
!1844 = !DILocation(line: 217, column: 11, scope: !1814)
!1845 = !DILocation(line: 218, column: 9, scope: !1813)
!1846 = !DILocation(line: 0, scope: !1811)
!1847 = !DILocation(line: 0, scope: !1816)
!1848 = !DILocation(line: 221, column: 13, scope: !1816)
!1849 = !DILocation(line: 221, column: 13, scope: !1817)
!1850 = !DILocation(line: 221, column: 13, scope: !1811)
!1851 = !DILocation(line: 0, scope: !1819)
!1852 = !DILocation(line: 0, scope: !1821)
!1853 = !DILocation(line: 222, column: 13, scope: !1821)
!1854 = !DILocation(line: 222, column: 13, scope: !1822)
!1855 = !DILocation(line: 222, column: 13, scope: !1819)
!1856 = !DILocation(line: 0, scope: !1824)
!1857 = !DILocation(line: 0, scope: !1826)
!1858 = !DILocation(line: 223, column: 13, scope: !1826)
!1859 = !DILocation(line: 223, column: 13, scope: !1827)
!1860 = !DILocation(line: 223, column: 13, scope: !1824)
!1861 = !DILocation(line: 225, column: 13, scope: !1812)
!1862 = !DILocation(line: 229, column: 31, scope: !1812)
!1863 = !DILocation(line: 229, column: 28, scope: !1812)
!1864 = !DILocation(line: 230, column: 13, scope: !1812)
!1865 = !DILocation(line: 234, column: 17, scope: !1830)
!1866 = !DILocation(line: 234, column: 17, scope: !1812)
!1867 = !DILocation(line: 0, scope: !1829)
!1868 = !DILocation(line: 0, scope: !1832)
!1869 = !DILocation(line: 235, column: 15, scope: !1832)
!1870 = !DILocation(line: 235, column: 15, scope: !1833)
!1871 = !DILocation(line: 235, column: 15, scope: !1829)
!1872 = !DILocation(line: 235, column: 15, scope: !1830)
!1873 = !DILocation(line: 0, scope: !1835)
!1874 = !DILocation(line: 0, scope: !1837)
!1875 = !DILocation(line: 243, column: 7, scope: !1837)
!1876 = !DILocation(line: 243, column: 7, scope: !1838)
!1877 = !DILocation(line: 243, column: 7, scope: !1835)
!1878 = !DILocation(line: 244, column: 7, scope: !1814)
!1879 = distinct !{!1879, !1842, !1880, !1211}
!1880 = !DILocation(line: 245, column: 5, scope: !1806)
!1881 = !DILocation(line: 246, column: 1, scope: !1806)
!1882 = distinct !DISubprogram(name: "last_component", scope: !1011, file: !1011, line: 29, type: !1291, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1010, retainedNodes: !1883)
!1883 = !{!1884, !1885, !1886, !1887}
!1884 = !DILocalVariable(name: "name", arg: 1, scope: !1882, file: !1011, line: 29, type: !171)
!1885 = !DILocalVariable(name: "base", scope: !1882, file: !1011, line: 31, type: !171)
!1886 = !DILocalVariable(name: "last_was_slash", scope: !1882, file: !1011, line: 35, type: !112)
!1887 = !DILocalVariable(name: "p", scope: !1888, file: !1011, line: 36, type: !171)
!1888 = distinct !DILexicalBlock(scope: !1882, file: !1011, line: 36, column: 3)
!1889 = !DILocation(line: 0, scope: !1882)
!1890 = !DILocation(line: 32, column: 3, scope: !1882)
!1891 = !DILocation(line: 32, column: 10, scope: !1882)
!1892 = !DILocation(line: 33, column: 9, scope: !1882)
!1893 = distinct !{!1893, !1890, !1892, !1211}
!1894 = !DILocation(line: 36, column: 30, scope: !1895)
!1895 = distinct !DILexicalBlock(scope: !1888, file: !1011, line: 36, column: 3)
!1896 = !DILocation(line: 31, column: 15, scope: !1882)
!1897 = !DILocation(line: 36, scope: !1888)
!1898 = !DILocation(line: 0, scope: !1888)
!1899 = !DILocation(line: 36, column: 3, scope: !1888)
!1900 = !DILocation(line: 47, column: 3, scope: !1882)
!1901 = !DILocation(line: 40, column: 16, scope: !1902)
!1902 = distinct !DILexicalBlock(scope: !1903, file: !1011, line: 40, column: 16)
!1903 = distinct !DILexicalBlock(scope: !1904, file: !1011, line: 38, column: 11)
!1904 = distinct !DILexicalBlock(scope: !1895, file: !1011, line: 37, column: 5)
!1905 = !DILocation(line: 40, column: 16, scope: !1903)
!1906 = !DILocation(line: 36, column: 35, scope: !1895)
!1907 = !DILocation(line: 36, column: 3, scope: !1895)
!1908 = distinct !{!1908, !1899, !1909, !1211}
!1909 = !DILocation(line: 45, column: 5, scope: !1888)
!1910 = distinct !DISubprogram(name: "base_len", scope: !1011, file: !1011, line: 51, type: !1911, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1010, retainedNodes: !1913)
!1911 = !DISubroutineType(types: !1912)
!1912 = !{!163, !171}
!1913 = !{!1914, !1915, !1916}
!1914 = !DILocalVariable(name: "name", arg: 1, scope: !1910, file: !1011, line: 51, type: !171)
!1915 = !DILocalVariable(name: "len", scope: !1910, file: !1011, line: 53, type: !163)
!1916 = !DILocalVariable(name: "prefix_len", scope: !1910, file: !1011, line: 61, type: !163)
!1917 = !DILocation(line: 0, scope: !1910)
!1918 = !DILocation(line: 54, column: 14, scope: !1919)
!1919 = distinct !DILexicalBlock(scope: !1910, file: !1011, line: 54, column: 3)
!1920 = !DILocation(line: 54, column: 8, scope: !1919)
!1921 = !DILocation(line: 54, scope: !1919)
!1922 = !DILocation(line: 54, column: 32, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1919, file: !1011, line: 54, column: 3)
!1924 = !DILocation(line: 54, column: 38, scope: !1923)
!1925 = !DILocation(line: 54, column: 41, scope: !1923)
!1926 = !DILocation(line: 54, column: 3, scope: !1919)
!1927 = distinct !{!1927, !1926, !1928, !1211}
!1928 = !DILocation(line: 55, column: 5, scope: !1919)
!1929 = !DILocation(line: 66, column: 3, scope: !1910)
!1930 = distinct !DISubprogram(name: "c_strcasecmp", scope: !1013, file: !1013, line: 27, type: !1294, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1012, retainedNodes: !1931)
!1931 = !{!1932, !1933, !1934, !1935, !1936, !1940}
!1932 = !DILocalVariable(name: "s1", arg: 1, scope: !1930, file: !1013, line: 27, type: !171)
!1933 = !DILocalVariable(name: "s2", arg: 2, scope: !1930, file: !1013, line: 27, type: !171)
!1934 = !DILocalVariable(name: "p1", scope: !1930, file: !1013, line: 29, type: !1015)
!1935 = !DILocalVariable(name: "p2", scope: !1930, file: !1013, line: 30, type: !1015)
!1936 = !DILocalVariable(name: "c1", scope: !1937, file: !1013, line: 37, type: !222)
!1937 = distinct !DILexicalBlock(scope: !1938, file: !1013, line: 36, column: 5)
!1938 = distinct !DILexicalBlock(scope: !1939, file: !1013, line: 35, column: 3)
!1939 = distinct !DILexicalBlock(scope: !1930, file: !1013, line: 35, column: 3)
!1940 = !DILocalVariable(name: "c2", scope: !1937, file: !1013, line: 38, type: !222)
!1941 = !DILocation(line: 0, scope: !1930)
!1942 = !DILocation(line: 32, column: 10, scope: !1943)
!1943 = distinct !DILexicalBlock(scope: !1930, file: !1013, line: 32, column: 7)
!1944 = !DILocation(line: 32, column: 7, scope: !1930)
!1945 = !DILocation(line: 37, column: 37, scope: !1937)
!1946 = !DILocalVariable(name: "c", arg: 1, scope: !1947, file: !1599, line: 337, type: !89)
!1947 = distinct !DISubprogram(name: "c_tolower", scope: !1599, file: !1599, line: 337, type: !1948, scopeLine: 338, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1012, retainedNodes: !1950)
!1948 = !DISubroutineType(types: !1949)
!1949 = !{!89, !89}
!1950 = !{!1946}
!1951 = !DILocation(line: 0, scope: !1947, inlinedAt: !1952)
!1952 = distinct !DILocation(line: 37, column: 26, scope: !1937)
!1953 = !DILocation(line: 339, column: 3, scope: !1947, inlinedAt: !1952)
!1954 = !DILocation(line: 0, scope: !1937)
!1955 = !DILocation(line: 38, column: 37, scope: !1937)
!1956 = !DILocation(line: 0, scope: !1947, inlinedAt: !1957)
!1957 = distinct !DILocation(line: 38, column: 26, scope: !1937)
!1958 = !DILocation(line: 339, column: 3, scope: !1947, inlinedAt: !1957)
!1959 = !DILocation(line: 40, column: 11, scope: !1960)
!1960 = distinct !DILexicalBlock(scope: !1937, file: !1013, line: 40, column: 11)
!1961 = !DILocation(line: 40, column: 14, scope: !1960)
!1962 = !DILocation(line: 40, column: 22, scope: !1960)
!1963 = !DILocation(line: 43, column: 23, scope: !1964)
!1964 = distinct !DILexicalBlock(scope: !1965, file: !1013, line: 42, column: 15)
!1965 = distinct !DILexicalBlock(scope: !1960, file: !1013, line: 41, column: 9)
!1966 = !DILocation(line: 35, column: 13, scope: !1938)
!1967 = !DILocation(line: 35, column: 19, scope: !1938)
!1968 = distinct !{!1968, !1969, !1970}
!1969 = !DILocation(line: 35, column: 3, scope: !1939)
!1970 = !DILocation(line: 50, column: 5, scope: !1939)
!1971 = !DILocation(line: 51, column: 1, scope: !1930)
!1972 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !682, file: !682, line: 50, type: !1114, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !681, retainedNodes: !1973)
!1973 = !{!1974}
!1974 = !DILocalVariable(name: "file", arg: 1, scope: !1972, file: !682, line: 50, type: !171)
!1975 = !DILocation(line: 0, scope: !1972)
!1976 = !DILocation(line: 52, column: 13, scope: !1972)
!1977 = !DILocation(line: 53, column: 1, scope: !1972)
!1978 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !682, file: !682, line: 87, type: !1979, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !681, retainedNodes: !1981)
!1979 = !DISubroutineType(types: !1980)
!1980 = !{null, !112}
!1981 = !{!1982}
!1982 = !DILocalVariable(name: "ignore", arg: 1, scope: !1978, file: !682, line: 87, type: !112)
!1983 = !DILocation(line: 0, scope: !1978)
!1984 = !DILocation(line: 89, column: 16, scope: !1978)
!1985 = !{!1986, !1986, i64 0}
!1986 = !{!"_Bool", !1100, i64 0}
!1987 = !DILocation(line: 90, column: 1, scope: !1978)
!1988 = distinct !DISubprogram(name: "close_stdout", scope: !682, file: !682, line: 116, type: !741, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !681, retainedNodes: !1989)
!1989 = !{!1990}
!1990 = !DILocalVariable(name: "write_error", scope: !1991, file: !682, line: 121, type: !171)
!1991 = distinct !DILexicalBlock(scope: !1992, file: !682, line: 120, column: 5)
!1992 = distinct !DILexicalBlock(scope: !1988, file: !682, line: 118, column: 7)
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
!2006 = distinct !DILexicalBlock(scope: !1991, file: !682, line: 122, column: 11)
!2007 = !DILocation(line: 0, scope: !2006)
!2008 = !DILocation(line: 122, column: 11, scope: !1991)
!2009 = !DILocation(line: 123, column: 9, scope: !2006)
!2010 = !DILocation(line: 126, column: 9, scope: !2006)
!2011 = !DILocation(line: 128, column: 14, scope: !1991)
!2012 = !DILocation(line: 128, column: 7, scope: !1991)
!2013 = !DILocation(line: 133, column: 42, scope: !2014)
!2014 = distinct !DILexicalBlock(scope: !1988, file: !682, line: 133, column: 7)
!2015 = !DILocation(line: 133, column: 28, scope: !2014)
!2016 = !DILocation(line: 133, column: 50, scope: !2014)
!2017 = !DILocation(line: 133, column: 7, scope: !1988)
!2018 = !DILocation(line: 134, column: 12, scope: !2014)
!2019 = !DILocation(line: 134, column: 5, scope: !2014)
!2020 = !DILocation(line: 135, column: 1, scope: !1988)
!2021 = !DISubprogram(name: "_exit", scope: !2022, file: !2022, line: 624, type: !1088, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !1148)
!2022 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!2023 = distinct !DISubprogram(name: "verror", scope: !697, file: !697, line: 251, type: !2024, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !696, retainedNodes: !2026)
!2024 = !DISubroutineType(types: !2025)
!2025 = !{null, !89, !89, !171, !707}
!2026 = !{!2027, !2028, !2029, !2030}
!2027 = !DILocalVariable(name: "status", arg: 1, scope: !2023, file: !697, line: 251, type: !89)
!2028 = !DILocalVariable(name: "errnum", arg: 2, scope: !2023, file: !697, line: 251, type: !89)
!2029 = !DILocalVariable(name: "message", arg: 3, scope: !2023, file: !697, line: 251, type: !171)
!2030 = !DILocalVariable(name: "args", arg: 4, scope: !2023, file: !697, line: 251, type: !707)
!2031 = !DILocation(line: 0, scope: !2023)
!2032 = !DILocation(line: 261, column: 3, scope: !2023)
!2033 = !DILocation(line: 265, column: 7, scope: !2034)
!2034 = distinct !DILexicalBlock(scope: !2023, file: !697, line: 265, column: 7)
!2035 = !DILocation(line: 265, column: 7, scope: !2023)
!2036 = !DILocation(line: 266, column: 5, scope: !2034)
!2037 = !DILocation(line: 272, column: 7, scope: !2038)
!2038 = distinct !DILexicalBlock(scope: !2034, file: !697, line: 268, column: 5)
!2039 = !DILocation(line: 276, column: 3, scope: !2023)
!2040 = !DILocation(line: 282, column: 1, scope: !2023)
!2041 = distinct !DISubprogram(name: "flush_stdout", scope: !697, file: !697, line: 163, type: !741, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !696, retainedNodes: !2042)
!2042 = !{!2043}
!2043 = !DILocalVariable(name: "stdout_fd", scope: !2041, file: !697, line: 166, type: !89)
!2044 = !DILocation(line: 0, scope: !2041)
!2045 = !DILocalVariable(name: "fd", arg: 1, scope: !2046, file: !697, line: 145, type: !89)
!2046 = distinct !DISubprogram(name: "is_open", scope: !697, file: !697, line: 145, type: !1948, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !696, retainedNodes: !2047)
!2047 = !{!2045}
!2048 = !DILocation(line: 0, scope: !2046, inlinedAt: !2049)
!2049 = distinct !DILocation(line: 182, column: 25, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !2041, file: !697, line: 182, column: 7)
!2051 = !DILocation(line: 157, column: 15, scope: !2046, inlinedAt: !2049)
!2052 = !DILocation(line: 157, column: 12, scope: !2046, inlinedAt: !2049)
!2053 = !DILocation(line: 182, column: 7, scope: !2041)
!2054 = !DILocation(line: 184, column: 5, scope: !2050)
!2055 = !DILocation(line: 185, column: 1, scope: !2041)
!2056 = distinct !DISubprogram(name: "error_tail", scope: !697, file: !697, line: 219, type: !2024, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !696, retainedNodes: !2057)
!2057 = !{!2058, !2059, !2060, !2061}
!2058 = !DILocalVariable(name: "status", arg: 1, scope: !2056, file: !697, line: 219, type: !89)
!2059 = !DILocalVariable(name: "errnum", arg: 2, scope: !2056, file: !697, line: 219, type: !89)
!2060 = !DILocalVariable(name: "message", arg: 3, scope: !2056, file: !697, line: 219, type: !171)
!2061 = !DILocalVariable(name: "args", arg: 4, scope: !2056, file: !697, line: 219, type: !707)
!2062 = !DILocation(line: 0, scope: !2056)
!2063 = !DILocation(line: 229, column: 13, scope: !2056)
!2064 = !DILocalVariable(name: "__stream", arg: 1, scope: !2065, file: !1150, line: 132, type: !2068)
!2065 = distinct !DISubprogram(name: "vfprintf", scope: !1150, file: !1150, line: 132, type: !2066, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !696, retainedNodes: !2103)
!2066 = !DISubroutineType(types: !2067)
!2067 = !{!89, !2068, !1154, !707}
!2068 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2069)
!2069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2070, size: 64)
!2070 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !115, line: 7, baseType: !2071)
!2071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !117, line: 49, size: 1728, elements: !2072)
!2072 = !{!2073, !2074, !2075, !2076, !2077, !2078, !2079, !2080, !2081, !2082, !2083, !2084, !2085, !2086, !2088, !2089, !2090, !2091, !2092, !2093, !2094, !2095, !2096, !2097, !2098, !2099, !2100, !2101, !2102}
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2071, file: !117, line: 51, baseType: !89, size: 32)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2071, file: !117, line: 54, baseType: !121, size: 64, offset: 64)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2071, file: !117, line: 55, baseType: !121, size: 64, offset: 128)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2071, file: !117, line: 56, baseType: !121, size: 64, offset: 192)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2071, file: !117, line: 57, baseType: !121, size: 64, offset: 256)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2071, file: !117, line: 58, baseType: !121, size: 64, offset: 320)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2071, file: !117, line: 59, baseType: !121, size: 64, offset: 384)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2071, file: !117, line: 60, baseType: !121, size: 64, offset: 448)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2071, file: !117, line: 61, baseType: !121, size: 64, offset: 512)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2071, file: !117, line: 64, baseType: !121, size: 64, offset: 576)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2071, file: !117, line: 65, baseType: !121, size: 64, offset: 640)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2071, file: !117, line: 66, baseType: !121, size: 64, offset: 704)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2071, file: !117, line: 68, baseType: !133, size: 64, offset: 768)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2071, file: !117, line: 70, baseType: !2087, size: 64, offset: 832)
!2087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2071, size: 64)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2071, file: !117, line: 72, baseType: !89, size: 32, offset: 896)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2071, file: !117, line: 73, baseType: !89, size: 32, offset: 928)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2071, file: !117, line: 74, baseType: !140, size: 64, offset: 960)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2071, file: !117, line: 77, baseType: !144, size: 16, offset: 1024)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2071, file: !117, line: 78, baseType: !146, size: 8, offset: 1040)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2071, file: !117, line: 79, baseType: !59, size: 8, offset: 1048)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2071, file: !117, line: 81, baseType: !149, size: 64, offset: 1088)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2071, file: !117, line: 89, baseType: !152, size: 64, offset: 1152)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2071, file: !117, line: 91, baseType: !154, size: 64, offset: 1216)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2071, file: !117, line: 92, baseType: !157, size: 64, offset: 1280)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2071, file: !117, line: 93, baseType: !2087, size: 64, offset: 1344)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2071, file: !117, line: 94, baseType: !161, size: 64, offset: 1408)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2071, file: !117, line: 95, baseType: !163, size: 64, offset: 1472)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2071, file: !117, line: 96, baseType: !89, size: 32, offset: 1536)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2071, file: !117, line: 98, baseType: !168, size: 160, offset: 1568)
!2103 = !{!2064, !2104, !2105}
!2104 = !DILocalVariable(name: "__fmt", arg: 2, scope: !2065, file: !1150, line: 133, type: !1154)
!2105 = !DILocalVariable(name: "__ap", arg: 3, scope: !2065, file: !1150, line: 133, type: !707)
!2106 = !DILocation(line: 0, scope: !2065, inlinedAt: !2107)
!2107 = distinct !DILocation(line: 229, column: 3, scope: !2056)
!2108 = !DILocation(line: 135, column: 10, scope: !2065, inlinedAt: !2107)
!2109 = !DILocation(line: 232, column: 3, scope: !2056)
!2110 = !DILocation(line: 233, column: 7, scope: !2111)
!2111 = distinct !DILexicalBlock(scope: !2056, file: !697, line: 233, column: 7)
!2112 = !DILocation(line: 233, column: 7, scope: !2056)
!2113 = !DILocalVariable(name: "errnum", arg: 1, scope: !2114, file: !697, line: 188, type: !89)
!2114 = distinct !DISubprogram(name: "print_errno_message", scope: !697, file: !697, line: 188, type: !1088, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !696, retainedNodes: !2115)
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
!2134 = !DILocation(line: 238, column: 3, scope: !2056)
!2135 = !DILocalVariable(name: "__c", arg: 1, scope: !2136, file: !1535, line: 101, type: !89)
!2136 = distinct !DISubprogram(name: "putc_unlocked", scope: !1535, file: !1535, line: 101, type: !2137, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !696, retainedNodes: !2139)
!2137 = !DISubroutineType(types: !2138)
!2138 = !{!89, !89, !2069}
!2139 = !{!2135, !2140}
!2140 = !DILocalVariable(name: "__stream", arg: 2, scope: !2136, file: !1535, line: 101, type: !2069)
!2141 = !DILocation(line: 0, scope: !2136, inlinedAt: !2142)
!2142 = distinct !DILocation(line: 238, column: 3, scope: !2056)
!2143 = !DILocation(line: 103, column: 10, scope: !2136, inlinedAt: !2142)
!2144 = !{!1561, !1099, i64 40}
!2145 = !{!1561, !1099, i64 48}
!2146 = !{!"branch_weights", i32 2000, i32 1}
!2147 = !DILocation(line: 240, column: 3, scope: !2056)
!2148 = !DILocation(line: 241, column: 7, scope: !2149)
!2149 = distinct !DILexicalBlock(scope: !2056, file: !697, line: 241, column: 7)
!2150 = !DILocation(line: 241, column: 7, scope: !2056)
!2151 = !DILocation(line: 242, column: 5, scope: !2149)
!2152 = !DILocation(line: 243, column: 1, scope: !2056)
!2153 = !DISubprogram(name: "__vfprintf_chk", scope: !1150, file: !1150, line: 96, type: !2154, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1148)
!2154 = !DISubroutineType(types: !2155)
!2155 = !{!89, !2068, !89, !1154, !707}
!2156 = !DISubprogram(name: "strerror_r", scope: !1285, file: !1285, line: 444, type: !2157, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1148)
!2157 = !DISubroutineType(types: !2158)
!2158 = !{!121, !89, !121, !163}
!2159 = !DISubprogram(name: "__overflow", scope: !1159, file: !1159, line: 886, type: !2160, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1148)
!2160 = !DISubroutineType(types: !2161)
!2161 = !{!89, !2069, !89}
!2162 = !DISubprogram(name: "fflush_unlocked", scope: !1159, file: !1159, line: 239, type: !2163, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1148)
!2163 = !DISubroutineType(types: !2164)
!2164 = !{!89, !2069}
!2165 = !DISubprogram(name: "fcntl", scope: !2166, file: !2166, line: 149, type: !2167, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1148)
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
!2176 = !DILocalVariable(name: "ap", scope: !2169, file: !697, line: 287, type: !2177)
!2177 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1159, line: 52, baseType: !2178)
!2178 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2179, line: 14, baseType: !2180)
!2179 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4c819f80dd915987182e9ab226e27a5a")
!2180 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !711, baseType: !2181)
!2181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !708, size: 192, elements: !60)
!2182 = !DILocation(line: 0, scope: !2169)
!2183 = !DILocation(line: 287, column: 3, scope: !2169)
!2184 = !DILocation(line: 287, column: 11, scope: !2169)
!2185 = !DILocation(line: 288, column: 3, scope: !2169)
!2186 = !DILocation(line: 289, column: 3, scope: !2169)
!2187 = !DILocation(line: 290, column: 3, scope: !2169)
!2188 = !DILocation(line: 291, column: 1, scope: !2169)
!2189 = !DILocation(line: 0, scope: !704)
!2190 = !DILocation(line: 302, column: 7, scope: !2191)
!2191 = distinct !DILexicalBlock(scope: !704, file: !697, line: 302, column: 7)
!2192 = !DILocation(line: 302, column: 7, scope: !704)
!2193 = !DILocation(line: 307, column: 11, scope: !2194)
!2194 = distinct !DILexicalBlock(scope: !2195, file: !697, line: 307, column: 11)
!2195 = distinct !DILexicalBlock(scope: !2191, file: !697, line: 303, column: 5)
!2196 = !DILocation(line: 307, column: 27, scope: !2194)
!2197 = !DILocation(line: 308, column: 11, scope: !2194)
!2198 = !DILocation(line: 308, column: 28, scope: !2194)
!2199 = !DILocation(line: 308, column: 25, scope: !2194)
!2200 = !DILocation(line: 309, column: 15, scope: !2194)
!2201 = !DILocation(line: 309, column: 33, scope: !2194)
!2202 = !DILocation(line: 310, column: 19, scope: !2194)
!2203 = !DILocation(line: 311, column: 22, scope: !2194)
!2204 = !DILocation(line: 311, column: 56, scope: !2194)
!2205 = !DILocation(line: 307, column: 11, scope: !2195)
!2206 = !DILocation(line: 316, column: 21, scope: !2195)
!2207 = !DILocation(line: 317, column: 23, scope: !2195)
!2208 = !DILocation(line: 318, column: 5, scope: !2195)
!2209 = !DILocation(line: 327, column: 3, scope: !704)
!2210 = !DILocation(line: 331, column: 7, scope: !2211)
!2211 = distinct !DILexicalBlock(scope: !704, file: !697, line: 331, column: 7)
!2212 = !DILocation(line: 331, column: 7, scope: !704)
!2213 = !DILocation(line: 332, column: 5, scope: !2211)
!2214 = !DILocation(line: 338, column: 7, scope: !2215)
!2215 = distinct !DILexicalBlock(scope: !2211, file: !697, line: 334, column: 5)
!2216 = !DILocation(line: 346, column: 3, scope: !704)
!2217 = !DILocation(line: 350, column: 3, scope: !704)
!2218 = !DILocation(line: 356, column: 1, scope: !704)
!2219 = distinct !DISubprogram(name: "error_at_line", scope: !697, file: !697, line: 359, type: !2220, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !696, retainedNodes: !2222)
!2220 = !DISubroutineType(types: !2221)
!2221 = !{null, !89, !89, !171, !79, !171, null}
!2222 = !{!2223, !2224, !2225, !2226, !2227, !2228}
!2223 = !DILocalVariable(name: "status", arg: 1, scope: !2219, file: !697, line: 359, type: !89)
!2224 = !DILocalVariable(name: "errnum", arg: 2, scope: !2219, file: !697, line: 359, type: !89)
!2225 = !DILocalVariable(name: "file_name", arg: 3, scope: !2219, file: !697, line: 359, type: !171)
!2226 = !DILocalVariable(name: "line_number", arg: 4, scope: !2219, file: !697, line: 360, type: !79)
!2227 = !DILocalVariable(name: "message", arg: 5, scope: !2219, file: !697, line: 360, type: !171)
!2228 = !DILocalVariable(name: "ap", scope: !2219, file: !697, line: 362, type: !2177)
!2229 = !DILocation(line: 0, scope: !2219)
!2230 = !DILocation(line: 362, column: 3, scope: !2219)
!2231 = !DILocation(line: 362, column: 11, scope: !2219)
!2232 = !DILocation(line: 363, column: 3, scope: !2219)
!2233 = !DILocation(line: 364, column: 3, scope: !2219)
!2234 = !DILocation(line: 366, column: 3, scope: !2219)
!2235 = !DILocation(line: 367, column: 1, scope: !2219)
!2236 = distinct !DISubprogram(name: "rpl_fclose", scope: !1018, file: !1018, line: 58, type: !2237, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1017, retainedNodes: !2273)
!2237 = !DISubroutineType(types: !2238)
!2238 = !{!89, !2239}
!2239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2240, size: 64)
!2240 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !115, line: 7, baseType: !2241)
!2241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !117, line: 49, size: 1728, elements: !2242)
!2242 = !{!2243, !2244, !2245, !2246, !2247, !2248, !2249, !2250, !2251, !2252, !2253, !2254, !2255, !2256, !2258, !2259, !2260, !2261, !2262, !2263, !2264, !2265, !2266, !2267, !2268, !2269, !2270, !2271, !2272}
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2241, file: !117, line: 51, baseType: !89, size: 32)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2241, file: !117, line: 54, baseType: !121, size: 64, offset: 64)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2241, file: !117, line: 55, baseType: !121, size: 64, offset: 128)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2241, file: !117, line: 56, baseType: !121, size: 64, offset: 192)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2241, file: !117, line: 57, baseType: !121, size: 64, offset: 256)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2241, file: !117, line: 58, baseType: !121, size: 64, offset: 320)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2241, file: !117, line: 59, baseType: !121, size: 64, offset: 384)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2241, file: !117, line: 60, baseType: !121, size: 64, offset: 448)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2241, file: !117, line: 61, baseType: !121, size: 64, offset: 512)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2241, file: !117, line: 64, baseType: !121, size: 64, offset: 576)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2241, file: !117, line: 65, baseType: !121, size: 64, offset: 640)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2241, file: !117, line: 66, baseType: !121, size: 64, offset: 704)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2241, file: !117, line: 68, baseType: !133, size: 64, offset: 768)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2241, file: !117, line: 70, baseType: !2257, size: 64, offset: 832)
!2257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2241, size: 64)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2241, file: !117, line: 72, baseType: !89, size: 32, offset: 896)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2241, file: !117, line: 73, baseType: !89, size: 32, offset: 928)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2241, file: !117, line: 74, baseType: !140, size: 64, offset: 960)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2241, file: !117, line: 77, baseType: !144, size: 16, offset: 1024)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2241, file: !117, line: 78, baseType: !146, size: 8, offset: 1040)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2241, file: !117, line: 79, baseType: !59, size: 8, offset: 1048)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2241, file: !117, line: 81, baseType: !149, size: 64, offset: 1088)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2241, file: !117, line: 89, baseType: !152, size: 64, offset: 1152)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2241, file: !117, line: 91, baseType: !154, size: 64, offset: 1216)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2241, file: !117, line: 92, baseType: !157, size: 64, offset: 1280)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2241, file: !117, line: 93, baseType: !2257, size: 64, offset: 1344)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2241, file: !117, line: 94, baseType: !161, size: 64, offset: 1408)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2241, file: !117, line: 95, baseType: !163, size: 64, offset: 1472)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2241, file: !117, line: 96, baseType: !89, size: 32, offset: 1536)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2241, file: !117, line: 98, baseType: !168, size: 160, offset: 1568)
!2273 = !{!2274, !2275, !2276, !2277}
!2274 = !DILocalVariable(name: "fp", arg: 1, scope: !2236, file: !1018, line: 58, type: !2239)
!2275 = !DILocalVariable(name: "saved_errno", scope: !2236, file: !1018, line: 60, type: !89)
!2276 = !DILocalVariable(name: "fd", scope: !2236, file: !1018, line: 63, type: !89)
!2277 = !DILocalVariable(name: "result", scope: !2236, file: !1018, line: 74, type: !89)
!2278 = !DILocation(line: 0, scope: !2236)
!2279 = !DILocation(line: 63, column: 12, scope: !2236)
!2280 = !DILocation(line: 64, column: 10, scope: !2281)
!2281 = distinct !DILexicalBlock(scope: !2236, file: !1018, line: 64, column: 7)
!2282 = !DILocation(line: 64, column: 7, scope: !2236)
!2283 = !DILocation(line: 65, column: 12, scope: !2281)
!2284 = !DILocation(line: 65, column: 5, scope: !2281)
!2285 = !DILocation(line: 70, column: 9, scope: !2286)
!2286 = distinct !DILexicalBlock(scope: !2236, file: !1018, line: 70, column: 7)
!2287 = !DILocation(line: 70, column: 23, scope: !2286)
!2288 = !DILocation(line: 70, column: 33, scope: !2286)
!2289 = !DILocation(line: 70, column: 26, scope: !2286)
!2290 = !DILocation(line: 70, column: 59, scope: !2286)
!2291 = !DILocation(line: 71, column: 7, scope: !2286)
!2292 = !DILocation(line: 71, column: 10, scope: !2286)
!2293 = !DILocation(line: 70, column: 7, scope: !2236)
!2294 = !DILocation(line: 100, column: 12, scope: !2236)
!2295 = !DILocation(line: 105, column: 7, scope: !2236)
!2296 = !DILocation(line: 72, column: 19, scope: !2286)
!2297 = !DILocation(line: 105, column: 19, scope: !2298)
!2298 = distinct !DILexicalBlock(scope: !2236, file: !1018, line: 105, column: 7)
!2299 = !DILocation(line: 107, column: 13, scope: !2300)
!2300 = distinct !DILexicalBlock(scope: !2298, file: !1018, line: 106, column: 5)
!2301 = !DILocation(line: 109, column: 5, scope: !2300)
!2302 = !DILocation(line: 112, column: 1, scope: !2236)
!2303 = !DISubprogram(name: "fileno", scope: !1159, file: !1159, line: 809, type: !2237, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1148)
!2304 = !DISubprogram(name: "fclose", scope: !1159, file: !1159, line: 178, type: !2237, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1148)
!2305 = !DISubprogram(name: "__freading", scope: !2306, file: !2306, line: 51, type: !2237, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1148)
!2306 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!2307 = !DISubprogram(name: "lseek", scope: !2022, file: !2022, line: 339, type: !2308, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1148)
!2308 = !DISubroutineType(types: !2309)
!2309 = !{!140, !89, !140, !89}
!2310 = distinct !DISubprogram(name: "rpl_fflush", scope: !1020, file: !1020, line: 130, type: !2311, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1019, retainedNodes: !2347)
!2311 = !DISubroutineType(types: !2312)
!2312 = !{!89, !2313}
!2313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2314, size: 64)
!2314 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !115, line: 7, baseType: !2315)
!2315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !117, line: 49, size: 1728, elements: !2316)
!2316 = !{!2317, !2318, !2319, !2320, !2321, !2322, !2323, !2324, !2325, !2326, !2327, !2328, !2329, !2330, !2332, !2333, !2334, !2335, !2336, !2337, !2338, !2339, !2340, !2341, !2342, !2343, !2344, !2345, !2346}
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2315, file: !117, line: 51, baseType: !89, size: 32)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2315, file: !117, line: 54, baseType: !121, size: 64, offset: 64)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2315, file: !117, line: 55, baseType: !121, size: 64, offset: 128)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2315, file: !117, line: 56, baseType: !121, size: 64, offset: 192)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2315, file: !117, line: 57, baseType: !121, size: 64, offset: 256)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2315, file: !117, line: 58, baseType: !121, size: 64, offset: 320)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2315, file: !117, line: 59, baseType: !121, size: 64, offset: 384)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2315, file: !117, line: 60, baseType: !121, size: 64, offset: 448)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2315, file: !117, line: 61, baseType: !121, size: 64, offset: 512)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2315, file: !117, line: 64, baseType: !121, size: 64, offset: 576)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2315, file: !117, line: 65, baseType: !121, size: 64, offset: 640)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2315, file: !117, line: 66, baseType: !121, size: 64, offset: 704)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2315, file: !117, line: 68, baseType: !133, size: 64, offset: 768)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2315, file: !117, line: 70, baseType: !2331, size: 64, offset: 832)
!2331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2315, size: 64)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2315, file: !117, line: 72, baseType: !89, size: 32, offset: 896)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2315, file: !117, line: 73, baseType: !89, size: 32, offset: 928)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2315, file: !117, line: 74, baseType: !140, size: 64, offset: 960)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2315, file: !117, line: 77, baseType: !144, size: 16, offset: 1024)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2315, file: !117, line: 78, baseType: !146, size: 8, offset: 1040)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2315, file: !117, line: 79, baseType: !59, size: 8, offset: 1048)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2315, file: !117, line: 81, baseType: !149, size: 64, offset: 1088)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2315, file: !117, line: 89, baseType: !152, size: 64, offset: 1152)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2315, file: !117, line: 91, baseType: !154, size: 64, offset: 1216)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2315, file: !117, line: 92, baseType: !157, size: 64, offset: 1280)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2315, file: !117, line: 93, baseType: !2331, size: 64, offset: 1344)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2315, file: !117, line: 94, baseType: !161, size: 64, offset: 1408)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2315, file: !117, line: 95, baseType: !163, size: 64, offset: 1472)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2315, file: !117, line: 96, baseType: !89, size: 32, offset: 1536)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2315, file: !117, line: 98, baseType: !168, size: 160, offset: 1568)
!2347 = !{!2348}
!2348 = !DILocalVariable(name: "stream", arg: 1, scope: !2310, file: !1020, line: 130, type: !2313)
!2349 = !DILocation(line: 0, scope: !2310)
!2350 = !DILocation(line: 151, column: 14, scope: !2351)
!2351 = distinct !DILexicalBlock(scope: !2310, file: !1020, line: 151, column: 7)
!2352 = !DILocation(line: 151, column: 22, scope: !2351)
!2353 = !DILocation(line: 151, column: 27, scope: !2351)
!2354 = !DILocation(line: 151, column: 7, scope: !2310)
!2355 = !DILocation(line: 152, column: 12, scope: !2351)
!2356 = !DILocation(line: 152, column: 5, scope: !2351)
!2357 = !DILocalVariable(name: "fp", arg: 1, scope: !2358, file: !1020, line: 42, type: !2313)
!2358 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !1020, file: !1020, line: 42, type: !2359, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1019, retainedNodes: !2361)
!2359 = !DISubroutineType(types: !2360)
!2360 = !{null, !2313}
!2361 = !{!2357}
!2362 = !DILocation(line: 0, scope: !2358, inlinedAt: !2363)
!2363 = distinct !DILocation(line: 157, column: 3, scope: !2310)
!2364 = !DILocation(line: 44, column: 12, scope: !2365, inlinedAt: !2363)
!2365 = distinct !DILexicalBlock(scope: !2358, file: !1020, line: 44, column: 7)
!2366 = !DILocation(line: 44, column: 19, scope: !2365, inlinedAt: !2363)
!2367 = !DILocation(line: 44, column: 7, scope: !2358, inlinedAt: !2363)
!2368 = !DILocation(line: 46, column: 5, scope: !2365, inlinedAt: !2363)
!2369 = !DILocation(line: 159, column: 10, scope: !2310)
!2370 = !DILocation(line: 159, column: 3, scope: !2310)
!2371 = !DILocation(line: 236, column: 1, scope: !2310)
!2372 = !DISubprogram(name: "fflush", scope: !1159, file: !1159, line: 230, type: !2311, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1148)
!2373 = distinct !DISubprogram(name: "freopen_safer", scope: !745, file: !745, line: 60, type: !2374, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1022, retainedNodes: !2410)
!2374 = !DISubroutineType(types: !2375)
!2375 = !{!2376, !171, !171, !2376}
!2376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2377, size: 64)
!2377 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !115, line: 7, baseType: !2378)
!2378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !117, line: 49, size: 1728, elements: !2379)
!2379 = !{!2380, !2381, !2382, !2383, !2384, !2385, !2386, !2387, !2388, !2389, !2390, !2391, !2392, !2393, !2395, !2396, !2397, !2398, !2399, !2400, !2401, !2402, !2403, !2404, !2405, !2406, !2407, !2408, !2409}
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2378, file: !117, line: 51, baseType: !89, size: 32)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2378, file: !117, line: 54, baseType: !121, size: 64, offset: 64)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2378, file: !117, line: 55, baseType: !121, size: 64, offset: 128)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2378, file: !117, line: 56, baseType: !121, size: 64, offset: 192)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2378, file: !117, line: 57, baseType: !121, size: 64, offset: 256)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2378, file: !117, line: 58, baseType: !121, size: 64, offset: 320)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2378, file: !117, line: 59, baseType: !121, size: 64, offset: 384)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2378, file: !117, line: 60, baseType: !121, size: 64, offset: 448)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2378, file: !117, line: 61, baseType: !121, size: 64, offset: 512)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2378, file: !117, line: 64, baseType: !121, size: 64, offset: 576)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2378, file: !117, line: 65, baseType: !121, size: 64, offset: 640)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2378, file: !117, line: 66, baseType: !121, size: 64, offset: 704)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2378, file: !117, line: 68, baseType: !133, size: 64, offset: 768)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2378, file: !117, line: 70, baseType: !2394, size: 64, offset: 832)
!2394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2378, size: 64)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2378, file: !117, line: 72, baseType: !89, size: 32, offset: 896)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2378, file: !117, line: 73, baseType: !89, size: 32, offset: 928)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2378, file: !117, line: 74, baseType: !140, size: 64, offset: 960)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2378, file: !117, line: 77, baseType: !144, size: 16, offset: 1024)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2378, file: !117, line: 78, baseType: !146, size: 8, offset: 1040)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2378, file: !117, line: 79, baseType: !59, size: 8, offset: 1048)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2378, file: !117, line: 81, baseType: !149, size: 64, offset: 1088)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2378, file: !117, line: 89, baseType: !152, size: 64, offset: 1152)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2378, file: !117, line: 91, baseType: !154, size: 64, offset: 1216)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2378, file: !117, line: 92, baseType: !157, size: 64, offset: 1280)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2378, file: !117, line: 93, baseType: !2394, size: 64, offset: 1344)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2378, file: !117, line: 94, baseType: !161, size: 64, offset: 1408)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2378, file: !117, line: 95, baseType: !163, size: 64, offset: 1472)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2378, file: !117, line: 96, baseType: !89, size: 32, offset: 1536)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2378, file: !117, line: 98, baseType: !168, size: 160, offset: 1568)
!2410 = !{!2411, !2412, !2413, !2414, !2415, !2416, !2417}
!2411 = !DILocalVariable(name: "name", arg: 1, scope: !2373, file: !745, line: 60, type: !171)
!2412 = !DILocalVariable(name: "mode", arg: 2, scope: !2373, file: !745, line: 60, type: !171)
!2413 = !DILocalVariable(name: "f", arg: 3, scope: !2373, file: !745, line: 60, type: !2376)
!2414 = !DILocalVariable(name: "protect_in", scope: !2373, file: !745, line: 68, type: !112)
!2415 = !DILocalVariable(name: "protect_out", scope: !2373, file: !745, line: 69, type: !112)
!2416 = !DILocalVariable(name: "protect_err", scope: !2373, file: !745, line: 70, type: !112)
!2417 = !DILocalVariable(name: "saved_errno", scope: !2373, file: !745, line: 98, type: !89)
!2418 = !DILocation(line: 0, scope: !2373)
!2419 = !DILocation(line: 72, column: 11, scope: !2373)
!2420 = !DILocation(line: 72, column: 3, scope: !2373)
!2421 = !DILocation(line: 75, column: 11, scope: !2422)
!2422 = distinct !DILexicalBlock(scope: !2423, file: !745, line: 75, column: 11)
!2423 = distinct !DILexicalBlock(scope: !2373, file: !745, line: 73, column: 5)
!2424 = !DILocation(line: 75, column: 47, scope: !2422)
!2425 = !DILocation(line: 75, column: 11, scope: !2423)
!2426 = !DILocation(line: 79, column: 11, scope: !2427)
!2427 = distinct !DILexicalBlock(scope: !2423, file: !745, line: 79, column: 11)
!2428 = !DILocation(line: 79, column: 47, scope: !2427)
!2429 = !DILocation(line: 79, column: 11, scope: !2423)
!2430 = !DILocation(line: 83, column: 11, scope: !2431)
!2431 = distinct !DILexicalBlock(scope: !2423, file: !745, line: 83, column: 11)
!2432 = !DILocation(line: 83, column: 45, scope: !2431)
!2433 = !DILocation(line: 90, column: 18, scope: !2434)
!2434 = distinct !DILexicalBlock(scope: !2373, file: !745, line: 90, column: 7)
!2435 = !DILocalVariable(name: "fd", arg: 1, scope: !2436, file: !745, line: 38, type: !89)
!2436 = distinct !DISubprogram(name: "protect_fd", scope: !745, file: !745, line: 38, type: !1600, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1022, retainedNodes: !2437)
!2437 = !{!2435, !2438}
!2438 = !DILocalVariable(name: "value", scope: !2436, file: !745, line: 40, type: !89)
!2439 = !DILocation(line: 0, scope: !2436, inlinedAt: !2440)
!2440 = distinct !DILocation(line: 90, column: 22, scope: !2434)
!2441 = !DILocation(line: 40, column: 15, scope: !2436, inlinedAt: !2440)
!2442 = !DILocation(line: 41, column: 7, scope: !2436, inlinedAt: !2440)
!2443 = !DILocation(line: 45, column: 11, scope: !2444, inlinedAt: !2440)
!2444 = distinct !DILexicalBlock(scope: !2445, file: !745, line: 44, column: 9)
!2445 = distinct !DILexicalBlock(scope: !2446, file: !745, line: 43, column: 11)
!2446 = distinct !DILexicalBlock(scope: !2447, file: !745, line: 42, column: 5)
!2447 = distinct !DILexicalBlock(scope: !2436, file: !745, line: 41, column: 7)
!2448 = !DILocation(line: 46, column: 11, scope: !2444, inlinedAt: !2440)
!2449 = !DILocation(line: 46, column: 17, scope: !2444, inlinedAt: !2440)
!2450 = !DILocation(line: 90, column: 7, scope: !2373)
!2451 = !DILocation(line: 41, column: 13, scope: !2447, inlinedAt: !2440)
!2452 = !DILocation(line: 92, column: 12, scope: !2453)
!2453 = distinct !DILexicalBlock(scope: !2434, file: !745, line: 92, column: 12)
!2454 = !DILocation(line: 92, column: 24, scope: !2453)
!2455 = !DILocation(line: 0, scope: !2436, inlinedAt: !2456)
!2456 = distinct !DILocation(line: 92, column: 28, scope: !2453)
!2457 = !DILocation(line: 40, column: 15, scope: !2436, inlinedAt: !2456)
!2458 = !DILocation(line: 41, column: 13, scope: !2447, inlinedAt: !2456)
!2459 = !DILocation(line: 41, column: 7, scope: !2436, inlinedAt: !2456)
!2460 = !DILocation(line: 45, column: 11, scope: !2444, inlinedAt: !2456)
!2461 = !DILocation(line: 46, column: 11, scope: !2444, inlinedAt: !2456)
!2462 = !DILocation(line: 46, column: 17, scope: !2444, inlinedAt: !2456)
!2463 = !DILocation(line: 47, column: 9, scope: !2444, inlinedAt: !2456)
!2464 = !DILocation(line: 92, column: 12, scope: !2434)
!2465 = !DILocation(line: 94, column: 12, scope: !2466)
!2466 = distinct !DILexicalBlock(scope: !2453, file: !745, line: 94, column: 12)
!2467 = !DILocation(line: 94, column: 24, scope: !2466)
!2468 = !DILocation(line: 0, scope: !2436, inlinedAt: !2469)
!2469 = distinct !DILocation(line: 94, column: 28, scope: !2466)
!2470 = !DILocation(line: 40, column: 15, scope: !2436, inlinedAt: !2469)
!2471 = !DILocation(line: 41, column: 13, scope: !2447, inlinedAt: !2469)
!2472 = !DILocation(line: 41, column: 7, scope: !2436, inlinedAt: !2469)
!2473 = !DILocation(line: 45, column: 11, scope: !2444, inlinedAt: !2469)
!2474 = !DILocation(line: 46, column: 11, scope: !2444, inlinedAt: !2469)
!2475 = !DILocation(line: 46, column: 17, scope: !2444, inlinedAt: !2469)
!2476 = !DILocation(line: 47, column: 9, scope: !2444, inlinedAt: !2469)
!2477 = !DILocation(line: 94, column: 12, scope: !2453)
!2478 = !DILocation(line: 98, column: 21, scope: !2373)
!2479 = !DILocation(line: 99, column: 7, scope: !2373)
!2480 = !DILocation(line: 97, column: 9, scope: !2466)
!2481 = !DILocation(line: 0, scope: !2434)
!2482 = !DILocation(line: 99, column: 7, scope: !2483)
!2483 = distinct !DILexicalBlock(scope: !2373, file: !745, line: 99, column: 7)
!2484 = !DILocation(line: 100, column: 5, scope: !2483)
!2485 = !DILocation(line: 101, column: 7, scope: !2486)
!2486 = distinct !DILexicalBlock(scope: !2373, file: !745, line: 101, column: 7)
!2487 = !DILocation(line: 101, column: 7, scope: !2373)
!2488 = !DILocation(line: 102, column: 5, scope: !2486)
!2489 = !DILocation(line: 103, column: 7, scope: !2373)
!2490 = !DILocation(line: 104, column: 5, scope: !2491)
!2491 = distinct !DILexicalBlock(scope: !2373, file: !745, line: 103, column: 7)
!2492 = !DILocation(line: 105, column: 8, scope: !2493)
!2493 = distinct !DILexicalBlock(scope: !2373, file: !745, line: 105, column: 7)
!2494 = !DILocation(line: 105, column: 7, scope: !2373)
!2495 = !DILocation(line: 106, column: 11, scope: !2493)
!2496 = !DILocation(line: 106, column: 5, scope: !2493)
!2497 = !DILocation(line: 107, column: 3, scope: !2373)
!2498 = !DISubprogram(name: "dup2", scope: !2022, file: !2022, line: 555, type: !2499, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1148)
!2499 = !DISubroutineType(types: !2500)
!2500 = !{!89, !89, !89}
!2501 = !DISubprogram(name: "open", scope: !2166, file: !2166, line: 181, type: !2502, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1148)
!2502 = !DISubroutineType(types: !2503)
!2503 = !{!89, !171, !89, null}
!2504 = !DISubprogram(name: "close", scope: !2022, file: !2022, line: 358, type: !1948, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1148)
!2505 = !DISubprogram(name: "freopen", scope: !1159, file: !1159, line: 265, type: !2506, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1148)
!2506 = !DISubroutineType(types: !2507)
!2507 = !{!2376, !1154, !1154, !2508}
!2508 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2376)
!2509 = distinct !DISubprogram(name: "rpl_fseeko", scope: !1025, file: !1025, line: 28, type: !2510, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1024, retainedNodes: !2547)
!2510 = !DISubroutineType(types: !2511)
!2511 = !{!89, !2512, !2546, !89}
!2512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2513, size: 64)
!2513 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !115, line: 7, baseType: !2514)
!2514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !117, line: 49, size: 1728, elements: !2515)
!2515 = !{!2516, !2517, !2518, !2519, !2520, !2521, !2522, !2523, !2524, !2525, !2526, !2527, !2528, !2529, !2531, !2532, !2533, !2534, !2535, !2536, !2537, !2538, !2539, !2540, !2541, !2542, !2543, !2544, !2545}
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2514, file: !117, line: 51, baseType: !89, size: 32)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2514, file: !117, line: 54, baseType: !121, size: 64, offset: 64)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2514, file: !117, line: 55, baseType: !121, size: 64, offset: 128)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2514, file: !117, line: 56, baseType: !121, size: 64, offset: 192)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2514, file: !117, line: 57, baseType: !121, size: 64, offset: 256)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2514, file: !117, line: 58, baseType: !121, size: 64, offset: 320)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2514, file: !117, line: 59, baseType: !121, size: 64, offset: 384)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2514, file: !117, line: 60, baseType: !121, size: 64, offset: 448)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2514, file: !117, line: 61, baseType: !121, size: 64, offset: 512)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2514, file: !117, line: 64, baseType: !121, size: 64, offset: 576)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2514, file: !117, line: 65, baseType: !121, size: 64, offset: 640)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2514, file: !117, line: 66, baseType: !121, size: 64, offset: 704)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2514, file: !117, line: 68, baseType: !133, size: 64, offset: 768)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2514, file: !117, line: 70, baseType: !2530, size: 64, offset: 832)
!2530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2514, size: 64)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2514, file: !117, line: 72, baseType: !89, size: 32, offset: 896)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2514, file: !117, line: 73, baseType: !89, size: 32, offset: 928)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2514, file: !117, line: 74, baseType: !140, size: 64, offset: 960)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2514, file: !117, line: 77, baseType: !144, size: 16, offset: 1024)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2514, file: !117, line: 78, baseType: !146, size: 8, offset: 1040)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2514, file: !117, line: 79, baseType: !59, size: 8, offset: 1048)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2514, file: !117, line: 81, baseType: !149, size: 64, offset: 1088)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2514, file: !117, line: 89, baseType: !152, size: 64, offset: 1152)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2514, file: !117, line: 91, baseType: !154, size: 64, offset: 1216)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2514, file: !117, line: 92, baseType: !157, size: 64, offset: 1280)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2514, file: !117, line: 93, baseType: !2530, size: 64, offset: 1344)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2514, file: !117, line: 94, baseType: !161, size: 64, offset: 1408)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2514, file: !117, line: 95, baseType: !163, size: 64, offset: 1472)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2514, file: !117, line: 96, baseType: !89, size: 32, offset: 1536)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2514, file: !117, line: 98, baseType: !168, size: 160, offset: 1568)
!2546 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !1159, line: 63, baseType: !140)
!2547 = !{!2548, !2549, !2550, !2551}
!2548 = !DILocalVariable(name: "fp", arg: 1, scope: !2509, file: !1025, line: 28, type: !2512)
!2549 = !DILocalVariable(name: "offset", arg: 2, scope: !2509, file: !1025, line: 28, type: !2546)
!2550 = !DILocalVariable(name: "whence", arg: 3, scope: !2509, file: !1025, line: 28, type: !89)
!2551 = !DILocalVariable(name: "pos", scope: !2552, file: !1025, line: 123, type: !2546)
!2552 = distinct !DILexicalBlock(scope: !2553, file: !1025, line: 119, column: 5)
!2553 = distinct !DILexicalBlock(scope: !2509, file: !1025, line: 55, column: 7)
!2554 = !DILocation(line: 0, scope: !2509)
!2555 = !DILocation(line: 55, column: 12, scope: !2553)
!2556 = !{!1561, !1099, i64 16}
!2557 = !DILocation(line: 55, column: 33, scope: !2553)
!2558 = !{!1561, !1099, i64 8}
!2559 = !DILocation(line: 55, column: 25, scope: !2553)
!2560 = !DILocation(line: 56, column: 7, scope: !2553)
!2561 = !DILocation(line: 56, column: 15, scope: !2553)
!2562 = !DILocation(line: 56, column: 37, scope: !2553)
!2563 = !{!1561, !1099, i64 32}
!2564 = !DILocation(line: 56, column: 29, scope: !2553)
!2565 = !DILocation(line: 57, column: 7, scope: !2553)
!2566 = !DILocation(line: 57, column: 15, scope: !2553)
!2567 = !{!1561, !1099, i64 72}
!2568 = !DILocation(line: 57, column: 29, scope: !2553)
!2569 = !DILocation(line: 55, column: 7, scope: !2509)
!2570 = !DILocation(line: 123, column: 26, scope: !2552)
!2571 = !DILocation(line: 123, column: 19, scope: !2552)
!2572 = !DILocation(line: 0, scope: !2552)
!2573 = !DILocation(line: 124, column: 15, scope: !2574)
!2574 = distinct !DILexicalBlock(scope: !2552, file: !1025, line: 124, column: 11)
!2575 = !DILocation(line: 124, column: 11, scope: !2552)
!2576 = !DILocation(line: 135, column: 19, scope: !2552)
!2577 = !DILocation(line: 136, column: 12, scope: !2552)
!2578 = !DILocation(line: 136, column: 20, scope: !2552)
!2579 = !{!1561, !1471, i64 144}
!2580 = !DILocation(line: 167, column: 7, scope: !2552)
!2581 = !DILocation(line: 169, column: 10, scope: !2509)
!2582 = !DILocation(line: 169, column: 3, scope: !2509)
!2583 = !DILocation(line: 170, column: 1, scope: !2509)
!2584 = !DISubprogram(name: "fseeko", scope: !1159, file: !1159, line: 736, type: !2585, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1148)
!2585 = !DISubroutineType(types: !2586)
!2586 = !{!89, !2512, !140, !89}
!2587 = distinct !DISubprogram(name: "getprogname", scope: !1027, file: !1027, line: 54, type: !2588, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1026, retainedNodes: !1148)
!2588 = !DISubroutineType(types: !2589)
!2589 = !{!171}
!2590 = !DILocation(line: 58, column: 10, scope: !2587)
!2591 = !DILocation(line: 58, column: 3, scope: !2587)
!2592 = distinct !DISubprogram(name: "print_and_abort", scope: !749, file: !749, line: 343, type: !741, scopeLine: 344, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !748, retainedNodes: !1148)
!2593 = !DILocation(line: 353, column: 3, scope: !2592)
!2594 = !DILocation(line: 355, column: 9, scope: !2592)
!2595 = !DILocation(line: 355, column: 3, scope: !2592)
!2596 = distinct !DISubprogram(name: "rpl_obstack_begin", scope: !749, file: !749, line: 161, type: !2597, scopeLine: 165, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !748, retainedNodes: !2633)
!2597 = !DISubroutineType(types: !2598)
!2598 = !{!89, !2599, !163, !163, !304, !315}
!2599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2600, size: 64)
!2600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !278, line: 210, size: 704, elements: !2601)
!2601 = !{!2602, !2603, !2610, !2611, !2612, !2613, !2618, !2619, !2624, !2629, !2630, !2631, !2632}
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !2600, file: !278, line: 212, baseType: !163, size: 64)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !2600, file: !278, line: 213, baseType: !2604, size: 64, offset: 64)
!2604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2605, size: 64)
!2605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !278, line: 203, size: 128, elements: !2606)
!2606 = !{!2607, !2608, !2609}
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !2605, file: !278, line: 205, baseType: !121, size: 64)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !2605, file: !278, line: 206, baseType: !2604, size: 64, offset: 64)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !2605, file: !278, line: 207, baseType: !288, offset: 128)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !2600, file: !278, line: 214, baseType: !121, size: 64, offset: 128)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !2600, file: !278, line: 215, baseType: !121, size: 64, offset: 192)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !2600, file: !278, line: 216, baseType: !121, size: 64, offset: 256)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !2600, file: !278, line: 221, baseType: !2614, size: 64, offset: 320)
!2614 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2600, file: !278, line: 217, size: 64, elements: !2615)
!2615 = !{!2616, !2617}
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "tempint", scope: !2614, file: !278, line: 219, baseType: !163, size: 64)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "tempptr", scope: !2614, file: !278, line: 220, baseType: !161, size: 64)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !2600, file: !278, line: 222, baseType: !163, size: 64, offset: 384)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !2600, file: !278, line: 229, baseType: !2620, size: 64, offset: 448)
!2620 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2600, file: !278, line: 225, size: 64, elements: !2621)
!2621 = !{!2622, !2623}
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "plain", scope: !2620, file: !278, line: 227, baseType: !304, size: 64)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !2620, file: !278, line: 228, baseType: !308, size: 64)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !2600, file: !278, line: 234, baseType: !2625, size: 64, offset: 512)
!2625 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2600, file: !278, line: 230, size: 64, elements: !2626)
!2626 = !{!2627, !2628}
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "plain", scope: !2625, file: !278, line: 232, baseType: !315, size: 64)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !2625, file: !278, line: 233, baseType: !319, size: 64)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !2600, file: !278, line: 236, baseType: !161, size: 64, offset: 576)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !2600, file: !278, line: 237, baseType: !79, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !2600, file: !278, line: 238, baseType: !79, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !2600, file: !278, line: 242, baseType: !79, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!2633 = !{!2634, !2635, !2636, !2637, !2638}
!2634 = !DILocalVariable(name: "h", arg: 1, scope: !2596, file: !749, line: 161, type: !2599)
!2635 = !DILocalVariable(name: "size", arg: 2, scope: !2596, file: !749, line: 162, type: !163)
!2636 = !DILocalVariable(name: "alignment", arg: 3, scope: !2596, file: !749, line: 162, type: !163)
!2637 = !DILocalVariable(name: "chunkfun", arg: 4, scope: !2596, file: !749, line: 163, type: !304)
!2638 = !DILocalVariable(name: "freefun", arg: 5, scope: !2596, file: !749, line: 164, type: !315)
!2639 = !DILocation(line: 0, scope: !2596)
!2640 = !DILocation(line: 166, column: 6, scope: !2596)
!2641 = !DILocation(line: 166, column: 21, scope: !2596)
!2642 = !DILocation(line: 167, column: 6, scope: !2596)
!2643 = !DILocation(line: 167, column: 20, scope: !2596)
!2644 = !DILocation(line: 168, column: 6, scope: !2596)
!2645 = !DILocation(line: 168, column: 20, scope: !2596)
!2646 = !DILocalVariable(name: "h", arg: 1, scope: !2647, file: !749, line: 114, type: !2599)
!2647 = distinct !DISubprogram(name: "_obstack_begin_worker", scope: !749, file: !749, line: 114, type: !2648, scopeLine: 116, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !748, retainedNodes: !2650)
!2648 = !DISubroutineType(types: !2649)
!2649 = !{!89, !2599, !163, !163}
!2650 = !{!2646, !2651, !2652, !2653, !2654, !2655, !2656, !2657}
!2651 = !DILocalVariable(name: "chunk_size", arg: 2, scope: !2647, file: !749, line: 115, type: !163)
!2652 = !DILocalVariable(name: "alignment", arg: 3, scope: !2647, file: !749, line: 115, type: !163)
!2653 = !DILocalVariable(name: "chunk", scope: !2647, file: !749, line: 117, type: !2604)
!2654 = !DILocalVariable(name: "aligned_prefix_size", scope: !2647, file: !749, line: 127, type: !163)
!2655 = !DILocalVariable(name: "v", scope: !2647, file: !749, line: 128, type: !112)
!2656 = !DILocalVariable(name: "size", scope: !2647, file: !749, line: 131, type: !163)
!2657 = !DILocalVariable(name: "good_size", scope: !2658, file: !749, line: 137, type: !89)
!2658 = distinct !DILexicalBlock(scope: !2659, file: !749, line: 133, column: 5)
!2659 = distinct !DILexicalBlock(scope: !2647, file: !749, line: 132, column: 7)
!2660 = !DILocation(line: 0, scope: !2647, inlinedAt: !2661)
!2661 = distinct !DILocation(line: 169, column: 10, scope: !2596)
!2662 = !DILocation(line: 119, column: 17, scope: !2663, inlinedAt: !2661)
!2663 = distinct !DILexicalBlock(scope: !2647, file: !749, line: 119, column: 7)
!2664 = !DILocation(line: 128, column: 65, scope: !2647, inlinedAt: !2661)
!2665 = !DILocalVariable(name: "r", arg: 1, scope: !2666, file: !749, line: 78, type: !1041)
!2666 = distinct !DISubprogram(name: "align_chunk_size_up", scope: !749, file: !749, line: 78, type: !2667, scopeLine: 80, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !748, retainedNodes: !2669)
!2667 = !DISubroutineType(types: !2668)
!2668 = !{!112, !1041, !163, !163}
!2669 = !{!2665, !2670, !2671}
!2670 = !DILocalVariable(name: "mask", arg: 2, scope: !2666, file: !749, line: 78, type: !163)
!2671 = !DILocalVariable(name: "size", arg: 3, scope: !2666, file: !749, line: 79, type: !163)
!2672 = !DILocation(line: 0, scope: !2666, inlinedAt: !2673)
!2673 = distinct !DILocation(line: 128, column: 12, scope: !2647, inlinedAt: !2661)
!2674 = !DILocation(line: 81, column: 10, scope: !2666, inlinedAt: !2673)
!2675 = !DILocation(line: 132, column: 12, scope: !2659, inlinedAt: !2661)
!2676 = !DILocation(line: 132, column: 7, scope: !2647, inlinedAt: !2661)
!2677 = !DILocation(line: 142, column: 17, scope: !2647, inlinedAt: !2661)
!2678 = !{!1470, !1471, i64 0}
!2679 = !DILocation(line: 143, column: 6, scope: !2647, inlinedAt: !2661)
!2680 = !DILocation(line: 143, column: 21, scope: !2647, inlinedAt: !2661)
!2681 = !DILocation(line: 145, column: 22, scope: !2647, inlinedAt: !2661)
!2682 = !DILocation(line: 145, column: 14, scope: !2647, inlinedAt: !2661)
!2683 = !DILocation(line: 145, column: 20, scope: !2647, inlinedAt: !2661)
!2684 = !{!1470, !1099, i64 8}
!2685 = !DILocation(line: 146, column: 7, scope: !2647, inlinedAt: !2661)
!2686 = !DILocalVariable(name: "h", arg: 1, scope: !2687, file: !749, line: 89, type: !2599)
!2687 = distinct !DISubprogram(name: "call_chunkfun", scope: !749, file: !749, line: 89, type: !2688, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !748, retainedNodes: !2690)
!2688 = !DISubroutineType(types: !2689)
!2689 = !{!161, !2599, !163}
!2690 = !{!2686, !2691}
!2691 = !DILocalVariable(name: "size", arg: 2, scope: !2687, file: !749, line: 89, type: !163)
!2692 = !DILocation(line: 0, scope: !2687, inlinedAt: !2693)
!2693 = distinct !DILocation(line: 145, column: 33, scope: !2647, inlinedAt: !2661)
!2694 = !DILocation(line: 94, column: 12, scope: !2695, inlinedAt: !2693)
!2695 = distinct !DILexicalBlock(scope: !2687, file: !749, line: 91, column: 7)
!2696 = !DILocation(line: 146, column: 8, scope: !2697, inlinedAt: !2661)
!2697 = distinct !DILexicalBlock(scope: !2647, file: !749, line: 146, column: 7)
!2698 = !DILocation(line: 147, column: 7, scope: !2697, inlinedAt: !2661)
!2699 = !DILocation(line: 147, column: 5, scope: !2697, inlinedAt: !2661)
!2700 = !DILocation(line: 148, column: 35, scope: !2647, inlinedAt: !2661)
!2701 = !DILocation(line: 148, column: 21, scope: !2647, inlinedAt: !2661)
!2702 = !DILocation(line: 148, column: 33, scope: !2647, inlinedAt: !2661)
!2703 = !DILocation(line: 148, column: 6, scope: !2647, inlinedAt: !2661)
!2704 = !DILocation(line: 148, column: 16, scope: !2647, inlinedAt: !2661)
!2705 = !DILocation(line: 151, column: 5, scope: !2647, inlinedAt: !2661)
!2706 = !DILocation(line: 150, column: 33, scope: !2647, inlinedAt: !2661)
!2707 = !DILocation(line: 150, column: 6, scope: !2647, inlinedAt: !2661)
!2708 = !DILocation(line: 150, column: 18, scope: !2647, inlinedAt: !2661)
!2709 = !DILocation(line: 153, column: 10, scope: !2647, inlinedAt: !2661)
!2710 = !DILocation(line: 153, column: 15, scope: !2647, inlinedAt: !2661)
!2711 = !DILocation(line: 155, column: 25, scope: !2647, inlinedAt: !2661)
!2712 = !DILocation(line: 156, column: 19, scope: !2647, inlinedAt: !2661)
!2713 = !DILocation(line: 169, column: 3, scope: !2596)
!2714 = distinct !DISubprogram(name: "rpl_obstack_begin_1", scope: !749, file: !749, line: 173, type: !2715, scopeLine: 178, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !748, retainedNodes: !2717)
!2715 = !DISubroutineType(types: !2716)
!2716 = !{!89, !2599, !163, !163, !308, !319, !161}
!2717 = !{!2718, !2719, !2720, !2721, !2722, !2723}
!2718 = !DILocalVariable(name: "h", arg: 1, scope: !2714, file: !749, line: 173, type: !2599)
!2719 = !DILocalVariable(name: "size", arg: 2, scope: !2714, file: !749, line: 174, type: !163)
!2720 = !DILocalVariable(name: "alignment", arg: 3, scope: !2714, file: !749, line: 174, type: !163)
!2721 = !DILocalVariable(name: "chunkfun", arg: 4, scope: !2714, file: !749, line: 175, type: !308)
!2722 = !DILocalVariable(name: "freefun", arg: 5, scope: !2714, file: !749, line: 176, type: !319)
!2723 = !DILocalVariable(name: "arg", arg: 6, scope: !2714, file: !749, line: 177, type: !161)
!2724 = !DILocation(line: 0, scope: !2714)
!2725 = !DILocation(line: 179, column: 6, scope: !2714)
!2726 = !DILocation(line: 179, column: 21, scope: !2714)
!2727 = !DILocation(line: 180, column: 6, scope: !2714)
!2728 = !DILocation(line: 180, column: 20, scope: !2714)
!2729 = !DILocation(line: 181, column: 6, scope: !2714)
!2730 = !DILocation(line: 181, column: 16, scope: !2714)
!2731 = !{!1470, !1099, i64 72}
!2732 = !DILocation(line: 182, column: 6, scope: !2714)
!2733 = !DILocation(line: 182, column: 20, scope: !2714)
!2734 = !DILocation(line: 0, scope: !2647, inlinedAt: !2735)
!2735 = distinct !DILocation(line: 183, column: 10, scope: !2714)
!2736 = !DILocation(line: 119, column: 17, scope: !2663, inlinedAt: !2735)
!2737 = !DILocation(line: 128, column: 65, scope: !2647, inlinedAt: !2735)
!2738 = !DILocation(line: 0, scope: !2666, inlinedAt: !2739)
!2739 = distinct !DILocation(line: 128, column: 12, scope: !2647, inlinedAt: !2735)
!2740 = !DILocation(line: 81, column: 10, scope: !2666, inlinedAt: !2739)
!2741 = !DILocation(line: 132, column: 12, scope: !2659, inlinedAt: !2735)
!2742 = !DILocation(line: 132, column: 7, scope: !2647, inlinedAt: !2735)
!2743 = !DILocation(line: 142, column: 17, scope: !2647, inlinedAt: !2735)
!2744 = !DILocation(line: 143, column: 6, scope: !2647, inlinedAt: !2735)
!2745 = !DILocation(line: 143, column: 21, scope: !2647, inlinedAt: !2735)
!2746 = !DILocation(line: 145, column: 22, scope: !2647, inlinedAt: !2735)
!2747 = !DILocation(line: 145, column: 14, scope: !2647, inlinedAt: !2735)
!2748 = !DILocation(line: 145, column: 20, scope: !2647, inlinedAt: !2735)
!2749 = !DILocation(line: 146, column: 7, scope: !2647, inlinedAt: !2735)
!2750 = !DILocation(line: 0, scope: !2687, inlinedAt: !2751)
!2751 = distinct !DILocation(line: 145, column: 33, scope: !2647, inlinedAt: !2735)
!2752 = !DILocation(line: 92, column: 12, scope: !2695, inlinedAt: !2751)
!2753 = !DILocation(line: 146, column: 8, scope: !2697, inlinedAt: !2735)
!2754 = !DILocation(line: 147, column: 7, scope: !2697, inlinedAt: !2735)
!2755 = !DILocation(line: 147, column: 5, scope: !2697, inlinedAt: !2735)
!2756 = !DILocation(line: 148, column: 35, scope: !2647, inlinedAt: !2735)
!2757 = !DILocation(line: 148, column: 21, scope: !2647, inlinedAt: !2735)
!2758 = !DILocation(line: 148, column: 33, scope: !2647, inlinedAt: !2735)
!2759 = !DILocation(line: 148, column: 6, scope: !2647, inlinedAt: !2735)
!2760 = !DILocation(line: 148, column: 16, scope: !2647, inlinedAt: !2735)
!2761 = !DILocation(line: 151, column: 5, scope: !2647, inlinedAt: !2735)
!2762 = !DILocation(line: 150, column: 33, scope: !2647, inlinedAt: !2735)
!2763 = !DILocation(line: 150, column: 6, scope: !2647, inlinedAt: !2735)
!2764 = !DILocation(line: 150, column: 18, scope: !2647, inlinedAt: !2735)
!2765 = !DILocation(line: 153, column: 10, scope: !2647, inlinedAt: !2735)
!2766 = !DILocation(line: 153, column: 15, scope: !2647, inlinedAt: !2735)
!2767 = !DILocation(line: 155, column: 25, scope: !2647, inlinedAt: !2735)
!2768 = !DILocation(line: 156, column: 19, scope: !2647, inlinedAt: !2735)
!2769 = !DILocation(line: 183, column: 3, scope: !2714)
!2770 = distinct !DISubprogram(name: "rpl_obstack_newchunk", scope: !749, file: !749, line: 194, type: !2771, scopeLine: 195, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !748, retainedNodes: !2773)
!2771 = !DISubroutineType(types: !2772)
!2772 = !{null, !2599, !163}
!2773 = !{!2774, !2775, !2776, !2777, !2778, !2779, !2780, !2781, !2782}
!2774 = !DILocalVariable(name: "h", arg: 1, scope: !2770, file: !749, line: 194, type: !2599)
!2775 = !DILocalVariable(name: "length", arg: 2, scope: !2770, file: !749, line: 194, type: !163)
!2776 = !DILocalVariable(name: "old_chunk", scope: !2770, file: !749, line: 196, type: !2604)
!2777 = !DILocalVariable(name: "obj_size", scope: !2770, file: !749, line: 197, type: !163)
!2778 = !DILocalVariable(name: "s", scope: !2770, file: !749, line: 200, type: !163)
!2779 = !DILocalVariable(name: "new_size", scope: !2770, file: !749, line: 200, type: !163)
!2780 = !DILocalVariable(name: "v", scope: !2770, file: !749, line: 201, type: !112)
!2781 = !DILocalVariable(name: "new_chunk", scope: !2770, file: !749, line: 213, type: !2604)
!2782 = !DILocalVariable(name: "object_base", scope: !2770, file: !749, line: 225, type: !121)
!2783 = !DILocation(line: 0, scope: !2770)
!2784 = !DILocation(line: 196, column: 41, scope: !2770)
!2785 = !DILocation(line: 197, column: 24, scope: !2770)
!2786 = !DILocation(line: 197, column: 39, scope: !2770)
!2787 = !DILocation(line: 197, column: 34, scope: !2770)
!2788 = !DILocation(line: 202, column: 8, scope: !2770)
!2789 = !DILocation(line: 203, column: 36, scope: !2770)
!2790 = !DILocation(line: 0, scope: !2666, inlinedAt: !2791)
!2791 = distinct !DILocation(line: 203, column: 8, scope: !2770)
!2792 = !DILocation(line: 81, column: 10, scope: !2666, inlinedAt: !2791)
!2793 = !DILocation(line: 203, column: 5, scope: !2770)
!2794 = !DILocation(line: 204, column: 8, scope: !2770)
!2795 = !DILocation(line: 204, column: 5, scope: !2770)
!2796 = !DILocation(line: 207, column: 7, scope: !2797)
!2797 = distinct !DILexicalBlock(scope: !2770, file: !749, line: 207, column: 7)
!2798 = !DILocation(line: 207, column: 7, scope: !2770)
!2799 = !DILocation(line: 209, column: 21, scope: !2800)
!2800 = distinct !DILexicalBlock(scope: !2770, file: !749, line: 209, column: 7)
!2801 = !DILocation(line: 209, column: 7, scope: !2770)
!2802 = !DILocation(line: 214, column: 5, scope: !2770)
!2803 = !DILocation(line: 0, scope: !2687, inlinedAt: !2804)
!2804 = distinct !DILocation(line: 214, column: 16, scope: !2770)
!2805 = !DILocation(line: 91, column: 10, scope: !2695, inlinedAt: !2804)
!2806 = !DILocation(line: 91, column: 7, scope: !2695, inlinedAt: !2804)
!2807 = !DILocation(line: 0, scope: !2695, inlinedAt: !2804)
!2808 = !DILocation(line: 91, column: 7, scope: !2687, inlinedAt: !2804)
!2809 = !DILocation(line: 92, column: 34, scope: !2695, inlinedAt: !2804)
!2810 = !DILocation(line: 92, column: 12, scope: !2695, inlinedAt: !2804)
!2811 = !DILocation(line: 92, column: 5, scope: !2695, inlinedAt: !2804)
!2812 = !DILocation(line: 94, column: 12, scope: !2695, inlinedAt: !2804)
!2813 = !DILocation(line: 94, column: 5, scope: !2695, inlinedAt: !2804)
!2814 = !DILocation(line: 215, column: 8, scope: !2815)
!2815 = distinct !DILexicalBlock(scope: !2770, file: !749, line: 215, column: 7)
!2816 = !DILocation(line: 215, column: 7, scope: !2770)
!2817 = !DILocation(line: 216, column: 7, scope: !2815)
!2818 = !DILocation(line: 216, column: 5, scope: !2815)
!2819 = !DILocation(line: 217, column: 12, scope: !2770)
!2820 = !DILocation(line: 218, column: 14, scope: !2770)
!2821 = !DILocation(line: 218, column: 19, scope: !2770)
!2822 = !DILocation(line: 220, column: 5, scope: !2770)
!2823 = !DILocation(line: 219, column: 25, scope: !2770)
!2824 = !DILocation(line: 219, column: 37, scope: !2770)
!2825 = !DILocation(line: 219, column: 20, scope: !2770)
!2826 = !DILocation(line: 226, column: 5, scope: !2770)
!2827 = !DILocation(line: 229, column: 27, scope: !2770)
!2828 = !DILocalVariable(name: "__dest", arg: 1, scope: !2829, file: !2830, line: 26, type: !2833)
!2829 = distinct !DISubprogram(name: "memcpy", scope: !2830, file: !2830, line: 26, type: !2831, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !748, retainedNodes: !2834)
!2830 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!2831 = !DISubroutineType(types: !2832)
!2832 = !{!161, !2833, !1312, !163}
!2833 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !161)
!2834 = !{!2828, !2835, !2836}
!2835 = !DILocalVariable(name: "__src", arg: 2, scope: !2829, file: !2830, line: 26, type: !1312)
!2836 = !DILocalVariable(name: "__len", arg: 3, scope: !2829, file: !2830, line: 26, type: !163)
!2837 = !DILocation(line: 0, scope: !2829, inlinedAt: !2838)
!2838 = distinct !DILocation(line: 229, column: 3, scope: !2770)
!2839 = !DILocation(line: 29, column: 10, scope: !2829, inlinedAt: !2838)
!2840 = !DILocation(line: 234, column: 11, scope: !2841)
!2841 = distinct !DILexicalBlock(scope: !2770, file: !749, line: 234, column: 7)
!2842 = !DILocation(line: 234, column: 8, scope: !2841)
!2843 = !DILocation(line: 235, column: 7, scope: !2841)
!2844 = !DILocation(line: 235, column: 14, scope: !2841)
!2845 = !DILocation(line: 236, column: 14, scope: !2841)
!2846 = !DILocation(line: 236, column: 11, scope: !2841)
!2847 = !DILocation(line: 234, column: 7, scope: !2770)
!2848 = !DILocation(line: 239, column: 36, scope: !2849)
!2849 = distinct !DILexicalBlock(scope: !2841, file: !749, line: 238, column: 5)
!2850 = !DILocation(line: 239, column: 23, scope: !2849)
!2851 = !DILocalVariable(name: "h", arg: 1, scope: !2852, file: !749, line: 98, type: !2599)
!2852 = distinct !DISubprogram(name: "call_freefun", scope: !749, file: !749, line: 98, type: !2853, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !748, retainedNodes: !2855)
!2853 = !DISubroutineType(types: !2854)
!2854 = !{null, !2599, !161}
!2855 = !{!2851, !2856}
!2856 = !DILocalVariable(name: "old_chunk", arg: 2, scope: !2852, file: !749, line: 98, type: !161)
!2857 = !DILocation(line: 0, scope: !2852, inlinedAt: !2858)
!2858 = distinct !DILocation(line: 240, column: 7, scope: !2849)
!2859 = !DILocation(line: 100, column: 10, scope: !2860, inlinedAt: !2858)
!2860 = distinct !DILexicalBlock(scope: !2852, file: !749, line: 100, column: 7)
!2861 = !DILocation(line: 100, column: 7, scope: !2860, inlinedAt: !2858)
!2862 = !DILocation(line: 0, scope: !2860, inlinedAt: !2858)
!2863 = !DILocation(line: 100, column: 7, scope: !2852, inlinedAt: !2858)
!2864 = !DILocation(line: 101, column: 26, scope: !2860, inlinedAt: !2858)
!2865 = !DILocation(line: 101, column: 5, scope: !2860, inlinedAt: !2858)
!2866 = !DILocation(line: 103, column: 5, scope: !2860, inlinedAt: !2858)
!2867 = !DILocation(line: 243, column: 18, scope: !2770)
!2868 = !DILocation(line: 244, column: 33, scope: !2770)
!2869 = !DILocation(line: 244, column: 16, scope: !2770)
!2870 = !DILocation(line: 246, column: 25, scope: !2770)
!2871 = !DILocation(line: 247, column: 1, scope: !2770)
!2872 = distinct !DISubprogram(name: "rpl_obstack_allocated_p", scope: !749, file: !749, line: 259, type: !2873, scopeLine: 260, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !748, retainedNodes: !2875)
!2873 = !DISubroutineType(types: !2874)
!2874 = !{!89, !2599, !161}
!2875 = !{!2876, !2877, !2878, !2879}
!2876 = !DILocalVariable(name: "h", arg: 1, scope: !2872, file: !749, line: 259, type: !2599)
!2877 = !DILocalVariable(name: "obj", arg: 2, scope: !2872, file: !749, line: 259, type: !161)
!2878 = !DILocalVariable(name: "lp", scope: !2872, file: !749, line: 261, type: !2604)
!2879 = !DILocalVariable(name: "plp", scope: !2880, file: !749, line: 268, type: !2604)
!2880 = distinct !DILexicalBlock(scope: !2872, file: !749, line: 267, column: 5)
!2881 = !DILocation(line: 0, scope: !2872)
!2882 = !DILocation(line: 262, column: 8, scope: !2872)
!2883 = !DILocation(line: 266, column: 13, scope: !2872)
!2884 = !DILocation(line: 266, column: 21, scope: !2872)
!2885 = !DILocation(line: 266, column: 37, scope: !2872)
!2886 = !DILocation(line: 266, column: 44, scope: !2872)
!2887 = !DILocation(line: 266, column: 62, scope: !2872)
!2888 = !DILocation(line: 266, column: 68, scope: !2872)
!2889 = !DILocation(line: 266, column: 3, scope: !2872)
!2890 = !DILocation(line: 268, column: 40, scope: !2880)
!2891 = !DILocation(line: 0, scope: !2880)
!2892 = distinct !{!2892, !2889, !2893, !1211}
!2893 = !DILocation(line: 270, column: 5, scope: !2872)
!2894 = !DILocation(line: 271, column: 3, scope: !2872)
!2895 = distinct !DISubprogram(name: "rpl_obstack_free", scope: !749, file: !749, line: 278, type: !2853, scopeLine: 279, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !748, retainedNodes: !2896)
!2896 = !{!2897, !2898, !2899, !2900}
!2897 = !DILocalVariable(name: "h", arg: 1, scope: !2895, file: !749, line: 278, type: !2599)
!2898 = !DILocalVariable(name: "obj", arg: 2, scope: !2895, file: !749, line: 278, type: !161)
!2899 = !DILocalVariable(name: "lp", scope: !2895, file: !749, line: 280, type: !2604)
!2900 = !DILocalVariable(name: "plp", scope: !2901, file: !749, line: 287, type: !2604)
!2901 = distinct !DILexicalBlock(scope: !2895, file: !749, line: 286, column: 5)
!2902 = !DILocation(line: 0, scope: !2895)
!2903 = !DILocation(line: 281, column: 8, scope: !2895)
!2904 = !DILocation(line: 285, column: 13, scope: !2895)
!2905 = !DILocation(line: 285, column: 21, scope: !2895)
!2906 = !DILocation(line: 285, column: 37, scope: !2895)
!2907 = !DILocation(line: 285, column: 44, scope: !2895)
!2908 = !DILocation(line: 285, column: 62, scope: !2895)
!2909 = !DILocation(line: 285, column: 68, scope: !2895)
!2910 = !DILocation(line: 285, column: 3, scope: !2895)
!2911 = !DILocation(line: 287, column: 40, scope: !2901)
!2912 = !DILocation(line: 0, scope: !2901)
!2913 = !DILocation(line: 0, scope: !2852, inlinedAt: !2914)
!2914 = distinct !DILocation(line: 288, column: 7, scope: !2901)
!2915 = !DILocation(line: 100, column: 10, scope: !2860, inlinedAt: !2914)
!2916 = !DILocation(line: 100, column: 7, scope: !2860, inlinedAt: !2914)
!2917 = !DILocation(line: 0, scope: !2860, inlinedAt: !2914)
!2918 = !DILocation(line: 100, column: 7, scope: !2852, inlinedAt: !2914)
!2919 = !DILocation(line: 101, column: 26, scope: !2860, inlinedAt: !2914)
!2920 = !DILocation(line: 101, column: 5, scope: !2860, inlinedAt: !2914)
!2921 = !DILocation(line: 103, column: 5, scope: !2860, inlinedAt: !2914)
!2922 = !DILocation(line: 292, column: 29, scope: !2901)
!2923 = distinct !{!2923, !2910, !2924, !1211}
!2924 = !DILocation(line: 293, column: 5, scope: !2895)
!2925 = !DILocation(line: 296, column: 27, scope: !2926)
!2926 = distinct !DILexicalBlock(scope: !2927, file: !749, line: 295, column: 5)
!2927 = distinct !DILexicalBlock(scope: !2895, file: !749, line: 294, column: 7)
!2928 = !DILocation(line: 296, column: 37, scope: !2926)
!2929 = !DILocation(line: 296, column: 10, scope: !2926)
!2930 = !DILocation(line: 296, column: 22, scope: !2926)
!2931 = !DILocation(line: 297, column: 28, scope: !2926)
!2932 = !DILocation(line: 297, column: 10, scope: !2926)
!2933 = !DILocation(line: 297, column: 22, scope: !2926)
!2934 = !DILocation(line: 298, column: 16, scope: !2926)
!2935 = !DILocation(line: 299, column: 5, scope: !2926)
!2936 = !DILocation(line: 300, column: 16, scope: !2937)
!2937 = distinct !DILexicalBlock(scope: !2927, file: !749, line: 300, column: 12)
!2938 = !DILocation(line: 300, column: 12, scope: !2927)
!2939 = !DILocation(line: 302, column: 5, scope: !2937)
!2940 = !DILocation(line: 303, column: 1, scope: !2895)
!2941 = !DISubprogram(name: "abort", scope: !1289, file: !1289, line: 598, type: !741, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !1148)
!2942 = distinct !DISubprogram(name: "rpl_obstack_memory_used", scope: !749, file: !749, line: 311, type: !2943, scopeLine: 312, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !748, retainedNodes: !2945)
!2943 = !DISubroutineType(types: !2944)
!2944 = !{!163, !2599}
!2945 = !{!2946, !2947, !2948}
!2946 = !DILocalVariable(name: "h", arg: 1, scope: !2942, file: !749, line: 311, type: !2599)
!2947 = !DILocalVariable(name: "nbytes", scope: !2942, file: !749, line: 313, type: !163)
!2948 = !DILocalVariable(name: "lp", scope: !2949, file: !749, line: 315, type: !2604)
!2949 = distinct !DILexicalBlock(scope: !2942, file: !749, line: 315, column: 3)
!2950 = !DILocation(line: 0, scope: !2942)
!2951 = !DILocation(line: 315, column: 39, scope: !2949)
!2952 = !DILocation(line: 0, scope: !2949)
!2953 = !DILocation(line: 315, scope: !2949)
!2954 = !DILocation(line: 315, column: 49, scope: !2955)
!2955 = distinct !DILexicalBlock(scope: !2949, file: !749, line: 315, column: 3)
!2956 = !DILocation(line: 315, column: 3, scope: !2949)
!2957 = !DILocation(line: 319, column: 3, scope: !2942)
!2958 = !DILocation(line: 317, column: 21, scope: !2959)
!2959 = distinct !DILexicalBlock(scope: !2955, file: !749, line: 316, column: 5)
!2960 = !DILocation(line: 317, column: 27, scope: !2959)
!2961 = !DILocation(line: 317, column: 14, scope: !2959)
!2962 = !DILocation(line: 315, column: 67, scope: !2955)
!2963 = distinct !{!2963, !2956, !2964, !1211}
!2964 = !DILocation(line: 318, column: 5, scope: !2949)
!2965 = distinct !DISubprogram(name: "set_program_name", scope: !761, file: !761, line: 37, type: !1114, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !760, retainedNodes: !2966)
!2966 = !{!2967, !2968, !2969}
!2967 = !DILocalVariable(name: "argv0", arg: 1, scope: !2965, file: !761, line: 37, type: !171)
!2968 = !DILocalVariable(name: "slash", scope: !2965, file: !761, line: 44, type: !171)
!2969 = !DILocalVariable(name: "base", scope: !2965, file: !761, line: 45, type: !171)
!2970 = !DILocation(line: 0, scope: !2965)
!2971 = !DILocation(line: 44, column: 23, scope: !2965)
!2972 = !DILocation(line: 45, column: 22, scope: !2965)
!2973 = !DILocation(line: 46, column: 17, scope: !2974)
!2974 = distinct !DILexicalBlock(scope: !2965, file: !761, line: 46, column: 7)
!2975 = !DILocation(line: 46, column: 9, scope: !2974)
!2976 = !DILocation(line: 46, column: 25, scope: !2974)
!2977 = !DILocation(line: 46, column: 40, scope: !2974)
!2978 = !DILocalVariable(name: "__s1", arg: 1, scope: !2979, file: !1177, line: 974, type: !1313)
!2979 = distinct !DISubprogram(name: "memeq", scope: !1177, file: !1177, line: 974, type: !2980, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !760, retainedNodes: !2982)
!2980 = !DISubroutineType(types: !2981)
!2981 = !{!112, !1313, !1313, !163}
!2982 = !{!2978, !2983, !2984}
!2983 = !DILocalVariable(name: "__s2", arg: 2, scope: !2979, file: !1177, line: 974, type: !1313)
!2984 = !DILocalVariable(name: "__n", arg: 3, scope: !2979, file: !1177, line: 974, type: !163)
!2985 = !DILocation(line: 0, scope: !2979, inlinedAt: !2986)
!2986 = distinct !DILocation(line: 46, column: 28, scope: !2974)
!2987 = !DILocation(line: 976, column: 11, scope: !2979, inlinedAt: !2986)
!2988 = !DILocation(line: 976, column: 10, scope: !2979, inlinedAt: !2986)
!2989 = !DILocation(line: 46, column: 7, scope: !2965)
!2990 = !DILocation(line: 49, column: 11, scope: !2991)
!2991 = distinct !DILexicalBlock(scope: !2992, file: !761, line: 49, column: 11)
!2992 = distinct !DILexicalBlock(scope: !2974, file: !761, line: 47, column: 5)
!2993 = !DILocation(line: 49, column: 36, scope: !2991)
!2994 = !DILocation(line: 49, column: 11, scope: !2992)
!2995 = !DILocation(line: 65, column: 16, scope: !2965)
!2996 = !DILocation(line: 71, column: 27, scope: !2965)
!2997 = !DILocation(line: 74, column: 33, scope: !2965)
!2998 = !DILocation(line: 76, column: 1, scope: !2965)
!2999 = !DISubprogram(name: "strrchr", scope: !1285, file: !1285, line: 273, type: !1300, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1148)
!3000 = !DILocation(line: 0, scope: !770)
!3001 = !DILocation(line: 40, column: 29, scope: !770)
!3002 = !DILocation(line: 41, column: 19, scope: !3003)
!3003 = distinct !DILexicalBlock(scope: !770, file: !771, line: 41, column: 7)
!3004 = !DILocation(line: 41, column: 7, scope: !770)
!3005 = !DILocation(line: 47, column: 3, scope: !770)
!3006 = !DILocation(line: 48, column: 3, scope: !770)
!3007 = !DILocation(line: 48, column: 13, scope: !770)
!3008 = !DILocalVariable(name: "ps", arg: 1, scope: !3009, file: !3010, line: 1135, type: !3013)
!3009 = distinct !DISubprogram(name: "mbszero", scope: !3010, file: !3010, line: 1135, type: !3011, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !774, retainedNodes: !3014)
!3010 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!3011 = !DISubroutineType(types: !3012)
!3012 = !{null, !3013}
!3013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!3014 = !{!3008}
!3015 = !DILocation(line: 0, scope: !3009, inlinedAt: !3016)
!3016 = distinct !DILocation(line: 48, column: 18, scope: !770)
!3017 = !DILocalVariable(name: "__dest", arg: 1, scope: !3018, file: !2830, line: 57, type: !161)
!3018 = distinct !DISubprogram(name: "memset", scope: !2830, file: !2830, line: 57, type: !3019, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !774, retainedNodes: !3021)
!3019 = !DISubroutineType(types: !3020)
!3020 = !{!161, !161, !89, !163}
!3021 = !{!3017, !3022, !3023}
!3022 = !DILocalVariable(name: "__ch", arg: 2, scope: !3018, file: !2830, line: 57, type: !89)
!3023 = !DILocalVariable(name: "__len", arg: 3, scope: !3018, file: !2830, line: 57, type: !163)
!3024 = !DILocation(line: 0, scope: !3018, inlinedAt: !3025)
!3025 = distinct !DILocation(line: 1137, column: 3, scope: !3009, inlinedAt: !3016)
!3026 = !DILocation(line: 59, column: 10, scope: !3018, inlinedAt: !3025)
!3027 = !DILocation(line: 49, column: 7, scope: !3028)
!3028 = distinct !DILexicalBlock(scope: !770, file: !771, line: 49, column: 7)
!3029 = !DILocation(line: 49, column: 39, scope: !3028)
!3030 = !DILocation(line: 49, column: 44, scope: !3028)
!3031 = !DILocation(line: 54, column: 1, scope: !770)
!3032 = !DISubprogram(name: "mbrtoc32", scope: !782, file: !782, line: 57, type: !3033, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1148)
!3033 = !DISubroutineType(types: !3034)
!3034 = !{!163, !3035, !1154, !163, !3037}
!3035 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !3036)
!3036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!3037 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !3013)
!3038 = distinct !DISubprogram(name: "clone_quoting_options", scope: !801, file: !801, line: 113, type: !3039, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !822, retainedNodes: !3042)
!3039 = !DISubroutineType(types: !3040)
!3040 = !{!3041, !3041}
!3041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!3042 = !{!3043, !3044, !3045}
!3043 = !DILocalVariable(name: "o", arg: 1, scope: !3038, file: !801, line: 113, type: !3041)
!3044 = !DILocalVariable(name: "saved_errno", scope: !3038, file: !801, line: 115, type: !89)
!3045 = !DILocalVariable(name: "p", scope: !3038, file: !801, line: 116, type: !3041)
!3046 = !DILocation(line: 0, scope: !3038)
!3047 = !DILocation(line: 115, column: 21, scope: !3038)
!3048 = !DILocation(line: 116, column: 40, scope: !3038)
!3049 = !DILocation(line: 116, column: 31, scope: !3038)
!3050 = !DILocation(line: 118, column: 9, scope: !3038)
!3051 = !DILocation(line: 119, column: 3, scope: !3038)
!3052 = distinct !DISubprogram(name: "get_quoting_style", scope: !801, file: !801, line: 124, type: !3053, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !822, retainedNodes: !3057)
!3053 = !DISubroutineType(types: !3054)
!3054 = !{!207, !3055}
!3055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3056, size: 64)
!3056 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !837)
!3057 = !{!3058}
!3058 = !DILocalVariable(name: "o", arg: 1, scope: !3052, file: !801, line: 124, type: !3055)
!3059 = !DILocation(line: 0, scope: !3052)
!3060 = !DILocation(line: 126, column: 11, scope: !3052)
!3061 = !DILocation(line: 126, column: 46, scope: !3052)
!3062 = !{!3063, !1100, i64 0}
!3063 = !{!"quoting_options", !1100, i64 0, !1165, i64 4, !1100, i64 8, !1099, i64 40, !1099, i64 48}
!3064 = !DILocation(line: 126, column: 3, scope: !3052)
!3065 = distinct !DISubprogram(name: "set_quoting_style", scope: !801, file: !801, line: 132, type: !3066, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !822, retainedNodes: !3068)
!3066 = !DISubroutineType(types: !3067)
!3067 = !{null, !3041, !207}
!3068 = !{!3069, !3070}
!3069 = !DILocalVariable(name: "o", arg: 1, scope: !3065, file: !801, line: 132, type: !3041)
!3070 = !DILocalVariable(name: "s", arg: 2, scope: !3065, file: !801, line: 132, type: !207)
!3071 = !DILocation(line: 0, scope: !3065)
!3072 = !DILocation(line: 134, column: 4, scope: !3065)
!3073 = !DILocation(line: 134, column: 45, scope: !3065)
!3074 = !DILocation(line: 135, column: 1, scope: !3065)
!3075 = distinct !DISubprogram(name: "set_char_quoting", scope: !801, file: !801, line: 143, type: !3076, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !822, retainedNodes: !3078)
!3076 = !DISubroutineType(types: !3077)
!3077 = !{!89, !3041, !4, !89}
!3078 = !{!3079, !3080, !3081, !3082, !3083, !3085, !3086}
!3079 = !DILocalVariable(name: "o", arg: 1, scope: !3075, file: !801, line: 143, type: !3041)
!3080 = !DILocalVariable(name: "c", arg: 2, scope: !3075, file: !801, line: 143, type: !4)
!3081 = !DILocalVariable(name: "i", arg: 3, scope: !3075, file: !801, line: 143, type: !89)
!3082 = !DILocalVariable(name: "uc", scope: !3075, file: !801, line: 145, type: !222)
!3083 = !DILocalVariable(name: "p", scope: !3075, file: !801, line: 146, type: !3084)
!3084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!3085 = !DILocalVariable(name: "shift", scope: !3075, file: !801, line: 148, type: !89)
!3086 = !DILocalVariable(name: "r", scope: !3075, file: !801, line: 149, type: !79)
!3087 = !DILocation(line: 0, scope: !3075)
!3088 = !DILocation(line: 147, column: 6, scope: !3075)
!3089 = !DILocation(line: 147, column: 41, scope: !3075)
!3090 = !DILocation(line: 147, column: 62, scope: !3075)
!3091 = !DILocation(line: 147, column: 57, scope: !3075)
!3092 = !DILocation(line: 148, column: 15, scope: !3075)
!3093 = !DILocation(line: 149, column: 21, scope: !3075)
!3094 = !DILocation(line: 149, column: 24, scope: !3075)
!3095 = !DILocation(line: 149, column: 34, scope: !3075)
!3096 = !DILocation(line: 150, column: 19, scope: !3075)
!3097 = !DILocation(line: 150, column: 24, scope: !3075)
!3098 = !DILocation(line: 150, column: 6, scope: !3075)
!3099 = !DILocation(line: 151, column: 3, scope: !3075)
!3100 = distinct !DISubprogram(name: "set_quoting_flags", scope: !801, file: !801, line: 159, type: !3101, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !822, retainedNodes: !3103)
!3101 = !DISubroutineType(types: !3102)
!3102 = !{!89, !3041, !89}
!3103 = !{!3104, !3105, !3106}
!3104 = !DILocalVariable(name: "o", arg: 1, scope: !3100, file: !801, line: 159, type: !3041)
!3105 = !DILocalVariable(name: "i", arg: 2, scope: !3100, file: !801, line: 159, type: !89)
!3106 = !DILocalVariable(name: "r", scope: !3100, file: !801, line: 163, type: !89)
!3107 = !DILocation(line: 0, scope: !3100)
!3108 = !DILocation(line: 161, column: 8, scope: !3109)
!3109 = distinct !DILexicalBlock(scope: !3100, file: !801, line: 161, column: 7)
!3110 = !DILocation(line: 161, column: 7, scope: !3100)
!3111 = !DILocation(line: 163, column: 14, scope: !3100)
!3112 = !{!3063, !1165, i64 4}
!3113 = !DILocation(line: 164, column: 12, scope: !3100)
!3114 = !DILocation(line: 165, column: 3, scope: !3100)
!3115 = distinct !DISubprogram(name: "set_custom_quoting", scope: !801, file: !801, line: 169, type: !3116, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !822, retainedNodes: !3118)
!3116 = !DISubroutineType(types: !3117)
!3117 = !{null, !3041, !171, !171}
!3118 = !{!3119, !3120, !3121}
!3119 = !DILocalVariable(name: "o", arg: 1, scope: !3115, file: !801, line: 169, type: !3041)
!3120 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3115, file: !801, line: 170, type: !171)
!3121 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3115, file: !801, line: 170, type: !171)
!3122 = !DILocation(line: 0, scope: !3115)
!3123 = !DILocation(line: 172, column: 8, scope: !3124)
!3124 = distinct !DILexicalBlock(scope: !3115, file: !801, line: 172, column: 7)
!3125 = !DILocation(line: 172, column: 7, scope: !3115)
!3126 = !DILocation(line: 174, column: 12, scope: !3115)
!3127 = !DILocation(line: 175, column: 8, scope: !3128)
!3128 = distinct !DILexicalBlock(scope: !3115, file: !801, line: 175, column: 7)
!3129 = !DILocation(line: 175, column: 19, scope: !3128)
!3130 = !DILocation(line: 176, column: 5, scope: !3128)
!3131 = !DILocation(line: 177, column: 6, scope: !3115)
!3132 = !DILocation(line: 177, column: 17, scope: !3115)
!3133 = !{!3063, !1099, i64 40}
!3134 = !DILocation(line: 178, column: 6, scope: !3115)
!3135 = !DILocation(line: 178, column: 18, scope: !3115)
!3136 = !{!3063, !1099, i64 48}
!3137 = !DILocation(line: 179, column: 1, scope: !3115)
!3138 = distinct !DISubprogram(name: "quotearg_buffer", scope: !801, file: !801, line: 774, type: !3139, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !822, retainedNodes: !3141)
!3139 = !DISubroutineType(types: !3140)
!3140 = !{!163, !121, !163, !171, !163, !3055}
!3141 = !{!3142, !3143, !3144, !3145, !3146, !3147, !3148, !3149}
!3142 = !DILocalVariable(name: "buffer", arg: 1, scope: !3138, file: !801, line: 774, type: !121)
!3143 = !DILocalVariable(name: "buffersize", arg: 2, scope: !3138, file: !801, line: 774, type: !163)
!3144 = !DILocalVariable(name: "arg", arg: 3, scope: !3138, file: !801, line: 775, type: !171)
!3145 = !DILocalVariable(name: "argsize", arg: 4, scope: !3138, file: !801, line: 775, type: !163)
!3146 = !DILocalVariable(name: "o", arg: 5, scope: !3138, file: !801, line: 776, type: !3055)
!3147 = !DILocalVariable(name: "p", scope: !3138, file: !801, line: 778, type: !3055)
!3148 = !DILocalVariable(name: "saved_errno", scope: !3138, file: !801, line: 779, type: !89)
!3149 = !DILocalVariable(name: "r", scope: !3138, file: !801, line: 780, type: !163)
!3150 = !DILocation(line: 0, scope: !3138)
!3151 = !DILocation(line: 778, column: 37, scope: !3138)
!3152 = !DILocation(line: 779, column: 21, scope: !3138)
!3153 = !DILocation(line: 781, column: 43, scope: !3138)
!3154 = !DILocation(line: 781, column: 53, scope: !3138)
!3155 = !DILocation(line: 781, column: 63, scope: !3138)
!3156 = !DILocation(line: 782, column: 43, scope: !3138)
!3157 = !DILocation(line: 782, column: 58, scope: !3138)
!3158 = !DILocation(line: 780, column: 14, scope: !3138)
!3159 = !DILocation(line: 783, column: 9, scope: !3138)
!3160 = !DILocation(line: 784, column: 3, scope: !3138)
!3161 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !801, file: !801, line: 251, type: !3162, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !822, retainedNodes: !3166)
!3162 = !DISubroutineType(types: !3163)
!3163 = !{!163, !121, !163, !171, !163, !207, !89, !3164, !171, !171}
!3164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3165, size: 64)
!3165 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !79)
!3166 = !{!3167, !3168, !3169, !3170, !3171, !3172, !3173, !3174, !3175, !3176, !3177, !3178, !3179, !3180, !3181, !3182, !3183, !3184, !3185, !3186, !3191, !3193, !3196, !3197, !3198, !3199, !3202, !3203, !3206, !3210, !3211, !3219, !3222, !3223, !3225, !3226, !3227, !3228}
!3167 = !DILocalVariable(name: "buffer", arg: 1, scope: !3161, file: !801, line: 251, type: !121)
!3168 = !DILocalVariable(name: "buffersize", arg: 2, scope: !3161, file: !801, line: 251, type: !163)
!3169 = !DILocalVariable(name: "arg", arg: 3, scope: !3161, file: !801, line: 252, type: !171)
!3170 = !DILocalVariable(name: "argsize", arg: 4, scope: !3161, file: !801, line: 252, type: !163)
!3171 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !3161, file: !801, line: 253, type: !207)
!3172 = !DILocalVariable(name: "flags", arg: 6, scope: !3161, file: !801, line: 253, type: !89)
!3173 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !3161, file: !801, line: 254, type: !3164)
!3174 = !DILocalVariable(name: "left_quote", arg: 8, scope: !3161, file: !801, line: 255, type: !171)
!3175 = !DILocalVariable(name: "right_quote", arg: 9, scope: !3161, file: !801, line: 256, type: !171)
!3176 = !DILocalVariable(name: "unibyte_locale", scope: !3161, file: !801, line: 258, type: !112)
!3177 = !DILocalVariable(name: "len", scope: !3161, file: !801, line: 260, type: !163)
!3178 = !DILocalVariable(name: "orig_buffersize", scope: !3161, file: !801, line: 261, type: !163)
!3179 = !DILocalVariable(name: "quote_string", scope: !3161, file: !801, line: 262, type: !171)
!3180 = !DILocalVariable(name: "quote_string_len", scope: !3161, file: !801, line: 263, type: !163)
!3181 = !DILocalVariable(name: "backslash_escapes", scope: !3161, file: !801, line: 264, type: !112)
!3182 = !DILocalVariable(name: "elide_outer_quotes", scope: !3161, file: !801, line: 265, type: !112)
!3183 = !DILocalVariable(name: "encountered_single_quote", scope: !3161, file: !801, line: 266, type: !112)
!3184 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !3161, file: !801, line: 267, type: !112)
!3185 = !DILocalVariable(name: "pending_shell_escape_end", scope: !3161, file: !801, line: 309, type: !112)
!3186 = !DILocalVariable(name: "lq", scope: !3187, file: !801, line: 361, type: !171)
!3187 = distinct !DILexicalBlock(scope: !3188, file: !801, line: 361, column: 11)
!3188 = distinct !DILexicalBlock(scope: !3189, file: !801, line: 360, column: 13)
!3189 = distinct !DILexicalBlock(scope: !3190, file: !801, line: 333, column: 7)
!3190 = distinct !DILexicalBlock(scope: !3161, file: !801, line: 312, column: 5)
!3191 = !DILocalVariable(name: "i", scope: !3192, file: !801, line: 395, type: !163)
!3192 = distinct !DILexicalBlock(scope: !3161, file: !801, line: 395, column: 3)
!3193 = !DILocalVariable(name: "is_right_quote", scope: !3194, file: !801, line: 397, type: !112)
!3194 = distinct !DILexicalBlock(scope: !3195, file: !801, line: 396, column: 5)
!3195 = distinct !DILexicalBlock(scope: !3192, file: !801, line: 395, column: 3)
!3196 = !DILocalVariable(name: "escaping", scope: !3194, file: !801, line: 398, type: !112)
!3197 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !3194, file: !801, line: 399, type: !112)
!3198 = !DILocalVariable(name: "c", scope: !3194, file: !801, line: 417, type: !222)
!3199 = !DILocalVariable(name: "m", scope: !3200, file: !801, line: 598, type: !163)
!3200 = distinct !DILexicalBlock(scope: !3201, file: !801, line: 596, column: 11)
!3201 = distinct !DILexicalBlock(scope: !3194, file: !801, line: 419, column: 9)
!3202 = !DILocalVariable(name: "printable", scope: !3200, file: !801, line: 600, type: !112)
!3203 = !DILocalVariable(name: "mbs", scope: !3204, file: !801, line: 609, type: !871)
!3204 = distinct !DILexicalBlock(scope: !3205, file: !801, line: 608, column: 15)
!3205 = distinct !DILexicalBlock(scope: !3200, file: !801, line: 602, column: 17)
!3206 = !DILocalVariable(name: "w", scope: !3207, file: !801, line: 618, type: !781)
!3207 = distinct !DILexicalBlock(scope: !3208, file: !801, line: 617, column: 19)
!3208 = distinct !DILexicalBlock(scope: !3209, file: !801, line: 616, column: 17)
!3209 = distinct !DILexicalBlock(scope: !3204, file: !801, line: 616, column: 17)
!3210 = !DILocalVariable(name: "bytes", scope: !3207, file: !801, line: 619, type: !163)
!3211 = !DILocalVariable(name: "j", scope: !3212, file: !801, line: 648, type: !163)
!3212 = distinct !DILexicalBlock(scope: !3213, file: !801, line: 648, column: 29)
!3213 = distinct !DILexicalBlock(scope: !3214, file: !801, line: 647, column: 27)
!3214 = distinct !DILexicalBlock(scope: !3215, file: !801, line: 645, column: 29)
!3215 = distinct !DILexicalBlock(scope: !3216, file: !801, line: 636, column: 23)
!3216 = distinct !DILexicalBlock(scope: !3217, file: !801, line: 628, column: 30)
!3217 = distinct !DILexicalBlock(scope: !3218, file: !801, line: 623, column: 30)
!3218 = distinct !DILexicalBlock(scope: !3207, file: !801, line: 621, column: 25)
!3219 = !DILocalVariable(name: "ilim", scope: !3220, file: !801, line: 674, type: !163)
!3220 = distinct !DILexicalBlock(scope: !3221, file: !801, line: 671, column: 15)
!3221 = distinct !DILexicalBlock(scope: !3200, file: !801, line: 670, column: 17)
!3222 = !DILabel(scope: !3161, name: "process_input", file: !801, line: 308)
!3223 = !DILabel(scope: !3224, name: "c_and_shell_escape", file: !801, line: 502)
!3224 = distinct !DILexicalBlock(scope: !3201, file: !801, line: 478, column: 9)
!3225 = !DILabel(scope: !3224, name: "c_escape", file: !801, line: 507)
!3226 = !DILabel(scope: !3194, name: "store_escape", file: !801, line: 709)
!3227 = !DILabel(scope: !3194, name: "store_c", file: !801, line: 712)
!3228 = !DILabel(scope: !3161, name: "force_outer_quoting_style", file: !801, line: 753)
!3229 = !DILocation(line: 0, scope: !3161)
!3230 = !DILocation(line: 258, column: 25, scope: !3161)
!3231 = !DILocation(line: 258, column: 36, scope: !3161)
!3232 = !DILocation(line: 265, column: 8, scope: !3161)
!3233 = !DILocation(line: 267, column: 3, scope: !3161)
!3234 = !DILocation(line: 261, column: 10, scope: !3161)
!3235 = !DILocation(line: 262, column: 15, scope: !3161)
!3236 = !DILocation(line: 263, column: 10, scope: !3161)
!3237 = !DILocation(line: 264, column: 8, scope: !3161)
!3238 = !DILocation(line: 266, column: 8, scope: !3161)
!3239 = !DILocation(line: 267, column: 8, scope: !3161)
!3240 = !DILocation(line: 308, column: 2, scope: !3161)
!3241 = !DILocation(line: 311, column: 3, scope: !3161)
!3242 = !DILocation(line: 318, column: 11, scope: !3190)
!3243 = !DILocation(line: 318, column: 12, scope: !3244)
!3244 = distinct !DILexicalBlock(scope: !3190, file: !801, line: 318, column: 11)
!3245 = !DILocation(line: 319, column: 9, scope: !3246)
!3246 = distinct !DILexicalBlock(scope: !3247, file: !801, line: 319, column: 9)
!3247 = distinct !DILexicalBlock(scope: !3244, file: !801, line: 319, column: 9)
!3248 = !DILocation(line: 319, column: 9, scope: !3247)
!3249 = !DILocation(line: 0, scope: !862, inlinedAt: !3250)
!3250 = distinct !DILocation(line: 357, column: 26, scope: !3251)
!3251 = distinct !DILexicalBlock(scope: !3252, file: !801, line: 335, column: 11)
!3252 = distinct !DILexicalBlock(scope: !3189, file: !801, line: 334, column: 13)
!3253 = !DILocation(line: 199, column: 29, scope: !862, inlinedAt: !3250)
!3254 = !DILocation(line: 201, column: 19, scope: !3255, inlinedAt: !3250)
!3255 = distinct !DILexicalBlock(scope: !862, file: !801, line: 201, column: 7)
!3256 = !DILocation(line: 201, column: 7, scope: !862, inlinedAt: !3250)
!3257 = !DILocation(line: 229, column: 3, scope: !862, inlinedAt: !3250)
!3258 = !DILocation(line: 230, column: 3, scope: !862, inlinedAt: !3250)
!3259 = !DILocation(line: 230, column: 13, scope: !862, inlinedAt: !3250)
!3260 = !DILocalVariable(name: "ps", arg: 1, scope: !3261, file: !3010, line: 1135, type: !3264)
!3261 = distinct !DISubprogram(name: "mbszero", scope: !3010, file: !3010, line: 1135, type: !3262, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !822, retainedNodes: !3265)
!3262 = !DISubroutineType(types: !3263)
!3263 = !{null, !3264}
!3264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!3265 = !{!3260}
!3266 = !DILocation(line: 0, scope: !3261, inlinedAt: !3267)
!3267 = distinct !DILocation(line: 230, column: 18, scope: !862, inlinedAt: !3250)
!3268 = !DILocalVariable(name: "__dest", arg: 1, scope: !3269, file: !2830, line: 57, type: !161)
!3269 = distinct !DISubprogram(name: "memset", scope: !2830, file: !2830, line: 57, type: !3019, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !822, retainedNodes: !3270)
!3270 = !{!3268, !3271, !3272}
!3271 = !DILocalVariable(name: "__ch", arg: 2, scope: !3269, file: !2830, line: 57, type: !89)
!3272 = !DILocalVariable(name: "__len", arg: 3, scope: !3269, file: !2830, line: 57, type: !163)
!3273 = !DILocation(line: 0, scope: !3269, inlinedAt: !3274)
!3274 = distinct !DILocation(line: 1137, column: 3, scope: !3261, inlinedAt: !3267)
!3275 = !DILocation(line: 59, column: 10, scope: !3269, inlinedAt: !3274)
!3276 = !DILocation(line: 231, column: 7, scope: !3277, inlinedAt: !3250)
!3277 = distinct !DILexicalBlock(scope: !862, file: !801, line: 231, column: 7)
!3278 = !DILocation(line: 231, column: 40, scope: !3277, inlinedAt: !3250)
!3279 = !DILocation(line: 231, column: 45, scope: !3277, inlinedAt: !3250)
!3280 = !DILocation(line: 235, column: 1, scope: !862, inlinedAt: !3250)
!3281 = !DILocation(line: 0, scope: !862, inlinedAt: !3282)
!3282 = distinct !DILocation(line: 358, column: 27, scope: !3251)
!3283 = !DILocation(line: 199, column: 29, scope: !862, inlinedAt: !3282)
!3284 = !DILocation(line: 201, column: 19, scope: !3255, inlinedAt: !3282)
!3285 = !DILocation(line: 201, column: 7, scope: !862, inlinedAt: !3282)
!3286 = !DILocation(line: 229, column: 3, scope: !862, inlinedAt: !3282)
!3287 = !DILocation(line: 230, column: 3, scope: !862, inlinedAt: !3282)
!3288 = !DILocation(line: 230, column: 13, scope: !862, inlinedAt: !3282)
!3289 = !DILocation(line: 0, scope: !3261, inlinedAt: !3290)
!3290 = distinct !DILocation(line: 230, column: 18, scope: !862, inlinedAt: !3282)
!3291 = !DILocation(line: 0, scope: !3269, inlinedAt: !3292)
!3292 = distinct !DILocation(line: 1137, column: 3, scope: !3261, inlinedAt: !3290)
!3293 = !DILocation(line: 59, column: 10, scope: !3269, inlinedAt: !3292)
!3294 = !DILocation(line: 231, column: 7, scope: !3277, inlinedAt: !3282)
!3295 = !DILocation(line: 231, column: 40, scope: !3277, inlinedAt: !3282)
!3296 = !DILocation(line: 231, column: 45, scope: !3277, inlinedAt: !3282)
!3297 = !DILocation(line: 235, column: 1, scope: !862, inlinedAt: !3282)
!3298 = !DILocation(line: 360, column: 14, scope: !3188)
!3299 = !DILocation(line: 360, column: 13, scope: !3189)
!3300 = !DILocation(line: 0, scope: !3187)
!3301 = !DILocation(line: 361, column: 45, scope: !3302)
!3302 = distinct !DILexicalBlock(scope: !3187, file: !801, line: 361, column: 11)
!3303 = !DILocation(line: 361, column: 11, scope: !3187)
!3304 = !DILocation(line: 362, column: 13, scope: !3305)
!3305 = distinct !DILexicalBlock(scope: !3306, file: !801, line: 362, column: 13)
!3306 = distinct !DILexicalBlock(scope: !3302, file: !801, line: 362, column: 13)
!3307 = !DILocation(line: 362, column: 13, scope: !3306)
!3308 = !DILocation(line: 361, column: 52, scope: !3302)
!3309 = distinct !{!3309, !3303, !3310, !1211}
!3310 = !DILocation(line: 362, column: 13, scope: !3187)
!3311 = !DILocation(line: 260, column: 10, scope: !3161)
!3312 = !DILocation(line: 365, column: 28, scope: !3189)
!3313 = !DILocation(line: 367, column: 7, scope: !3190)
!3314 = !DILocation(line: 370, column: 7, scope: !3190)
!3315 = !DILocation(line: 373, column: 7, scope: !3190)
!3316 = !DILocation(line: 376, column: 12, scope: !3317)
!3317 = distinct !DILexicalBlock(scope: !3190, file: !801, line: 376, column: 11)
!3318 = !DILocation(line: 376, column: 11, scope: !3190)
!3319 = !DILocation(line: 381, column: 12, scope: !3320)
!3320 = distinct !DILexicalBlock(scope: !3190, file: !801, line: 381, column: 11)
!3321 = !DILocation(line: 381, column: 11, scope: !3190)
!3322 = !DILocation(line: 382, column: 9, scope: !3323)
!3323 = distinct !DILexicalBlock(scope: !3324, file: !801, line: 382, column: 9)
!3324 = distinct !DILexicalBlock(scope: !3320, file: !801, line: 382, column: 9)
!3325 = !DILocation(line: 382, column: 9, scope: !3324)
!3326 = !DILocation(line: 389, column: 7, scope: !3190)
!3327 = !DILocation(line: 392, column: 7, scope: !3190)
!3328 = !DILocation(line: 0, scope: !3192)
!3329 = !DILocation(line: 395, column: 8, scope: !3192)
!3330 = !DILocation(line: 309, column: 8, scope: !3161)
!3331 = !DILocation(line: 395, scope: !3192)
!3332 = !DILocation(line: 395, column: 34, scope: !3195)
!3333 = !DILocation(line: 395, column: 26, scope: !3195)
!3334 = !DILocation(line: 395, column: 48, scope: !3195)
!3335 = !DILocation(line: 395, column: 55, scope: !3195)
!3336 = !DILocation(line: 395, column: 3, scope: !3192)
!3337 = !DILocation(line: 395, column: 67, scope: !3195)
!3338 = !DILocation(line: 0, scope: !3194)
!3339 = !DILocation(line: 402, column: 11, scope: !3340)
!3340 = distinct !DILexicalBlock(scope: !3194, file: !801, line: 401, column: 11)
!3341 = !DILocation(line: 404, column: 17, scope: !3340)
!3342 = !DILocation(line: 405, column: 39, scope: !3340)
!3343 = !DILocation(line: 409, column: 32, scope: !3340)
!3344 = !DILocation(line: 405, column: 19, scope: !3340)
!3345 = !DILocation(line: 405, column: 15, scope: !3340)
!3346 = !DILocation(line: 410, column: 11, scope: !3340)
!3347 = !DILocation(line: 410, column: 25, scope: !3340)
!3348 = !DILocalVariable(name: "__s1", arg: 1, scope: !3349, file: !1177, line: 974, type: !1313)
!3349 = distinct !DISubprogram(name: "memeq", scope: !1177, file: !1177, line: 974, type: !2980, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !822, retainedNodes: !3350)
!3350 = !{!3348, !3351, !3352}
!3351 = !DILocalVariable(name: "__s2", arg: 2, scope: !3349, file: !1177, line: 974, type: !1313)
!3352 = !DILocalVariable(name: "__n", arg: 3, scope: !3349, file: !1177, line: 974, type: !163)
!3353 = !DILocation(line: 0, scope: !3349, inlinedAt: !3354)
!3354 = distinct !DILocation(line: 410, column: 14, scope: !3340)
!3355 = !DILocation(line: 976, column: 11, scope: !3349, inlinedAt: !3354)
!3356 = !DILocation(line: 976, column: 10, scope: !3349, inlinedAt: !3354)
!3357 = !DILocation(line: 401, column: 11, scope: !3194)
!3358 = !DILocation(line: 417, column: 25, scope: !3194)
!3359 = !DILocation(line: 418, column: 7, scope: !3194)
!3360 = !DILocation(line: 421, column: 15, scope: !3201)
!3361 = !DILocation(line: 423, column: 15, scope: !3362)
!3362 = distinct !DILexicalBlock(scope: !3363, file: !801, line: 423, column: 15)
!3363 = distinct !DILexicalBlock(scope: !3364, file: !801, line: 422, column: 13)
!3364 = distinct !DILexicalBlock(scope: !3201, file: !801, line: 421, column: 15)
!3365 = !DILocation(line: 423, column: 15, scope: !3366)
!3366 = distinct !DILexicalBlock(scope: !3362, file: !801, line: 423, column: 15)
!3367 = !DILocation(line: 423, column: 15, scope: !3368)
!3368 = distinct !DILexicalBlock(scope: !3369, file: !801, line: 423, column: 15)
!3369 = distinct !DILexicalBlock(scope: !3370, file: !801, line: 423, column: 15)
!3370 = distinct !DILexicalBlock(scope: !3366, file: !801, line: 423, column: 15)
!3371 = !DILocation(line: 423, column: 15, scope: !3369)
!3372 = !DILocation(line: 423, column: 15, scope: !3373)
!3373 = distinct !DILexicalBlock(scope: !3374, file: !801, line: 423, column: 15)
!3374 = distinct !DILexicalBlock(scope: !3370, file: !801, line: 423, column: 15)
!3375 = !DILocation(line: 423, column: 15, scope: !3374)
!3376 = !DILocation(line: 423, column: 15, scope: !3377)
!3377 = distinct !DILexicalBlock(scope: !3378, file: !801, line: 423, column: 15)
!3378 = distinct !DILexicalBlock(scope: !3370, file: !801, line: 423, column: 15)
!3379 = !DILocation(line: 423, column: 15, scope: !3378)
!3380 = !DILocation(line: 423, column: 15, scope: !3370)
!3381 = !DILocation(line: 423, column: 15, scope: !3382)
!3382 = distinct !DILexicalBlock(scope: !3383, file: !801, line: 423, column: 15)
!3383 = distinct !DILexicalBlock(scope: !3362, file: !801, line: 423, column: 15)
!3384 = !DILocation(line: 423, column: 15, scope: !3383)
!3385 = !DILocation(line: 431, column: 19, scope: !3386)
!3386 = distinct !DILexicalBlock(scope: !3363, file: !801, line: 430, column: 19)
!3387 = !DILocation(line: 431, column: 24, scope: !3386)
!3388 = !DILocation(line: 431, column: 28, scope: !3386)
!3389 = !DILocation(line: 431, column: 38, scope: !3386)
!3390 = !DILocation(line: 431, column: 48, scope: !3386)
!3391 = !DILocation(line: 431, column: 59, scope: !3386)
!3392 = !DILocation(line: 433, column: 19, scope: !3393)
!3393 = distinct !DILexicalBlock(scope: !3394, file: !801, line: 433, column: 19)
!3394 = distinct !DILexicalBlock(scope: !3395, file: !801, line: 433, column: 19)
!3395 = distinct !DILexicalBlock(scope: !3386, file: !801, line: 432, column: 17)
!3396 = !DILocation(line: 433, column: 19, scope: !3394)
!3397 = !DILocation(line: 434, column: 19, scope: !3398)
!3398 = distinct !DILexicalBlock(scope: !3399, file: !801, line: 434, column: 19)
!3399 = distinct !DILexicalBlock(scope: !3395, file: !801, line: 434, column: 19)
!3400 = !DILocation(line: 434, column: 19, scope: !3399)
!3401 = !DILocation(line: 435, column: 17, scope: !3395)
!3402 = !DILocation(line: 442, column: 20, scope: !3364)
!3403 = !DILocation(line: 447, column: 11, scope: !3201)
!3404 = !DILocation(line: 450, column: 19, scope: !3405)
!3405 = distinct !DILexicalBlock(scope: !3201, file: !801, line: 448, column: 13)
!3406 = !DILocation(line: 456, column: 19, scope: !3407)
!3407 = distinct !DILexicalBlock(scope: !3405, file: !801, line: 455, column: 19)
!3408 = !DILocation(line: 456, column: 24, scope: !3407)
!3409 = !DILocation(line: 456, column: 28, scope: !3407)
!3410 = !DILocation(line: 456, column: 38, scope: !3407)
!3411 = !DILocation(line: 456, column: 47, scope: !3407)
!3412 = !DILocation(line: 456, column: 41, scope: !3407)
!3413 = !DILocation(line: 456, column: 52, scope: !3407)
!3414 = !DILocation(line: 455, column: 19, scope: !3405)
!3415 = !DILocation(line: 457, column: 25, scope: !3407)
!3416 = !DILocation(line: 457, column: 17, scope: !3407)
!3417 = !DILocation(line: 464, column: 25, scope: !3418)
!3418 = distinct !DILexicalBlock(scope: !3407, file: !801, line: 458, column: 19)
!3419 = !DILocation(line: 468, column: 21, scope: !3420)
!3420 = distinct !DILexicalBlock(scope: !3421, file: !801, line: 468, column: 21)
!3421 = distinct !DILexicalBlock(scope: !3418, file: !801, line: 468, column: 21)
!3422 = !DILocation(line: 468, column: 21, scope: !3421)
!3423 = !DILocation(line: 469, column: 21, scope: !3424)
!3424 = distinct !DILexicalBlock(scope: !3425, file: !801, line: 469, column: 21)
!3425 = distinct !DILexicalBlock(scope: !3418, file: !801, line: 469, column: 21)
!3426 = !DILocation(line: 469, column: 21, scope: !3425)
!3427 = !DILocation(line: 470, column: 21, scope: !3428)
!3428 = distinct !DILexicalBlock(scope: !3429, file: !801, line: 470, column: 21)
!3429 = distinct !DILexicalBlock(scope: !3418, file: !801, line: 470, column: 21)
!3430 = !DILocation(line: 470, column: 21, scope: !3429)
!3431 = !DILocation(line: 471, column: 21, scope: !3432)
!3432 = distinct !DILexicalBlock(scope: !3433, file: !801, line: 471, column: 21)
!3433 = distinct !DILexicalBlock(scope: !3418, file: !801, line: 471, column: 21)
!3434 = !DILocation(line: 471, column: 21, scope: !3433)
!3435 = !DILocation(line: 472, column: 21, scope: !3418)
!3436 = !DILocation(line: 482, column: 33, scope: !3224)
!3437 = !DILocation(line: 483, column: 33, scope: !3224)
!3438 = !DILocation(line: 485, column: 33, scope: !3224)
!3439 = !DILocation(line: 486, column: 33, scope: !3224)
!3440 = !DILocation(line: 487, column: 33, scope: !3224)
!3441 = !DILocation(line: 490, column: 17, scope: !3224)
!3442 = !DILocation(line: 492, column: 21, scope: !3443)
!3443 = distinct !DILexicalBlock(scope: !3444, file: !801, line: 491, column: 15)
!3444 = distinct !DILexicalBlock(scope: !3224, file: !801, line: 490, column: 17)
!3445 = !DILocation(line: 499, column: 35, scope: !3446)
!3446 = distinct !DILexicalBlock(scope: !3224, file: !801, line: 499, column: 17)
!3447 = !DILocation(line: 499, column: 57, scope: !3446)
!3448 = !DILocation(line: 0, scope: !3224)
!3449 = !DILocation(line: 502, column: 11, scope: !3224)
!3450 = !DILocation(line: 504, column: 17, scope: !3451)
!3451 = distinct !DILexicalBlock(scope: !3224, file: !801, line: 503, column: 17)
!3452 = !DILocation(line: 507, column: 11, scope: !3224)
!3453 = !DILocation(line: 508, column: 17, scope: !3224)
!3454 = !DILocation(line: 517, column: 15, scope: !3201)
!3455 = !DILocation(line: 517, column: 40, scope: !3456)
!3456 = distinct !DILexicalBlock(scope: !3201, file: !801, line: 517, column: 15)
!3457 = !DILocation(line: 517, column: 47, scope: !3456)
!3458 = !DILocation(line: 517, column: 18, scope: !3456)
!3459 = !DILocation(line: 521, column: 17, scope: !3460)
!3460 = distinct !DILexicalBlock(scope: !3201, file: !801, line: 521, column: 15)
!3461 = !DILocation(line: 521, column: 15, scope: !3201)
!3462 = !DILocation(line: 525, column: 11, scope: !3201)
!3463 = !DILocation(line: 537, column: 15, scope: !3464)
!3464 = distinct !DILexicalBlock(scope: !3201, file: !801, line: 536, column: 15)
!3465 = !DILocation(line: 544, column: 15, scope: !3201)
!3466 = !DILocation(line: 546, column: 19, scope: !3467)
!3467 = distinct !DILexicalBlock(scope: !3468, file: !801, line: 545, column: 13)
!3468 = distinct !DILexicalBlock(scope: !3201, file: !801, line: 544, column: 15)
!3469 = !DILocation(line: 549, column: 19, scope: !3470)
!3470 = distinct !DILexicalBlock(scope: !3467, file: !801, line: 549, column: 19)
!3471 = !DILocation(line: 549, column: 30, scope: !3470)
!3472 = !DILocation(line: 558, column: 15, scope: !3473)
!3473 = distinct !DILexicalBlock(scope: !3474, file: !801, line: 558, column: 15)
!3474 = distinct !DILexicalBlock(scope: !3467, file: !801, line: 558, column: 15)
!3475 = !DILocation(line: 558, column: 15, scope: !3474)
!3476 = !DILocation(line: 559, column: 15, scope: !3477)
!3477 = distinct !DILexicalBlock(scope: !3478, file: !801, line: 559, column: 15)
!3478 = distinct !DILexicalBlock(scope: !3467, file: !801, line: 559, column: 15)
!3479 = !DILocation(line: 559, column: 15, scope: !3478)
!3480 = !DILocation(line: 560, column: 15, scope: !3481)
!3481 = distinct !DILexicalBlock(scope: !3482, file: !801, line: 560, column: 15)
!3482 = distinct !DILexicalBlock(scope: !3467, file: !801, line: 560, column: 15)
!3483 = !DILocation(line: 560, column: 15, scope: !3482)
!3484 = !DILocation(line: 562, column: 13, scope: !3467)
!3485 = !DILocation(line: 602, column: 17, scope: !3200)
!3486 = !DILocation(line: 0, scope: !3200)
!3487 = !DILocation(line: 605, column: 29, scope: !3488)
!3488 = distinct !DILexicalBlock(scope: !3205, file: !801, line: 603, column: 15)
!3489 = !DILocation(line: 605, column: 27, scope: !3488)
!3490 = !DILocation(line: 668, column: 40, scope: !3200)
!3491 = !DILocation(line: 670, column: 23, scope: !3221)
!3492 = !DILocation(line: 609, column: 17, scope: !3204)
!3493 = !DILocation(line: 609, column: 27, scope: !3204)
!3494 = !DILocation(line: 0, scope: !3261, inlinedAt: !3495)
!3495 = distinct !DILocation(line: 609, column: 32, scope: !3204)
!3496 = !DILocation(line: 0, scope: !3269, inlinedAt: !3497)
!3497 = distinct !DILocation(line: 1137, column: 3, scope: !3261, inlinedAt: !3495)
!3498 = !DILocation(line: 59, column: 10, scope: !3269, inlinedAt: !3497)
!3499 = !DILocation(line: 613, column: 29, scope: !3500)
!3500 = distinct !DILexicalBlock(scope: !3204, file: !801, line: 613, column: 21)
!3501 = !DILocation(line: 613, column: 21, scope: !3204)
!3502 = !DILocation(line: 614, column: 29, scope: !3500)
!3503 = !DILocation(line: 614, column: 19, scope: !3500)
!3504 = !DILocation(line: 618, column: 21, scope: !3207)
!3505 = !DILocation(line: 620, column: 54, scope: !3207)
!3506 = !DILocation(line: 0, scope: !3207)
!3507 = !DILocation(line: 619, column: 36, scope: !3207)
!3508 = !DILocation(line: 621, column: 25, scope: !3207)
!3509 = !DILocation(line: 631, column: 38, scope: !3510)
!3510 = distinct !DILexicalBlock(scope: !3216, file: !801, line: 629, column: 23)
!3511 = !DILocation(line: 631, column: 48, scope: !3510)
!3512 = !DILocation(line: 665, column: 19, scope: !3208)
!3513 = !DILocation(line: 666, column: 15, scope: !3205)
!3514 = !DILocation(line: 626, column: 25, scope: !3515)
!3515 = distinct !DILexicalBlock(scope: !3217, file: !801, line: 624, column: 23)
!3516 = !DILocation(line: 631, column: 51, scope: !3510)
!3517 = !DILocation(line: 631, column: 25, scope: !3510)
!3518 = !DILocation(line: 632, column: 28, scope: !3510)
!3519 = !DILocation(line: 631, column: 34, scope: !3510)
!3520 = distinct !{!3520, !3517, !3518, !1211}
!3521 = !DILocation(line: 646, column: 29, scope: !3214)
!3522 = !DILocation(line: 0, scope: !3212)
!3523 = !DILocation(line: 649, column: 49, scope: !3524)
!3524 = distinct !DILexicalBlock(scope: !3212, file: !801, line: 648, column: 29)
!3525 = !DILocation(line: 649, column: 39, scope: !3524)
!3526 = !DILocation(line: 649, column: 31, scope: !3524)
!3527 = !DILocation(line: 648, column: 60, scope: !3524)
!3528 = !DILocation(line: 648, column: 50, scope: !3524)
!3529 = !DILocation(line: 648, column: 29, scope: !3212)
!3530 = distinct !{!3530, !3529, !3531, !1211}
!3531 = !DILocation(line: 654, column: 33, scope: !3212)
!3532 = !DILocation(line: 657, column: 43, scope: !3533)
!3533 = distinct !DILexicalBlock(scope: !3215, file: !801, line: 657, column: 29)
!3534 = !DILocalVariable(name: "wc", arg: 1, scope: !3535, file: !3536, line: 865, type: !3539)
!3535 = distinct !DISubprogram(name: "c32isprint", scope: !3536, file: !3536, line: 865, type: !3537, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !822, retainedNodes: !3541)
!3536 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!3537 = !DISubroutineType(types: !3538)
!3538 = !{!89, !3539}
!3539 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !3540, line: 20, baseType: !79)
!3540 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!3541 = !{!3534}
!3542 = !DILocation(line: 0, scope: !3535, inlinedAt: !3543)
!3543 = distinct !DILocation(line: 657, column: 31, scope: !3533)
!3544 = !DILocation(line: 871, column: 10, scope: !3535, inlinedAt: !3543)
!3545 = !DILocation(line: 657, column: 31, scope: !3533)
!3546 = !DILocation(line: 657, column: 29, scope: !3215)
!3547 = !DILocation(line: 664, column: 23, scope: !3207)
!3548 = !DILocation(line: 670, column: 19, scope: !3221)
!3549 = !DILocation(line: 670, column: 45, scope: !3221)
!3550 = !DILocation(line: 674, column: 33, scope: !3220)
!3551 = !DILocation(line: 0, scope: !3220)
!3552 = !DILocation(line: 676, column: 17, scope: !3220)
!3553 = !DILocation(line: 398, column: 12, scope: !3194)
!3554 = !DILocation(line: 678, column: 43, scope: !3555)
!3555 = distinct !DILexicalBlock(scope: !3556, file: !801, line: 678, column: 25)
!3556 = distinct !DILexicalBlock(scope: !3557, file: !801, line: 677, column: 19)
!3557 = distinct !DILexicalBlock(scope: !3558, file: !801, line: 676, column: 17)
!3558 = distinct !DILexicalBlock(scope: !3220, file: !801, line: 676, column: 17)
!3559 = !DILocation(line: 680, column: 25, scope: !3560)
!3560 = distinct !DILexicalBlock(scope: !3561, file: !801, line: 680, column: 25)
!3561 = distinct !DILexicalBlock(scope: !3555, file: !801, line: 679, column: 23)
!3562 = !DILocation(line: 680, column: 25, scope: !3563)
!3563 = distinct !DILexicalBlock(scope: !3560, file: !801, line: 680, column: 25)
!3564 = !DILocation(line: 680, column: 25, scope: !3565)
!3565 = distinct !DILexicalBlock(scope: !3566, file: !801, line: 680, column: 25)
!3566 = distinct !DILexicalBlock(scope: !3567, file: !801, line: 680, column: 25)
!3567 = distinct !DILexicalBlock(scope: !3563, file: !801, line: 680, column: 25)
!3568 = !DILocation(line: 680, column: 25, scope: !3566)
!3569 = !DILocation(line: 680, column: 25, scope: !3570)
!3570 = distinct !DILexicalBlock(scope: !3571, file: !801, line: 680, column: 25)
!3571 = distinct !DILexicalBlock(scope: !3567, file: !801, line: 680, column: 25)
!3572 = !DILocation(line: 680, column: 25, scope: !3571)
!3573 = !DILocation(line: 680, column: 25, scope: !3574)
!3574 = distinct !DILexicalBlock(scope: !3575, file: !801, line: 680, column: 25)
!3575 = distinct !DILexicalBlock(scope: !3567, file: !801, line: 680, column: 25)
!3576 = !DILocation(line: 680, column: 25, scope: !3575)
!3577 = !DILocation(line: 680, column: 25, scope: !3567)
!3578 = !DILocation(line: 680, column: 25, scope: !3579)
!3579 = distinct !DILexicalBlock(scope: !3580, file: !801, line: 680, column: 25)
!3580 = distinct !DILexicalBlock(scope: !3560, file: !801, line: 680, column: 25)
!3581 = !DILocation(line: 680, column: 25, scope: !3580)
!3582 = !DILocation(line: 681, column: 25, scope: !3583)
!3583 = distinct !DILexicalBlock(scope: !3584, file: !801, line: 681, column: 25)
!3584 = distinct !DILexicalBlock(scope: !3561, file: !801, line: 681, column: 25)
!3585 = !DILocation(line: 681, column: 25, scope: !3584)
!3586 = !DILocation(line: 682, column: 25, scope: !3587)
!3587 = distinct !DILexicalBlock(scope: !3588, file: !801, line: 682, column: 25)
!3588 = distinct !DILexicalBlock(scope: !3561, file: !801, line: 682, column: 25)
!3589 = !DILocation(line: 682, column: 25, scope: !3588)
!3590 = !DILocation(line: 683, column: 38, scope: !3561)
!3591 = !DILocation(line: 683, column: 33, scope: !3561)
!3592 = !DILocation(line: 684, column: 23, scope: !3561)
!3593 = !DILocation(line: 685, column: 30, scope: !3594)
!3594 = distinct !DILexicalBlock(scope: !3555, file: !801, line: 685, column: 30)
!3595 = !DILocation(line: 685, column: 30, scope: !3555)
!3596 = !DILocation(line: 687, column: 25, scope: !3597)
!3597 = distinct !DILexicalBlock(scope: !3598, file: !801, line: 687, column: 25)
!3598 = distinct !DILexicalBlock(scope: !3599, file: !801, line: 687, column: 25)
!3599 = distinct !DILexicalBlock(scope: !3594, file: !801, line: 686, column: 23)
!3600 = !DILocation(line: 687, column: 25, scope: !3598)
!3601 = !DILocation(line: 689, column: 23, scope: !3599)
!3602 = !DILocation(line: 690, column: 35, scope: !3603)
!3603 = distinct !DILexicalBlock(scope: !3556, file: !801, line: 690, column: 25)
!3604 = !DILocation(line: 690, column: 30, scope: !3603)
!3605 = !DILocation(line: 690, column: 25, scope: !3556)
!3606 = !DILocation(line: 692, column: 21, scope: !3607)
!3607 = distinct !DILexicalBlock(scope: !3608, file: !801, line: 692, column: 21)
!3608 = distinct !DILexicalBlock(scope: !3556, file: !801, line: 692, column: 21)
!3609 = !DILocation(line: 692, column: 21, scope: !3610)
!3610 = distinct !DILexicalBlock(scope: !3611, file: !801, line: 692, column: 21)
!3611 = distinct !DILexicalBlock(scope: !3612, file: !801, line: 692, column: 21)
!3612 = distinct !DILexicalBlock(scope: !3607, file: !801, line: 692, column: 21)
!3613 = !DILocation(line: 692, column: 21, scope: !3611)
!3614 = !DILocation(line: 692, column: 21, scope: !3615)
!3615 = distinct !DILexicalBlock(scope: !3616, file: !801, line: 692, column: 21)
!3616 = distinct !DILexicalBlock(scope: !3612, file: !801, line: 692, column: 21)
!3617 = !DILocation(line: 692, column: 21, scope: !3616)
!3618 = !DILocation(line: 692, column: 21, scope: !3612)
!3619 = !DILocation(line: 0, scope: !3556)
!3620 = !DILocation(line: 693, column: 21, scope: !3621)
!3621 = distinct !DILexicalBlock(scope: !3622, file: !801, line: 693, column: 21)
!3622 = distinct !DILexicalBlock(scope: !3556, file: !801, line: 693, column: 21)
!3623 = !DILocation(line: 693, column: 21, scope: !3622)
!3624 = !DILocation(line: 694, column: 25, scope: !3556)
!3625 = !DILocation(line: 676, column: 17, scope: !3557)
!3626 = distinct !{!3626, !3627, !3628}
!3627 = !DILocation(line: 676, column: 17, scope: !3558)
!3628 = !DILocation(line: 695, column: 19, scope: !3558)
!3629 = !DILocation(line: 409, column: 30, scope: !3340)
!3630 = !DILocation(line: 702, column: 34, scope: !3631)
!3631 = distinct !DILexicalBlock(scope: !3194, file: !801, line: 702, column: 11)
!3632 = !DILocation(line: 704, column: 14, scope: !3631)
!3633 = !DILocation(line: 705, column: 14, scope: !3631)
!3634 = !DILocation(line: 705, column: 35, scope: !3631)
!3635 = !DILocation(line: 705, column: 17, scope: !3631)
!3636 = !DILocation(line: 705, column: 47, scope: !3631)
!3637 = !DILocation(line: 705, column: 65, scope: !3631)
!3638 = !DILocation(line: 706, column: 11, scope: !3631)
!3639 = !DILocation(line: 702, column: 11, scope: !3194)
!3640 = !DILocation(line: 395, column: 15, scope: !3192)
!3641 = !DILocation(line: 709, column: 5, scope: !3194)
!3642 = !DILocation(line: 710, column: 7, scope: !3643)
!3643 = distinct !DILexicalBlock(scope: !3194, file: !801, line: 710, column: 7)
!3644 = !DILocation(line: 710, column: 7, scope: !3645)
!3645 = distinct !DILexicalBlock(scope: !3643, file: !801, line: 710, column: 7)
!3646 = !DILocation(line: 710, column: 7, scope: !3647)
!3647 = distinct !DILexicalBlock(scope: !3648, file: !801, line: 710, column: 7)
!3648 = distinct !DILexicalBlock(scope: !3649, file: !801, line: 710, column: 7)
!3649 = distinct !DILexicalBlock(scope: !3645, file: !801, line: 710, column: 7)
!3650 = !DILocation(line: 710, column: 7, scope: !3648)
!3651 = !DILocation(line: 710, column: 7, scope: !3652)
!3652 = distinct !DILexicalBlock(scope: !3653, file: !801, line: 710, column: 7)
!3653 = distinct !DILexicalBlock(scope: !3649, file: !801, line: 710, column: 7)
!3654 = !DILocation(line: 710, column: 7, scope: !3653)
!3655 = !DILocation(line: 710, column: 7, scope: !3656)
!3656 = distinct !DILexicalBlock(scope: !3657, file: !801, line: 710, column: 7)
!3657 = distinct !DILexicalBlock(scope: !3649, file: !801, line: 710, column: 7)
!3658 = !DILocation(line: 710, column: 7, scope: !3657)
!3659 = !DILocation(line: 710, column: 7, scope: !3649)
!3660 = !DILocation(line: 710, column: 7, scope: !3661)
!3661 = distinct !DILexicalBlock(scope: !3662, file: !801, line: 710, column: 7)
!3662 = distinct !DILexicalBlock(scope: !3643, file: !801, line: 710, column: 7)
!3663 = !DILocation(line: 710, column: 7, scope: !3662)
!3664 = !DILocation(line: 712, column: 5, scope: !3194)
!3665 = !DILocation(line: 713, column: 7, scope: !3666)
!3666 = distinct !DILexicalBlock(scope: !3667, file: !801, line: 713, column: 7)
!3667 = distinct !DILexicalBlock(scope: !3194, file: !801, line: 713, column: 7)
!3668 = !DILocation(line: 417, column: 21, scope: !3194)
!3669 = !DILocation(line: 713, column: 7, scope: !3670)
!3670 = distinct !DILexicalBlock(scope: !3671, file: !801, line: 713, column: 7)
!3671 = distinct !DILexicalBlock(scope: !3672, file: !801, line: 713, column: 7)
!3672 = distinct !DILexicalBlock(scope: !3666, file: !801, line: 713, column: 7)
!3673 = !DILocation(line: 713, column: 7, scope: !3671)
!3674 = !DILocation(line: 713, column: 7, scope: !3675)
!3675 = distinct !DILexicalBlock(scope: !3676, file: !801, line: 713, column: 7)
!3676 = distinct !DILexicalBlock(scope: !3672, file: !801, line: 713, column: 7)
!3677 = !DILocation(line: 713, column: 7, scope: !3676)
!3678 = !DILocation(line: 713, column: 7, scope: !3672)
!3679 = !DILocation(line: 714, column: 7, scope: !3680)
!3680 = distinct !DILexicalBlock(scope: !3681, file: !801, line: 714, column: 7)
!3681 = distinct !DILexicalBlock(scope: !3194, file: !801, line: 714, column: 7)
!3682 = !DILocation(line: 714, column: 7, scope: !3681)
!3683 = !DILocation(line: 716, column: 13, scope: !3684)
!3684 = distinct !DILexicalBlock(scope: !3194, file: !801, line: 716, column: 11)
!3685 = !DILocation(line: 716, column: 11, scope: !3194)
!3686 = !DILocation(line: 718, column: 5, scope: !3195)
!3687 = !DILocation(line: 395, column: 82, scope: !3195)
!3688 = !DILocation(line: 395, column: 3, scope: !3195)
!3689 = distinct !{!3689, !3336, !3690, !1211}
!3690 = !DILocation(line: 718, column: 5, scope: !3192)
!3691 = !DILocation(line: 720, column: 11, scope: !3692)
!3692 = distinct !DILexicalBlock(scope: !3161, file: !801, line: 720, column: 7)
!3693 = !DILocation(line: 720, column: 16, scope: !3692)
!3694 = !DILocation(line: 728, column: 51, scope: !3695)
!3695 = distinct !DILexicalBlock(scope: !3161, file: !801, line: 728, column: 7)
!3696 = !DILocation(line: 731, column: 11, scope: !3697)
!3697 = distinct !DILexicalBlock(scope: !3698, file: !801, line: 731, column: 11)
!3698 = distinct !DILexicalBlock(scope: !3695, file: !801, line: 730, column: 5)
!3699 = !DILocation(line: 731, column: 11, scope: !3698)
!3700 = !DILocation(line: 732, column: 16, scope: !3697)
!3701 = !DILocation(line: 732, column: 9, scope: !3697)
!3702 = !DILocation(line: 736, column: 18, scope: !3703)
!3703 = distinct !DILexicalBlock(scope: !3697, file: !801, line: 736, column: 16)
!3704 = !DILocation(line: 736, column: 29, scope: !3703)
!3705 = !DILocation(line: 745, column: 7, scope: !3706)
!3706 = distinct !DILexicalBlock(scope: !3161, file: !801, line: 745, column: 7)
!3707 = !DILocation(line: 745, column: 20, scope: !3706)
!3708 = !DILocation(line: 746, column: 12, scope: !3709)
!3709 = distinct !DILexicalBlock(scope: !3710, file: !801, line: 746, column: 5)
!3710 = distinct !DILexicalBlock(scope: !3706, file: !801, line: 746, column: 5)
!3711 = !DILocation(line: 746, column: 5, scope: !3710)
!3712 = !DILocation(line: 747, column: 7, scope: !3713)
!3713 = distinct !DILexicalBlock(scope: !3714, file: !801, line: 747, column: 7)
!3714 = distinct !DILexicalBlock(scope: !3709, file: !801, line: 747, column: 7)
!3715 = !DILocation(line: 747, column: 7, scope: !3714)
!3716 = !DILocation(line: 746, column: 39, scope: !3709)
!3717 = distinct !{!3717, !3711, !3718, !1211}
!3718 = !DILocation(line: 747, column: 7, scope: !3710)
!3719 = !DILocation(line: 749, column: 11, scope: !3720)
!3720 = distinct !DILexicalBlock(scope: !3161, file: !801, line: 749, column: 7)
!3721 = !DILocation(line: 749, column: 7, scope: !3161)
!3722 = !DILocation(line: 750, column: 5, scope: !3720)
!3723 = !DILocation(line: 750, column: 17, scope: !3720)
!3724 = !DILocation(line: 753, column: 2, scope: !3161)
!3725 = !DILocation(line: 756, column: 51, scope: !3726)
!3726 = distinct !DILexicalBlock(scope: !3161, file: !801, line: 756, column: 7)
!3727 = !DILocation(line: 756, column: 21, scope: !3726)
!3728 = !DILocation(line: 760, column: 42, scope: !3161)
!3729 = !DILocation(line: 758, column: 10, scope: !3161)
!3730 = !DILocation(line: 758, column: 3, scope: !3161)
!3731 = !DILocation(line: 762, column: 1, scope: !3161)
!3732 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1289, file: !1289, line: 98, type: !3733, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1148)
!3733 = !DISubroutineType(types: !3734)
!3734 = !{!163}
!3735 = !DISubprogram(name: "iswprint", scope: !3736, file: !3736, line: 120, type: !3537, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1148)
!3736 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!3737 = distinct !DISubprogram(name: "quotearg_alloc", scope: !801, file: !801, line: 788, type: !3738, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !822, retainedNodes: !3740)
!3738 = !DISubroutineType(types: !3739)
!3739 = !{!121, !171, !163, !3055}
!3740 = !{!3741, !3742, !3743}
!3741 = !DILocalVariable(name: "arg", arg: 1, scope: !3737, file: !801, line: 788, type: !171)
!3742 = !DILocalVariable(name: "argsize", arg: 2, scope: !3737, file: !801, line: 788, type: !163)
!3743 = !DILocalVariable(name: "o", arg: 3, scope: !3737, file: !801, line: 789, type: !3055)
!3744 = !DILocation(line: 0, scope: !3737)
!3745 = !DILocalVariable(name: "arg", arg: 1, scope: !3746, file: !801, line: 801, type: !171)
!3746 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !801, file: !801, line: 801, type: !3747, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !822, retainedNodes: !3749)
!3747 = !DISubroutineType(types: !3748)
!3748 = !{!121, !171, !163, !1041, !3055}
!3749 = !{!3745, !3750, !3751, !3752, !3753, !3754, !3755, !3756, !3757}
!3750 = !DILocalVariable(name: "argsize", arg: 2, scope: !3746, file: !801, line: 801, type: !163)
!3751 = !DILocalVariable(name: "size", arg: 3, scope: !3746, file: !801, line: 801, type: !1041)
!3752 = !DILocalVariable(name: "o", arg: 4, scope: !3746, file: !801, line: 802, type: !3055)
!3753 = !DILocalVariable(name: "p", scope: !3746, file: !801, line: 804, type: !3055)
!3754 = !DILocalVariable(name: "saved_errno", scope: !3746, file: !801, line: 805, type: !89)
!3755 = !DILocalVariable(name: "flags", scope: !3746, file: !801, line: 807, type: !89)
!3756 = !DILocalVariable(name: "bufsize", scope: !3746, file: !801, line: 808, type: !163)
!3757 = !DILocalVariable(name: "buf", scope: !3746, file: !801, line: 812, type: !121)
!3758 = !DILocation(line: 0, scope: !3746, inlinedAt: !3759)
!3759 = distinct !DILocation(line: 791, column: 10, scope: !3737)
!3760 = !DILocation(line: 804, column: 37, scope: !3746, inlinedAt: !3759)
!3761 = !DILocation(line: 805, column: 21, scope: !3746, inlinedAt: !3759)
!3762 = !DILocation(line: 807, column: 18, scope: !3746, inlinedAt: !3759)
!3763 = !DILocation(line: 807, column: 24, scope: !3746, inlinedAt: !3759)
!3764 = !DILocation(line: 808, column: 72, scope: !3746, inlinedAt: !3759)
!3765 = !DILocation(line: 809, column: 56, scope: !3746, inlinedAt: !3759)
!3766 = !DILocation(line: 810, column: 49, scope: !3746, inlinedAt: !3759)
!3767 = !DILocation(line: 811, column: 49, scope: !3746, inlinedAt: !3759)
!3768 = !DILocation(line: 808, column: 20, scope: !3746, inlinedAt: !3759)
!3769 = !DILocation(line: 811, column: 62, scope: !3746, inlinedAt: !3759)
!3770 = !DILocation(line: 812, column: 15, scope: !3746, inlinedAt: !3759)
!3771 = !DILocation(line: 813, column: 60, scope: !3746, inlinedAt: !3759)
!3772 = !DILocation(line: 815, column: 32, scope: !3746, inlinedAt: !3759)
!3773 = !DILocation(line: 815, column: 47, scope: !3746, inlinedAt: !3759)
!3774 = !DILocation(line: 813, column: 3, scope: !3746, inlinedAt: !3759)
!3775 = !DILocation(line: 816, column: 9, scope: !3746, inlinedAt: !3759)
!3776 = !DILocation(line: 791, column: 3, scope: !3737)
!3777 = !DILocation(line: 0, scope: !3746)
!3778 = !DILocation(line: 804, column: 37, scope: !3746)
!3779 = !DILocation(line: 805, column: 21, scope: !3746)
!3780 = !DILocation(line: 807, column: 18, scope: !3746)
!3781 = !DILocation(line: 807, column: 27, scope: !3746)
!3782 = !DILocation(line: 807, column: 24, scope: !3746)
!3783 = !DILocation(line: 808, column: 72, scope: !3746)
!3784 = !DILocation(line: 809, column: 56, scope: !3746)
!3785 = !DILocation(line: 810, column: 49, scope: !3746)
!3786 = !DILocation(line: 811, column: 49, scope: !3746)
!3787 = !DILocation(line: 808, column: 20, scope: !3746)
!3788 = !DILocation(line: 811, column: 62, scope: !3746)
!3789 = !DILocation(line: 812, column: 15, scope: !3746)
!3790 = !DILocation(line: 813, column: 60, scope: !3746)
!3791 = !DILocation(line: 815, column: 32, scope: !3746)
!3792 = !DILocation(line: 815, column: 47, scope: !3746)
!3793 = !DILocation(line: 813, column: 3, scope: !3746)
!3794 = !DILocation(line: 816, column: 9, scope: !3746)
!3795 = !DILocation(line: 817, column: 7, scope: !3746)
!3796 = !DILocation(line: 818, column: 11, scope: !3797)
!3797 = distinct !DILexicalBlock(scope: !3746, file: !801, line: 817, column: 7)
!3798 = !DILocation(line: 818, column: 5, scope: !3797)
!3799 = !DILocation(line: 819, column: 3, scope: !3746)
!3800 = distinct !DISubprogram(name: "quotearg_free", scope: !801, file: !801, line: 837, type: !741, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !822, retainedNodes: !3801)
!3801 = !{!3802, !3803}
!3802 = !DILocalVariable(name: "sv", scope: !3800, file: !801, line: 839, type: !885)
!3803 = !DILocalVariable(name: "i", scope: !3804, file: !801, line: 840, type: !89)
!3804 = distinct !DILexicalBlock(scope: !3800, file: !801, line: 840, column: 3)
!3805 = !DILocation(line: 839, column: 24, scope: !3800)
!3806 = !DILocation(line: 0, scope: !3800)
!3807 = !DILocation(line: 0, scope: !3804)
!3808 = !DILocation(line: 840, column: 21, scope: !3809)
!3809 = distinct !DILexicalBlock(scope: !3804, file: !801, line: 840, column: 3)
!3810 = !DILocation(line: 840, column: 3, scope: !3804)
!3811 = !DILocation(line: 842, column: 13, scope: !3812)
!3812 = distinct !DILexicalBlock(scope: !3800, file: !801, line: 842, column: 7)
!3813 = !{!3814, !1099, i64 8}
!3814 = !{!"slotvec", !1471, i64 0, !1099, i64 8}
!3815 = !DILocation(line: 842, column: 17, scope: !3812)
!3816 = !DILocation(line: 842, column: 7, scope: !3800)
!3817 = !DILocation(line: 841, column: 17, scope: !3809)
!3818 = !DILocation(line: 841, column: 5, scope: !3809)
!3819 = !DILocation(line: 840, column: 32, scope: !3809)
!3820 = distinct !{!3820, !3810, !3821, !1211}
!3821 = !DILocation(line: 841, column: 20, scope: !3804)
!3822 = !DILocation(line: 844, column: 7, scope: !3823)
!3823 = distinct !DILexicalBlock(scope: !3812, file: !801, line: 843, column: 5)
!3824 = !DILocation(line: 845, column: 21, scope: !3823)
!3825 = !{!3814, !1471, i64 0}
!3826 = !DILocation(line: 846, column: 20, scope: !3823)
!3827 = !DILocation(line: 847, column: 5, scope: !3823)
!3828 = !DILocation(line: 848, column: 10, scope: !3829)
!3829 = distinct !DILexicalBlock(scope: !3800, file: !801, line: 848, column: 7)
!3830 = !DILocation(line: 848, column: 7, scope: !3800)
!3831 = !DILocation(line: 850, column: 7, scope: !3832)
!3832 = distinct !DILexicalBlock(scope: !3829, file: !801, line: 849, column: 5)
!3833 = !DILocation(line: 851, column: 15, scope: !3832)
!3834 = !DILocation(line: 852, column: 5, scope: !3832)
!3835 = !DILocation(line: 853, column: 10, scope: !3800)
!3836 = !DILocation(line: 854, column: 1, scope: !3800)
!3837 = distinct !DISubprogram(name: "quotearg_n", scope: !801, file: !801, line: 919, type: !1282, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !822, retainedNodes: !3838)
!3838 = !{!3839, !3840}
!3839 = !DILocalVariable(name: "n", arg: 1, scope: !3837, file: !801, line: 919, type: !89)
!3840 = !DILocalVariable(name: "arg", arg: 2, scope: !3837, file: !801, line: 919, type: !171)
!3841 = !DILocation(line: 0, scope: !3837)
!3842 = !DILocation(line: 921, column: 10, scope: !3837)
!3843 = !DILocation(line: 921, column: 3, scope: !3837)
!3844 = distinct !DISubprogram(name: "quotearg_n_options", scope: !801, file: !801, line: 866, type: !3845, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !822, retainedNodes: !3847)
!3845 = !DISubroutineType(types: !3846)
!3846 = !{!121, !89, !171, !163, !3055}
!3847 = !{!3848, !3849, !3850, !3851, !3852, !3853, !3854, !3855, !3858, !3859, !3861, !3862, !3863}
!3848 = !DILocalVariable(name: "n", arg: 1, scope: !3844, file: !801, line: 866, type: !89)
!3849 = !DILocalVariable(name: "arg", arg: 2, scope: !3844, file: !801, line: 866, type: !171)
!3850 = !DILocalVariable(name: "argsize", arg: 3, scope: !3844, file: !801, line: 866, type: !163)
!3851 = !DILocalVariable(name: "options", arg: 4, scope: !3844, file: !801, line: 867, type: !3055)
!3852 = !DILocalVariable(name: "saved_errno", scope: !3844, file: !801, line: 869, type: !89)
!3853 = !DILocalVariable(name: "sv", scope: !3844, file: !801, line: 871, type: !885)
!3854 = !DILocalVariable(name: "nslots_max", scope: !3844, file: !801, line: 873, type: !89)
!3855 = !DILocalVariable(name: "preallocated", scope: !3856, file: !801, line: 879, type: !112)
!3856 = distinct !DILexicalBlock(scope: !3857, file: !801, line: 878, column: 5)
!3857 = distinct !DILexicalBlock(scope: !3844, file: !801, line: 877, column: 7)
!3858 = !DILocalVariable(name: "new_nslots", scope: !3856, file: !801, line: 880, type: !177)
!3859 = !DILocalVariable(name: "size", scope: !3860, file: !801, line: 891, type: !163)
!3860 = distinct !DILexicalBlock(scope: !3844, file: !801, line: 890, column: 3)
!3861 = !DILocalVariable(name: "val", scope: !3860, file: !801, line: 892, type: !121)
!3862 = !DILocalVariable(name: "flags", scope: !3860, file: !801, line: 894, type: !89)
!3863 = !DILocalVariable(name: "qsize", scope: !3860, file: !801, line: 895, type: !163)
!3864 = !DILocation(line: 0, scope: !3844)
!3865 = !DILocation(line: 869, column: 21, scope: !3844)
!3866 = !DILocation(line: 871, column: 24, scope: !3844)
!3867 = !DILocation(line: 874, column: 17, scope: !3868)
!3868 = distinct !DILexicalBlock(scope: !3844, file: !801, line: 874, column: 7)
!3869 = !DILocation(line: 875, column: 5, scope: !3868)
!3870 = !DILocation(line: 877, column: 7, scope: !3857)
!3871 = !DILocation(line: 877, column: 14, scope: !3857)
!3872 = !DILocation(line: 877, column: 7, scope: !3844)
!3873 = !DILocation(line: 879, column: 31, scope: !3856)
!3874 = !DILocation(line: 0, scope: !3856)
!3875 = !DILocation(line: 880, column: 7, scope: !3856)
!3876 = !DILocation(line: 880, column: 26, scope: !3856)
!3877 = !DILocation(line: 880, column: 13, scope: !3856)
!3878 = !DILocation(line: 882, column: 31, scope: !3856)
!3879 = !DILocation(line: 883, column: 33, scope: !3856)
!3880 = !DILocation(line: 883, column: 42, scope: !3856)
!3881 = !DILocation(line: 883, column: 31, scope: !3856)
!3882 = !DILocation(line: 882, column: 22, scope: !3856)
!3883 = !DILocation(line: 882, column: 15, scope: !3856)
!3884 = !DILocation(line: 884, column: 11, scope: !3856)
!3885 = !DILocation(line: 885, column: 15, scope: !3886)
!3886 = distinct !DILexicalBlock(scope: !3856, file: !801, line: 884, column: 11)
!3887 = !{i64 0, i64 8, !1516, i64 8, i64 8, !1098}
!3888 = !DILocation(line: 885, column: 9, scope: !3886)
!3889 = !DILocation(line: 886, column: 20, scope: !3856)
!3890 = !DILocation(line: 886, column: 18, scope: !3856)
!3891 = !DILocation(line: 886, column: 32, scope: !3856)
!3892 = !DILocation(line: 886, column: 43, scope: !3856)
!3893 = !DILocation(line: 886, column: 53, scope: !3856)
!3894 = !DILocation(line: 0, scope: !3269, inlinedAt: !3895)
!3895 = distinct !DILocation(line: 886, column: 7, scope: !3856)
!3896 = !DILocation(line: 59, column: 10, scope: !3269, inlinedAt: !3895)
!3897 = !DILocation(line: 887, column: 16, scope: !3856)
!3898 = !DILocation(line: 887, column: 14, scope: !3856)
!3899 = !DILocation(line: 888, column: 5, scope: !3857)
!3900 = !DILocation(line: 888, column: 5, scope: !3856)
!3901 = !DILocation(line: 891, column: 19, scope: !3860)
!3902 = !DILocation(line: 891, column: 25, scope: !3860)
!3903 = !DILocation(line: 0, scope: !3860)
!3904 = !DILocation(line: 892, column: 23, scope: !3860)
!3905 = !DILocation(line: 894, column: 26, scope: !3860)
!3906 = !DILocation(line: 894, column: 32, scope: !3860)
!3907 = !DILocation(line: 896, column: 55, scope: !3860)
!3908 = !DILocation(line: 897, column: 55, scope: !3860)
!3909 = !DILocation(line: 898, column: 55, scope: !3860)
!3910 = !DILocation(line: 899, column: 55, scope: !3860)
!3911 = !DILocation(line: 895, column: 20, scope: !3860)
!3912 = !DILocation(line: 901, column: 14, scope: !3913)
!3913 = distinct !DILexicalBlock(scope: !3860, file: !801, line: 901, column: 9)
!3914 = !DILocation(line: 901, column: 9, scope: !3860)
!3915 = !DILocation(line: 903, column: 35, scope: !3916)
!3916 = distinct !DILexicalBlock(scope: !3913, file: !801, line: 902, column: 7)
!3917 = !DILocation(line: 903, column: 20, scope: !3916)
!3918 = !DILocation(line: 904, column: 17, scope: !3919)
!3919 = distinct !DILexicalBlock(scope: !3916, file: !801, line: 904, column: 13)
!3920 = !DILocation(line: 904, column: 13, scope: !3916)
!3921 = !DILocation(line: 905, column: 11, scope: !3919)
!3922 = !DILocation(line: 906, column: 27, scope: !3916)
!3923 = !DILocation(line: 906, column: 19, scope: !3916)
!3924 = !DILocation(line: 907, column: 69, scope: !3916)
!3925 = !DILocation(line: 909, column: 44, scope: !3916)
!3926 = !DILocation(line: 910, column: 44, scope: !3916)
!3927 = !DILocation(line: 907, column: 9, scope: !3916)
!3928 = !DILocation(line: 911, column: 7, scope: !3916)
!3929 = !DILocation(line: 913, column: 11, scope: !3860)
!3930 = !DILocation(line: 914, column: 5, scope: !3860)
!3931 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !801, file: !801, line: 925, type: !3932, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !822, retainedNodes: !3934)
!3932 = !DISubroutineType(types: !3933)
!3933 = !{!121, !89, !171, !163}
!3934 = !{!3935, !3936, !3937}
!3935 = !DILocalVariable(name: "n", arg: 1, scope: !3931, file: !801, line: 925, type: !89)
!3936 = !DILocalVariable(name: "arg", arg: 2, scope: !3931, file: !801, line: 925, type: !171)
!3937 = !DILocalVariable(name: "argsize", arg: 3, scope: !3931, file: !801, line: 925, type: !163)
!3938 = !DILocation(line: 0, scope: !3931)
!3939 = !DILocation(line: 927, column: 10, scope: !3931)
!3940 = !DILocation(line: 927, column: 3, scope: !3931)
!3941 = distinct !DISubprogram(name: "quotearg", scope: !801, file: !801, line: 931, type: !1291, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !822, retainedNodes: !3942)
!3942 = !{!3943}
!3943 = !DILocalVariable(name: "arg", arg: 1, scope: !3941, file: !801, line: 931, type: !171)
!3944 = !DILocation(line: 0, scope: !3941)
!3945 = !DILocation(line: 0, scope: !3837, inlinedAt: !3946)
!3946 = distinct !DILocation(line: 933, column: 10, scope: !3941)
!3947 = !DILocation(line: 921, column: 10, scope: !3837, inlinedAt: !3946)
!3948 = !DILocation(line: 933, column: 3, scope: !3941)
!3949 = distinct !DISubprogram(name: "quotearg_mem", scope: !801, file: !801, line: 937, type: !3950, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !822, retainedNodes: !3952)
!3950 = !DISubroutineType(types: !3951)
!3951 = !{!121, !171, !163}
!3952 = !{!3953, !3954}
!3953 = !DILocalVariable(name: "arg", arg: 1, scope: !3949, file: !801, line: 937, type: !171)
!3954 = !DILocalVariable(name: "argsize", arg: 2, scope: !3949, file: !801, line: 937, type: !163)
!3955 = !DILocation(line: 0, scope: !3949)
!3956 = !DILocation(line: 0, scope: !3931, inlinedAt: !3957)
!3957 = distinct !DILocation(line: 939, column: 10, scope: !3949)
!3958 = !DILocation(line: 927, column: 10, scope: !3931, inlinedAt: !3957)
!3959 = !DILocation(line: 939, column: 3, scope: !3949)
!3960 = distinct !DISubprogram(name: "quotearg_n_style", scope: !801, file: !801, line: 943, type: !3961, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !822, retainedNodes: !3963)
!3961 = !DISubroutineType(types: !3962)
!3962 = !{!121, !89, !207, !171}
!3963 = !{!3964, !3965, !3966, !3967}
!3964 = !DILocalVariable(name: "n", arg: 1, scope: !3960, file: !801, line: 943, type: !89)
!3965 = !DILocalVariable(name: "s", arg: 2, scope: !3960, file: !801, line: 943, type: !207)
!3966 = !DILocalVariable(name: "arg", arg: 3, scope: !3960, file: !801, line: 943, type: !171)
!3967 = !DILocalVariable(name: "o", scope: !3960, file: !801, line: 945, type: !3056)
!3968 = !DILocation(line: 0, scope: !3960)
!3969 = !DILocation(line: 945, column: 3, scope: !3960)
!3970 = !DILocation(line: 945, column: 32, scope: !3960)
!3971 = !{!3972}
!3972 = distinct !{!3972, !3973, !"quoting_options_from_style: argument 0"}
!3973 = distinct !{!3973, !"quoting_options_from_style"}
!3974 = !DILocation(line: 945, column: 36, scope: !3960)
!3975 = !DILocalVariable(name: "style", arg: 1, scope: !3976, file: !801, line: 183, type: !207)
!3976 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !801, file: !801, line: 183, type: !3977, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !822, retainedNodes: !3979)
!3977 = !DISubroutineType(types: !3978)
!3978 = !{!837, !207}
!3979 = !{!3975, !3980}
!3980 = !DILocalVariable(name: "o", scope: !3976, file: !801, line: 185, type: !837)
!3981 = !DILocation(line: 0, scope: !3976, inlinedAt: !3982)
!3982 = distinct !DILocation(line: 945, column: 36, scope: !3960)
!3983 = !DILocation(line: 185, column: 26, scope: !3976, inlinedAt: !3982)
!3984 = !DILocation(line: 186, column: 13, scope: !3985, inlinedAt: !3982)
!3985 = distinct !DILexicalBlock(scope: !3976, file: !801, line: 186, column: 7)
!3986 = !DILocation(line: 186, column: 7, scope: !3976, inlinedAt: !3982)
!3987 = !DILocation(line: 187, column: 5, scope: !3985, inlinedAt: !3982)
!3988 = !DILocation(line: 188, column: 11, scope: !3976, inlinedAt: !3982)
!3989 = !DILocation(line: 946, column: 10, scope: !3960)
!3990 = !DILocation(line: 947, column: 1, scope: !3960)
!3991 = !DILocation(line: 946, column: 3, scope: !3960)
!3992 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !801, file: !801, line: 950, type: !3993, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !822, retainedNodes: !3995)
!3993 = !DISubroutineType(types: !3994)
!3994 = !{!121, !89, !207, !171, !163}
!3995 = !{!3996, !3997, !3998, !3999, !4000}
!3996 = !DILocalVariable(name: "n", arg: 1, scope: !3992, file: !801, line: 950, type: !89)
!3997 = !DILocalVariable(name: "s", arg: 2, scope: !3992, file: !801, line: 950, type: !207)
!3998 = !DILocalVariable(name: "arg", arg: 3, scope: !3992, file: !801, line: 951, type: !171)
!3999 = !DILocalVariable(name: "argsize", arg: 4, scope: !3992, file: !801, line: 951, type: !163)
!4000 = !DILocalVariable(name: "o", scope: !3992, file: !801, line: 953, type: !3056)
!4001 = !DILocation(line: 0, scope: !3992)
!4002 = !DILocation(line: 953, column: 3, scope: !3992)
!4003 = !DILocation(line: 953, column: 32, scope: !3992)
!4004 = !{!4005}
!4005 = distinct !{!4005, !4006, !"quoting_options_from_style: argument 0"}
!4006 = distinct !{!4006, !"quoting_options_from_style"}
!4007 = !DILocation(line: 953, column: 36, scope: !3992)
!4008 = !DILocation(line: 0, scope: !3976, inlinedAt: !4009)
!4009 = distinct !DILocation(line: 953, column: 36, scope: !3992)
!4010 = !DILocation(line: 185, column: 26, scope: !3976, inlinedAt: !4009)
!4011 = !DILocation(line: 186, column: 13, scope: !3985, inlinedAt: !4009)
!4012 = !DILocation(line: 186, column: 7, scope: !3976, inlinedAt: !4009)
!4013 = !DILocation(line: 187, column: 5, scope: !3985, inlinedAt: !4009)
!4014 = !DILocation(line: 188, column: 11, scope: !3976, inlinedAt: !4009)
!4015 = !DILocation(line: 954, column: 10, scope: !3992)
!4016 = !DILocation(line: 955, column: 1, scope: !3992)
!4017 = !DILocation(line: 954, column: 3, scope: !3992)
!4018 = distinct !DISubprogram(name: "quotearg_style", scope: !801, file: !801, line: 958, type: !4019, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !822, retainedNodes: !4021)
!4019 = !DISubroutineType(types: !4020)
!4020 = !{!121, !207, !171}
!4021 = !{!4022, !4023}
!4022 = !DILocalVariable(name: "s", arg: 1, scope: !4018, file: !801, line: 958, type: !207)
!4023 = !DILocalVariable(name: "arg", arg: 2, scope: !4018, file: !801, line: 958, type: !171)
!4024 = !DILocation(line: 0, scope: !4018)
!4025 = !DILocation(line: 0, scope: !3960, inlinedAt: !4026)
!4026 = distinct !DILocation(line: 960, column: 10, scope: !4018)
!4027 = !DILocation(line: 945, column: 3, scope: !3960, inlinedAt: !4026)
!4028 = !DILocation(line: 945, column: 32, scope: !3960, inlinedAt: !4026)
!4029 = !{!4030}
!4030 = distinct !{!4030, !4031, !"quoting_options_from_style: argument 0"}
!4031 = distinct !{!4031, !"quoting_options_from_style"}
!4032 = !DILocation(line: 945, column: 36, scope: !3960, inlinedAt: !4026)
!4033 = !DILocation(line: 0, scope: !3976, inlinedAt: !4034)
!4034 = distinct !DILocation(line: 945, column: 36, scope: !3960, inlinedAt: !4026)
!4035 = !DILocation(line: 185, column: 26, scope: !3976, inlinedAt: !4034)
!4036 = !DILocation(line: 186, column: 13, scope: !3985, inlinedAt: !4034)
!4037 = !DILocation(line: 186, column: 7, scope: !3976, inlinedAt: !4034)
!4038 = !DILocation(line: 187, column: 5, scope: !3985, inlinedAt: !4034)
!4039 = !DILocation(line: 188, column: 11, scope: !3976, inlinedAt: !4034)
!4040 = !DILocation(line: 946, column: 10, scope: !3960, inlinedAt: !4026)
!4041 = !DILocation(line: 947, column: 1, scope: !3960, inlinedAt: !4026)
!4042 = !DILocation(line: 960, column: 3, scope: !4018)
!4043 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !801, file: !801, line: 964, type: !4044, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !822, retainedNodes: !4046)
!4044 = !DISubroutineType(types: !4045)
!4045 = !{!121, !207, !171, !163}
!4046 = !{!4047, !4048, !4049}
!4047 = !DILocalVariable(name: "s", arg: 1, scope: !4043, file: !801, line: 964, type: !207)
!4048 = !DILocalVariable(name: "arg", arg: 2, scope: !4043, file: !801, line: 964, type: !171)
!4049 = !DILocalVariable(name: "argsize", arg: 3, scope: !4043, file: !801, line: 964, type: !163)
!4050 = !DILocation(line: 0, scope: !4043)
!4051 = !DILocation(line: 0, scope: !3992, inlinedAt: !4052)
!4052 = distinct !DILocation(line: 966, column: 10, scope: !4043)
!4053 = !DILocation(line: 953, column: 3, scope: !3992, inlinedAt: !4052)
!4054 = !DILocation(line: 953, column: 32, scope: !3992, inlinedAt: !4052)
!4055 = !{!4056}
!4056 = distinct !{!4056, !4057, !"quoting_options_from_style: argument 0"}
!4057 = distinct !{!4057, !"quoting_options_from_style"}
!4058 = !DILocation(line: 953, column: 36, scope: !3992, inlinedAt: !4052)
!4059 = !DILocation(line: 0, scope: !3976, inlinedAt: !4060)
!4060 = distinct !DILocation(line: 953, column: 36, scope: !3992, inlinedAt: !4052)
!4061 = !DILocation(line: 185, column: 26, scope: !3976, inlinedAt: !4060)
!4062 = !DILocation(line: 186, column: 13, scope: !3985, inlinedAt: !4060)
!4063 = !DILocation(line: 186, column: 7, scope: !3976, inlinedAt: !4060)
!4064 = !DILocation(line: 187, column: 5, scope: !3985, inlinedAt: !4060)
!4065 = !DILocation(line: 188, column: 11, scope: !3976, inlinedAt: !4060)
!4066 = !DILocation(line: 954, column: 10, scope: !3992, inlinedAt: !4052)
!4067 = !DILocation(line: 955, column: 1, scope: !3992, inlinedAt: !4052)
!4068 = !DILocation(line: 966, column: 3, scope: !4043)
!4069 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !801, file: !801, line: 970, type: !4070, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !822, retainedNodes: !4072)
!4070 = !DISubroutineType(types: !4071)
!4071 = !{!121, !171, !163, !4}
!4072 = !{!4073, !4074, !4075, !4076}
!4073 = !DILocalVariable(name: "arg", arg: 1, scope: !4069, file: !801, line: 970, type: !171)
!4074 = !DILocalVariable(name: "argsize", arg: 2, scope: !4069, file: !801, line: 970, type: !163)
!4075 = !DILocalVariable(name: "ch", arg: 3, scope: !4069, file: !801, line: 970, type: !4)
!4076 = !DILocalVariable(name: "options", scope: !4069, file: !801, line: 972, type: !837)
!4077 = !DILocation(line: 0, scope: !4069)
!4078 = !DILocation(line: 972, column: 3, scope: !4069)
!4079 = !DILocation(line: 972, column: 26, scope: !4069)
!4080 = !DILocation(line: 973, column: 13, scope: !4069)
!4081 = !{i64 0, i64 4, !1173, i64 4, i64 4, !1164, i64 8, i64 32, !1173, i64 40, i64 8, !1098, i64 48, i64 8, !1098}
!4082 = !DILocation(line: 0, scope: !3075, inlinedAt: !4083)
!4083 = distinct !DILocation(line: 974, column: 3, scope: !4069)
!4084 = !DILocation(line: 147, column: 41, scope: !3075, inlinedAt: !4083)
!4085 = !DILocation(line: 147, column: 62, scope: !3075, inlinedAt: !4083)
!4086 = !DILocation(line: 147, column: 57, scope: !3075, inlinedAt: !4083)
!4087 = !DILocation(line: 148, column: 15, scope: !3075, inlinedAt: !4083)
!4088 = !DILocation(line: 149, column: 21, scope: !3075, inlinedAt: !4083)
!4089 = !DILocation(line: 149, column: 24, scope: !3075, inlinedAt: !4083)
!4090 = !DILocation(line: 150, column: 19, scope: !3075, inlinedAt: !4083)
!4091 = !DILocation(line: 150, column: 24, scope: !3075, inlinedAt: !4083)
!4092 = !DILocation(line: 150, column: 6, scope: !3075, inlinedAt: !4083)
!4093 = !DILocation(line: 975, column: 10, scope: !4069)
!4094 = !DILocation(line: 976, column: 1, scope: !4069)
!4095 = !DILocation(line: 975, column: 3, scope: !4069)
!4096 = distinct !DISubprogram(name: "quotearg_char", scope: !801, file: !801, line: 979, type: !4097, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !822, retainedNodes: !4099)
!4097 = !DISubroutineType(types: !4098)
!4098 = !{!121, !171, !4}
!4099 = !{!4100, !4101}
!4100 = !DILocalVariable(name: "arg", arg: 1, scope: !4096, file: !801, line: 979, type: !171)
!4101 = !DILocalVariable(name: "ch", arg: 2, scope: !4096, file: !801, line: 979, type: !4)
!4102 = !DILocation(line: 0, scope: !4096)
!4103 = !DILocation(line: 0, scope: !4069, inlinedAt: !4104)
!4104 = distinct !DILocation(line: 981, column: 10, scope: !4096)
!4105 = !DILocation(line: 972, column: 3, scope: !4069, inlinedAt: !4104)
!4106 = !DILocation(line: 972, column: 26, scope: !4069, inlinedAt: !4104)
!4107 = !DILocation(line: 973, column: 13, scope: !4069, inlinedAt: !4104)
!4108 = !DILocation(line: 0, scope: !3075, inlinedAt: !4109)
!4109 = distinct !DILocation(line: 974, column: 3, scope: !4069, inlinedAt: !4104)
!4110 = !DILocation(line: 147, column: 41, scope: !3075, inlinedAt: !4109)
!4111 = !DILocation(line: 147, column: 62, scope: !3075, inlinedAt: !4109)
!4112 = !DILocation(line: 147, column: 57, scope: !3075, inlinedAt: !4109)
!4113 = !DILocation(line: 148, column: 15, scope: !3075, inlinedAt: !4109)
!4114 = !DILocation(line: 149, column: 21, scope: !3075, inlinedAt: !4109)
!4115 = !DILocation(line: 149, column: 24, scope: !3075, inlinedAt: !4109)
!4116 = !DILocation(line: 150, column: 19, scope: !3075, inlinedAt: !4109)
!4117 = !DILocation(line: 150, column: 24, scope: !3075, inlinedAt: !4109)
!4118 = !DILocation(line: 150, column: 6, scope: !3075, inlinedAt: !4109)
!4119 = !DILocation(line: 975, column: 10, scope: !4069, inlinedAt: !4104)
!4120 = !DILocation(line: 976, column: 1, scope: !4069, inlinedAt: !4104)
!4121 = !DILocation(line: 981, column: 3, scope: !4096)
!4122 = distinct !DISubprogram(name: "quotearg_colon", scope: !801, file: !801, line: 985, type: !1291, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !822, retainedNodes: !4123)
!4123 = !{!4124}
!4124 = !DILocalVariable(name: "arg", arg: 1, scope: !4122, file: !801, line: 985, type: !171)
!4125 = !DILocation(line: 0, scope: !4122)
!4126 = !DILocation(line: 0, scope: !4096, inlinedAt: !4127)
!4127 = distinct !DILocation(line: 987, column: 10, scope: !4122)
!4128 = !DILocation(line: 0, scope: !4069, inlinedAt: !4129)
!4129 = distinct !DILocation(line: 981, column: 10, scope: !4096, inlinedAt: !4127)
!4130 = !DILocation(line: 972, column: 3, scope: !4069, inlinedAt: !4129)
!4131 = !DILocation(line: 972, column: 26, scope: !4069, inlinedAt: !4129)
!4132 = !DILocation(line: 973, column: 13, scope: !4069, inlinedAt: !4129)
!4133 = !DILocation(line: 0, scope: !3075, inlinedAt: !4134)
!4134 = distinct !DILocation(line: 974, column: 3, scope: !4069, inlinedAt: !4129)
!4135 = !DILocation(line: 147, column: 57, scope: !3075, inlinedAt: !4134)
!4136 = !DILocation(line: 149, column: 21, scope: !3075, inlinedAt: !4134)
!4137 = !DILocation(line: 150, column: 6, scope: !3075, inlinedAt: !4134)
!4138 = !DILocation(line: 975, column: 10, scope: !4069, inlinedAt: !4129)
!4139 = !DILocation(line: 976, column: 1, scope: !4069, inlinedAt: !4129)
!4140 = !DILocation(line: 987, column: 3, scope: !4122)
!4141 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !801, file: !801, line: 991, type: !3950, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !822, retainedNodes: !4142)
!4142 = !{!4143, !4144}
!4143 = !DILocalVariable(name: "arg", arg: 1, scope: !4141, file: !801, line: 991, type: !171)
!4144 = !DILocalVariable(name: "argsize", arg: 2, scope: !4141, file: !801, line: 991, type: !163)
!4145 = !DILocation(line: 0, scope: !4141)
!4146 = !DILocation(line: 0, scope: !4069, inlinedAt: !4147)
!4147 = distinct !DILocation(line: 993, column: 10, scope: !4141)
!4148 = !DILocation(line: 972, column: 3, scope: !4069, inlinedAt: !4147)
!4149 = !DILocation(line: 972, column: 26, scope: !4069, inlinedAt: !4147)
!4150 = !DILocation(line: 973, column: 13, scope: !4069, inlinedAt: !4147)
!4151 = !DILocation(line: 0, scope: !3075, inlinedAt: !4152)
!4152 = distinct !DILocation(line: 974, column: 3, scope: !4069, inlinedAt: !4147)
!4153 = !DILocation(line: 147, column: 57, scope: !3075, inlinedAt: !4152)
!4154 = !DILocation(line: 149, column: 21, scope: !3075, inlinedAt: !4152)
!4155 = !DILocation(line: 150, column: 6, scope: !3075, inlinedAt: !4152)
!4156 = !DILocation(line: 975, column: 10, scope: !4069, inlinedAt: !4147)
!4157 = !DILocation(line: 976, column: 1, scope: !4069, inlinedAt: !4147)
!4158 = !DILocation(line: 993, column: 3, scope: !4141)
!4159 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !801, file: !801, line: 997, type: !3961, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !822, retainedNodes: !4160)
!4160 = !{!4161, !4162, !4163, !4164}
!4161 = !DILocalVariable(name: "n", arg: 1, scope: !4159, file: !801, line: 997, type: !89)
!4162 = !DILocalVariable(name: "s", arg: 2, scope: !4159, file: !801, line: 997, type: !207)
!4163 = !DILocalVariable(name: "arg", arg: 3, scope: !4159, file: !801, line: 997, type: !171)
!4164 = !DILocalVariable(name: "options", scope: !4159, file: !801, line: 999, type: !837)
!4165 = !DILocation(line: 185, column: 26, scope: !3976, inlinedAt: !4166)
!4166 = distinct !DILocation(line: 1000, column: 13, scope: !4159)
!4167 = !DILocation(line: 0, scope: !4159)
!4168 = !DILocation(line: 999, column: 3, scope: !4159)
!4169 = !DILocation(line: 999, column: 26, scope: !4159)
!4170 = !DILocation(line: 0, scope: !3976, inlinedAt: !4166)
!4171 = !DILocation(line: 186, column: 13, scope: !3985, inlinedAt: !4166)
!4172 = !DILocation(line: 186, column: 7, scope: !3976, inlinedAt: !4166)
!4173 = !DILocation(line: 187, column: 5, scope: !3985, inlinedAt: !4166)
!4174 = !{!4175}
!4175 = distinct !{!4175, !4176, !"quoting_options_from_style: argument 0"}
!4176 = distinct !{!4176, !"quoting_options_from_style"}
!4177 = !DILocation(line: 1000, column: 13, scope: !4159)
!4178 = !DILocation(line: 0, scope: !3075, inlinedAt: !4179)
!4179 = distinct !DILocation(line: 1001, column: 3, scope: !4159)
!4180 = !DILocation(line: 147, column: 57, scope: !3075, inlinedAt: !4179)
!4181 = !DILocation(line: 149, column: 21, scope: !3075, inlinedAt: !4179)
!4182 = !DILocation(line: 150, column: 6, scope: !3075, inlinedAt: !4179)
!4183 = !DILocation(line: 1002, column: 10, scope: !4159)
!4184 = !DILocation(line: 1003, column: 1, scope: !4159)
!4185 = !DILocation(line: 1002, column: 3, scope: !4159)
!4186 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !801, file: !801, line: 1006, type: !4187, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !822, retainedNodes: !4189)
!4187 = !DISubroutineType(types: !4188)
!4188 = !{!121, !89, !171, !171, !171}
!4189 = !{!4190, !4191, !4192, !4193}
!4190 = !DILocalVariable(name: "n", arg: 1, scope: !4186, file: !801, line: 1006, type: !89)
!4191 = !DILocalVariable(name: "left_quote", arg: 2, scope: !4186, file: !801, line: 1006, type: !171)
!4192 = !DILocalVariable(name: "right_quote", arg: 3, scope: !4186, file: !801, line: 1007, type: !171)
!4193 = !DILocalVariable(name: "arg", arg: 4, scope: !4186, file: !801, line: 1007, type: !171)
!4194 = !DILocation(line: 0, scope: !4186)
!4195 = !DILocalVariable(name: "n", arg: 1, scope: !4196, file: !801, line: 1014, type: !89)
!4196 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !801, file: !801, line: 1014, type: !4197, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !822, retainedNodes: !4199)
!4197 = !DISubroutineType(types: !4198)
!4198 = !{!121, !89, !171, !171, !171, !163}
!4199 = !{!4195, !4200, !4201, !4202, !4203, !4204}
!4200 = !DILocalVariable(name: "left_quote", arg: 2, scope: !4196, file: !801, line: 1014, type: !171)
!4201 = !DILocalVariable(name: "right_quote", arg: 3, scope: !4196, file: !801, line: 1015, type: !171)
!4202 = !DILocalVariable(name: "arg", arg: 4, scope: !4196, file: !801, line: 1016, type: !171)
!4203 = !DILocalVariable(name: "argsize", arg: 5, scope: !4196, file: !801, line: 1016, type: !163)
!4204 = !DILocalVariable(name: "o", scope: !4196, file: !801, line: 1018, type: !837)
!4205 = !DILocation(line: 0, scope: !4196, inlinedAt: !4206)
!4206 = distinct !DILocation(line: 1009, column: 10, scope: !4186)
!4207 = !DILocation(line: 1018, column: 3, scope: !4196, inlinedAt: !4206)
!4208 = !DILocation(line: 1018, column: 26, scope: !4196, inlinedAt: !4206)
!4209 = !DILocation(line: 1018, column: 30, scope: !4196, inlinedAt: !4206)
!4210 = !DILocation(line: 0, scope: !3115, inlinedAt: !4211)
!4211 = distinct !DILocation(line: 1019, column: 3, scope: !4196, inlinedAt: !4206)
!4212 = !DILocation(line: 174, column: 12, scope: !3115, inlinedAt: !4211)
!4213 = !DILocation(line: 175, column: 8, scope: !3128, inlinedAt: !4211)
!4214 = !DILocation(line: 175, column: 19, scope: !3128, inlinedAt: !4211)
!4215 = !DILocation(line: 176, column: 5, scope: !3128, inlinedAt: !4211)
!4216 = !DILocation(line: 177, column: 6, scope: !3115, inlinedAt: !4211)
!4217 = !DILocation(line: 177, column: 17, scope: !3115, inlinedAt: !4211)
!4218 = !DILocation(line: 178, column: 6, scope: !3115, inlinedAt: !4211)
!4219 = !DILocation(line: 178, column: 18, scope: !3115, inlinedAt: !4211)
!4220 = !DILocation(line: 1020, column: 10, scope: !4196, inlinedAt: !4206)
!4221 = !DILocation(line: 1021, column: 1, scope: !4196, inlinedAt: !4206)
!4222 = !DILocation(line: 1009, column: 3, scope: !4186)
!4223 = !DILocation(line: 0, scope: !4196)
!4224 = !DILocation(line: 1018, column: 3, scope: !4196)
!4225 = !DILocation(line: 1018, column: 26, scope: !4196)
!4226 = !DILocation(line: 1018, column: 30, scope: !4196)
!4227 = !DILocation(line: 0, scope: !3115, inlinedAt: !4228)
!4228 = distinct !DILocation(line: 1019, column: 3, scope: !4196)
!4229 = !DILocation(line: 174, column: 12, scope: !3115, inlinedAt: !4228)
!4230 = !DILocation(line: 175, column: 8, scope: !3128, inlinedAt: !4228)
!4231 = !DILocation(line: 175, column: 19, scope: !3128, inlinedAt: !4228)
!4232 = !DILocation(line: 176, column: 5, scope: !3128, inlinedAt: !4228)
!4233 = !DILocation(line: 177, column: 6, scope: !3115, inlinedAt: !4228)
!4234 = !DILocation(line: 177, column: 17, scope: !3115, inlinedAt: !4228)
!4235 = !DILocation(line: 178, column: 6, scope: !3115, inlinedAt: !4228)
!4236 = !DILocation(line: 178, column: 18, scope: !3115, inlinedAt: !4228)
!4237 = !DILocation(line: 1020, column: 10, scope: !4196)
!4238 = !DILocation(line: 1021, column: 1, scope: !4196)
!4239 = !DILocation(line: 1020, column: 3, scope: !4196)
!4240 = distinct !DISubprogram(name: "quotearg_custom", scope: !801, file: !801, line: 1024, type: !4241, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !822, retainedNodes: !4243)
!4241 = !DISubroutineType(types: !4242)
!4242 = !{!121, !171, !171, !171}
!4243 = !{!4244, !4245, !4246}
!4244 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4240, file: !801, line: 1024, type: !171)
!4245 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4240, file: !801, line: 1024, type: !171)
!4246 = !DILocalVariable(name: "arg", arg: 3, scope: !4240, file: !801, line: 1025, type: !171)
!4247 = !DILocation(line: 0, scope: !4240)
!4248 = !DILocation(line: 0, scope: !4186, inlinedAt: !4249)
!4249 = distinct !DILocation(line: 1027, column: 10, scope: !4240)
!4250 = !DILocation(line: 0, scope: !4196, inlinedAt: !4251)
!4251 = distinct !DILocation(line: 1009, column: 10, scope: !4186, inlinedAt: !4249)
!4252 = !DILocation(line: 1018, column: 3, scope: !4196, inlinedAt: !4251)
!4253 = !DILocation(line: 1018, column: 26, scope: !4196, inlinedAt: !4251)
!4254 = !DILocation(line: 1018, column: 30, scope: !4196, inlinedAt: !4251)
!4255 = !DILocation(line: 0, scope: !3115, inlinedAt: !4256)
!4256 = distinct !DILocation(line: 1019, column: 3, scope: !4196, inlinedAt: !4251)
!4257 = !DILocation(line: 174, column: 12, scope: !3115, inlinedAt: !4256)
!4258 = !DILocation(line: 175, column: 8, scope: !3128, inlinedAt: !4256)
!4259 = !DILocation(line: 175, column: 19, scope: !3128, inlinedAt: !4256)
!4260 = !DILocation(line: 176, column: 5, scope: !3128, inlinedAt: !4256)
!4261 = !DILocation(line: 177, column: 6, scope: !3115, inlinedAt: !4256)
!4262 = !DILocation(line: 177, column: 17, scope: !3115, inlinedAt: !4256)
!4263 = !DILocation(line: 178, column: 6, scope: !3115, inlinedAt: !4256)
!4264 = !DILocation(line: 178, column: 18, scope: !3115, inlinedAt: !4256)
!4265 = !DILocation(line: 1020, column: 10, scope: !4196, inlinedAt: !4251)
!4266 = !DILocation(line: 1021, column: 1, scope: !4196, inlinedAt: !4251)
!4267 = !DILocation(line: 1027, column: 3, scope: !4240)
!4268 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !801, file: !801, line: 1031, type: !4269, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !822, retainedNodes: !4271)
!4269 = !DISubroutineType(types: !4270)
!4270 = !{!121, !171, !171, !171, !163}
!4271 = !{!4272, !4273, !4274, !4275}
!4272 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4268, file: !801, line: 1031, type: !171)
!4273 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4268, file: !801, line: 1031, type: !171)
!4274 = !DILocalVariable(name: "arg", arg: 3, scope: !4268, file: !801, line: 1032, type: !171)
!4275 = !DILocalVariable(name: "argsize", arg: 4, scope: !4268, file: !801, line: 1032, type: !163)
!4276 = !DILocation(line: 0, scope: !4268)
!4277 = !DILocation(line: 0, scope: !4196, inlinedAt: !4278)
!4278 = distinct !DILocation(line: 1034, column: 10, scope: !4268)
!4279 = !DILocation(line: 1018, column: 3, scope: !4196, inlinedAt: !4278)
!4280 = !DILocation(line: 1018, column: 26, scope: !4196, inlinedAt: !4278)
!4281 = !DILocation(line: 1018, column: 30, scope: !4196, inlinedAt: !4278)
!4282 = !DILocation(line: 0, scope: !3115, inlinedAt: !4283)
!4283 = distinct !DILocation(line: 1019, column: 3, scope: !4196, inlinedAt: !4278)
!4284 = !DILocation(line: 174, column: 12, scope: !3115, inlinedAt: !4283)
!4285 = !DILocation(line: 175, column: 8, scope: !3128, inlinedAt: !4283)
!4286 = !DILocation(line: 175, column: 19, scope: !3128, inlinedAt: !4283)
!4287 = !DILocation(line: 176, column: 5, scope: !3128, inlinedAt: !4283)
!4288 = !DILocation(line: 177, column: 6, scope: !3115, inlinedAt: !4283)
!4289 = !DILocation(line: 177, column: 17, scope: !3115, inlinedAt: !4283)
!4290 = !DILocation(line: 178, column: 6, scope: !3115, inlinedAt: !4283)
!4291 = !DILocation(line: 178, column: 18, scope: !3115, inlinedAt: !4283)
!4292 = !DILocation(line: 1020, column: 10, scope: !4196, inlinedAt: !4278)
!4293 = !DILocation(line: 1021, column: 1, scope: !4196, inlinedAt: !4278)
!4294 = !DILocation(line: 1034, column: 3, scope: !4268)
!4295 = distinct !DISubprogram(name: "quote_n_mem", scope: !801, file: !801, line: 1049, type: !4296, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !822, retainedNodes: !4298)
!4296 = !DISubroutineType(types: !4297)
!4297 = !{!171, !89, !171, !163}
!4298 = !{!4299, !4300, !4301}
!4299 = !DILocalVariable(name: "n", arg: 1, scope: !4295, file: !801, line: 1049, type: !89)
!4300 = !DILocalVariable(name: "arg", arg: 2, scope: !4295, file: !801, line: 1049, type: !171)
!4301 = !DILocalVariable(name: "argsize", arg: 3, scope: !4295, file: !801, line: 1049, type: !163)
!4302 = !DILocation(line: 0, scope: !4295)
!4303 = !DILocation(line: 1051, column: 10, scope: !4295)
!4304 = !DILocation(line: 1051, column: 3, scope: !4295)
!4305 = distinct !DISubprogram(name: "quote_mem", scope: !801, file: !801, line: 1055, type: !4306, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !822, retainedNodes: !4308)
!4306 = !DISubroutineType(types: !4307)
!4307 = !{!171, !171, !163}
!4308 = !{!4309, !4310}
!4309 = !DILocalVariable(name: "arg", arg: 1, scope: !4305, file: !801, line: 1055, type: !171)
!4310 = !DILocalVariable(name: "argsize", arg: 2, scope: !4305, file: !801, line: 1055, type: !163)
!4311 = !DILocation(line: 0, scope: !4305)
!4312 = !DILocation(line: 0, scope: !4295, inlinedAt: !4313)
!4313 = distinct !DILocation(line: 1057, column: 10, scope: !4305)
!4314 = !DILocation(line: 1051, column: 10, scope: !4295, inlinedAt: !4313)
!4315 = !DILocation(line: 1057, column: 3, scope: !4305)
!4316 = distinct !DISubprogram(name: "quote_n", scope: !801, file: !801, line: 1061, type: !4317, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !822, retainedNodes: !4319)
!4317 = !DISubroutineType(types: !4318)
!4318 = !{!171, !89, !171}
!4319 = !{!4320, !4321}
!4320 = !DILocalVariable(name: "n", arg: 1, scope: !4316, file: !801, line: 1061, type: !89)
!4321 = !DILocalVariable(name: "arg", arg: 2, scope: !4316, file: !801, line: 1061, type: !171)
!4322 = !DILocation(line: 0, scope: !4316)
!4323 = !DILocation(line: 0, scope: !4295, inlinedAt: !4324)
!4324 = distinct !DILocation(line: 1063, column: 10, scope: !4316)
!4325 = !DILocation(line: 1051, column: 10, scope: !4295, inlinedAt: !4324)
!4326 = !DILocation(line: 1063, column: 3, scope: !4316)
!4327 = distinct !DISubprogram(name: "quote", scope: !801, file: !801, line: 1067, type: !4328, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !822, retainedNodes: !4330)
!4328 = !DISubroutineType(types: !4329)
!4329 = !{!171, !171}
!4330 = !{!4331}
!4331 = !DILocalVariable(name: "arg", arg: 1, scope: !4327, file: !801, line: 1067, type: !171)
!4332 = !DILocation(line: 0, scope: !4327)
!4333 = !DILocation(line: 0, scope: !4316, inlinedAt: !4334)
!4334 = distinct !DILocation(line: 1069, column: 10, scope: !4327)
!4335 = !DILocation(line: 0, scope: !4295, inlinedAt: !4336)
!4336 = distinct !DILocation(line: 1063, column: 10, scope: !4316, inlinedAt: !4334)
!4337 = !DILocation(line: 1051, column: 10, scope: !4295, inlinedAt: !4336)
!4338 = !DILocation(line: 1069, column: 3, scope: !4327)
!4339 = distinct !DISubprogram(name: "version_etc_arn", scope: !897, file: !897, line: 61, type: !4340, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1028, retainedNodes: !4377)
!4340 = !DISubroutineType(types: !4341)
!4341 = !{null, !4342, !171, !171, !171, !4376, !163}
!4342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4343, size: 64)
!4343 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !115, line: 7, baseType: !4344)
!4344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !117, line: 49, size: 1728, elements: !4345)
!4345 = !{!4346, !4347, !4348, !4349, !4350, !4351, !4352, !4353, !4354, !4355, !4356, !4357, !4358, !4359, !4361, !4362, !4363, !4364, !4365, !4366, !4367, !4368, !4369, !4370, !4371, !4372, !4373, !4374, !4375}
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4344, file: !117, line: 51, baseType: !89, size: 32)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4344, file: !117, line: 54, baseType: !121, size: 64, offset: 64)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4344, file: !117, line: 55, baseType: !121, size: 64, offset: 128)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4344, file: !117, line: 56, baseType: !121, size: 64, offset: 192)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4344, file: !117, line: 57, baseType: !121, size: 64, offset: 256)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4344, file: !117, line: 58, baseType: !121, size: 64, offset: 320)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4344, file: !117, line: 59, baseType: !121, size: 64, offset: 384)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4344, file: !117, line: 60, baseType: !121, size: 64, offset: 448)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4344, file: !117, line: 61, baseType: !121, size: 64, offset: 512)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4344, file: !117, line: 64, baseType: !121, size: 64, offset: 576)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4344, file: !117, line: 65, baseType: !121, size: 64, offset: 640)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4344, file: !117, line: 66, baseType: !121, size: 64, offset: 704)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4344, file: !117, line: 68, baseType: !133, size: 64, offset: 768)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4344, file: !117, line: 70, baseType: !4360, size: 64, offset: 832)
!4360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4344, size: 64)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4344, file: !117, line: 72, baseType: !89, size: 32, offset: 896)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4344, file: !117, line: 73, baseType: !89, size: 32, offset: 928)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4344, file: !117, line: 74, baseType: !140, size: 64, offset: 960)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4344, file: !117, line: 77, baseType: !144, size: 16, offset: 1024)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4344, file: !117, line: 78, baseType: !146, size: 8, offset: 1040)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4344, file: !117, line: 79, baseType: !59, size: 8, offset: 1048)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4344, file: !117, line: 81, baseType: !149, size: 64, offset: 1088)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4344, file: !117, line: 89, baseType: !152, size: 64, offset: 1152)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4344, file: !117, line: 91, baseType: !154, size: 64, offset: 1216)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4344, file: !117, line: 92, baseType: !157, size: 64, offset: 1280)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4344, file: !117, line: 93, baseType: !4360, size: 64, offset: 1344)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4344, file: !117, line: 94, baseType: !161, size: 64, offset: 1408)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4344, file: !117, line: 95, baseType: !163, size: 64, offset: 1472)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4344, file: !117, line: 96, baseType: !89, size: 32, offset: 1536)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4344, file: !117, line: 98, baseType: !168, size: 160, offset: 1568)
!4376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!4377 = !{!4378, !4379, !4380, !4381, !4382, !4383}
!4378 = !DILocalVariable(name: "stream", arg: 1, scope: !4339, file: !897, line: 61, type: !4342)
!4379 = !DILocalVariable(name: "command_name", arg: 2, scope: !4339, file: !897, line: 62, type: !171)
!4380 = !DILocalVariable(name: "package", arg: 3, scope: !4339, file: !897, line: 62, type: !171)
!4381 = !DILocalVariable(name: "version", arg: 4, scope: !4339, file: !897, line: 63, type: !171)
!4382 = !DILocalVariable(name: "authors", arg: 5, scope: !4339, file: !897, line: 64, type: !4376)
!4383 = !DILocalVariable(name: "n_authors", arg: 6, scope: !4339, file: !897, line: 64, type: !163)
!4384 = !DILocation(line: 0, scope: !4339)
!4385 = !DILocation(line: 66, column: 7, scope: !4386)
!4386 = distinct !DILexicalBlock(scope: !4339, file: !897, line: 66, column: 7)
!4387 = !DILocation(line: 66, column: 7, scope: !4339)
!4388 = !DILocation(line: 67, column: 5, scope: !4386)
!4389 = !DILocation(line: 69, column: 5, scope: !4386)
!4390 = !DILocation(line: 83, column: 3, scope: !4339)
!4391 = !DILocation(line: 85, column: 3, scope: !4339)
!4392 = !DILocation(line: 88, column: 3, scope: !4339)
!4393 = !DILocation(line: 95, column: 3, scope: !4339)
!4394 = !DILocation(line: 97, column: 3, scope: !4339)
!4395 = !DILocation(line: 105, column: 7, scope: !4396)
!4396 = distinct !DILexicalBlock(scope: !4339, file: !897, line: 98, column: 5)
!4397 = !DILocation(line: 106, column: 7, scope: !4396)
!4398 = !DILocation(line: 109, column: 7, scope: !4396)
!4399 = !DILocation(line: 110, column: 7, scope: !4396)
!4400 = !DILocation(line: 113, column: 7, scope: !4396)
!4401 = !DILocation(line: 115, column: 7, scope: !4396)
!4402 = !DILocation(line: 120, column: 7, scope: !4396)
!4403 = !DILocation(line: 122, column: 7, scope: !4396)
!4404 = !DILocation(line: 127, column: 7, scope: !4396)
!4405 = !DILocation(line: 129, column: 7, scope: !4396)
!4406 = !DILocation(line: 134, column: 7, scope: !4396)
!4407 = !DILocation(line: 137, column: 7, scope: !4396)
!4408 = !DILocation(line: 142, column: 7, scope: !4396)
!4409 = !DILocation(line: 145, column: 7, scope: !4396)
!4410 = !DILocation(line: 150, column: 7, scope: !4396)
!4411 = !DILocation(line: 154, column: 7, scope: !4396)
!4412 = !DILocation(line: 159, column: 7, scope: !4396)
!4413 = !DILocation(line: 163, column: 7, scope: !4396)
!4414 = !DILocation(line: 170, column: 7, scope: !4396)
!4415 = !DILocation(line: 174, column: 7, scope: !4396)
!4416 = !DILocation(line: 176, column: 1, scope: !4339)
!4417 = distinct !DISubprogram(name: "version_etc_ar", scope: !897, file: !897, line: 183, type: !4418, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1028, retainedNodes: !4420)
!4418 = !DISubroutineType(types: !4419)
!4419 = !{null, !4342, !171, !171, !171, !4376}
!4420 = !{!4421, !4422, !4423, !4424, !4425, !4426}
!4421 = !DILocalVariable(name: "stream", arg: 1, scope: !4417, file: !897, line: 183, type: !4342)
!4422 = !DILocalVariable(name: "command_name", arg: 2, scope: !4417, file: !897, line: 184, type: !171)
!4423 = !DILocalVariable(name: "package", arg: 3, scope: !4417, file: !897, line: 184, type: !171)
!4424 = !DILocalVariable(name: "version", arg: 4, scope: !4417, file: !897, line: 185, type: !171)
!4425 = !DILocalVariable(name: "authors", arg: 5, scope: !4417, file: !897, line: 185, type: !4376)
!4426 = !DILocalVariable(name: "n_authors", scope: !4417, file: !897, line: 187, type: !163)
!4427 = !DILocation(line: 0, scope: !4417)
!4428 = !DILocation(line: 189, column: 8, scope: !4429)
!4429 = distinct !DILexicalBlock(scope: !4417, file: !897, line: 189, column: 3)
!4430 = !DILocation(line: 189, scope: !4429)
!4431 = !DILocation(line: 189, column: 23, scope: !4432)
!4432 = distinct !DILexicalBlock(scope: !4429, file: !897, line: 189, column: 3)
!4433 = !DILocation(line: 189, column: 3, scope: !4429)
!4434 = !DILocation(line: 189, column: 52, scope: !4432)
!4435 = distinct !{!4435, !4433, !4436, !1211}
!4436 = !DILocation(line: 190, column: 5, scope: !4429)
!4437 = !DILocation(line: 191, column: 3, scope: !4417)
!4438 = !DILocation(line: 192, column: 1, scope: !4417)
!4439 = distinct !DISubprogram(name: "version_etc_va", scope: !897, file: !897, line: 199, type: !4440, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1028, retainedNodes: !4450)
!4440 = !DISubroutineType(types: !4441)
!4441 = !{null, !4342, !171, !171, !171, !4442}
!4442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4443, size: 64)
!4443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !4444)
!4444 = !{!4445, !4447, !4448, !4449}
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4443, file: !4446, line: 192, baseType: !79, size: 32)
!4446 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4443, file: !4446, line: 192, baseType: !79, size: 32, offset: 32)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4443, file: !4446, line: 192, baseType: !161, size: 64, offset: 64)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4443, file: !4446, line: 192, baseType: !161, size: 64, offset: 128)
!4450 = !{!4451, !4452, !4453, !4454, !4455, !4456, !4457}
!4451 = !DILocalVariable(name: "stream", arg: 1, scope: !4439, file: !897, line: 199, type: !4342)
!4452 = !DILocalVariable(name: "command_name", arg: 2, scope: !4439, file: !897, line: 200, type: !171)
!4453 = !DILocalVariable(name: "package", arg: 3, scope: !4439, file: !897, line: 200, type: !171)
!4454 = !DILocalVariable(name: "version", arg: 4, scope: !4439, file: !897, line: 201, type: !171)
!4455 = !DILocalVariable(name: "authors", arg: 5, scope: !4439, file: !897, line: 201, type: !4442)
!4456 = !DILocalVariable(name: "n_authors", scope: !4439, file: !897, line: 203, type: !163)
!4457 = !DILocalVariable(name: "authtab", scope: !4439, file: !897, line: 204, type: !4458)
!4458 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 640, elements: !20)
!4459 = !DILocation(line: 0, scope: !4439)
!4460 = !DILocation(line: 204, column: 3, scope: !4439)
!4461 = !DILocation(line: 204, column: 15, scope: !4439)
!4462 = !DILocation(line: 208, column: 35, scope: !4463)
!4463 = distinct !DILexicalBlock(scope: !4464, file: !897, line: 206, column: 3)
!4464 = distinct !DILexicalBlock(scope: !4439, file: !897, line: 206, column: 3)
!4465 = !DILocation(line: 208, column: 33, scope: !4463)
!4466 = !DILocation(line: 208, column: 67, scope: !4463)
!4467 = !DILocation(line: 206, column: 3, scope: !4464)
!4468 = !DILocation(line: 208, column: 14, scope: !4463)
!4469 = !DILocation(line: 0, scope: !4464)
!4470 = !DILocation(line: 211, column: 3, scope: !4439)
!4471 = !DILocation(line: 213, column: 1, scope: !4439)
!4472 = distinct !DISubprogram(name: "version_etc", scope: !897, file: !897, line: 230, type: !4473, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1028, retainedNodes: !4475)
!4473 = !DISubroutineType(types: !4474)
!4474 = !{null, !4342, !171, !171, !171, null}
!4475 = !{!4476, !4477, !4478, !4479, !4480}
!4476 = !DILocalVariable(name: "stream", arg: 1, scope: !4472, file: !897, line: 230, type: !4342)
!4477 = !DILocalVariable(name: "command_name", arg: 2, scope: !4472, file: !897, line: 231, type: !171)
!4478 = !DILocalVariable(name: "package", arg: 3, scope: !4472, file: !897, line: 231, type: !171)
!4479 = !DILocalVariable(name: "version", arg: 4, scope: !4472, file: !897, line: 232, type: !171)
!4480 = !DILocalVariable(name: "authors", scope: !4472, file: !897, line: 234, type: !4481)
!4481 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1159, line: 52, baseType: !4482)
!4482 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2179, line: 14, baseType: !4483)
!4483 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !4446, baseType: !4484)
!4484 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4443, size: 192, elements: !60)
!4485 = !DILocation(line: 0, scope: !4472)
!4486 = !DILocation(line: 234, column: 3, scope: !4472)
!4487 = !DILocation(line: 234, column: 11, scope: !4472)
!4488 = !DILocation(line: 235, column: 3, scope: !4472)
!4489 = !DILocation(line: 236, column: 3, scope: !4472)
!4490 = !DILocation(line: 237, column: 3, scope: !4472)
!4491 = !DILocation(line: 238, column: 1, scope: !4472)
!4492 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !897, file: !897, line: 241, type: !741, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1028, retainedNodes: !1148)
!4493 = !DILocation(line: 243, column: 3, scope: !4492)
!4494 = !DILocation(line: 248, column: 3, scope: !4492)
!4495 = !DILocation(line: 254, column: 3, scope: !4492)
!4496 = !DILocation(line: 259, column: 3, scope: !4492)
!4497 = !DILocation(line: 261, column: 1, scope: !4492)
!4498 = distinct !DISubprogram(name: "xnrealloc", scope: !4499, file: !4499, line: 147, type: !4500, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1034, retainedNodes: !4502)
!4499 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!4500 = !DISubroutineType(types: !4501)
!4501 = !{!161, !161, !163, !163}
!4502 = !{!4503, !4504, !4505}
!4503 = !DILocalVariable(name: "p", arg: 1, scope: !4498, file: !4499, line: 147, type: !161)
!4504 = !DILocalVariable(name: "n", arg: 2, scope: !4498, file: !4499, line: 147, type: !163)
!4505 = !DILocalVariable(name: "s", arg: 3, scope: !4498, file: !4499, line: 147, type: !163)
!4506 = !DILocation(line: 0, scope: !4498)
!4507 = !DILocalVariable(name: "p", arg: 1, scope: !4508, file: !1035, line: 83, type: !161)
!4508 = distinct !DISubprogram(name: "xreallocarray", scope: !1035, file: !1035, line: 83, type: !4500, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1034, retainedNodes: !4509)
!4509 = !{!4507, !4510, !4511}
!4510 = !DILocalVariable(name: "n", arg: 2, scope: !4508, file: !1035, line: 83, type: !163)
!4511 = !DILocalVariable(name: "s", arg: 3, scope: !4508, file: !1035, line: 83, type: !163)
!4512 = !DILocation(line: 0, scope: !4508, inlinedAt: !4513)
!4513 = distinct !DILocation(line: 149, column: 10, scope: !4498)
!4514 = !DILocation(line: 85, column: 25, scope: !4508, inlinedAt: !4513)
!4515 = !DILocalVariable(name: "p", arg: 1, scope: !4516, file: !1035, line: 37, type: !161)
!4516 = distinct !DISubprogram(name: "check_nonnull", scope: !1035, file: !1035, line: 37, type: !4517, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1034, retainedNodes: !4519)
!4517 = !DISubroutineType(types: !4518)
!4518 = !{!161, !161}
!4519 = !{!4515}
!4520 = !DILocation(line: 0, scope: !4516, inlinedAt: !4521)
!4521 = distinct !DILocation(line: 85, column: 10, scope: !4508, inlinedAt: !4513)
!4522 = !DILocation(line: 39, column: 8, scope: !4523, inlinedAt: !4521)
!4523 = distinct !DILexicalBlock(scope: !4516, file: !1035, line: 39, column: 7)
!4524 = !DILocation(line: 39, column: 7, scope: !4516, inlinedAt: !4521)
!4525 = !DILocation(line: 40, column: 5, scope: !4523, inlinedAt: !4521)
!4526 = !DILocation(line: 149, column: 3, scope: !4498)
!4527 = !DILocation(line: 0, scope: !4508)
!4528 = !DILocation(line: 85, column: 25, scope: !4508)
!4529 = !DILocation(line: 0, scope: !4516, inlinedAt: !4530)
!4530 = distinct !DILocation(line: 85, column: 10, scope: !4508)
!4531 = !DILocation(line: 39, column: 8, scope: !4523, inlinedAt: !4530)
!4532 = !DILocation(line: 39, column: 7, scope: !4516, inlinedAt: !4530)
!4533 = !DILocation(line: 40, column: 5, scope: !4523, inlinedAt: !4530)
!4534 = !DILocation(line: 85, column: 3, scope: !4508)
!4535 = distinct !DISubprogram(name: "xmalloc", scope: !1035, file: !1035, line: 47, type: !305, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1034, retainedNodes: !4536)
!4536 = !{!4537}
!4537 = !DILocalVariable(name: "s", arg: 1, scope: !4535, file: !1035, line: 47, type: !163)
!4538 = !DILocation(line: 0, scope: !4535)
!4539 = !DILocation(line: 49, column: 25, scope: !4535)
!4540 = !DILocation(line: 0, scope: !4516, inlinedAt: !4541)
!4541 = distinct !DILocation(line: 49, column: 10, scope: !4535)
!4542 = !DILocation(line: 39, column: 8, scope: !4523, inlinedAt: !4541)
!4543 = !DILocation(line: 39, column: 7, scope: !4516, inlinedAt: !4541)
!4544 = !DILocation(line: 40, column: 5, scope: !4523, inlinedAt: !4541)
!4545 = !DILocation(line: 49, column: 3, scope: !4535)
!4546 = distinct !DISubprogram(name: "ximalloc", scope: !1035, file: !1035, line: 53, type: !4547, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1034, retainedNodes: !4549)
!4547 = !DISubroutineType(types: !4548)
!4548 = !{!161, !177}
!4549 = !{!4550}
!4550 = !DILocalVariable(name: "s", arg: 1, scope: !4546, file: !1035, line: 53, type: !177)
!4551 = !DILocation(line: 0, scope: !4546)
!4552 = !DILocalVariable(name: "s", arg: 1, scope: !4553, file: !4554, line: 55, type: !177)
!4553 = distinct !DISubprogram(name: "imalloc", scope: !4554, file: !4554, line: 55, type: !4547, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1034, retainedNodes: !4555)
!4554 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!4555 = !{!4552}
!4556 = !DILocation(line: 0, scope: !4553, inlinedAt: !4557)
!4557 = distinct !DILocation(line: 55, column: 25, scope: !4546)
!4558 = !DILocation(line: 57, column: 26, scope: !4553, inlinedAt: !4557)
!4559 = !DILocation(line: 0, scope: !4516, inlinedAt: !4560)
!4560 = distinct !DILocation(line: 55, column: 10, scope: !4546)
!4561 = !DILocation(line: 39, column: 8, scope: !4523, inlinedAt: !4560)
!4562 = !DILocation(line: 39, column: 7, scope: !4516, inlinedAt: !4560)
!4563 = !DILocation(line: 40, column: 5, scope: !4523, inlinedAt: !4560)
!4564 = !DILocation(line: 55, column: 3, scope: !4546)
!4565 = distinct !DISubprogram(name: "xcharalloc", scope: !1035, file: !1035, line: 59, type: !4566, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1034, retainedNodes: !4568)
!4566 = !DISubroutineType(types: !4567)
!4567 = !{!121, !163}
!4568 = !{!4569}
!4569 = !DILocalVariable(name: "n", arg: 1, scope: !4565, file: !1035, line: 59, type: !163)
!4570 = !DILocation(line: 0, scope: !4565)
!4571 = !DILocation(line: 0, scope: !4535, inlinedAt: !4572)
!4572 = distinct !DILocation(line: 61, column: 10, scope: !4565)
!4573 = !DILocation(line: 49, column: 25, scope: !4535, inlinedAt: !4572)
!4574 = !DILocation(line: 0, scope: !4516, inlinedAt: !4575)
!4575 = distinct !DILocation(line: 49, column: 10, scope: !4535, inlinedAt: !4572)
!4576 = !DILocation(line: 39, column: 8, scope: !4523, inlinedAt: !4575)
!4577 = !DILocation(line: 39, column: 7, scope: !4516, inlinedAt: !4575)
!4578 = !DILocation(line: 40, column: 5, scope: !4523, inlinedAt: !4575)
!4579 = !DILocation(line: 61, column: 3, scope: !4565)
!4580 = distinct !DISubprogram(name: "xrealloc", scope: !1035, file: !1035, line: 68, type: !309, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1034, retainedNodes: !4581)
!4581 = !{!4582, !4583}
!4582 = !DILocalVariable(name: "p", arg: 1, scope: !4580, file: !1035, line: 68, type: !161)
!4583 = !DILocalVariable(name: "s", arg: 2, scope: !4580, file: !1035, line: 68, type: !163)
!4584 = !DILocation(line: 0, scope: !4580)
!4585 = !DILocalVariable(name: "ptr", arg: 1, scope: !4586, file: !4587, line: 2057, type: !161)
!4586 = distinct !DISubprogram(name: "rpl_realloc", scope: !4587, file: !4587, line: 2057, type: !309, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1034, retainedNodes: !4588)
!4587 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!4588 = !{!4585, !4589}
!4589 = !DILocalVariable(name: "size", arg: 2, scope: !4586, file: !4587, line: 2057, type: !163)
!4590 = !DILocation(line: 0, scope: !4586, inlinedAt: !4591)
!4591 = distinct !DILocation(line: 70, column: 25, scope: !4580)
!4592 = !DILocation(line: 2059, column: 24, scope: !4586, inlinedAt: !4591)
!4593 = !DILocation(line: 2059, column: 10, scope: !4586, inlinedAt: !4591)
!4594 = !DILocation(line: 0, scope: !4516, inlinedAt: !4595)
!4595 = distinct !DILocation(line: 70, column: 10, scope: !4580)
!4596 = !DILocation(line: 39, column: 8, scope: !4523, inlinedAt: !4595)
!4597 = !DILocation(line: 39, column: 7, scope: !4516, inlinedAt: !4595)
!4598 = !DILocation(line: 40, column: 5, scope: !4523, inlinedAt: !4595)
!4599 = !DILocation(line: 70, column: 3, scope: !4580)
!4600 = !DISubprogram(name: "realloc", scope: !1289, file: !1289, line: 551, type: !309, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1148)
!4601 = distinct !DISubprogram(name: "xirealloc", scope: !1035, file: !1035, line: 74, type: !4602, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1034, retainedNodes: !4604)
!4602 = !DISubroutineType(types: !4603)
!4603 = !{!161, !161, !177}
!4604 = !{!4605, !4606}
!4605 = !DILocalVariable(name: "p", arg: 1, scope: !4601, file: !1035, line: 74, type: !161)
!4606 = !DILocalVariable(name: "s", arg: 2, scope: !4601, file: !1035, line: 74, type: !177)
!4607 = !DILocation(line: 0, scope: !4601)
!4608 = !DILocalVariable(name: "p", arg: 1, scope: !4609, file: !4554, line: 66, type: !161)
!4609 = distinct !DISubprogram(name: "irealloc", scope: !4554, file: !4554, line: 66, type: !4602, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1034, retainedNodes: !4610)
!4610 = !{!4608, !4611}
!4611 = !DILocalVariable(name: "s", arg: 2, scope: !4609, file: !4554, line: 66, type: !177)
!4612 = !DILocation(line: 0, scope: !4609, inlinedAt: !4613)
!4613 = distinct !DILocation(line: 76, column: 25, scope: !4601)
!4614 = !DILocation(line: 0, scope: !4586, inlinedAt: !4615)
!4615 = distinct !DILocation(line: 68, column: 26, scope: !4609, inlinedAt: !4613)
!4616 = !DILocation(line: 2059, column: 24, scope: !4586, inlinedAt: !4615)
!4617 = !DILocation(line: 2059, column: 10, scope: !4586, inlinedAt: !4615)
!4618 = !DILocation(line: 0, scope: !4516, inlinedAt: !4619)
!4619 = distinct !DILocation(line: 76, column: 10, scope: !4601)
!4620 = !DILocation(line: 39, column: 8, scope: !4523, inlinedAt: !4619)
!4621 = !DILocation(line: 39, column: 7, scope: !4516, inlinedAt: !4619)
!4622 = !DILocation(line: 40, column: 5, scope: !4523, inlinedAt: !4619)
!4623 = !DILocation(line: 76, column: 3, scope: !4601)
!4624 = distinct !DISubprogram(name: "xireallocarray", scope: !1035, file: !1035, line: 89, type: !4625, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1034, retainedNodes: !4627)
!4625 = !DISubroutineType(types: !4626)
!4626 = !{!161, !161, !177, !177}
!4627 = !{!4628, !4629, !4630}
!4628 = !DILocalVariable(name: "p", arg: 1, scope: !4624, file: !1035, line: 89, type: !161)
!4629 = !DILocalVariable(name: "n", arg: 2, scope: !4624, file: !1035, line: 89, type: !177)
!4630 = !DILocalVariable(name: "s", arg: 3, scope: !4624, file: !1035, line: 89, type: !177)
!4631 = !DILocation(line: 0, scope: !4624)
!4632 = !DILocalVariable(name: "p", arg: 1, scope: !4633, file: !4554, line: 98, type: !161)
!4633 = distinct !DISubprogram(name: "ireallocarray", scope: !4554, file: !4554, line: 98, type: !4625, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1034, retainedNodes: !4634)
!4634 = !{!4632, !4635, !4636}
!4635 = !DILocalVariable(name: "n", arg: 2, scope: !4633, file: !4554, line: 98, type: !177)
!4636 = !DILocalVariable(name: "s", arg: 3, scope: !4633, file: !4554, line: 98, type: !177)
!4637 = !DILocation(line: 0, scope: !4633, inlinedAt: !4638)
!4638 = distinct !DILocation(line: 91, column: 25, scope: !4624)
!4639 = !DILocation(line: 101, column: 13, scope: !4633, inlinedAt: !4638)
!4640 = !DILocation(line: 0, scope: !4516, inlinedAt: !4641)
!4641 = distinct !DILocation(line: 91, column: 10, scope: !4624)
!4642 = !DILocation(line: 39, column: 8, scope: !4523, inlinedAt: !4641)
!4643 = !DILocation(line: 39, column: 7, scope: !4516, inlinedAt: !4641)
!4644 = !DILocation(line: 40, column: 5, scope: !4523, inlinedAt: !4641)
!4645 = !DILocation(line: 91, column: 3, scope: !4624)
!4646 = distinct !DISubprogram(name: "xnmalloc", scope: !1035, file: !1035, line: 98, type: !4647, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1034, retainedNodes: !4649)
!4647 = !DISubroutineType(types: !4648)
!4648 = !{!161, !163, !163}
!4649 = !{!4650, !4651}
!4650 = !DILocalVariable(name: "n", arg: 1, scope: !4646, file: !1035, line: 98, type: !163)
!4651 = !DILocalVariable(name: "s", arg: 2, scope: !4646, file: !1035, line: 98, type: !163)
!4652 = !DILocation(line: 0, scope: !4646)
!4653 = !DILocation(line: 0, scope: !4508, inlinedAt: !4654)
!4654 = distinct !DILocation(line: 100, column: 10, scope: !4646)
!4655 = !DILocation(line: 85, column: 25, scope: !4508, inlinedAt: !4654)
!4656 = !DILocation(line: 0, scope: !4516, inlinedAt: !4657)
!4657 = distinct !DILocation(line: 85, column: 10, scope: !4508, inlinedAt: !4654)
!4658 = !DILocation(line: 39, column: 8, scope: !4523, inlinedAt: !4657)
!4659 = !DILocation(line: 39, column: 7, scope: !4516, inlinedAt: !4657)
!4660 = !DILocation(line: 40, column: 5, scope: !4523, inlinedAt: !4657)
!4661 = !DILocation(line: 100, column: 3, scope: !4646)
!4662 = distinct !DISubprogram(name: "xinmalloc", scope: !1035, file: !1035, line: 104, type: !4663, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1034, retainedNodes: !4665)
!4663 = !DISubroutineType(types: !4664)
!4664 = !{!161, !177, !177}
!4665 = !{!4666, !4667}
!4666 = !DILocalVariable(name: "n", arg: 1, scope: !4662, file: !1035, line: 104, type: !177)
!4667 = !DILocalVariable(name: "s", arg: 2, scope: !4662, file: !1035, line: 104, type: !177)
!4668 = !DILocation(line: 0, scope: !4662)
!4669 = !DILocation(line: 0, scope: !4624, inlinedAt: !4670)
!4670 = distinct !DILocation(line: 106, column: 10, scope: !4662)
!4671 = !DILocation(line: 0, scope: !4633, inlinedAt: !4672)
!4672 = distinct !DILocation(line: 91, column: 25, scope: !4624, inlinedAt: !4670)
!4673 = !DILocation(line: 101, column: 13, scope: !4633, inlinedAt: !4672)
!4674 = !DILocation(line: 0, scope: !4516, inlinedAt: !4675)
!4675 = distinct !DILocation(line: 91, column: 10, scope: !4624, inlinedAt: !4670)
!4676 = !DILocation(line: 39, column: 8, scope: !4523, inlinedAt: !4675)
!4677 = !DILocation(line: 39, column: 7, scope: !4516, inlinedAt: !4675)
!4678 = !DILocation(line: 40, column: 5, scope: !4523, inlinedAt: !4675)
!4679 = !DILocation(line: 106, column: 3, scope: !4662)
!4680 = distinct !DISubprogram(name: "x2realloc", scope: !1035, file: !1035, line: 116, type: !4681, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1034, retainedNodes: !4683)
!4681 = !DISubroutineType(types: !4682)
!4682 = !{!161, !161, !1041}
!4683 = !{!4684, !4685}
!4684 = !DILocalVariable(name: "p", arg: 1, scope: !4680, file: !1035, line: 116, type: !161)
!4685 = !DILocalVariable(name: "ps", arg: 2, scope: !4680, file: !1035, line: 116, type: !1041)
!4686 = !DILocation(line: 0, scope: !4680)
!4687 = !DILocation(line: 0, scope: !1038, inlinedAt: !4688)
!4688 = distinct !DILocation(line: 118, column: 10, scope: !4680)
!4689 = !DILocation(line: 178, column: 14, scope: !1038, inlinedAt: !4688)
!4690 = !DILocation(line: 180, column: 9, scope: !4691, inlinedAt: !4688)
!4691 = distinct !DILexicalBlock(scope: !1038, file: !1035, line: 180, column: 7)
!4692 = !DILocation(line: 180, column: 7, scope: !1038, inlinedAt: !4688)
!4693 = !DILocation(line: 182, column: 13, scope: !4694, inlinedAt: !4688)
!4694 = distinct !DILexicalBlock(scope: !4695, file: !1035, line: 182, column: 11)
!4695 = distinct !DILexicalBlock(scope: !4691, file: !1035, line: 181, column: 5)
!4696 = !DILocation(line: 182, column: 11, scope: !4695, inlinedAt: !4688)
!4697 = !DILocation(line: 197, column: 11, scope: !4698, inlinedAt: !4688)
!4698 = distinct !DILexicalBlock(scope: !4699, file: !1035, line: 197, column: 11)
!4699 = distinct !DILexicalBlock(scope: !4691, file: !1035, line: 195, column: 5)
!4700 = !DILocation(line: 197, column: 11, scope: !4699, inlinedAt: !4688)
!4701 = !DILocation(line: 198, column: 9, scope: !4698, inlinedAt: !4688)
!4702 = !DILocation(line: 0, scope: !4508, inlinedAt: !4703)
!4703 = distinct !DILocation(line: 201, column: 7, scope: !1038, inlinedAt: !4688)
!4704 = !DILocation(line: 85, column: 25, scope: !4508, inlinedAt: !4703)
!4705 = !DILocation(line: 0, scope: !4516, inlinedAt: !4706)
!4706 = distinct !DILocation(line: 85, column: 10, scope: !4508, inlinedAt: !4703)
!4707 = !DILocation(line: 39, column: 8, scope: !4523, inlinedAt: !4706)
!4708 = !DILocation(line: 39, column: 7, scope: !4516, inlinedAt: !4706)
!4709 = !DILocation(line: 40, column: 5, scope: !4523, inlinedAt: !4706)
!4710 = !DILocation(line: 202, column: 7, scope: !1038, inlinedAt: !4688)
!4711 = !DILocation(line: 118, column: 3, scope: !4680)
!4712 = !DILocation(line: 0, scope: !1038)
!4713 = !DILocation(line: 178, column: 14, scope: !1038)
!4714 = !DILocation(line: 180, column: 9, scope: !4691)
!4715 = !DILocation(line: 180, column: 7, scope: !1038)
!4716 = !DILocation(line: 182, column: 13, scope: !4694)
!4717 = !DILocation(line: 182, column: 11, scope: !4695)
!4718 = !DILocation(line: 190, column: 30, scope: !4719)
!4719 = distinct !DILexicalBlock(scope: !4694, file: !1035, line: 183, column: 9)
!4720 = !DILocation(line: 191, column: 16, scope: !4719)
!4721 = !DILocation(line: 191, column: 13, scope: !4719)
!4722 = !DILocation(line: 192, column: 9, scope: !4719)
!4723 = !DILocation(line: 197, column: 11, scope: !4698)
!4724 = !DILocation(line: 197, column: 11, scope: !4699)
!4725 = !DILocation(line: 198, column: 9, scope: !4698)
!4726 = !DILocation(line: 0, scope: !4508, inlinedAt: !4727)
!4727 = distinct !DILocation(line: 201, column: 7, scope: !1038)
!4728 = !DILocation(line: 85, column: 25, scope: !4508, inlinedAt: !4727)
!4729 = !DILocation(line: 0, scope: !4516, inlinedAt: !4730)
!4730 = distinct !DILocation(line: 85, column: 10, scope: !4508, inlinedAt: !4727)
!4731 = !DILocation(line: 39, column: 8, scope: !4523, inlinedAt: !4730)
!4732 = !DILocation(line: 39, column: 7, scope: !4516, inlinedAt: !4730)
!4733 = !DILocation(line: 40, column: 5, scope: !4523, inlinedAt: !4730)
!4734 = !DILocation(line: 202, column: 7, scope: !1038)
!4735 = !DILocation(line: 203, column: 3, scope: !1038)
!4736 = !DILocation(line: 0, scope: !1050)
!4737 = !DILocation(line: 230, column: 14, scope: !1050)
!4738 = !DILocation(line: 238, column: 7, scope: !4739)
!4739 = distinct !DILexicalBlock(scope: !1050, file: !1035, line: 238, column: 7)
!4740 = !DILocation(line: 238, column: 7, scope: !1050)
!4741 = !DILocation(line: 240, column: 9, scope: !4742)
!4742 = distinct !DILexicalBlock(scope: !1050, file: !1035, line: 240, column: 7)
!4743 = !DILocation(line: 240, column: 18, scope: !4742)
!4744 = !DILocation(line: 253, column: 8, scope: !1050)
!4745 = !DILocation(line: 258, column: 27, scope: !4746)
!4746 = distinct !DILexicalBlock(scope: !4747, file: !1035, line: 257, column: 5)
!4747 = distinct !DILexicalBlock(scope: !1050, file: !1035, line: 256, column: 7)
!4748 = !DILocation(line: 259, column: 50, scope: !4746)
!4749 = !DILocation(line: 259, column: 32, scope: !4746)
!4750 = !DILocation(line: 260, column: 5, scope: !4746)
!4751 = !DILocation(line: 262, column: 9, scope: !4752)
!4752 = distinct !DILexicalBlock(scope: !1050, file: !1035, line: 262, column: 7)
!4753 = !DILocation(line: 262, column: 7, scope: !1050)
!4754 = !DILocation(line: 263, column: 9, scope: !4752)
!4755 = !DILocation(line: 263, column: 5, scope: !4752)
!4756 = !DILocation(line: 264, column: 9, scope: !4757)
!4757 = distinct !DILexicalBlock(scope: !1050, file: !1035, line: 264, column: 7)
!4758 = !DILocation(line: 264, column: 14, scope: !4757)
!4759 = !DILocation(line: 265, column: 7, scope: !4757)
!4760 = !DILocation(line: 265, column: 11, scope: !4757)
!4761 = !DILocation(line: 266, column: 11, scope: !4757)
!4762 = !DILocation(line: 267, column: 14, scope: !4757)
!4763 = !DILocation(line: 264, column: 7, scope: !1050)
!4764 = !DILocation(line: 268, column: 5, scope: !4757)
!4765 = !DILocation(line: 0, scope: !4580, inlinedAt: !4766)
!4766 = distinct !DILocation(line: 269, column: 8, scope: !1050)
!4767 = !DILocation(line: 0, scope: !4586, inlinedAt: !4768)
!4768 = distinct !DILocation(line: 70, column: 25, scope: !4580, inlinedAt: !4766)
!4769 = !DILocation(line: 2059, column: 24, scope: !4586, inlinedAt: !4768)
!4770 = !DILocation(line: 2059, column: 10, scope: !4586, inlinedAt: !4768)
!4771 = !DILocation(line: 0, scope: !4516, inlinedAt: !4772)
!4772 = distinct !DILocation(line: 70, column: 10, scope: !4580, inlinedAt: !4766)
!4773 = !DILocation(line: 39, column: 8, scope: !4523, inlinedAt: !4772)
!4774 = !DILocation(line: 39, column: 7, scope: !4516, inlinedAt: !4772)
!4775 = !DILocation(line: 40, column: 5, scope: !4523, inlinedAt: !4772)
!4776 = !DILocation(line: 270, column: 7, scope: !1050)
!4777 = !DILocation(line: 271, column: 3, scope: !1050)
!4778 = distinct !DISubprogram(name: "xzalloc", scope: !1035, file: !1035, line: 279, type: !305, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1034, retainedNodes: !4779)
!4779 = !{!4780}
!4780 = !DILocalVariable(name: "s", arg: 1, scope: !4778, file: !1035, line: 279, type: !163)
!4781 = !DILocation(line: 0, scope: !4778)
!4782 = !DILocalVariable(name: "n", arg: 1, scope: !4783, file: !1035, line: 294, type: !163)
!4783 = distinct !DISubprogram(name: "xcalloc", scope: !1035, file: !1035, line: 294, type: !4647, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1034, retainedNodes: !4784)
!4784 = !{!4782, !4785}
!4785 = !DILocalVariable(name: "s", arg: 2, scope: !4783, file: !1035, line: 294, type: !163)
!4786 = !DILocation(line: 0, scope: !4783, inlinedAt: !4787)
!4787 = distinct !DILocation(line: 281, column: 10, scope: !4778)
!4788 = !DILocation(line: 296, column: 25, scope: !4783, inlinedAt: !4787)
!4789 = !DILocation(line: 0, scope: !4516, inlinedAt: !4790)
!4790 = distinct !DILocation(line: 296, column: 10, scope: !4783, inlinedAt: !4787)
!4791 = !DILocation(line: 39, column: 8, scope: !4523, inlinedAt: !4790)
!4792 = !DILocation(line: 39, column: 7, scope: !4516, inlinedAt: !4790)
!4793 = !DILocation(line: 40, column: 5, scope: !4523, inlinedAt: !4790)
!4794 = !DILocation(line: 281, column: 3, scope: !4778)
!4795 = !DISubprogram(name: "calloc", scope: !1289, file: !1289, line: 543, type: !4647, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1148)
!4796 = !DILocation(line: 0, scope: !4783)
!4797 = !DILocation(line: 296, column: 25, scope: !4783)
!4798 = !DILocation(line: 0, scope: !4516, inlinedAt: !4799)
!4799 = distinct !DILocation(line: 296, column: 10, scope: !4783)
!4800 = !DILocation(line: 39, column: 8, scope: !4523, inlinedAt: !4799)
!4801 = !DILocation(line: 39, column: 7, scope: !4516, inlinedAt: !4799)
!4802 = !DILocation(line: 40, column: 5, scope: !4523, inlinedAt: !4799)
!4803 = !DILocation(line: 296, column: 3, scope: !4783)
!4804 = distinct !DISubprogram(name: "xizalloc", scope: !1035, file: !1035, line: 285, type: !4547, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1034, retainedNodes: !4805)
!4805 = !{!4806}
!4806 = !DILocalVariable(name: "s", arg: 1, scope: !4804, file: !1035, line: 285, type: !177)
!4807 = !DILocation(line: 0, scope: !4804)
!4808 = !DILocalVariable(name: "n", arg: 1, scope: !4809, file: !1035, line: 300, type: !177)
!4809 = distinct !DISubprogram(name: "xicalloc", scope: !1035, file: !1035, line: 300, type: !4663, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1034, retainedNodes: !4810)
!4810 = !{!4808, !4811}
!4811 = !DILocalVariable(name: "s", arg: 2, scope: !4809, file: !1035, line: 300, type: !177)
!4812 = !DILocation(line: 0, scope: !4809, inlinedAt: !4813)
!4813 = distinct !DILocation(line: 287, column: 10, scope: !4804)
!4814 = !DILocalVariable(name: "n", arg: 1, scope: !4815, file: !4554, line: 77, type: !177)
!4815 = distinct !DISubprogram(name: "icalloc", scope: !4554, file: !4554, line: 77, type: !4663, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1034, retainedNodes: !4816)
!4816 = !{!4814, !4817}
!4817 = !DILocalVariable(name: "s", arg: 2, scope: !4815, file: !4554, line: 77, type: !177)
!4818 = !DILocation(line: 0, scope: !4815, inlinedAt: !4819)
!4819 = distinct !DILocation(line: 302, column: 25, scope: !4809, inlinedAt: !4813)
!4820 = !DILocation(line: 91, column: 10, scope: !4815, inlinedAt: !4819)
!4821 = !DILocation(line: 0, scope: !4516, inlinedAt: !4822)
!4822 = distinct !DILocation(line: 302, column: 10, scope: !4809, inlinedAt: !4813)
!4823 = !DILocation(line: 39, column: 8, scope: !4523, inlinedAt: !4822)
!4824 = !DILocation(line: 39, column: 7, scope: !4516, inlinedAt: !4822)
!4825 = !DILocation(line: 40, column: 5, scope: !4523, inlinedAt: !4822)
!4826 = !DILocation(line: 287, column: 3, scope: !4804)
!4827 = !DILocation(line: 0, scope: !4809)
!4828 = !DILocation(line: 0, scope: !4815, inlinedAt: !4829)
!4829 = distinct !DILocation(line: 302, column: 25, scope: !4809)
!4830 = !DILocation(line: 91, column: 10, scope: !4815, inlinedAt: !4829)
!4831 = !DILocation(line: 0, scope: !4516, inlinedAt: !4832)
!4832 = distinct !DILocation(line: 302, column: 10, scope: !4809)
!4833 = !DILocation(line: 39, column: 8, scope: !4523, inlinedAt: !4832)
!4834 = !DILocation(line: 39, column: 7, scope: !4516, inlinedAt: !4832)
!4835 = !DILocation(line: 40, column: 5, scope: !4523, inlinedAt: !4832)
!4836 = !DILocation(line: 302, column: 3, scope: !4809)
!4837 = distinct !DISubprogram(name: "xmemdup", scope: !1035, file: !1035, line: 310, type: !4838, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1034, retainedNodes: !4840)
!4838 = !DISubroutineType(types: !4839)
!4839 = !{!161, !1313, !163}
!4840 = !{!4841, !4842}
!4841 = !DILocalVariable(name: "p", arg: 1, scope: !4837, file: !1035, line: 310, type: !1313)
!4842 = !DILocalVariable(name: "s", arg: 2, scope: !4837, file: !1035, line: 310, type: !163)
!4843 = !DILocation(line: 0, scope: !4837)
!4844 = !DILocation(line: 0, scope: !4535, inlinedAt: !4845)
!4845 = distinct !DILocation(line: 312, column: 18, scope: !4837)
!4846 = !DILocation(line: 49, column: 25, scope: !4535, inlinedAt: !4845)
!4847 = !DILocation(line: 0, scope: !4516, inlinedAt: !4848)
!4848 = distinct !DILocation(line: 49, column: 10, scope: !4535, inlinedAt: !4845)
!4849 = !DILocation(line: 39, column: 8, scope: !4523, inlinedAt: !4848)
!4850 = !DILocation(line: 39, column: 7, scope: !4516, inlinedAt: !4848)
!4851 = !DILocation(line: 40, column: 5, scope: !4523, inlinedAt: !4848)
!4852 = !DILocalVariable(name: "__dest", arg: 1, scope: !4853, file: !2830, line: 26, type: !2833)
!4853 = distinct !DISubprogram(name: "memcpy", scope: !2830, file: !2830, line: 26, type: !2831, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1034, retainedNodes: !4854)
!4854 = !{!4852, !4855, !4856}
!4855 = !DILocalVariable(name: "__src", arg: 2, scope: !4853, file: !2830, line: 26, type: !1312)
!4856 = !DILocalVariable(name: "__len", arg: 3, scope: !4853, file: !2830, line: 26, type: !163)
!4857 = !DILocation(line: 0, scope: !4853, inlinedAt: !4858)
!4858 = distinct !DILocation(line: 312, column: 10, scope: !4837)
!4859 = !DILocation(line: 29, column: 10, scope: !4853, inlinedAt: !4858)
!4860 = !DILocation(line: 312, column: 3, scope: !4837)
!4861 = distinct !DISubprogram(name: "ximemdup", scope: !1035, file: !1035, line: 316, type: !4862, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1034, retainedNodes: !4864)
!4862 = !DISubroutineType(types: !4863)
!4863 = !{!161, !1313, !177}
!4864 = !{!4865, !4866}
!4865 = !DILocalVariable(name: "p", arg: 1, scope: !4861, file: !1035, line: 316, type: !1313)
!4866 = !DILocalVariable(name: "s", arg: 2, scope: !4861, file: !1035, line: 316, type: !177)
!4867 = !DILocation(line: 0, scope: !4861)
!4868 = !DILocation(line: 0, scope: !4546, inlinedAt: !4869)
!4869 = distinct !DILocation(line: 318, column: 18, scope: !4861)
!4870 = !DILocation(line: 0, scope: !4553, inlinedAt: !4871)
!4871 = distinct !DILocation(line: 55, column: 25, scope: !4546, inlinedAt: !4869)
!4872 = !DILocation(line: 57, column: 26, scope: !4553, inlinedAt: !4871)
!4873 = !DILocation(line: 0, scope: !4516, inlinedAt: !4874)
!4874 = distinct !DILocation(line: 55, column: 10, scope: !4546, inlinedAt: !4869)
!4875 = !DILocation(line: 39, column: 8, scope: !4523, inlinedAt: !4874)
!4876 = !DILocation(line: 39, column: 7, scope: !4516, inlinedAt: !4874)
!4877 = !DILocation(line: 40, column: 5, scope: !4523, inlinedAt: !4874)
!4878 = !DILocation(line: 0, scope: !4853, inlinedAt: !4879)
!4879 = distinct !DILocation(line: 318, column: 10, scope: !4861)
!4880 = !DILocation(line: 29, column: 10, scope: !4853, inlinedAt: !4879)
!4881 = !DILocation(line: 318, column: 3, scope: !4861)
!4882 = distinct !DISubprogram(name: "ximemdup0", scope: !1035, file: !1035, line: 325, type: !4883, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1034, retainedNodes: !4885)
!4883 = !DISubroutineType(types: !4884)
!4884 = !{!121, !1313, !177}
!4885 = !{!4886, !4887, !4888}
!4886 = !DILocalVariable(name: "p", arg: 1, scope: !4882, file: !1035, line: 325, type: !1313)
!4887 = !DILocalVariable(name: "s", arg: 2, scope: !4882, file: !1035, line: 325, type: !177)
!4888 = !DILocalVariable(name: "result", scope: !4882, file: !1035, line: 327, type: !121)
!4889 = !DILocation(line: 0, scope: !4882)
!4890 = !DILocation(line: 327, column: 30, scope: !4882)
!4891 = !DILocation(line: 0, scope: !4546, inlinedAt: !4892)
!4892 = distinct !DILocation(line: 327, column: 18, scope: !4882)
!4893 = !DILocation(line: 0, scope: !4553, inlinedAt: !4894)
!4894 = distinct !DILocation(line: 55, column: 25, scope: !4546, inlinedAt: !4892)
!4895 = !DILocation(line: 57, column: 26, scope: !4553, inlinedAt: !4894)
!4896 = !DILocation(line: 0, scope: !4516, inlinedAt: !4897)
!4897 = distinct !DILocation(line: 55, column: 10, scope: !4546, inlinedAt: !4892)
!4898 = !DILocation(line: 39, column: 8, scope: !4523, inlinedAt: !4897)
!4899 = !DILocation(line: 39, column: 7, scope: !4516, inlinedAt: !4897)
!4900 = !DILocation(line: 40, column: 5, scope: !4523, inlinedAt: !4897)
!4901 = !DILocation(line: 328, column: 3, scope: !4882)
!4902 = !DILocation(line: 328, column: 13, scope: !4882)
!4903 = !DILocation(line: 0, scope: !4853, inlinedAt: !4904)
!4904 = distinct !DILocation(line: 329, column: 10, scope: !4882)
!4905 = !DILocation(line: 29, column: 10, scope: !4853, inlinedAt: !4904)
!4906 = !DILocation(line: 329, column: 3, scope: !4882)
!4907 = distinct !DISubprogram(name: "xstrdup", scope: !1035, file: !1035, line: 335, type: !1291, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1034, retainedNodes: !4908)
!4908 = !{!4909}
!4909 = !DILocalVariable(name: "string", arg: 1, scope: !4907, file: !1035, line: 335, type: !171)
!4910 = !DILocation(line: 0, scope: !4907)
!4911 = !DILocation(line: 337, column: 27, scope: !4907)
!4912 = !DILocation(line: 337, column: 43, scope: !4907)
!4913 = !DILocation(line: 0, scope: !4837, inlinedAt: !4914)
!4914 = distinct !DILocation(line: 337, column: 10, scope: !4907)
!4915 = !DILocation(line: 0, scope: !4535, inlinedAt: !4916)
!4916 = distinct !DILocation(line: 312, column: 18, scope: !4837, inlinedAt: !4914)
!4917 = !DILocation(line: 49, column: 25, scope: !4535, inlinedAt: !4916)
!4918 = !DILocation(line: 0, scope: !4516, inlinedAt: !4919)
!4919 = distinct !DILocation(line: 49, column: 10, scope: !4535, inlinedAt: !4916)
!4920 = !DILocation(line: 39, column: 8, scope: !4523, inlinedAt: !4919)
!4921 = !DILocation(line: 39, column: 7, scope: !4516, inlinedAt: !4919)
!4922 = !DILocation(line: 40, column: 5, scope: !4523, inlinedAt: !4919)
!4923 = !DILocation(line: 0, scope: !4853, inlinedAt: !4924)
!4924 = distinct !DILocation(line: 312, column: 10, scope: !4837, inlinedAt: !4914)
!4925 = !DILocation(line: 29, column: 10, scope: !4853, inlinedAt: !4924)
!4926 = !DILocation(line: 337, column: 3, scope: !4907)
!4927 = distinct !DISubprogram(name: "xalloc_die", scope: !984, file: !984, line: 32, type: !741, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1065, retainedNodes: !4928)
!4928 = !{!4929}
!4929 = !DILocalVariable(name: "__errstatus", scope: !4930, file: !984, line: 34, type: !4931)
!4930 = distinct !DILexicalBlock(scope: !4927, file: !984, line: 34, column: 3)
!4931 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !89)
!4932 = !DILocation(line: 34, column: 3, scope: !4930)
!4933 = !DILocation(line: 0, scope: !4930)
!4934 = !DILocation(line: 40, column: 3, scope: !4927)
!4935 = distinct !DISubprogram(name: "close_stream", scope: !1068, file: !1068, line: 55, type: !4936, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1067, retainedNodes: !4972)
!4936 = !DISubroutineType(types: !4937)
!4937 = !{!89, !4938}
!4938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4939, size: 64)
!4939 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !115, line: 7, baseType: !4940)
!4940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !117, line: 49, size: 1728, elements: !4941)
!4941 = !{!4942, !4943, !4944, !4945, !4946, !4947, !4948, !4949, !4950, !4951, !4952, !4953, !4954, !4955, !4957, !4958, !4959, !4960, !4961, !4962, !4963, !4964, !4965, !4966, !4967, !4968, !4969, !4970, !4971}
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4940, file: !117, line: 51, baseType: !89, size: 32)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4940, file: !117, line: 54, baseType: !121, size: 64, offset: 64)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4940, file: !117, line: 55, baseType: !121, size: 64, offset: 128)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4940, file: !117, line: 56, baseType: !121, size: 64, offset: 192)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4940, file: !117, line: 57, baseType: !121, size: 64, offset: 256)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4940, file: !117, line: 58, baseType: !121, size: 64, offset: 320)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4940, file: !117, line: 59, baseType: !121, size: 64, offset: 384)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4940, file: !117, line: 60, baseType: !121, size: 64, offset: 448)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4940, file: !117, line: 61, baseType: !121, size: 64, offset: 512)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4940, file: !117, line: 64, baseType: !121, size: 64, offset: 576)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4940, file: !117, line: 65, baseType: !121, size: 64, offset: 640)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4940, file: !117, line: 66, baseType: !121, size: 64, offset: 704)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4940, file: !117, line: 68, baseType: !133, size: 64, offset: 768)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4940, file: !117, line: 70, baseType: !4956, size: 64, offset: 832)
!4956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4940, size: 64)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4940, file: !117, line: 72, baseType: !89, size: 32, offset: 896)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4940, file: !117, line: 73, baseType: !89, size: 32, offset: 928)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4940, file: !117, line: 74, baseType: !140, size: 64, offset: 960)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4940, file: !117, line: 77, baseType: !144, size: 16, offset: 1024)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4940, file: !117, line: 78, baseType: !146, size: 8, offset: 1040)
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4940, file: !117, line: 79, baseType: !59, size: 8, offset: 1048)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4940, file: !117, line: 81, baseType: !149, size: 64, offset: 1088)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4940, file: !117, line: 89, baseType: !152, size: 64, offset: 1152)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4940, file: !117, line: 91, baseType: !154, size: 64, offset: 1216)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4940, file: !117, line: 92, baseType: !157, size: 64, offset: 1280)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4940, file: !117, line: 93, baseType: !4956, size: 64, offset: 1344)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4940, file: !117, line: 94, baseType: !161, size: 64, offset: 1408)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4940, file: !117, line: 95, baseType: !163, size: 64, offset: 1472)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4940, file: !117, line: 96, baseType: !89, size: 32, offset: 1536)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4940, file: !117, line: 98, baseType: !168, size: 160, offset: 1568)
!4972 = !{!4973, !4974, !4976, !4977}
!4973 = !DILocalVariable(name: "stream", arg: 1, scope: !4935, file: !1068, line: 55, type: !4938)
!4974 = !DILocalVariable(name: "some_pending", scope: !4935, file: !1068, line: 57, type: !4975)
!4975 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !112)
!4976 = !DILocalVariable(name: "prev_fail", scope: !4935, file: !1068, line: 58, type: !4975)
!4977 = !DILocalVariable(name: "fclose_fail", scope: !4935, file: !1068, line: 59, type: !4975)
!4978 = !DILocation(line: 0, scope: !4935)
!4979 = !DILocation(line: 57, column: 30, scope: !4935)
!4980 = !DILocalVariable(name: "__stream", arg: 1, scope: !4981, file: !1535, line: 135, type: !4938)
!4981 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1535, file: !1535, line: 135, type: !4936, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1067, retainedNodes: !4982)
!4982 = !{!4980}
!4983 = !DILocation(line: 0, scope: !4981, inlinedAt: !4984)
!4984 = distinct !DILocation(line: 58, column: 27, scope: !4935)
!4985 = !DILocation(line: 137, column: 10, scope: !4981, inlinedAt: !4984)
!4986 = !DILocation(line: 58, column: 43, scope: !4935)
!4987 = !DILocation(line: 59, column: 29, scope: !4935)
!4988 = !DILocation(line: 59, column: 45, scope: !4935)
!4989 = !DILocation(line: 69, column: 17, scope: !4990)
!4990 = distinct !DILexicalBlock(scope: !4935, file: !1068, line: 69, column: 7)
!4991 = !DILocation(line: 57, column: 50, scope: !4935)
!4992 = !DILocation(line: 69, column: 33, scope: !4990)
!4993 = !DILocation(line: 69, column: 53, scope: !4990)
!4994 = !DILocation(line: 69, column: 59, scope: !4990)
!4995 = !DILocation(line: 69, column: 7, scope: !4935)
!4996 = !DILocation(line: 71, column: 11, scope: !4997)
!4997 = distinct !DILexicalBlock(scope: !4990, file: !1068, line: 70, column: 5)
!4998 = !DILocation(line: 72, column: 9, scope: !4999)
!4999 = distinct !DILexicalBlock(scope: !4997, file: !1068, line: 71, column: 11)
!5000 = !DILocation(line: 72, column: 15, scope: !4999)
!5001 = !DILocation(line: 77, column: 1, scope: !4935)
!5002 = !DISubprogram(name: "__fpending", scope: !2306, file: !2306, line: 75, type: !5003, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1148)
!5003 = !DISubroutineType(types: !5004)
!5004 = !{!163, !4938}
!5005 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !991, file: !991, line: 100, type: !5006, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !994, retainedNodes: !5009)
!5006 = !DISubroutineType(types: !5007)
!5007 = !{!163, !3036, !171, !163, !5008}
!5008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!5009 = !{!5010, !5011, !5012, !5013, !5014}
!5010 = !DILocalVariable(name: "pwc", arg: 1, scope: !5005, file: !991, line: 100, type: !3036)
!5011 = !DILocalVariable(name: "s", arg: 2, scope: !5005, file: !991, line: 100, type: !171)
!5012 = !DILocalVariable(name: "n", arg: 3, scope: !5005, file: !991, line: 100, type: !163)
!5013 = !DILocalVariable(name: "ps", arg: 4, scope: !5005, file: !991, line: 100, type: !5008)
!5014 = !DILocalVariable(name: "ret", scope: !5005, file: !991, line: 130, type: !163)
!5015 = !DILocation(line: 0, scope: !5005)
!5016 = !DILocation(line: 105, column: 9, scope: !5017)
!5017 = distinct !DILexicalBlock(scope: !5005, file: !991, line: 105, column: 7)
!5018 = !DILocation(line: 105, column: 7, scope: !5005)
!5019 = !DILocation(line: 117, column: 10, scope: !5020)
!5020 = distinct !DILexicalBlock(scope: !5005, file: !991, line: 117, column: 7)
!5021 = !DILocation(line: 117, column: 7, scope: !5005)
!5022 = !DILocation(line: 130, column: 16, scope: !5005)
!5023 = !DILocation(line: 135, column: 11, scope: !5024)
!5024 = distinct !DILexicalBlock(scope: !5005, file: !991, line: 135, column: 7)
!5025 = !DILocation(line: 135, column: 25, scope: !5024)
!5026 = !DILocation(line: 135, column: 30, scope: !5024)
!5027 = !DILocation(line: 135, column: 7, scope: !5005)
!5028 = !DILocalVariable(name: "ps", arg: 1, scope: !5029, file: !3010, line: 1135, type: !5008)
!5029 = distinct !DISubprogram(name: "mbszero", scope: !3010, file: !3010, line: 1135, type: !5030, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !994, retainedNodes: !5032)
!5030 = !DISubroutineType(types: !5031)
!5031 = !{null, !5008}
!5032 = !{!5028}
!5033 = !DILocation(line: 0, scope: !5029, inlinedAt: !5034)
!5034 = distinct !DILocation(line: 137, column: 5, scope: !5024)
!5035 = !DILocalVariable(name: "__dest", arg: 1, scope: !5036, file: !2830, line: 57, type: !161)
!5036 = distinct !DISubprogram(name: "memset", scope: !2830, file: !2830, line: 57, type: !3019, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !994, retainedNodes: !5037)
!5037 = !{!5035, !5038, !5039}
!5038 = !DILocalVariable(name: "__ch", arg: 2, scope: !5036, file: !2830, line: 57, type: !89)
!5039 = !DILocalVariable(name: "__len", arg: 3, scope: !5036, file: !2830, line: 57, type: !163)
!5040 = !DILocation(line: 0, scope: !5036, inlinedAt: !5041)
!5041 = distinct !DILocation(line: 1137, column: 3, scope: !5029, inlinedAt: !5034)
!5042 = !DILocation(line: 59, column: 10, scope: !5036, inlinedAt: !5041)
!5043 = !DILocation(line: 137, column: 5, scope: !5024)
!5044 = !DILocation(line: 138, column: 11, scope: !5045)
!5045 = distinct !DILexicalBlock(scope: !5005, file: !991, line: 138, column: 7)
!5046 = !DILocation(line: 138, column: 7, scope: !5005)
!5047 = !DILocation(line: 139, column: 5, scope: !5045)
!5048 = !DILocation(line: 143, column: 26, scope: !5049)
!5049 = distinct !DILexicalBlock(scope: !5005, file: !991, line: 143, column: 7)
!5050 = !DILocation(line: 143, column: 41, scope: !5049)
!5051 = !DILocation(line: 143, column: 7, scope: !5005)
!5052 = !DILocation(line: 145, column: 15, scope: !5053)
!5053 = distinct !DILexicalBlock(scope: !5054, file: !991, line: 145, column: 11)
!5054 = distinct !DILexicalBlock(scope: !5049, file: !991, line: 144, column: 5)
!5055 = !DILocation(line: 145, column: 11, scope: !5054)
!5056 = !DILocation(line: 146, column: 32, scope: !5053)
!5057 = !DILocation(line: 146, column: 16, scope: !5053)
!5058 = !DILocation(line: 146, column: 14, scope: !5053)
!5059 = !DILocation(line: 146, column: 9, scope: !5053)
!5060 = !DILocation(line: 286, column: 1, scope: !5005)
!5061 = !DISubprogram(name: "mbsinit", scope: !5062, file: !5062, line: 293, type: !5063, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1148)
!5062 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!5063 = !DISubroutineType(types: !5064)
!5064 = !{!89, !5065}
!5065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5066, size: 64)
!5066 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !997)
!5067 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !1070, file: !1070, line: 27, type: !4500, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1069, retainedNodes: !5068)
!5068 = !{!5069, !5070, !5071, !5072}
!5069 = !DILocalVariable(name: "ptr", arg: 1, scope: !5067, file: !1070, line: 27, type: !161)
!5070 = !DILocalVariable(name: "nmemb", arg: 2, scope: !5067, file: !1070, line: 27, type: !163)
!5071 = !DILocalVariable(name: "size", arg: 3, scope: !5067, file: !1070, line: 27, type: !163)
!5072 = !DILocalVariable(name: "nbytes", scope: !5067, file: !1070, line: 29, type: !163)
!5073 = !DILocation(line: 0, scope: !5067)
!5074 = !DILocation(line: 30, column: 7, scope: !5075)
!5075 = distinct !DILexicalBlock(scope: !5067, file: !1070, line: 30, column: 7)
!5076 = !DILocalVariable(name: "ptr", arg: 1, scope: !5077, file: !4587, line: 2057, type: !161)
!5077 = distinct !DISubprogram(name: "rpl_realloc", scope: !4587, file: !4587, line: 2057, type: !309, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1069, retainedNodes: !5078)
!5078 = !{!5076, !5079}
!5079 = !DILocalVariable(name: "size", arg: 2, scope: !5077, file: !4587, line: 2057, type: !163)
!5080 = !DILocation(line: 0, scope: !5077, inlinedAt: !5081)
!5081 = distinct !DILocation(line: 37, column: 10, scope: !5067)
!5082 = !DILocation(line: 2059, column: 24, scope: !5077, inlinedAt: !5081)
!5083 = !DILocation(line: 2059, column: 10, scope: !5077, inlinedAt: !5081)
!5084 = !DILocation(line: 37, column: 3, scope: !5067)
!5085 = !DILocation(line: 32, column: 7, scope: !5086)
!5086 = distinct !DILexicalBlock(scope: !5075, file: !1070, line: 31, column: 5)
!5087 = !DILocation(line: 32, column: 13, scope: !5086)
!5088 = !DILocation(line: 33, column: 7, scope: !5086)
!5089 = !DILocation(line: 38, column: 1, scope: !5067)
!5090 = distinct !DISubprogram(name: "hard_locale", scope: !1009, file: !1009, line: 28, type: !1600, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1072, retainedNodes: !5091)
!5091 = !{!5092, !5093}
!5092 = !DILocalVariable(name: "category", arg: 1, scope: !5090, file: !1009, line: 28, type: !89)
!5093 = !DILocalVariable(name: "locale", scope: !5090, file: !1009, line: 30, type: !5094)
!5094 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !5095)
!5095 = !{!5096}
!5096 = !DISubrange(count: 257)
!5097 = !DILocation(line: 0, scope: !5090)
!5098 = !DILocation(line: 30, column: 3, scope: !5090)
!5099 = !DILocation(line: 30, column: 8, scope: !5090)
!5100 = !DILocation(line: 32, column: 7, scope: !5101)
!5101 = distinct !DILexicalBlock(scope: !5090, file: !1009, line: 32, column: 7)
!5102 = !DILocation(line: 32, column: 7, scope: !5090)
!5103 = !DILocalVariable(name: "__s1", arg: 1, scope: !5104, file: !1177, line: 1359, type: !171)
!5104 = distinct !DISubprogram(name: "streq", scope: !1177, file: !1177, line: 1359, type: !1178, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1072, retainedNodes: !5105)
!5105 = !{!5103, !5106}
!5106 = !DILocalVariable(name: "__s2", arg: 2, scope: !5104, file: !1177, line: 1359, type: !171)
!5107 = !DILocation(line: 0, scope: !5104, inlinedAt: !5108)
!5108 = distinct !DILocation(line: 35, column: 9, scope: !5109)
!5109 = distinct !DILexicalBlock(scope: !5090, file: !1009, line: 35, column: 7)
!5110 = !DILocation(line: 1361, column: 11, scope: !5104, inlinedAt: !5108)
!5111 = !DILocation(line: 35, column: 29, scope: !5109)
!5112 = !DILocation(line: 0, scope: !5104, inlinedAt: !5113)
!5113 = distinct !DILocation(line: 35, column: 32, scope: !5109)
!5114 = !DILocation(line: 1361, column: 11, scope: !5104, inlinedAt: !5113)
!5115 = !DILocation(line: 1361, column: 10, scope: !5104, inlinedAt: !5113)
!5116 = !DILocation(line: 35, column: 7, scope: !5090)
!5117 = !DILocation(line: 46, column: 3, scope: !5090)
!5118 = !DILocation(line: 47, column: 1, scope: !5090)
!5119 = distinct !DISubprogram(name: "setlocale_null_r", scope: !1077, file: !1077, line: 154, type: !5120, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1076, retainedNodes: !5122)
!5120 = !DISubroutineType(types: !5121)
!5121 = !{!89, !89, !121, !163}
!5122 = !{!5123, !5124, !5125}
!5123 = !DILocalVariable(name: "category", arg: 1, scope: !5119, file: !1077, line: 154, type: !89)
!5124 = !DILocalVariable(name: "buf", arg: 2, scope: !5119, file: !1077, line: 154, type: !121)
!5125 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5119, file: !1077, line: 154, type: !163)
!5126 = !DILocation(line: 0, scope: !5119)
!5127 = !DILocation(line: 159, column: 10, scope: !5119)
!5128 = !DILocation(line: 159, column: 3, scope: !5119)
!5129 = distinct !DISubprogram(name: "setlocale_null", scope: !1077, file: !1077, line: 186, type: !5130, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1076, retainedNodes: !5132)
!5130 = !DISubroutineType(types: !5131)
!5131 = !{!171, !89}
!5132 = !{!5133}
!5133 = !DILocalVariable(name: "category", arg: 1, scope: !5129, file: !1077, line: 186, type: !89)
!5134 = !DILocation(line: 0, scope: !5129)
!5135 = !DILocation(line: 189, column: 10, scope: !5129)
!5136 = !DILocation(line: 189, column: 3, scope: !5129)
!5137 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !1079, file: !1079, line: 35, type: !5130, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !5138)
!5138 = !{!5139, !5140}
!5139 = !DILocalVariable(name: "category", arg: 1, scope: !5137, file: !1079, line: 35, type: !89)
!5140 = !DILocalVariable(name: "result", scope: !5137, file: !1079, line: 37, type: !171)
!5141 = !DILocation(line: 0, scope: !5137)
!5142 = !DILocation(line: 37, column: 24, scope: !5137)
!5143 = !DILocation(line: 62, column: 3, scope: !5137)
!5144 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !1079, file: !1079, line: 66, type: !5120, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !5145)
!5145 = !{!5146, !5147, !5148, !5149, !5150}
!5146 = !DILocalVariable(name: "category", arg: 1, scope: !5144, file: !1079, line: 66, type: !89)
!5147 = !DILocalVariable(name: "buf", arg: 2, scope: !5144, file: !1079, line: 66, type: !121)
!5148 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5144, file: !1079, line: 66, type: !163)
!5149 = !DILocalVariable(name: "result", scope: !5144, file: !1079, line: 111, type: !171)
!5150 = !DILocalVariable(name: "length", scope: !5151, file: !1079, line: 125, type: !163)
!5151 = distinct !DILexicalBlock(scope: !5152, file: !1079, line: 124, column: 5)
!5152 = distinct !DILexicalBlock(scope: !5144, file: !1079, line: 113, column: 7)
!5153 = !DILocation(line: 0, scope: !5144)
!5154 = !DILocation(line: 0, scope: !5137, inlinedAt: !5155)
!5155 = distinct !DILocation(line: 111, column: 24, scope: !5144)
!5156 = !DILocation(line: 37, column: 24, scope: !5137, inlinedAt: !5155)
!5157 = !DILocation(line: 113, column: 14, scope: !5152)
!5158 = !DILocation(line: 113, column: 7, scope: !5144)
!5159 = !DILocation(line: 116, column: 19, scope: !5160)
!5160 = distinct !DILexicalBlock(scope: !5161, file: !1079, line: 116, column: 11)
!5161 = distinct !DILexicalBlock(scope: !5152, file: !1079, line: 114, column: 5)
!5162 = !DILocation(line: 116, column: 11, scope: !5161)
!5163 = !DILocation(line: 120, column: 16, scope: !5160)
!5164 = !DILocation(line: 120, column: 9, scope: !5160)
!5165 = !DILocation(line: 125, column: 23, scope: !5151)
!5166 = !DILocation(line: 0, scope: !5151)
!5167 = !DILocation(line: 126, column: 18, scope: !5168)
!5168 = distinct !DILexicalBlock(scope: !5151, file: !1079, line: 126, column: 11)
!5169 = !DILocation(line: 126, column: 11, scope: !5151)
!5170 = !DILocation(line: 128, column: 39, scope: !5171)
!5171 = distinct !DILexicalBlock(scope: !5168, file: !1079, line: 127, column: 9)
!5172 = !DILocalVariable(name: "__dest", arg: 1, scope: !5173, file: !2830, line: 26, type: !2833)
!5173 = distinct !DISubprogram(name: "memcpy", scope: !2830, file: !2830, line: 26, type: !2831, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1078, retainedNodes: !5174)
!5174 = !{!5172, !5175, !5176}
!5175 = !DILocalVariable(name: "__src", arg: 2, scope: !5173, file: !2830, line: 26, type: !1312)
!5176 = !DILocalVariable(name: "__len", arg: 3, scope: !5173, file: !2830, line: 26, type: !163)
!5177 = !DILocation(line: 0, scope: !5173, inlinedAt: !5178)
!5178 = distinct !DILocation(line: 128, column: 11, scope: !5171)
!5179 = !DILocation(line: 29, column: 10, scope: !5173, inlinedAt: !5178)
!5180 = !DILocation(line: 129, column: 11, scope: !5171)
!5181 = !DILocation(line: 133, column: 23, scope: !5182)
!5182 = distinct !DILexicalBlock(scope: !5183, file: !1079, line: 133, column: 15)
!5183 = distinct !DILexicalBlock(scope: !5168, file: !1079, line: 132, column: 9)
!5184 = !DILocation(line: 133, column: 15, scope: !5183)
!5185 = !DILocation(line: 138, column: 44, scope: !5186)
!5186 = distinct !DILexicalBlock(scope: !5182, file: !1079, line: 134, column: 13)
!5187 = !DILocation(line: 0, scope: !5173, inlinedAt: !5188)
!5188 = distinct !DILocation(line: 138, column: 15, scope: !5186)
!5189 = !DILocation(line: 29, column: 10, scope: !5173, inlinedAt: !5188)
!5190 = !DILocation(line: 139, column: 15, scope: !5186)
!5191 = !DILocation(line: 139, column: 32, scope: !5186)
!5192 = !DILocation(line: 140, column: 13, scope: !5186)
!5193 = !DILocation(line: 0, scope: !5152)
!5194 = !DILocation(line: 145, column: 1, scope: !5144)
