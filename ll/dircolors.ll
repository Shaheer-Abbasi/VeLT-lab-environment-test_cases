; ModuleID = 'src/dircolors.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.option = type { i8*, i32, i32*, i32 }
%struct.obstack = type { i64, %struct._obstack_chunk*, i8*, i8*, i8*, %union.anon, i64, %union.anon.0, %union.anon.1, i8*, i8 }
%struct._obstack_chunk = type { i8*, %struct._obstack_chunk*, [0 x i8] }
%union.anon = type { i64 }
%union.anon.0 = type { i8* (i64)* }
%union.anon.1 = type { void (i8*)* }
%struct.infomap = type { i8*, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.__mbstate_t = type { i32, %union.anon.33 }
%union.anon.33 = type { i32 }
%"struct.std::__va_list" = type { i8*, i8*, i8*, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Usage: %s [OPTION]... [FILE]\0A\00", align 1
@.str.2 = private unnamed_addr constant [89 x i8] c"Output commands to set the LS_COLORS environment variable.\0A\0ADetermine format of output:\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"dircolors\00", align 1
@.str.4 = private unnamed_addr constant [79 x i8] c"  -b, --sh, --bourne-shell\0A         output Bourne shell code to set LS_COLORS\0A\00", align 1
@.str.5 = private unnamed_addr constant [70 x i8] c"  -c, --csh, --c-shell\0A         output C shell code to set LS_COLORS\0A\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"  -p, --print-database\0A         output defaults\0A\00", align 1
@.str.7 = private unnamed_addr constant [74 x i8] c"      --print-ls-colors\0A         output fully escaped colors for display\0A\00", align 1
@.str.8 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1
@.str.9 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1
@.str.10 = private unnamed_addr constant [222 x i8] c"\0AIf FILE is specified, read it to determine which colors to use for which\0Afile types and extensions.  Otherwise, a precompiled database is used.\0AFor details on the format of these files, run 'dircolors --print-database'.\0A\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"bcp\00", align 1
@long_options = internal constant [9 x %struct.option] [%struct.option { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.62, i32 0, i32 0), i32 0, i32* null, i32 98 }, %struct.option { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.63, i32 0, i32 0), i32 0, i32* null, i32 98 }, %struct.option { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.64, i32 0, i32 0), i32 0, i32* null, i32 99 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.65, i32 0, i32 0), i32 0, i32* null, i32 99 }, %struct.option { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.66, i32 0, i32 0), i32 0, i32* null, i32 112 }, %struct.option { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.67, i32 0, i32 0), i32 0, i32* null, i32 256 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.68, i32 0, i32 0), i32 0, i32* null, i32 -2 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.69, i32 0, i32 0), i32 0, i32* null, i32 -3 }, %struct.option zeroinitializer], align 8, !dbg !0
@print_ls_colors = internal unnamed_addr global i1 false, align 1, !dbg !257
@.str.15 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"H. Peter Anvin\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.17 = private unnamed_addr constant [92 x i8] c"the options to output non shell syntax,\0Aand to select a shell syntax are mutually exclusive\00", align 1
@.str.18 = private unnamed_addr constant [70 x i8] c"options --print-database and --print-ls-colors are mutually exclusive\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.21 = private unnamed_addr constant [60 x i8] c"file operands cannot be combined with --print-database (-p)\00", align 1
@G_line = internal constant [5616 x i8] c"# Configuration file for dircolors, a utility to help you set the\00# LS_COLORS environment variable used by GNU ls with the --color option.\00# Copyright (C) 1996-2026 Free Software Foundation, Inc.\00# Copying and distribution of this file, with or without modification,\00# are permitted provided the copyright notice and this notice are preserved.\00#\00# The keywords COLOR, OPTIONS, and EIGHTBIT (honored by the\00# slackware version of dircolors) are recognized but ignored.\00# Global config options can be specified before TERM or COLORTERM entries\00# ===================================================================\00# Terminal filters\00# ===================================================================\00# Below are TERM or COLORTERM entries, which can be glob patterns, which\00# restrict following config to systems with matching environment variables.\00COLORTERM ?*\00TERM Eterm\00TERM ansi\00TERM *color*\00TERM con[0-9]*x[0-9]*\00TERM cons25\00TERM console\00TERM cygwin\00TERM *direct*\00TERM dtterm\00TERM gnome\00TERM hurd\00TERM jfbterm\00TERM konsole\00TERM kterm\00TERM linux\00TERM linux-c\00TERM mlterm\00TERM putty\00TERM rxvt*\00TERM screen*\00TERM st\00TERM terminator\00TERM tmux*\00TERM vt100\00TERM vt220\00TERM xterm*\00# ===================================================================\00# Basic file attributes\00# ===================================================================\00# Below are the color init strings for the basic file types.\00# One can use codes for 256 or more colors supported by modern terminals.\00# The default color codes use the capabilities of an 8 color terminal\00# with some additional attributes as per the following codes:\00# Attribute codes:\00# 00=none 01=bold 04=underscore 05=blink 07=reverse 08=concealed\00# Text color codes:\00# 30=black 31=red 32=green 33=yellow 34=blue 35=magenta 36=cyan 37=white\00# Background color codes:\00# 40=black 41=red 42=green 43=yellow 44=blue 45=magenta 46=cyan 47=white\00#NORMAL 00 # no color code at all\00#FILE 00 # regular file: use no color at all\00RESET 0 # reset to \22normal\22 color\00DIR 01;34 # directory\00LINK 01;36 # symbolic link. (If you set this to 'target' instead of a\00 # numerical value, the color is as for the file pointed to.)\00MULTIHARDLINK 00 # regular file with more than one link\00FIFO 40;33 # pipe\00SOCK 01;35 # socket\00DOOR 01;35 # door\00BLK 40;33;01 # block device driver\00CHR 40;33;01 # character device driver\00ORPHAN 40;31;01 # symlink to nonexistent file, or non-stat'able file ...\00MISSING 00 # ... and the files they point to\00SETUID 37;41 # regular file that is setuid (u+s)\00SETGID 30;43 # regular file that is setgid (g+s)\00CAPABILITY 00 # regular file with capability (very expensive to lookup)\00STICKY_OTHER_WRITABLE 30;42 # dir that is sticky and other-writable (+t,o+w)\00OTHER_WRITABLE 34;42 # dir that is other-writable (o+w) and not sticky\00STICKY 37;44 # dir with the sticky bit set (+t) and not other-writable\00# This is for regular files with execute permission:\00EXEC 01;32\00# ===================================================================\00# File extension attributes\00# ===================================================================\00# List any file extensions like '.gz' or '.tar' that you would like ls\00# to color below. Put the suffix, a space, and the color init string.\00# (and any comments you want to add after a '#').\00# Suffixes are matched case insensitively, but if you define different\00# init strings for separate cases, those will be honored.\00#\00# If you use DOS-style suffixes, you may want to uncomment the following:\00#.cmd 01;32 # executables (bright green)\00#.exe 01;32\00#.com 01;32\00#.btm 01;32\00#.bat 01;32\00# Or if you want to color scripts even if they do not have the\00# executable bit actually set.\00#.sh 01;32\00#.csh 01;32\00# archives or compressed (bright red)\00.7z 01;31\00.ace 01;31\00.alz 01;31\00.apk 01;31\00.arc 01;31\00.arj 01;31\00.bz 01;31\00.bz2 01;31\00.cab 01;31\00.cpio 01;31\00.crate 01;31\00.deb 01;31\00.drpm 01;31\00.dwm 01;31\00.dz 01;31\00.ear 01;31\00.egg 01;31\00.esd 01;31\00.gz 01;31\00.jar 01;31\00.lha 01;31\00.lrz 01;31\00.lz 01;31\00.lz4 01;31\00.lzh 01;31\00.lzma 01;31\00.lzo 01;31\00.pyz 01;31\00.rar 01;31\00.rpm 01;31\00.rz 01;31\00.sar 01;31\00.swm 01;31\00.t7z 01;31\00.tar 01;31\00.taz 01;31\00.tbz 01;31\00.tbz2 01;31\00.tgz 01;31\00.tlz 01;31\00.txz 01;31\00.tz 01;31\00.tzo 01;31\00.tzst 01;31\00.udeb 01;31\00.war 01;31\00.whl 01;31\00.wim 01;31\00.xz 01;31\00.z 01;31\00.zip 01;31\00.zoo 01;31\00.zst 01;31\00# image formats\00.avif 01;35\00.jpg 01;35\00.jpeg 01;35\00.jxl 01;35\00.mjpg 01;35\00.mjpeg 01;35\00.gif 01;35\00.bmp 01;35\00.pbm 01;35\00.pgm 01;35\00.ppm 01;35\00.tga 01;35\00.xbm 01;35\00.xpm 01;35\00.tif 01;35\00.tiff 01;35\00.png 01;35\00.svg 01;35\00.svgz 01;35\00.mng 01;35\00.pcx 01;35\00.mov 01;35\00.mpg 01;35\00.mpeg 01;35\00.m2v 01;35\00.mkv 01;35\00.webm 01;35\00.webp 01;35\00.ogm 01;35\00.mp4 01;35\00.m4v 01;35\00.mp4v 01;35\00.vob 01;35\00.qt 01;35\00.nuv 01;35\00.wmv 01;35\00.asf 01;35\00.rm 01;35\00.rmvb 01;35\00.flc 01;35\00.avi 01;35\00.fli 01;35\00.flv 01;35\00.gl 01;35\00.dl 01;35\00.xcf 01;35\00.xwd 01;35\00.yuv 01;35\00.cgm 01;35\00.emf 01;35\00# https://wiki.xiph.org/MIME_Types_and_File_Extensions\00.ogv 01;35\00.ogx 01;35\00# audio formats\00.aac 00;36\00.au 00;36\00.flac 00;36\00.m4a 00;36\00.mid 00;36\00.midi 00;36\00.mka 00;36\00.mp3 00;36\00.mpc 00;36\00.ogg 00;36\00.ra 00;36\00.wav 00;36\00# https://wiki.xiph.org/MIME_Types_and_File_Extensions\00.oga 00;36\00.opus 00;36\00.spx 00;36\00.xspf 00;36\00# backup files\00*~ 00;90\00*# 00;90\00.bak 00;90\00.crdownload 00;90\00.dpkg-dist 00;90\00.dpkg-new 00;90\00.dpkg-old 00;90\00.dpkg-tmp 00;90\00.old 00;90\00.orig 00;90\00.part 00;90\00.rej 00;90\00.rpmnew 00;90\00.rpmorig 00;90\00.rpmsave 00;90\00.swp 00;90\00.tmp 00;90\00.ucf-dist 00;90\00.ucf-new 00;90\00.ucf-old 00;90\00#\00# Subsequent TERM or COLORTERM entries, can be used to add / override\00# config specific to those matching environment variables.\00", align 1, !dbg !231
@.str.22 = private unnamed_addr constant [62 x i8] c"no SHELL environment variable, and no shell type option given\00", align 1
@lsc_obstack = internal global %struct.obstack zeroinitializer, align 8, !dbg !147
@.str.23 = private unnamed_addr constant [12 x i8] c"LS_COLORS='\00", align 1
@.str.24 = private unnamed_addr constant [21 x i8] c"';\0Aexport LS_COLORS\0A\00", align 1
@.str.25 = private unnamed_addr constant [19 x i8] c"setenv LS_COLORS '\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"'\0A\00", align 1
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !200
@.str.27 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1
@.str.31 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.43 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.45 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.46 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1
@.str.47 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.48 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1
@.str.49 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1
@.str.50 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1
@.str.54 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.55 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.56 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.54, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.55, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.56, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.56, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.56, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.56, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 8
@.str.57 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.58 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.59 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.60 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.61 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.62 = private unnamed_addr constant [13 x i8] c"bourne-shell\00", align 1
@.str.63 = private unnamed_addr constant [3 x i8] c"sh\00", align 1
@.str.64 = private unnamed_addr constant [4 x i8] c"csh\00", align 1
@.str.65 = private unnamed_addr constant [8 x i8] c"c-shell\00", align 1
@.str.66 = private unnamed_addr constant [15 x i8] c"print-database\00", align 1
@.str.67 = private unnamed_addr constant [16 x i8] c"print-ls-colors\00", align 1
@.str.68 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.69 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.70 = private unnamed_addr constant [6 x i8] c"SHELL\00", align 1
@.str.71 = private unnamed_addr constant [5 x i8] c"tcsh\00", align 1
@.str.72 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.73 = private unnamed_addr constant [10 x i8] c"COLORTERM\00", align 1
@.str.74 = private unnamed_addr constant [15 x i8] c"%s: read error\00", align 1
@.str.75 = private unnamed_addr constant [44 x i8] c"%s:%td: invalid line;  missing second token\00", align 1
@.str.76 = private unnamed_addr constant [8 x i8] c"OPTIONS\00", align 1
@.str.77 = private unnamed_addr constant [6 x i8] c"COLOR\00", align 1
@.str.78 = private unnamed_addr constant [9 x i8] c"EIGHTBIT\00", align 1
@slack_codes = internal unnamed_addr constant [38 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.94, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.96, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.97, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.99, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.100, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.102, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.105, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.106, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.107, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.108, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.109, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.111, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.112, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.113, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.114, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.115, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.116, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.117, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.118, i32 0, i32 0), i8* null], align 8, !dbg !237
@ls_codes = internal unnamed_addr constant [38 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.119, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.119, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.120, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.121, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.122, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.123, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.123, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.123, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.124, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.125, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.126, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.126, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.127, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.128, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.128, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.129, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.129, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.130, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.131, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.132, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.132, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.133, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.133, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.134, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.134, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.135, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.135, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.136, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.136, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.137, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.138, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.138, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.139, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.139, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.140, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.141, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.142, i32 0, i32 0), i8* null], align 8, !dbg !243
@.str.79 = private unnamed_addr constant [32 x i8] c"%s:%td: unrecognized keyword %s\00", align 1
@.str.80 = private unnamed_addr constant [11 x i8] c"<internal>\00", align 1
@.str.81 = private unnamed_addr constant [3 x i8] c"\1B[\00", align 1
@.str.82 = private unnamed_addr constant [7 x i8] c"NORMAL\00", align 1
@.str.83 = private unnamed_addr constant [5 x i8] c"NORM\00", align 1
@.str.84 = private unnamed_addr constant [5 x i8] c"FILE\00", align 1
@.str.85 = private unnamed_addr constant [6 x i8] c"RESET\00", align 1
@.str.86 = private unnamed_addr constant [4 x i8] c"DIR\00", align 1
@.str.87 = private unnamed_addr constant [4 x i8] c"LNK\00", align 1
@.str.88 = private unnamed_addr constant [5 x i8] c"LINK\00", align 1
@.str.89 = private unnamed_addr constant [8 x i8] c"SYMLINK\00", align 1
@.str.90 = private unnamed_addr constant [7 x i8] c"ORPHAN\00", align 1
@.str.91 = private unnamed_addr constant [8 x i8] c"MISSING\00", align 1
@.str.92 = private unnamed_addr constant [5 x i8] c"FIFO\00", align 1
@.str.93 = private unnamed_addr constant [5 x i8] c"PIPE\00", align 1
@.str.94 = private unnamed_addr constant [5 x i8] c"SOCK\00", align 1
@.str.95 = private unnamed_addr constant [4 x i8] c"BLK\00", align 1
@.str.96 = private unnamed_addr constant [6 x i8] c"BLOCK\00", align 1
@.str.97 = private unnamed_addr constant [4 x i8] c"CHR\00", align 1
@.str.98 = private unnamed_addr constant [5 x i8] c"CHAR\00", align 1
@.str.99 = private unnamed_addr constant [5 x i8] c"DOOR\00", align 1
@.str.100 = private unnamed_addr constant [5 x i8] c"EXEC\00", align 1
@.str.101 = private unnamed_addr constant [5 x i8] c"LEFT\00", align 1
@.str.102 = private unnamed_addr constant [9 x i8] c"LEFTCODE\00", align 1
@.str.103 = private unnamed_addr constant [6 x i8] c"RIGHT\00", align 1
@.str.104 = private unnamed_addr constant [10 x i8] c"RIGHTCODE\00", align 1
@.str.105 = private unnamed_addr constant [4 x i8] c"END\00", align 1
@.str.106 = private unnamed_addr constant [8 x i8] c"ENDCODE\00", align 1
@.str.107 = private unnamed_addr constant [5 x i8] c"SUID\00", align 1
@.str.108 = private unnamed_addr constant [7 x i8] c"SETUID\00", align 1
@.str.109 = private unnamed_addr constant [5 x i8] c"SGID\00", align 1
@.str.110 = private unnamed_addr constant [7 x i8] c"SETGID\00", align 1
@.str.111 = private unnamed_addr constant [7 x i8] c"STICKY\00", align 1
@.str.112 = private unnamed_addr constant [15 x i8] c"OTHER_WRITABLE\00", align 1
@.str.113 = private unnamed_addr constant [4 x i8] c"OWR\00", align 1
@.str.114 = private unnamed_addr constant [22 x i8] c"STICKY_OTHER_WRITABLE\00", align 1
@.str.115 = private unnamed_addr constant [4 x i8] c"OWT\00", align 1
@.str.116 = private unnamed_addr constant [11 x i8] c"CAPABILITY\00", align 1
@.str.117 = private unnamed_addr constant [14 x i8] c"MULTIHARDLINK\00", align 1
@.str.118 = private unnamed_addr constant [9 x i8] c"CLRTOEOL\00", align 1
@.str.119 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.120 = private unnamed_addr constant [3 x i8] c"fi\00", align 1
@.str.121 = private unnamed_addr constant [3 x i8] c"rs\00", align 1
@.str.122 = private unnamed_addr constant [3 x i8] c"di\00", align 1
@.str.123 = private unnamed_addr constant [3 x i8] c"ln\00", align 1
@.str.124 = private unnamed_addr constant [3 x i8] c"or\00", align 1
@.str.125 = private unnamed_addr constant [3 x i8] c"mi\00", align 1
@.str.126 = private unnamed_addr constant [3 x i8] c"pi\00", align 1
@.str.127 = private unnamed_addr constant [3 x i8] c"so\00", align 1
@.str.128 = private unnamed_addr constant [3 x i8] c"bd\00", align 1
@.str.129 = private unnamed_addr constant [3 x i8] c"cd\00", align 1
@.str.130 = private unnamed_addr constant [3 x i8] c"do\00", align 1
@.str.131 = private unnamed_addr constant [3 x i8] c"ex\00", align 1
@.str.132 = private unnamed_addr constant [3 x i8] c"lc\00", align 1
@.str.133 = private unnamed_addr constant [3 x i8] c"rc\00", align 1
@.str.134 = private unnamed_addr constant [3 x i8] c"ec\00", align 1
@.str.135 = private unnamed_addr constant [3 x i8] c"su\00", align 1
@.str.136 = private unnamed_addr constant [3 x i8] c"sg\00", align 1
@.str.137 = private unnamed_addr constant [3 x i8] c"st\00", align 1
@.str.138 = private unnamed_addr constant [3 x i8] c"ow\00", align 1
@.str.139 = private unnamed_addr constant [3 x i8] c"tw\00", align 1
@.str.140 = private unnamed_addr constant [3 x i8] c"ca\00", align 1
@.str.141 = private unnamed_addr constant [3 x i8] c"mh\00", align 1
@.str.142 = private unnamed_addr constant [3 x i8] c"cl\00", align 1
@.str.143 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.144 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.145 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.32 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.32, i64 0, i64 0), align 8, !dbg !258
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !263
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !268
@.str.39 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.1.40 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.2.41 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.3.42 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@error_print_progname = dso_local local_unnamed_addr global void ()* null, align 8, !dbg !270
@.str.146 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !306
@verror_at_line.old_file_name = internal unnamed_addr global i8* null, align 8, !dbg !276
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !302
@.str.1.152 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.2.154 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1
@.str.3.153 = private unnamed_addr constant [2 x i8] c" \00", align 1
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !304
@.str.4.147 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.5.148 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1
@.str.6.149 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@.str.163 = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@obstack_alloc_failed_handler = dso_local local_unnamed_addr global void ()* @print_and_abort, align 8, !dbg !311
@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.170 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1.168 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.2.169 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !317
@.str.179 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.1.180 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !323
@.str.183 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.184 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.185 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.186 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.187 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.188 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.189 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.190 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.191 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.192 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.183, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.184, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.185, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.186, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.187, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.188, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.189, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.190, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.191, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.192, i32 0, i32 0), i8* null], align 8, !dbg !359
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !371
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !389
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !419
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !426
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !391
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !428
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !377
@.str.10.195 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.11.193 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.196 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.13.194 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !396
@.str.203 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.204 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.205 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.3.206 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.4.207 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5.208 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.6.209 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.7.210 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.8.211 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.9.212 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.10.213 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.11.214 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.12.215 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.13.216 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.14.217 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.15.218 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.16.219 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.17.224 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.18.225 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.19.226 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.20.227 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.21.228 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.22.229 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.23.230 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !433
@exit_failure = dso_local global i32 1, align 4, !dbg !441
@.str.245 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.243 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.2.244 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.250 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !447
@.str.255 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.256 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !543 {
  %2 = alloca [7 x %struct.infomap], align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !547, metadata !DIExpression()), !dbg !548
  %3 = icmp eq i32 %0, 0, !dbg !549
  br i1 %3, label %9, label %4, !dbg !551

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !552, !tbaa !554
  %6 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 noundef 5) #34, !dbg !552
  %7 = load i8*, i8** @program_name, align 8, !dbg !552, !tbaa !554
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %5, i32 noundef 1, i8* noundef %6, i8* noundef %7) #34, !dbg !552
  br label %59, !dbg !552

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 noundef 5) #34, !dbg !558
  %11 = load i8*, i8** @program_name, align 8, !dbg !558, !tbaa !554
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %10, i8* noundef %11) #34, !dbg !558
  %13 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([89 x i8], [89 x i8]* @.str.2, i64 0, i64 0), i32 noundef 5) #34, !dbg !560
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !560, !tbaa !554
  %15 = tail call i32 @fputs_unlocked(i8* noundef %13, %struct._IO_FILE* noundef %14), !dbg !560
  %16 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([79 x i8], [79 x i8]* @.str.4, i64 0, i64 0), i32 noundef 5) #34, !dbg !561
  tail call fastcc void @oputs_(i8* noundef %16), !dbg !561
  %17 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([70 x i8], [70 x i8]* @.str.5, i64 0, i64 0), i32 noundef 5) #34, !dbg !562
  tail call fastcc void @oputs_(i8* noundef %17), !dbg !562
  %18 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0), i32 noundef 5) #34, !dbg !563
  tail call fastcc void @oputs_(i8* noundef %18), !dbg !563
  %19 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([74 x i8], [74 x i8]* @.str.7, i64 0, i64 0), i32 noundef 5) #34, !dbg !564
  tail call fastcc void @oputs_(i8* noundef %19), !dbg !564
  %20 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.8, i64 0, i64 0), i32 noundef 5) #34, !dbg !565
  tail call fastcc void @oputs_(i8* noundef %20), !dbg !565
  %21 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.9, i64 0, i64 0), i32 noundef 5) #34, !dbg !566
  tail call fastcc void @oputs_(i8* noundef %21), !dbg !566
  %22 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([222 x i8], [222 x i8]* @.str.10, i64 0, i64 0), i32 noundef 5) #34, !dbg !567
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !567, !tbaa !554
  %24 = tail call i32 @fputs_unlocked(i8* noundef %22, %struct._IO_FILE* noundef %23), !dbg !567
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), metadata !568, metadata !DIExpression()) #34, !dbg !587
  %25 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !589
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %25) #34, !dbg !589
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !573, metadata !DIExpression()) #34, !dbg !590
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(112) %25, i8* noundef nonnull align 8 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #34, !dbg !590
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), metadata !582, metadata !DIExpression()) #34, !dbg !587
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !583, metadata !DIExpression()) #34, !dbg !587
  %26 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !591
  call void @llvm.dbg.value(metadata %struct.infomap* %26, metadata !583, metadata !DIExpression()) #34, !dbg !587
  br label %27, !dbg !592

27:                                               ; preds = %32, %9
  %28 = phi i8* [ %35, %32 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0), %9 ]
  %29 = phi %struct.infomap* [ %33, %32 ], [ %26, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %29, metadata !583, metadata !DIExpression()) #34, !dbg !587
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), metadata !593, metadata !DIExpression()) #34, !dbg !600
  call void @llvm.dbg.value(metadata i8* %28, metadata !599, metadata !DIExpression()) #34, !dbg !600
  %30 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) %28) #35, !dbg !602
  %31 = icmp eq i32 %30, 0, !dbg !603
  br i1 %31, label %37, label %32, !dbg !592

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.infomap, %struct.infomap* %29, i64 1, !dbg !604
  call void @llvm.dbg.value(metadata %struct.infomap* %33, metadata !583, metadata !DIExpression()) #34, !dbg !587
  %34 = getelementptr inbounds %struct.infomap, %struct.infomap* %33, i64 0, i32 0, !dbg !605
  %35 = load i8*, i8** %34, align 8, !dbg !605, !tbaa !606
  %36 = icmp eq i8* %35, null, !dbg !608
  br i1 %36, label %37, label %27, !dbg !609, !llvm.loop !610

37:                                               ; preds = %32, %27
  %38 = phi %struct.infomap* [ %29, %27 ], [ %33, %32 ]
  %39 = getelementptr inbounds %struct.infomap, %struct.infomap* %38, i64 0, i32 1, !dbg !612
  %40 = load i8*, i8** %39, align 8, !dbg !612, !tbaa !614
  %41 = icmp eq i8* %40, null, !dbg !615
  %42 = select i1 %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %40, !dbg !616
  call void @llvm.dbg.value(metadata i8* %42, metadata !582, metadata !DIExpression()) #34, !dbg !587
  tail call void @emit_bug_reporting_address() #34, !dbg !617
  %43 = tail call i8* @setlocale(i32 noundef 5, i8* noundef null) #34, !dbg !618
  call void @llvm.dbg.value(metadata i8* %43, metadata !585, metadata !DIExpression()) #34, !dbg !587
  %44 = icmp eq i8* %43, null, !dbg !619
  br i1 %44, label %52, label %45, !dbg !621

45:                                               ; preds = %37
  %46 = tail call i32 @strncmp(i8* noundef nonnull %43, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.57, i64 0, i64 0), i64 noundef 3) #35, !dbg !622
  %47 = icmp eq i32 %46, 0, !dbg !622
  br i1 %47, label %52, label %48, !dbg !623

48:                                               ; preds = %45
  %49 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.58, i64 0, i64 0), i32 noundef 5) #34, !dbg !624
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !624, !tbaa !554
  %51 = tail call i32 @fputs_unlocked(i8* noundef %49, %struct._IO_FILE* noundef %50) #34, !dbg !624
  br label %52, !dbg !626

52:                                               ; preds = %37, %45, %48
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), metadata !593, metadata !DIExpression()) #34, !dbg !627
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0), metadata !599, metadata !DIExpression()) #34, !dbg !627
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), metadata !586, metadata !DIExpression()) #34, !dbg !587
  %53 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.59, i64 0, i64 0), i32 noundef 5) #34, !dbg !629
  %54 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %53, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.47, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0)) #34, !dbg !629
  %55 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.60, i64 0, i64 0), i32 noundef 5) #34, !dbg !630
  %56 = icmp eq i8* %42, getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), !dbg !630
  %57 = select i1 %56, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.61, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0), !dbg !630
  %58 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %55, i8* noundef %42, i8* noundef %57) #34, !dbg !630
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %25) #34, !dbg !631
  br label %59

59:                                               ; preds = %52, %4
  tail call void @exit(i32 noundef %0) #36, !dbg !632
  unreachable, !dbg !632
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !633 i8* @dcgettext(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32 noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !638 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(i8* noundef %0) unnamed_addr #5 !dbg !202 {
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), metadata !207, metadata !DIExpression()), !dbg !643
  call void @llvm.dbg.value(metadata i8* %0, metadata !208, metadata !DIExpression()), !dbg !643
  %2 = load i32, i32* @oputs_.help_no_sgr, align 4, !dbg !644, !tbaa !645
  %3 = icmp eq i32 %2, -1, !dbg !647
  br i1 %3, label %4, label %16, !dbg !648

4:                                                ; preds = %1
  %5 = tail call i8* @getenv(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0)) #34, !dbg !649
  call void @llvm.dbg.value(metadata i8* %5, metadata !209, metadata !DIExpression()), !dbg !650
  %6 = icmp eq i8* %5, null, !dbg !651
  br i1 %6, label %14, label %7, !dbg !652

7:                                                ; preds = %4
  %8 = load i8, i8* %5, align 1, !dbg !653, !tbaa !654
  %9 = icmp eq i8 %8, 0, !dbg !653
  br i1 %9, label %14, label %10, !dbg !655

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i8* %5, metadata !593, metadata !DIExpression()) #34, !dbg !656
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0), metadata !599, metadata !DIExpression()) #34, !dbg !656
  %11 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %5, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0)) #35, !dbg !658
  %12 = icmp eq i32 %11, 0, !dbg !659
  %13 = zext i1 %12 to i32, !dbg !655
  br label %14, !dbg !655

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, i32* @oputs_.help_no_sgr, align 4, !dbg !660, !tbaa !645
  br label %16, !dbg !661

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !662
  %18 = icmp eq i32 %17, 0, !dbg !662
  br i1 %18, label %22, label %19, !dbg !664

19:                                               ; preds = %16
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !665, !tbaa !554
  %21 = tail call i32 @fputs_unlocked(i8* noundef %0, %struct._IO_FILE* noundef %20), !dbg !665
  br label %121, !dbg !667

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !212, metadata !DIExpression()), !dbg !643
  %23 = tail call i64 @strspn(i8* noundef %0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i64 0, i64 0)) #35, !dbg !668
  %24 = getelementptr inbounds i8, i8* %0, i64 %23, !dbg !669
  call void @llvm.dbg.value(metadata i8* %24, metadata !213, metadata !DIExpression()), !dbg !643
  %25 = tail call i8* @strchr(i8* noundef nonnull dereferenceable(1) %0, i32 noundef 45) #35, !dbg !670
  call void @llvm.dbg.value(metadata i8* %25, metadata !214, metadata !DIExpression()), !dbg !643
  %26 = icmp eq i8* %25, null, !dbg !671
  br i1 %26, label %53, label %27, !dbg !672

27:                                               ; preds = %22
  %28 = icmp eq i8* %25, %24, !dbg !673
  br i1 %28, label %53, label %29, !dbg !674

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8* %24, metadata !215, metadata !DIExpression()), !dbg !675
  call void @llvm.dbg.value(metadata i64 0, metadata !219, metadata !DIExpression()), !dbg !675
  %30 = icmp ult i8* %24, %25, !dbg !676
  br i1 %30, label %31, label %53, !dbg !677

31:                                               ; preds = %29
  %32 = tail call i16** @__ctype_b_loc() #37, !dbg !643
  %33 = load i16*, i16** %32, align 8, !tbaa !554
  br label %34, !dbg !677

34:                                               ; preds = %31, %34
  %35 = phi i8* [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %45, %34 ]
  call void @llvm.dbg.value(metadata i8* %35, metadata !215, metadata !DIExpression()), !dbg !675
  call void @llvm.dbg.value(metadata i64 %36, metadata !219, metadata !DIExpression()), !dbg !675
  %37 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !678
  call void @llvm.dbg.value(metadata i8* %37, metadata !215, metadata !DIExpression()), !dbg !675
  %38 = load i8, i8* %35, align 1, !dbg !678, !tbaa !654
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, i16* %33, i64 %39, !dbg !678
  %41 = load i16, i16* %40, align 2, !dbg !678, !tbaa !679
  %42 = lshr i16 %41, 13, !dbg !681
  %43 = and i16 %42, 1, !dbg !681
  %44 = zext i16 %43 to i64
  %45 = add nuw nsw i64 %36, %44, !dbg !682
  call void @llvm.dbg.value(metadata i64 %45, metadata !219, metadata !DIExpression()), !dbg !675
  %46 = icmp ult i8* %37, %25, !dbg !676
  %47 = icmp ult i64 %45, 2, !dbg !683
  %48 = select i1 %46, i1 %47, i1 false, !dbg !683
  br i1 %48, label %34, label %49, !dbg !677, !llvm.loop !684

49:                                               ; preds = %34
  %50 = icmp eq i64 %45, 2, !dbg !685
  %51 = select i1 %50, i8* %24, i8* %25, !dbg !687
  %52 = xor i1 %50, true, !dbg !687
  br label %53, !dbg !687

53:                                               ; preds = %29, %49, %22, %27
  %54 = phi i8* [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %51, %49 ], !dbg !643
  %55 = phi i1 [ true, %27 ], [ false, %22 ], [ true, %29 ], [ %52, %49 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !212, metadata !DIExpression()), !dbg !643
  call void @llvm.dbg.value(metadata i8* %54, metadata !214, metadata !DIExpression()), !dbg !643
  %56 = tail call i64 @strcspn(i8* noundef %54, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i64 0, i64 0)) #35, !dbg !688
  call void @llvm.dbg.value(metadata i64 %56, metadata !220, metadata !DIExpression()), !dbg !643
  %57 = getelementptr inbounds i8, i8* %54, i64 %56, !dbg !689
  call void @llvm.dbg.value(metadata i8* %57, metadata !221, metadata !DIExpression()), !dbg !643
  br label %58, !dbg !690

58:                                               ; preds = %89, %53
  %59 = phi i8* [ %57, %53 ], [ %90, %89 ], !dbg !643
  %60 = phi i1 [ %55, %53 ], [ %68, %89 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !212, metadata !DIExpression()), !dbg !643
  call void @llvm.dbg.value(metadata i8* %59, metadata !221, metadata !DIExpression()), !dbg !643
  %61 = load i8, i8* %59, align 1, !dbg !691, !tbaa !654
  switch i8 %61, label %67 [
    i8 0, label %91
    i8 10, label %91
    i8 45, label %62
  ], !dbg !692

62:                                               ; preds = %58
  %63 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !693
  %64 = load i8, i8* %63, align 1, !dbg !696, !tbaa !654
  %65 = icmp ne i8 %64, 45, !dbg !697
  %66 = select i1 %65, i1 %60, i1 false, !dbg !698
  br label %67, !dbg !698

67:                                               ; preds = %62, %58
  %68 = phi i1 [ %60, %58 ], [ %66, %62 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !212, metadata !DIExpression()), !dbg !643
  %69 = tail call i16** @__ctype_b_loc() #37, !dbg !699
  %70 = load i16*, i16** %69, align 8, !dbg !699, !tbaa !554
  %71 = zext i8 %61 to i64
  %72 = getelementptr inbounds i16, i16* %70, i64 %71, !dbg !699
  %73 = load i16, i16* %72, align 2, !dbg !699, !tbaa !679
  %74 = and i16 %73, 8192, !dbg !699
  %75 = icmp eq i16 %74, 0, !dbg !699
  br i1 %75, label %89, label %76, !dbg !701

76:                                               ; preds = %67
  %77 = icmp eq i8 %61, 9, !dbg !702
  br i1 %77, label %91, label %78, !dbg !705

78:                                               ; preds = %76
  %79 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !706
  %80 = load i8, i8* %79, align 1, !dbg !706, !tbaa !654
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds i16, i16* %70, i64 %81, !dbg !706
  %83 = load i16, i16* %82, align 2, !dbg !706, !tbaa !679
  %84 = and i16 %83, 8192, !dbg !706
  %85 = icmp eq i16 %84, 0, !dbg !706
  br i1 %85, label %86, label %91, !dbg !707

86:                                               ; preds = %78
  %87 = icmp eq i8 %80, 45
  %88 = select i1 %68, i1 true, i1 %87, !dbg !708
  br i1 %88, label %89, label %91, !dbg !708

89:                                               ; preds = %86, %67
  %90 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !710
  call void @llvm.dbg.value(metadata i8* %90, metadata !221, metadata !DIExpression()), !dbg !643
  br label %58, !dbg !690, !llvm.loop !711

91:                                               ; preds = %86, %58, %58, %76, %78
  %92 = ptrtoint i8* %24 to i64, !dbg !713
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !713, !tbaa !554
  %94 = tail call i64 @fwrite_unlocked(i8* noundef %0, i64 noundef 1, i64 noundef %23, %struct._IO_FILE* noundef %93), !dbg !713
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), metadata !593, metadata !DIExpression()) #34, !dbg !714
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0), metadata !599, metadata !DIExpression()) #34, !dbg !714
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), metadata !593, metadata !DIExpression()) #34, !dbg !716
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), metadata !593, metadata !DIExpression()) #34, !dbg !718
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), metadata !593, metadata !DIExpression()) #34, !dbg !720
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), metadata !593, metadata !DIExpression()) #34, !dbg !722
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), metadata !593, metadata !DIExpression()) #34, !dbg !724
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), metadata !593, metadata !DIExpression()) #34, !dbg !726
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), metadata !593, metadata !DIExpression()) #34, !dbg !728
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), metadata !593, metadata !DIExpression()) #34, !dbg !730
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), metadata !593, metadata !DIExpression()) #34, !dbg !732
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), metadata !226, metadata !DIExpression()), !dbg !643
  %95 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i64 0, i64 0), i64 noundef 6) #35, !dbg !734
  %96 = icmp eq i32 %95, 0, !dbg !734
  br i1 %96, label %100, label %97, !dbg !736

97:                                               ; preds = %91
  %98 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.45, i64 0, i64 0), i64 noundef 9) #35, !dbg !737
  %99 = icmp eq i32 %98, 0, !dbg !737
  br i1 %99, label %100, label %103, !dbg !738

100:                                              ; preds = %97, %91
  %101 = trunc i64 %56 to i32, !dbg !739
  %102 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.46, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.47, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 noundef %101, i8* noundef %54) #34, !dbg !739
  br label %106, !dbg !741

103:                                              ; preds = %97
  %104 = trunc i64 %56 to i32, !dbg !742
  %105 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.48, i64 0, i64 0), i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.49, i64 0, i64 0), i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 noundef %104, i8* noundef %54) #34, !dbg !742
  br label %106

106:                                              ; preds = %103, %100
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !744, !tbaa !554
  %108 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.50, i64 0, i64 0), %struct._IO_FILE* noundef %107), !dbg !744
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !745, !tbaa !554
  %110 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i64 0, i64 0), %struct._IO_FILE* noundef %109), !dbg !745
  %111 = ptrtoint i8* %59 to i64, !dbg !746
  %112 = sub i64 %111, %92, !dbg !746
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !746, !tbaa !554
  %114 = tail call i64 @fwrite_unlocked(i8* noundef %24, i64 noundef 1, i64 noundef %112, %struct._IO_FILE* noundef %113), !dbg !746
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !747, !tbaa !554
  %116 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i64 0, i64 0), %struct._IO_FILE* noundef %115), !dbg !747
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !748, !tbaa !554
  %118 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i64 0, i64 0), %struct._IO_FILE* noundef %117), !dbg !748
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !749, !tbaa !554
  %120 = tail call i32 @fputs_unlocked(i8* noundef nonnull %59, %struct._IO_FILE* noundef %119), !dbg !749
  br label %121

121:                                              ; preds = %106, %19
  ret void, !dbg !750
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #6

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare !dbg !751 i8* @setlocale(i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture noundef, i8* nocapture noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #6

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind readonly
declare !dbg !755 noundef i8* @getenv(i8* nocapture noundef) local_unnamed_addr #10

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strspn(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #11

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strcspn(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare !dbg !759 noundef i64 @fwrite_unlocked(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) local_unnamed_addr #12 !dbg !765 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !770, metadata !DIExpression()), !dbg !798
  call void @llvm.dbg.value(metadata i8** %1, metadata !771, metadata !DIExpression()), !dbg !798
  call void @llvm.dbg.value(metadata i8 1, metadata !772, metadata !DIExpression()), !dbg !798
  call void @llvm.dbg.value(metadata i32 2, metadata !774, metadata !DIExpression()), !dbg !798
  call void @llvm.dbg.value(metadata i8 0, metadata !775, metadata !DIExpression()), !dbg !798
  %3 = load i8*, i8** %1, align 8, !dbg !799, !tbaa !554
  tail call void @set_program_name(i8* noundef %3) #34, !dbg !800
  %4 = tail call i8* @setlocale(i32 noundef 6, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)) #34, !dbg !801
  %5 = tail call i8* @bindtextdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0)) #34, !dbg !802
  %6 = tail call i8* @textdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0)) #34, !dbg !803
  %7 = tail call i32 @atexit(void ()* noundef nonnull @close_stdout) #34, !dbg !804
  br label %8, !dbg !805

8:                                                ; preds = %13, %2
  %9 = phi i1 [ false, %2 ], [ true, %13 ]
  %10 = phi i32 [ 2, %2 ], [ %12, %13 ]
  br label %11, !dbg !805

11:                                               ; preds = %16, %8
  %12 = phi i32 [ %10, %8 ], [ %17, %16 ]
  br label %13, !dbg !805

13:                                               ; preds = %11, %18
  call void @llvm.dbg.value(metadata i32 %12, metadata !774, metadata !DIExpression()), !dbg !798
  call void @llvm.dbg.value(metadata i8 poison, metadata !775, metadata !DIExpression()), !dbg !798
  %14 = tail call i32 @getopt_long(i32 noundef %0, i8** noundef nonnull %1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), %struct.option* noundef getelementptr inbounds ([9 x %struct.option], [9 x %struct.option]* @long_options, i64 0, i64 0), i32* noundef null) #34, !dbg !806
  call void @llvm.dbg.value(metadata i32 %14, metadata !773, metadata !DIExpression()), !dbg !798
  switch i32 %14, label %24 [
    i32 -1, label %25
    i32 98, label %16
    i32 99, label %15
    i32 112, label %8
    i32 256, label %18
    i32 -2, label %19
    i32 -3, label %20
  ], !dbg !805, !llvm.loop !807

15:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i32 1, metadata !774, metadata !DIExpression()), !dbg !798
  br label %16, !dbg !809

16:                                               ; preds = %13, %15
  %17 = phi i32 [ 1, %15 ], [ 0, %13 ]
  br label %11, !dbg !805, !llvm.loop !807

18:                                               ; preds = %13
  store i1 true, i1* @print_ls_colors, align 1, !dbg !811
  br label %13, !dbg !812, !llvm.loop !807

19:                                               ; preds = %13
  tail call void @usage(i32 noundef 0) #38, !dbg !813
  unreachable, !dbg !813

20:                                               ; preds = %13
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !814, !tbaa !554
  %22 = load i8*, i8** @Version, align 8, !dbg !814, !tbaa !554
  %23 = tail call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0)) #34, !dbg !814
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* noundef %21, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i8* noundef %22, i8* noundef %23, i8* noundef null) #34, !dbg !814
  tail call void @exit(i32 noundef 0) #36, !dbg !814
  unreachable, !dbg !814

24:                                               ; preds = %13
  tail call void @usage(i32 noundef 1) #38, !dbg !815
  unreachable, !dbg !815

25:                                               ; preds = %13
  %26 = load i32, i32* @optind, align 4, !dbg !816, !tbaa !645
  %27 = sub nsw i32 %0, %26, !dbg !817
  call void @llvm.dbg.value(metadata i32 %27, metadata !770, metadata !DIExpression()), !dbg !798
  %28 = sext i32 %26 to i64, !dbg !818
  %29 = getelementptr inbounds i8*, i8** %1, i64 %28, !dbg !818
  call void @llvm.dbg.value(metadata i8** %29, metadata !771, metadata !DIExpression()), !dbg !798
  %30 = load i1, i1* @print_ls_colors, align 1, !dbg !819
  %31 = or i1 %9, %30, !dbg !821
  %32 = icmp ne i32 %12, 2
  %33 = select i1 %31, i1 %32, i1 false, !dbg !822
  br i1 %33, label %34, label %36, !dbg !822

34:                                               ; preds = %25
  %35 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([92 x i8], [92 x i8]* @.str.17, i64 0, i64 0), i32 noundef 5) #34, !dbg !823
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %35) #34, !dbg !823
  tail call void @usage(i32 noundef 1) #38, !dbg !825
  unreachable, !dbg !825

36:                                               ; preds = %25
  %37 = xor i1 %9, true, !dbg !826
  %38 = select i1 %9, i1 %30, i1 false, !dbg !826
  br i1 %38, label %39, label %41, !dbg !826

39:                                               ; preds = %36
  %40 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([70 x i8], [70 x i8]* @.str.18, i64 0, i64 0), i32 noundef 5) #34, !dbg !828
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %40) #34, !dbg !828
  tail call void @usage(i32 noundef 1) #38, !dbg !830
  unreachable, !dbg !830

41:                                               ; preds = %36
  %42 = zext i1 %37 to i32, !dbg !831
  %43 = icmp sgt i32 %27, %42, !dbg !833
  br i1 %43, label %44, label %55, !dbg !834

44:                                               ; preds = %41
  %45 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0), i32 noundef 5) #34, !dbg !835
  %46 = zext i1 %37 to i64, !dbg !835
  %47 = getelementptr inbounds i8*, i8** %29, i64 %46, !dbg !835
  %48 = load i8*, i8** %47, align 8, !dbg !835, !tbaa !554
  %49 = tail call i8* @quote(i8* noundef %48) #34, !dbg !835
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %45, i8* noundef %49) #34, !dbg !835
  br i1 %9, label %50, label %54, !dbg !837

50:                                               ; preds = %44
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !838, !tbaa !554
  %52 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.21, i64 0, i64 0), i32 noundef 5) #34, !dbg !838
  %53 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %51, i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0), i8* noundef %52) #34, !dbg !838
  br label %54, !dbg !838

54:                                               ; preds = %50, %44
  tail call void @usage(i32 noundef 1) #38, !dbg !840
  unreachable, !dbg !840

55:                                               ; preds = %41
  br i1 %9, label %56, label %65, !dbg !841

56:                                               ; preds = %55, %56
  %57 = phi i8* [ %61, %56 ], [ getelementptr inbounds ([5616 x i8], [5616 x i8]* @G_line, i64 0, i64 0), %55 ]
  call void @llvm.dbg.value(metadata i8* %57, metadata !776, metadata !DIExpression()), !dbg !842
  %58 = tail call i32 @puts(i8* noundef nonnull dereferenceable(1) %57), !dbg !843
  %59 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %57) #35, !dbg !845
  %60 = add i64 %59, 1, !dbg !846
  %61 = getelementptr inbounds i8, i8* %57, i64 %60, !dbg !847
  call void @llvm.dbg.value(metadata i8* %61, metadata !776, metadata !DIExpression()), !dbg !842
  %62 = ptrtoint i8* %61 to i64, !dbg !848
  %63 = sub i64 %62, ptrtoint ([5616 x i8]* @G_line to i64), !dbg !848
  %64 = icmp ult i64 %63, 5616, !dbg !849
  br i1 %64, label %56, label %137, !dbg !850, !llvm.loop !851

65:                                               ; preds = %55
  %66 = select i1 %32, i1 true, i1 %30, !dbg !853
  br i1 %66, label %83, label %67, !dbg !853

67:                                               ; preds = %65
  %68 = tail call i8* @getenv(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.70, i64 0, i64 0)) #34, !dbg !855
  call void @llvm.dbg.value(metadata i8* %68, metadata !860, metadata !DIExpression()) #34, !dbg !863
  %69 = icmp eq i8* %68, null, !dbg !864
  br i1 %69, label %81, label %70, !dbg !866

70:                                               ; preds = %67
  %71 = load i8, i8* %68, align 1, !dbg !867, !tbaa !654
  %72 = icmp eq i8 %71, 0, !dbg !868
  br i1 %72, label %81, label %73, !dbg !869

73:                                               ; preds = %70
  %74 = tail call i8* @last_component(i8* noundef nonnull %68) #35, !dbg !870
  call void @llvm.dbg.value(metadata i8* %74, metadata !860, metadata !DIExpression()) #34, !dbg !863
  call void @llvm.dbg.value(metadata i8* %74, metadata !593, metadata !DIExpression()) #34, !dbg !871
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.64, i64 0, i64 0), metadata !599, metadata !DIExpression()) #34, !dbg !871
  %75 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %74, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.64, i64 0, i64 0)) #35, !dbg !874
  %76 = icmp eq i32 %75, 0, !dbg !875
  br i1 %76, label %83, label %77, !dbg !876

77:                                               ; preds = %73
  call void @llvm.dbg.value(metadata i8* %74, metadata !593, metadata !DIExpression()) #34, !dbg !877
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.71, i64 0, i64 0), metadata !599, metadata !DIExpression()) #34, !dbg !877
  %78 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %74, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.71, i64 0, i64 0)) #35, !dbg !879
  %79 = icmp eq i32 %78, 0, !dbg !880
  %80 = zext i1 %79 to i32, !dbg !881
  br label %83, !dbg !881

81:                                               ; preds = %70, %67
  call void @llvm.dbg.value(metadata i32 undef, metadata !774, metadata !DIExpression()), !dbg !798
  %82 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.22, i64 0, i64 0), i32 noundef 5) #34, !dbg !882
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef 0, i8* noundef %82) #34, !dbg !882
  unreachable, !dbg !882

83:                                               ; preds = %65, %77, %73
  %84 = phi i32 [ %12, %65 ], [ 1, %73 ], [ %80, %77 ], !dbg !798
  call void @llvm.dbg.value(metadata i32 %84, metadata !774, metadata !DIExpression()), !dbg !798
  %85 = tail call i32 @rpl_obstack_begin(%struct.obstack* noundef nonnull @lsc_obstack, i64 noundef 0, i64 noundef 0, i8* (i64)* noundef nonnull @malloc, void (i8*)* noundef nonnull @free) #34, !dbg !884
  %86 = icmp eq i32 %27, 0, !dbg !885
  br i1 %86, label %87, label %89, !dbg !887

87:                                               ; preds = %83
  %88 = tail call fastcc i1 @dc_parse_stream(%struct._IO_FILE* noundef null, i8* noundef null), !dbg !888
  call void @llvm.dbg.value(metadata i1 %88, metadata !772, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !798
  call void @llvm.dbg.value(metadata i1 %99, metadata !772, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !798
  br i1 %88, label %108, label %137, !dbg !889

89:                                               ; preds = %83
  %90 = load i8*, i8** %29, align 8, !dbg !890, !tbaa !554
  call void @llvm.dbg.value(metadata i8* %90, metadata !891, metadata !DIExpression()) #34, !dbg !897
  call void @llvm.dbg.value(metadata i8* %90, metadata !593, metadata !DIExpression()) #34, !dbg !899
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.143, i64 0, i64 0), metadata !599, metadata !DIExpression()) #34, !dbg !899
  %91 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %90, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.143, i64 0, i64 0)) #35, !dbg !902
  %92 = icmp eq i32 %91, 0, !dbg !903
  br i1 %92, label %97, label %93, !dbg !904

93:                                               ; preds = %89
  %94 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !905, !tbaa !554
  %95 = tail call %struct._IO_FILE* @freopen_safer(i8* noundef %90, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.144, i64 0, i64 0), %struct._IO_FILE* noundef %94) #34, !dbg !906
  %96 = icmp eq %struct._IO_FILE* %95, null, !dbg !907
  br i1 %96, label %103, label %97, !dbg !908

97:                                               ; preds = %93, %89
  %98 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !909, !tbaa !554
  %99 = tail call fastcc i1 @dc_parse_stream(%struct._IO_FILE* noundef %98, i8* noundef %90) #34, !dbg !910
  call void @llvm.dbg.value(metadata i1 %99, metadata !896, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !897
  %100 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !911, !tbaa !554
  %101 = tail call i32 @rpl_fclose(%struct._IO_FILE* noundef %100) #34, !dbg !913
  %102 = icmp eq i32 %101, 0, !dbg !914
  br i1 %102, label %107, label %103, !dbg !915

103:                                              ; preds = %93, %97
  %104 = tail call i32* @__errno_location() #37, !dbg !897
  %105 = load i32, i32* %104, align 4, !dbg !897, !tbaa !645
  %106 = tail call i8* @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, i8* noundef %90) #34, !dbg !897
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %105, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.145, i64 0, i64 0), i8* noundef %106) #34, !dbg !897
  call void @llvm.dbg.value(metadata i1 %99, metadata !772, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !798
  br label %137, !dbg !889

107:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i1 %99, metadata !772, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !798
  br i1 %99, label %108, label %137, !dbg !889

108:                                              ; preds = %87, %107
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, metadata !783, metadata !DIExpression()), !dbg !916
  %109 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !917, !tbaa !918
  %110 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 2), align 8, !dbg !917, !tbaa !921
  %111 = ptrtoint i8* %109 to i64, !dbg !917
  %112 = ptrtoint i8* %110 to i64, !dbg !917
  %113 = sub i64 %111, %112, !dbg !917
  call void @llvm.dbg.value(metadata i64 %113, metadata !779, metadata !DIExpression()), !dbg !922
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, metadata !788, metadata !DIExpression()), !dbg !923
  call void @llvm.dbg.value(metadata i8* %110, metadata !791, metadata !DIExpression()), !dbg !923
  %114 = icmp eq i8* %109, %110, !dbg !924
  br i1 %114, label %115, label %118, !dbg !926

115:                                              ; preds = %108
  %116 = load i8, i8* getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 10), align 8, !dbg !924
  %117 = or i8 %116, 2, !dbg !924
  store i8 %117, i8* getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 10), align 8, !dbg !924
  br label %118, !dbg !924

118:                                              ; preds = %115, %108
  %119 = sub i64 0, %111, !dbg !926
  %120 = load i64, i64* getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 6), align 8, !dbg !926, !tbaa !927
  %121 = and i64 %120, %119, !dbg !926
  %122 = getelementptr inbounds i8, i8* %109, i64 %121, !dbg !926
  store i8* %122, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !926, !tbaa !918
  store i8* %122, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 2), align 8, !dbg !926, !tbaa !921
  call void @llvm.dbg.value(metadata i8* %110, metadata !787, metadata !DIExpression()), !dbg !922
  %123 = icmp eq i32 %84, 0, !dbg !928
  %124 = select i1 %123, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i64 0, i64 0)
  call void @llvm.dbg.value(metadata i8* %124, metadata !793, metadata !DIExpression()), !dbg !922
  call void @llvm.dbg.value(metadata i8* undef, metadata !792, metadata !DIExpression()), !dbg !922
  %125 = load i1, i1* @print_ls_colors, align 1, !dbg !930
  br i1 %125, label %130, label %126, !dbg !932

126:                                              ; preds = %118
  %127 = select i1 %123, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25, i64 0, i64 0)
  call void @llvm.dbg.value(metadata i8* %127, metadata !792, metadata !DIExpression()), !dbg !922
  %128 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !933, !tbaa !554
  %129 = tail call i32 @fputs_unlocked(i8* noundef %127, %struct._IO_FILE* noundef %128), !dbg !933
  br label %130, !dbg !933

130:                                              ; preds = %126, %118
  %131 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !934, !tbaa !554
  %132 = tail call i64 @fwrite_unlocked(i8* noundef %110, i64 noundef 1, i64 noundef %113, %struct._IO_FILE* noundef %131), !dbg !934
  %133 = load i1, i1* @print_ls_colors, align 1, !dbg !935
  br i1 %133, label %137, label %134, !dbg !937

134:                                              ; preds = %130
  %135 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !938, !tbaa !554
  %136 = tail call i32 @fputs_unlocked(i8* noundef %124, %struct._IO_FILE* noundef %135), !dbg !938
  br label %137, !dbg !938

137:                                              ; preds = %56, %87, %103, %130, %134, %107
  %138 = phi i32 [ 1, %107 ], [ 0, %134 ], [ 0, %130 ], [ 1, %103 ], [ 1, %87 ], [ 0, %56 ]
  call void @llvm.dbg.value(metadata i1 undef, metadata !772, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !798
  ret i32 %138, !dbg !939
}

; Function Attrs: nounwind
declare !dbg !940 i8* @bindtextdomain(i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !943 i8* @textdomain(i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !944 i32 @atexit(void ()* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !947 i32 @getopt_long(i32 noundef, i8** noundef, i8* noundef, %struct.option* noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !953 noundef i32 @puts(i8* nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64 noundef) #13

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(i8* nocapture noundef) #14

; Function Attrs: nounwind uwtable
define internal fastcc i1 @dc_parse_stream(%struct._IO_FILE* noundef %0, i8* noundef %1) unnamed_addr #12 !dbg !27 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !97, metadata !DIExpression()), !dbg !956
  call void @llvm.dbg.value(metadata i8* %1, metadata !98, metadata !DIExpression()), !dbg !956
  call void @llvm.dbg.value(metadata i64 0, metadata !99, metadata !DIExpression()), !dbg !956
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5616 x i8], [5616 x i8]* @G_line, i64 0, i64 0), metadata !103, metadata !DIExpression()), !dbg !956
  %5 = bitcast i8** %3 to i8*, !dbg !957
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #34, !dbg !957
  call void @llvm.dbg.value(metadata i8* null, metadata !104, metadata !DIExpression()), !dbg !956
  store i8* null, i8** %3, align 8, !dbg !958, !tbaa !554
  %6 = bitcast i64* %4 to i8*, !dbg !959
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #34, !dbg !959
  call void @llvm.dbg.value(metadata i64 0, metadata !105, metadata !DIExpression()), !dbg !956
  store i64 0, i64* %4, align 8, !dbg !960, !tbaa !961
  call void @llvm.dbg.value(metadata i8 1, metadata !109, metadata !DIExpression()), !dbg !956
  call void @llvm.dbg.value(metadata i32 3, metadata !110, metadata !DIExpression()), !dbg !956
  %7 = tail call i8* @getenv(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0)) #34, !dbg !962
  call void @llvm.dbg.value(metadata i8* %7, metadata !107, metadata !DIExpression()), !dbg !956
  %8 = icmp eq i8* %7, null, !dbg !963
  br i1 %8, label %12, label %9, !dbg !965

9:                                                ; preds = %2
  %10 = load i8, i8* %7, align 1, !dbg !966, !tbaa !654
  %11 = icmp eq i8 %10, 0, !dbg !967
  br i1 %11, label %12, label %13, !dbg !968

12:                                               ; preds = %9, %2
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.72, i64 0, i64 0), metadata !107, metadata !DIExpression()), !dbg !956
  br label %13, !dbg !969

13:                                               ; preds = %12, %9
  %14 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.72, i64 0, i64 0), %12 ], [ %7, %9 ], !dbg !956
  call void @llvm.dbg.value(metadata i8* %14, metadata !107, metadata !DIExpression()), !dbg !956
  %15 = tail call i8* @getenv(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.73, i64 0, i64 0)) #34, !dbg !970
  call void @llvm.dbg.value(metadata i8* %15, metadata !108, metadata !DIExpression()), !dbg !956
  %16 = icmp eq i8* %15, null, !dbg !971
  %17 = select i1 %16, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0), i8* %15, !dbg !973
  call void @llvm.dbg.value(metadata i8* %17, metadata !108, metadata !DIExpression()), !dbg !956
  %18 = icmp eq %struct._IO_FILE* %0, null
  %19 = icmp eq i8* %1, null
  br label %20, !dbg !974

20:                                               ; preds = %160, %13
  %21 = phi i64 [ %29, %160 ], [ 0, %13 ]
  %22 = phi i8* [ %55, %160 ], [ getelementptr inbounds ([5616 x i8], [5616 x i8]* @G_line, i64 0, i64 0), %13 ]
  %23 = phi i1 [ %162, %160 ], [ true, %13 ]
  %24 = phi i32 [ %163, %160 ], [ 3, %13 ]
  br label %26, !dbg !975

25:                                               ; preds = %57, %57
  br label %26, !dbg !975

26:                                               ; preds = %20, %25
  %27 = phi i64 [ %29, %25 ], [ %21, %20 ], !dbg !956
  %28 = phi i8* [ %55, %25 ], [ %22, %20 ], !dbg !976
  call void @llvm.dbg.value(metadata i32 %24, metadata !110, metadata !DIExpression()), !dbg !956
  call void @llvm.dbg.value(metadata i8 poison, metadata !109, metadata !DIExpression()), !dbg !956
  call void @llvm.dbg.value(metadata i8* %28, metadata !103, metadata !DIExpression()), !dbg !956
  call void @llvm.dbg.value(metadata i64 %27, metadata !99, metadata !DIExpression()), !dbg !956
  %29 = add nuw nsw i64 %27, 1, !dbg !977
  call void @llvm.dbg.value(metadata i64 %29, metadata !99, metadata !DIExpression()), !dbg !956
  br i1 %18, label %48, label %30, !dbg !975

30:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8** %3, metadata !104, metadata !DIExpression(DW_OP_deref)), !dbg !956
  call void @llvm.dbg.value(metadata i64* %4, metadata !105, metadata !DIExpression(DW_OP_deref)), !dbg !956
  call void @llvm.dbg.value(metadata i8** %3, metadata !978, metadata !DIExpression()) #34, !dbg !987
  call void @llvm.dbg.value(metadata i64* %4, metadata !985, metadata !DIExpression()) #34, !dbg !987
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !986, metadata !DIExpression()) #34, !dbg !987
  %31 = call i64 @__getdelim(i8** noundef nonnull %3, i64* noundef nonnull %4, i32 noundef 10, %struct._IO_FILE* noundef nonnull %0) #34, !dbg !992
  %32 = icmp slt i64 %31, 1, !dbg !993
  br i1 %32, label %33, label %46, !dbg !994

33:                                               ; preds = %30
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !995, metadata !DIExpression()), !dbg !1000
  %34 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !1004
  %35 = load i32, i32* %34, align 8, !dbg !1004, !tbaa !1005
  %36 = and i32 %35, 32, !dbg !1007
  %37 = icmp eq i32 %36, 0, !dbg !1007
  br i1 %37, label %43, label %38, !dbg !1008

38:                                               ; preds = %33
  %39 = tail call i32* @__errno_location() #37, !dbg !1009
  %40 = load i32, i32* %39, align 4, !dbg !1009, !tbaa !645
  %41 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.74, i64 0, i64 0), i32 noundef 5) #34, !dbg !1009
  %42 = call i8* @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, i8* noundef %1) #34, !dbg !1009
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %40, i8* noundef %41, i8* noundef %42) #34, !dbg !1009
  call void @llvm.dbg.value(metadata i8 0, metadata !109, metadata !DIExpression()), !dbg !956
  br label %43, !dbg !1011

43:                                               ; preds = %38, %33
  %44 = phi i1 [ false, %38 ], [ %23, %33 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !109, metadata !DIExpression()), !dbg !956
  %45 = load i8*, i8** %3, align 8, !dbg !1012, !tbaa !554
  call void @llvm.dbg.value(metadata i8* %45, metadata !104, metadata !DIExpression()), !dbg !956
  call void @free(i8* noundef %45) #34, !dbg !1013
  br label %164, !dbg !1014

46:                                               ; preds = %30
  %47 = load i8*, i8** %3, align 8, !dbg !1015, !tbaa !554
  call void @llvm.dbg.value(metadata i8* %47, metadata !104, metadata !DIExpression()), !dbg !956
  call void @llvm.dbg.value(metadata i8* %47, metadata !106, metadata !DIExpression()), !dbg !956
  br label %54, !dbg !1016

48:                                               ; preds = %26
  %49 = icmp eq i8* %28, getelementptr inbounds ([5616 x i8], [5616 x i8]* @G_line, i64 1, i64 0), !dbg !1017
  br i1 %49, label %164, label %50, !dbg !1020

50:                                               ; preds = %48
  call void @llvm.dbg.value(metadata i8* %28, metadata !106, metadata !DIExpression()), !dbg !956
  %51 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %28) #35, !dbg !1021
  %52 = add i64 %51, 1, !dbg !1022
  %53 = getelementptr inbounds i8, i8* %28, i64 %52, !dbg !1023
  call void @llvm.dbg.value(metadata i8* %53, metadata !103, metadata !DIExpression()), !dbg !956
  br label %54

54:                                               ; preds = %50, %46
  %55 = phi i8* [ %28, %46 ], [ %53, %50 ], !dbg !956
  %56 = phi i8* [ %47, %46 ], [ %28, %50 ], !dbg !1024
  call void @llvm.dbg.value(metadata i8* %56, metadata !106, metadata !DIExpression()), !dbg !956
  call void @llvm.dbg.value(metadata i8* %55, metadata !103, metadata !DIExpression()), !dbg !956
  call void @llvm.dbg.value(metadata i8* %56, metadata !1025, metadata !DIExpression()) #34, !dbg !1035
  call void @llvm.dbg.value(metadata i8** undef, metadata !1030, metadata !DIExpression()) #34, !dbg !1035
  call void @llvm.dbg.value(metadata i8** undef, metadata !1031, metadata !DIExpression()) #34, !dbg !1035
  call void @llvm.dbg.value(metadata i8* %56, metadata !1032, metadata !DIExpression()) #34, !dbg !1035
  br label %57, !dbg !1037

57:                                               ; preds = %60, %54
  %58 = phi i8* [ %56, %54 ], [ %61, %60 ], !dbg !1039
  call void @llvm.dbg.value(metadata i8* %58, metadata !1032, metadata !DIExpression()) #34, !dbg !1035
  %59 = load i8, i8* %58, align 1, !dbg !1040, !tbaa !654
  call void @llvm.dbg.value(metadata i8 %59, metadata !1042, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #34, !dbg !1048
  switch i8 %59, label %62 [
    i8 32, label %60
    i8 9, label %60
    i8 10, label %60
    i8 11, label %60
    i8 12, label %60
    i8 13, label %60
    i8 0, label %25
    i8 35, label %25
  ], !dbg !1050

60:                                               ; preds = %57, %57, %57, %57, %57, %57
  %61 = getelementptr inbounds i8, i8* %58, i64 1, !dbg !1051
  call void @llvm.dbg.value(metadata i8* %61, metadata !1032, metadata !DIExpression()) #34, !dbg !1035
  br label %57, !dbg !1052, !llvm.loop !1053

62:                                               ; preds = %57, %65
  %63 = phi i8 [ %67, %65 ], [ %59, %57 ], !dbg !1056
  %64 = phi i8* [ %66, %65 ], [ %58, %57 ], !dbg !1035
  call void @llvm.dbg.value(metadata i8* %64, metadata !1032, metadata !DIExpression()) #34, !dbg !1035
  call void @llvm.dbg.value(metadata i8 %63, metadata !1042, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #34, !dbg !1057
  switch i8 %63, label %65 [
    i8 32, label %68
    i8 9, label %68
    i8 10, label %68
    i8 11, label %68
    i8 12, label %68
    i8 13, label %68
    i8 0, label %68
  ], !dbg !1059

65:                                               ; preds = %62
  %66 = getelementptr inbounds i8, i8* %64, i64 1, !dbg !1060
  call void @llvm.dbg.value(metadata i8* %66, metadata !1032, metadata !DIExpression()) #34, !dbg !1035
  %67 = load i8, i8* %66, align 1, !dbg !1056, !tbaa !654
  br label %62, !dbg !1062, !llvm.loop !1063

68:                                               ; preds = %62, %62, %62, %62, %62, %62, %62
  %69 = ptrtoint i8* %64 to i64, !dbg !1065
  %70 = ptrtoint i8* %58 to i64, !dbg !1065
  %71 = sub i64 %69, %70, !dbg !1065
  %72 = call noalias nonnull i8* @ximemdup0(i8* noundef nonnull %58, i64 noundef %71) #34, !dbg !1066
  %73 = load i8, i8* %64, align 1, !dbg !1067, !tbaa !654
  %74 = icmp eq i8 %73, 0, !dbg !1069
  br i1 %74, label %92, label %75, !dbg !1070

75:                                               ; preds = %68, %79
  %76 = phi i8* [ %77, %79 ], [ %64, %68 ], !dbg !1035
  call void @llvm.dbg.value(metadata i8* %76, metadata !1032, metadata !DIExpression()) #34, !dbg !1035
  %77 = getelementptr inbounds i8, i8* %76, i64 1, !dbg !1071
  call void @llvm.dbg.value(metadata i8* %77, metadata !1032, metadata !DIExpression()) #34, !dbg !1035
  %78 = load i8, i8* %77, align 1, !dbg !1073, !tbaa !654
  call void @llvm.dbg.value(metadata i8 %78, metadata !1042, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #34, !dbg !1074
  switch i8 %78, label %80 [
    i8 32, label %79
    i8 9, label %79
    i8 10, label %79
    i8 11, label %79
    i8 12, label %79
    i8 13, label %79
    i8 0, label %92
    i8 35, label %92
  ], !dbg !1076

79:                                               ; preds = %75, %75, %75, %75, %75, %75
  br label %75, !dbg !1035, !llvm.loop !1077

80:                                               ; preds = %75, %84
  %81 = phi i8 [ %86, %84 ], [ %78, %75 ], !dbg !1080
  %82 = phi i8* [ %85, %84 ], [ %77, %75 ], !dbg !1035
  call void @llvm.dbg.value(metadata i8* %82, metadata !1032, metadata !DIExpression()) #34, !dbg !1035
  switch i8 %81, label %84 [
    i8 0, label %83
    i8 35, label %83
  ], !dbg !1081

83:                                               ; preds = %80, %80
  br label %87, !dbg !1082

84:                                               ; preds = %80
  %85 = getelementptr inbounds i8, i8* %82, i64 1, !dbg !1084
  call void @llvm.dbg.value(metadata i8* %85, metadata !1032, metadata !DIExpression()) #34, !dbg !1035
  %86 = load i8, i8* %85, align 1, !dbg !1080, !tbaa !654
  br label %80, !dbg !1085, !llvm.loop !1086

87:                                               ; preds = %91, %83
  %88 = phi i8* [ %82, %83 ], [ %89, %91 ]
  %89 = getelementptr inbounds i8, i8* %88, i64 -1, !dbg !1088
  call void @llvm.dbg.value(metadata i8* %89, metadata !1032, metadata !DIExpression()) #34, !dbg !1035
  %90 = load i8, i8* %89, align 1, !dbg !1089, !tbaa !654
  call void @llvm.dbg.value(metadata i8 %90, metadata !1042, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #34, !dbg !1091
  switch i8 %90, label %95 [
    i8 32, label %91
    i8 9, label %91
    i8 10, label %91
    i8 11, label %91
    i8 12, label %91
    i8 13, label %91
  ], !dbg !1093

91:                                               ; preds = %87, %87, %87, %87, %87, %87
  br label %87, !dbg !1088, !llvm.loop !1094

92:                                               ; preds = %75, %75, %68
  call void @llvm.dbg.value(metadata i8* undef, metadata !111, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i8* undef, metadata !113, metadata !DIExpression()), !dbg !1096
  %93 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.75, i64 0, i64 0), i32 noundef 5) #34, !dbg !1097
  %94 = call i8* @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, i8* noundef %1) #34, !dbg !1097
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %93, i8* noundef %94, i64 noundef %29) #34, !dbg !1097
  call void @llvm.dbg.value(metadata i8 0, metadata !109, metadata !DIExpression()), !dbg !956
  br label %160, !dbg !1100, !llvm.loop !1101

95:                                               ; preds = %87
  call void @llvm.dbg.value(metadata i8* %88, metadata !1032, metadata !DIExpression()) #34, !dbg !1035
  %96 = ptrtoint i8* %88 to i64, !dbg !1103
  %97 = ptrtoint i8* %77 to i64, !dbg !1103
  %98 = sub i64 %96, %97, !dbg !1103
  %99 = call noalias nonnull i8* @ximemdup0(i8* noundef nonnull %77, i64 noundef %98) #34, !dbg !1104
  call void @llvm.dbg.value(metadata i8* undef, metadata !111, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i8* undef, metadata !113, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i8 0, metadata !114, metadata !DIExpression()), !dbg !1096
  %100 = call i32 @c_strcasecmp(i8* noundef nonnull %72, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0)) #35, !dbg !1105
  %101 = icmp eq i32 %100, 0, !dbg !1106
  br i1 %101, label %102, label %108, !dbg !1107

102:                                              ; preds = %95
  %103 = icmp eq i32 %24, 2, !dbg !1108
  br i1 %103, label %157, label %104, !dbg !1111

104:                                              ; preds = %102
  %105 = call i32 @fnmatch(i8* noundef nonnull %99, i8* noundef %14, i32 noundef 0) #34, !dbg !1112
  %106 = icmp eq i32 %105, 0, !dbg !1113
  %107 = select i1 %106, i32 2, i32 0, !dbg !1112
  call void @llvm.dbg.value(metadata i32 %107, metadata !110, metadata !DIExpression()), !dbg !956
  br label %157, !dbg !1114

108:                                              ; preds = %95
  %109 = call i32 @c_strcasecmp(i8* noundef nonnull %72, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.73, i64 0, i64 0)) #35, !dbg !1115
  %110 = icmp eq i32 %109, 0, !dbg !1116
  %111 = icmp eq i32 %24, 2, !dbg !1117
  br i1 %110, label %112, label %117, !dbg !1118

112:                                              ; preds = %108
  br i1 %111, label %157, label %113, !dbg !1119

113:                                              ; preds = %112
  %114 = call i32 @fnmatch(i8* noundef nonnull %99, i8* noundef %17, i32 noundef 0) #34, !dbg !1121
  %115 = icmp eq i32 %114, 0, !dbg !1123
  %116 = select i1 %115, i32 2, i32 0, !dbg !1121
  call void @llvm.dbg.value(metadata i32 %116, metadata !110, metadata !DIExpression()), !dbg !956
  br label %157, !dbg !1124

117:                                              ; preds = %108
  %118 = select i1 %111, i32 1, i32 %24, !dbg !1125
  call void @llvm.dbg.value(metadata i32 %118, metadata !110, metadata !DIExpression()), !dbg !956
  %119 = icmp eq i32 %118, 0, !dbg !1126
  br i1 %119, label %157, label %120, !dbg !1127

120:                                              ; preds = %117
  %121 = load i8, i8* %72, align 1, !dbg !1128, !tbaa !654
  switch i8 %121, label %124 [
    i8 46, label %122
    i8 42, label %123
  ], !dbg !1129

122:                                              ; preds = %120
  call fastcc void @append_entry(i8 noundef 42, i8* noundef nonnull %72, i8* noundef nonnull %99), !dbg !1130
  br label %157, !dbg !1130

123:                                              ; preds = %120
  call fastcc void @append_entry(i8 noundef 0, i8* noundef nonnull %72, i8* noundef nonnull %99), !dbg !1131
  br label %157, !dbg !1131

124:                                              ; preds = %120
  %125 = call i32 @c_strcasecmp(i8* noundef nonnull %72, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.76, i64 0, i64 0)) #35, !dbg !1132
  %126 = icmp eq i32 %125, 0, !dbg !1133
  br i1 %126, label %157, label %127, !dbg !1134

127:                                              ; preds = %124
  %128 = call i32 @c_strcasecmp(i8* noundef nonnull %72, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.77, i64 0, i64 0)) #35, !dbg !1135
  %129 = icmp eq i32 %128, 0, !dbg !1136
  br i1 %129, label %157, label %130, !dbg !1137

130:                                              ; preds = %127
  %131 = call i32 @c_strcasecmp(i8* noundef nonnull %72, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.78, i64 0, i64 0)) #35, !dbg !1138
  %132 = icmp eq i32 %131, 0, !dbg !1139
  br i1 %132, label %157, label %133, !dbg !1140

133:                                              ; preds = %130, %139
  %134 = phi i64 [ %140, %139 ], [ 0, %130 ]
  call void @llvm.dbg.value(metadata i64 %134, metadata !115, metadata !DIExpression()), !dbg !1141
  %135 = getelementptr inbounds [38 x i8*], [38 x i8*]* @slack_codes, i64 0, i64 %134, !dbg !1142
  %136 = load i8*, i8** %135, align 8, !dbg !1142, !tbaa !554
  call void @llvm.dbg.value(metadata i8* undef, metadata !111, metadata !DIExpression()), !dbg !1096
  %137 = call i32 @c_strcasecmp(i8* noundef nonnull %72, i8* noundef %136) #35, !dbg !1145
  %138 = icmp eq i32 %137, 0, !dbg !1147
  br i1 %138, label %142, label %139, !dbg !1148

139:                                              ; preds = %133
  %140 = add nuw nsw i64 %134, 1, !dbg !1149
  call void @llvm.dbg.value(metadata i64 %140, metadata !115, metadata !DIExpression()), !dbg !1141
  %141 = icmp eq i64 %140, 37, !dbg !1150
  br i1 %141, label %146, label %133, !dbg !1151, !llvm.loop !1152

142:                                              ; preds = %133
  %143 = and i64 %134, 4294967295, !dbg !1142
  %144 = getelementptr inbounds [38 x i8*], [38 x i8*]* @ls_codes, i64 0, i64 %143, !dbg !1154
  %145 = load i8*, i8** %144, align 8, !dbg !1154, !tbaa !554
  call void @llvm.dbg.value(metadata i8* undef, metadata !113, metadata !DIExpression()), !dbg !1096
  call fastcc void @append_entry(i8 noundef 0, i8* noundef %145, i8* noundef nonnull %99), !dbg !1156
  br label %157, !dbg !1156

146:                                              ; preds = %139
  call void @llvm.dbg.value(metadata i8 poison, metadata !114, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i32 %118, metadata !110, metadata !DIExpression()), !dbg !956
  %147 = add i32 %118, -1
  %148 = icmp ult i32 %147, 2
  br i1 %148, label %149, label %157, !dbg !1157

149:                                              ; preds = %146
  %150 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.79, i64 0, i64 0), i32 noundef 5) #34, !dbg !1159
  br i1 %19, label %153, label %151, !dbg !1159

151:                                              ; preds = %149
  %152 = call i8* @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, i8* noundef nonnull %1) #34, !dbg !1159
  br label %155, !dbg !1159

153:                                              ; preds = %149
  %154 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.80, i64 0, i64 0), i32 noundef 5) #34, !dbg !1159
  br label %155, !dbg !1159

155:                                              ; preds = %153, %151
  %156 = phi i8* [ %152, %151 ], [ %154, %153 ], !dbg !1159
  call void @llvm.dbg.value(metadata i8* undef, metadata !111, metadata !DIExpression()), !dbg !1096
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %150, i8* noundef %156, i64 noundef %29, i8* noundef nonnull %72) #34, !dbg !1159
  call void @llvm.dbg.value(metadata i8 0, metadata !109, metadata !DIExpression()), !dbg !956
  br label %157, !dbg !1161

157:                                              ; preds = %117, %142, %130, %127, %124, %123, %122, %112, %113, %102, %104, %155, %146
  %158 = phi i32 [ %118, %155 ], [ %118, %146 ], [ 0, %117 ], [ %118, %142 ], [ %118, %130 ], [ %118, %127 ], [ %118, %124 ], [ %118, %123 ], [ %118, %122 ], [ 2, %112 ], [ %116, %113 ], [ 2, %102 ], [ %107, %104 ]
  %159 = phi i1 [ false, %155 ], [ %23, %146 ], [ %23, %117 ], [ %23, %142 ], [ %23, %130 ], [ %23, %127 ], [ %23, %124 ], [ %23, %123 ], [ %23, %122 ], [ %23, %112 ], [ %23, %113 ], [ %23, %102 ], [ %23, %104 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !109, metadata !DIExpression()), !dbg !956
  call void @llvm.dbg.value(metadata i8* undef, metadata !111, metadata !DIExpression()), !dbg !1096
  call void @free(i8* noundef nonnull %72) #34, !dbg !1162
  call void @llvm.dbg.value(metadata i8* undef, metadata !113, metadata !DIExpression()), !dbg !1096
  br label %160, !dbg !1102

160:                                              ; preds = %92, %157
  %161 = phi i8* [ %99, %157 ], [ %72, %92 ]
  %162 = phi i1 [ %159, %157 ], [ false, %92 ]
  %163 = phi i32 [ %158, %157 ], [ %24, %92 ]
  call void @free(i8* noundef nonnull %161) #34, !dbg !1096
  br label %20

164:                                              ; preds = %48, %43
  %165 = phi i1 [ %44, %43 ], [ %23, %48 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #34, !dbg !1163
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #34, !dbg !1163
  ret i1 %165, !dbg !1164
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #11

declare i64 @__getdelim(i8** noundef, i64* noundef, i32 noundef, %struct._IO_FILE* noundef) local_unnamed_addr #3

declare !dbg !1165 i32 @fnmatch(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @append_entry(i8 noundef %0, i8* nocapture noundef readonly %1, i8* nocapture noundef readonly %2) unnamed_addr #12 !dbg !1169 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1173, metadata !DIExpression()), !dbg !1199
  call void @llvm.dbg.value(metadata i8* %1, metadata !1174, metadata !DIExpression()), !dbg !1199
  call void @llvm.dbg.value(metadata i8* %2, metadata !1175, metadata !DIExpression()), !dbg !1199
  %4 = load i1, i1* @print_ls_colors, align 1, !dbg !1200
  br i1 %4, label %5, label %14, !dbg !1201

5:                                                ; preds = %3
  tail call fastcc void @append_quoted(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.81, i64 0, i64 0)), !dbg !1202
  tail call fastcc void @append_quoted(i8* noundef %2), !dbg !1203
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, metadata !1176, metadata !DIExpression()), !dbg !1204
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, metadata !1180, metadata !DIExpression()), !dbg !1205
  %6 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 4), align 8, !dbg !1206, !tbaa !1207
  %7 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1206, !tbaa !918
  %8 = icmp eq i8* %6, %7, !dbg !1208
  br i1 %8, label %9, label %11, !dbg !1209

9:                                                ; preds = %5
  tail call void @rpl_obstack_newchunk(%struct.obstack* noundef nonnull @lsc_obstack, i64 noundef 1) #34, !dbg !1208
  %10 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1209, !tbaa !918
  br label %11, !dbg !1208

11:                                               ; preds = %9, %5
  %12 = phi i8* [ %10, %9 ], [ %7, %5 ], !dbg !1209
  %13 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !1209
  store i8* %13, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1209, !tbaa !918
  store i8 109, i8* %12, align 1, !dbg !1209, !tbaa !654
  br label %14, !dbg !1210

14:                                               ; preds = %11, %3
  %15 = icmp eq i8 %0, 0, !dbg !1211
  br i1 %15, label %25, label %16, !dbg !1212

16:                                               ; preds = %14
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, metadata !1183, metadata !DIExpression()), !dbg !1213
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, metadata !1186, metadata !DIExpression()), !dbg !1214
  %17 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 4), align 8, !dbg !1215, !tbaa !1207
  %18 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1215, !tbaa !918
  %19 = icmp eq i8* %17, %18, !dbg !1216
  br i1 %19, label %20, label %22, !dbg !1217

20:                                               ; preds = %16
  tail call void @rpl_obstack_newchunk(%struct.obstack* noundef nonnull @lsc_obstack, i64 noundef 1) #34, !dbg !1216
  %21 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1217, !tbaa !918
  br label %22, !dbg !1216

22:                                               ; preds = %20, %16
  %23 = phi i8* [ %21, %20 ], [ %18, %16 ], !dbg !1217
  %24 = getelementptr inbounds i8, i8* %23, i64 1, !dbg !1217
  store i8* %24, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1217, !tbaa !918
  store i8 %0, i8* %23, align 1, !dbg !1217, !tbaa !654
  br label %25, !dbg !1218

25:                                               ; preds = %22, %14
  tail call fastcc void @append_quoted(i8* noundef %1), !dbg !1219
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, metadata !1189, metadata !DIExpression()), !dbg !1220
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, metadata !1191, metadata !DIExpression()), !dbg !1221
  %26 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 4), align 8, !dbg !1222, !tbaa !1207
  %27 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1222, !tbaa !918
  %28 = icmp eq i8* %26, %27, !dbg !1223
  br i1 %28, label %29, label %31, !dbg !1224

29:                                               ; preds = %25
  tail call void @rpl_obstack_newchunk(%struct.obstack* noundef nonnull @lsc_obstack, i64 noundef 1) #34, !dbg !1223
  %30 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1224, !tbaa !918
  br label %31, !dbg !1223

31:                                               ; preds = %29, %25
  %32 = phi i8* [ %30, %29 ], [ %27, %25 ], !dbg !1224
  %33 = load i1, i1* @print_ls_colors, align 1, !dbg !1224
  %34 = select i1 %33, i8 9, i8 61, !dbg !1224
  %35 = getelementptr inbounds i8, i8* %32, i64 1, !dbg !1224
  store i8* %35, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1224, !tbaa !918
  store i8 %34, i8* %32, align 1, !dbg !1224, !tbaa !654
  tail call fastcc void @append_quoted(i8* noundef %2), !dbg !1225
  %36 = load i1, i1* @print_ls_colors, align 1, !dbg !1226
  br i1 %36, label %37, label %38, !dbg !1228

37:                                               ; preds = %31
  tail call fastcc void @append_quoted(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i64 0, i64 0)), !dbg !1229
  br label %38, !dbg !1229

38:                                               ; preds = %37, %31
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, metadata !1194, metadata !DIExpression()), !dbg !1230
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, metadata !1196, metadata !DIExpression()), !dbg !1231
  %39 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 4), align 8, !dbg !1232, !tbaa !1207
  %40 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1232, !tbaa !918
  %41 = icmp eq i8* %39, %40, !dbg !1233
  br i1 %41, label %42, label %44, !dbg !1234

42:                                               ; preds = %38
  tail call void @rpl_obstack_newchunk(%struct.obstack* noundef nonnull @lsc_obstack, i64 noundef 1) #34, !dbg !1233
  %43 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1234, !tbaa !918
  br label %44, !dbg !1233

44:                                               ; preds = %42, %38
  %45 = phi i8* [ %43, %42 ], [ %40, %38 ], !dbg !1234
  %46 = load i1, i1* @print_ls_colors, align 1, !dbg !1234
  %47 = select i1 %46, i8 10, i8 58, !dbg !1234
  %48 = getelementptr inbounds i8, i8* %45, i64 1, !dbg !1234
  store i8* %48, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1234, !tbaa !918
  store i8 %47, i8* %45, align 1, !dbg !1234, !tbaa !654
  ret void, !dbg !1235
}

; Function Attrs: nounwind uwtable
define internal fastcc void @append_quoted(i8* nocapture noundef readonly %0) unnamed_addr #12 !dbg !1236 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1238, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i8 1, metadata !1239, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i8 poison, metadata !1239, metadata !DIExpression()), !dbg !1269
  %2 = load i8, i8* %0, align 1, !dbg !1270, !tbaa !654
  %3 = icmp eq i8 %2, 0, !dbg !1271
  br i1 %3, label %61, label %4, !dbg !1272

4:                                                ; preds = %1, %54
  %5 = phi i8 [ %59, %54 ], [ %2, %1 ]
  %6 = phi i8* [ %58, %54 ], [ %0, %1 ]
  %7 = phi i1 [ %48, %54 ], [ true, %1 ]
  call void @llvm.dbg.value(metadata i8* %6, metadata !1238, metadata !DIExpression()), !dbg !1269
  %8 = load i1, i1* @print_ls_colors, align 1, !dbg !1273
  br i1 %8, label %47, label %9, !dbg !1274

9:                                                ; preds = %4
  switch i8 %5, label %47 [
    i8 39, label %10
    i8 92, label %35
    i8 94, label %35
    i8 58, label %37
    i8 61, label %37
  ], !dbg !1275

10:                                               ; preds = %9
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, metadata !1240, metadata !DIExpression()), !dbg !1276
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, metadata !1245, metadata !DIExpression()), !dbg !1277
  %11 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 4), align 8, !dbg !1278, !tbaa !1207
  %12 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1278, !tbaa !918
  %13 = icmp eq i8* %11, %12, !dbg !1279
  br i1 %13, label %14, label %16, !dbg !1280

14:                                               ; preds = %10
  tail call void @rpl_obstack_newchunk(%struct.obstack* noundef nonnull @lsc_obstack, i64 noundef 1) #34, !dbg !1279
  %15 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1280, !tbaa !918
  br label %16, !dbg !1279

16:                                               ; preds = %14, %10
  %17 = phi i8* [ %15, %14 ], [ %12, %10 ], !dbg !1280
  %18 = getelementptr inbounds i8, i8* %17, i64 1, !dbg !1280
  store i8* %18, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1280, !tbaa !918
  store i8 39, i8* %17, align 1, !dbg !1280, !tbaa !654
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, metadata !1248, metadata !DIExpression()), !dbg !1281
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, metadata !1250, metadata !DIExpression()), !dbg !1282
  %19 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 4), align 8, !dbg !1283, !tbaa !1207
  %20 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1283, !tbaa !918
  %21 = icmp eq i8* %19, %20, !dbg !1284
  br i1 %21, label %22, label %24, !dbg !1285

22:                                               ; preds = %16
  tail call void @rpl_obstack_newchunk(%struct.obstack* noundef nonnull @lsc_obstack, i64 noundef 1) #34, !dbg !1284
  %23 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1285, !tbaa !918
  br label %24, !dbg !1284

24:                                               ; preds = %22, %16
  %25 = phi i8* [ %23, %22 ], [ %20, %16 ], !dbg !1285
  %26 = getelementptr inbounds i8, i8* %25, i64 1, !dbg !1285
  store i8* %26, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1285, !tbaa !918
  store i8 92, i8* %25, align 1, !dbg !1285, !tbaa !654
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, metadata !1253, metadata !DIExpression()), !dbg !1286
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, metadata !1255, metadata !DIExpression()), !dbg !1287
  %27 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 4), align 8, !dbg !1288, !tbaa !1207
  %28 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1288, !tbaa !918
  %29 = icmp eq i8* %27, %28, !dbg !1289
  br i1 %29, label %30, label %32, !dbg !1290

30:                                               ; preds = %24
  tail call void @rpl_obstack_newchunk(%struct.obstack* noundef nonnull @lsc_obstack, i64 noundef 1) #34, !dbg !1289
  %31 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1290, !tbaa !918
  br label %32, !dbg !1289

32:                                               ; preds = %30, %24
  %33 = phi i8* [ %31, %30 ], [ %28, %24 ], !dbg !1290
  %34 = getelementptr inbounds i8, i8* %33, i64 1, !dbg !1290
  store i8* %34, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1290, !tbaa !918
  store i8 39, i8* %33, align 1, !dbg !1290, !tbaa !654
  call void @llvm.dbg.value(metadata i8 1, metadata !1239, metadata !DIExpression()), !dbg !1269
  br label %47, !dbg !1291

35:                                               ; preds = %9, %9
  %36 = xor i1 %7, true, !dbg !1292
  call void @llvm.dbg.value(metadata i1 %36, metadata !1239, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1269
  br label %47, !dbg !1293

37:                                               ; preds = %9, %9
  br i1 %7, label %38, label %47, !dbg !1294

38:                                               ; preds = %37
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, metadata !1258, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, metadata !1261, metadata !DIExpression()), !dbg !1296
  %39 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 4), align 8, !dbg !1297, !tbaa !1207
  %40 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1297, !tbaa !918
  %41 = icmp eq i8* %39, %40, !dbg !1298
  br i1 %41, label %42, label %44, !dbg !1299

42:                                               ; preds = %38
  tail call void @rpl_obstack_newchunk(%struct.obstack* noundef nonnull @lsc_obstack, i64 noundef 1) #34, !dbg !1298
  %43 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1299, !tbaa !918
  br label %44, !dbg !1298

44:                                               ; preds = %42, %38
  %45 = phi i8* [ %43, %42 ], [ %40, %38 ], !dbg !1299
  %46 = getelementptr inbounds i8, i8* %45, i64 1, !dbg !1299
  store i8* %46, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1299, !tbaa !918
  store i8 92, i8* %45, align 1, !dbg !1299, !tbaa !654
  br label %47, !dbg !1300

47:                                               ; preds = %9, %44, %37, %32, %35, %4
  %48 = phi i1 [ %7, %4 ], [ %36, %35 ], [ true, %32 ], [ true, %37 ], [ true, %44 ], [ true, %9 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1239, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, metadata !1264, metadata !DIExpression()), !dbg !1301
  call void @llvm.dbg.value(metadata %struct.obstack* @lsc_obstack, metadata !1266, metadata !DIExpression()), !dbg !1302
  %49 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 4), align 8, !dbg !1303, !tbaa !1207
  %50 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1303, !tbaa !918
  %51 = icmp eq i8* %49, %50, !dbg !1304
  br i1 %51, label %52, label %54, !dbg !1305

52:                                               ; preds = %47
  tail call void @rpl_obstack_newchunk(%struct.obstack* noundef nonnull @lsc_obstack, i64 noundef 1) #34, !dbg !1304
  %53 = load i8*, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1305, !tbaa !918
  br label %54, !dbg !1304

54:                                               ; preds = %52, %47
  %55 = phi i8* [ %53, %52 ], [ %50, %47 ], !dbg !1305
  %56 = load i8, i8* %6, align 1, !dbg !1305, !tbaa !654
  %57 = getelementptr inbounds i8, i8* %55, i64 1, !dbg !1305
  store i8* %57, i8** getelementptr inbounds (%struct.obstack, %struct.obstack* @lsc_obstack, i64 0, i32 3), align 8, !dbg !1305, !tbaa !918
  store i8 %56, i8* %55, align 1, !dbg !1305, !tbaa !654
  %58 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1306
  call void @llvm.dbg.value(metadata i8* %58, metadata !1238, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata i8 poison, metadata !1239, metadata !DIExpression()), !dbg !1269
  %59 = load i8, i8* %58, align 1, !dbg !1270, !tbaa !654
  %60 = icmp eq i8 %59, 0, !dbg !1271
  br i1 %60, label %61, label %4, !dbg !1272, !llvm.loop !1307

61:                                               ; preds = %54, %1
  ret void, !dbg !1309
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i8* @last_component(i8* noundef readonly %0) local_unnamed_addr #15 !dbg !1310 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1312, metadata !DIExpression()), !dbg !1317
  call void @llvm.dbg.value(metadata i8* %0, metadata !1313, metadata !DIExpression()), !dbg !1317
  br label %2, !dbg !1318

2:                                                ; preds = %2, %1
  %3 = phi i8* [ %0, %1 ], [ %6, %2 ], !dbg !1317
  call void @llvm.dbg.value(metadata i8* %3, metadata !1313, metadata !DIExpression()), !dbg !1317
  %4 = load i8, i8* %3, align 1, !dbg !1319, !tbaa !654
  %5 = icmp eq i8 %4, 47, !dbg !1319
  %6 = getelementptr inbounds i8, i8* %3, i64 1, !dbg !1320
  call void @llvm.dbg.value(metadata i8* %6, metadata !1313, metadata !DIExpression()), !dbg !1317
  br i1 %5, label %2, label %7, !dbg !1318, !llvm.loop !1321

7:                                                ; preds = %2, %15
  %8 = phi i8 [ %19, %15 ], [ %4, %2 ], !dbg !1322
  %9 = phi i8* [ %16, %15 ], [ %3, %2 ], !dbg !1324
  %10 = phi i1 [ %17, %15 ], [ false, %2 ]
  %11 = phi i8* [ %18, %15 ], [ %3, %2 ], !dbg !1325
  call void @llvm.dbg.value(metadata i8* %11, metadata !1315, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i8 poison, metadata !1314, metadata !DIExpression()), !dbg !1317
  call void @llvm.dbg.value(metadata i8* %9, metadata !1313, metadata !DIExpression()), !dbg !1317
  switch i8 %8, label %13 [
    i8 0, label %12
    i8 47, label %15
  ], !dbg !1326

12:                                               ; preds = %7
  ret i8* %9, !dbg !1327

13:                                               ; preds = %7
  %14 = select i1 %10, i8* %11, i8* %9, !dbg !1328
  br label %15, !dbg !1328

15:                                               ; preds = %13, %7
  %16 = phi i8* [ %9, %7 ], [ %14, %13 ], !dbg !1317
  %17 = phi i1 [ true, %7 ], [ false, %13 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1314, metadata !DIExpression()), !dbg !1317
  call void @llvm.dbg.value(metadata i8* %16, metadata !1313, metadata !DIExpression()), !dbg !1317
  %18 = getelementptr inbounds i8, i8* %11, i64 1, !dbg !1331
  call void @llvm.dbg.value(metadata i8* %18, metadata !1315, metadata !DIExpression()), !dbg !1325
  %19 = load i8, i8* %18, align 1, !dbg !1322, !tbaa !654
  br label %7, !dbg !1332, !llvm.loop !1333
}

; Function Attrs: mustprogress nofree nounwind readonly uwtable willreturn
define dso_local i64 @base_len(i8* nocapture noundef readonly %0) local_unnamed_addr #16 !dbg !1335 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1339, metadata !DIExpression()), !dbg !1342
  %2 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #35, !dbg !1343
  call void @llvm.dbg.value(metadata i64 %2, metadata !1340, metadata !DIExpression()), !dbg !1342
  %3 = icmp ne i64 %2, 0, !dbg !1345
  %4 = zext i1 %3 to i64, !dbg !1345
  br label %5, !dbg !1345

5:                                                ; preds = %8, %1
  %6 = phi i64 [ %2, %1 ], [ %9, %8 ], !dbg !1346
  call void @llvm.dbg.value(metadata i64 %6, metadata !1340, metadata !DIExpression()), !dbg !1342
  %7 = icmp ugt i64 %6, 1, !dbg !1347
  br i1 %7, label %8, label %13, !dbg !1349

8:                                                ; preds = %5
  %9 = add i64 %6, -1, !dbg !1350
  %10 = getelementptr inbounds i8, i8* %0, i64 %9, !dbg !1350
  %11 = load i8, i8* %10, align 1, !dbg !1350, !tbaa !654
  %12 = icmp eq i8 %11, 47, !dbg !1350
  br i1 %12, label %5, label %13, !dbg !1351, !llvm.loop !1352

13:                                               ; preds = %5, %8
  %14 = phi i64 [ %4, %5 ], [ %6, %8 ], !dbg !1346
  call void @llvm.dbg.value(metadata i64 0, metadata !1341, metadata !DIExpression()), !dbg !1342
  ret i64 %14, !dbg !1354
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @c_strcasecmp(i8* noundef readonly %0, i8* noundef readonly %1) local_unnamed_addr #15 !dbg !1355 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1359, metadata !DIExpression()), !dbg !1368
  call void @llvm.dbg.value(metadata i8* %1, metadata !1360, metadata !DIExpression()), !dbg !1368
  call void @llvm.dbg.value(metadata i8* %0, metadata !1361, metadata !DIExpression()), !dbg !1368
  call void @llvm.dbg.value(metadata i8* %1, metadata !1362, metadata !DIExpression()), !dbg !1368
  %3 = icmp eq i8* %0, %1, !dbg !1369
  br i1 %3, label %48, label %4, !dbg !1371

4:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %0, metadata !1361, metadata !DIExpression()), !dbg !1368
  call void @llvm.dbg.value(metadata i8* %1, metadata !1362, metadata !DIExpression()), !dbg !1368
  %5 = load i8, i8* %0, align 1, !dbg !1372, !tbaa !654
  %6 = zext i8 %5 to i32, !dbg !1372
  call void @llvm.dbg.value(metadata i32 %6, metadata !1373, metadata !DIExpression()), !dbg !1378
  %7 = add nsw i32 %6, -65, !dbg !1380
  %8 = icmp ult i32 %7, 26, !dbg !1380
  %9 = add nuw nsw i32 %6, 32, !dbg !1380
  %10 = select i1 %8, i32 %9, i32 %6, !dbg !1380
  call void @llvm.dbg.value(metadata i32 %10, metadata !1363, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1381
  %11 = load i8, i8* %1, align 1, !dbg !1382, !tbaa !654
  %12 = zext i8 %11 to i32, !dbg !1382
  call void @llvm.dbg.value(metadata i32 %12, metadata !1373, metadata !DIExpression()), !dbg !1383
  %13 = add nsw i32 %12, -65, !dbg !1385
  %14 = icmp ult i32 %13, 26, !dbg !1385
  %15 = add nuw nsw i32 %12, 32, !dbg !1385
  %16 = select i1 %14, i32 %15, i32 %12, !dbg !1385
  call void @llvm.dbg.value(metadata i32 %16, metadata !1367, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1381
  %17 = and i32 %10, 255, !dbg !1386
  %18 = icmp ne i32 %17, 0, !dbg !1388
  %19 = and i32 %16, 255
  %20 = icmp eq i32 %17, %19
  %21 = select i1 %18, i1 %20, i1 false, !dbg !1389
  br i1 %21, label %26, label %22, !dbg !1389

22:                                               ; preds = %26, %4
  %23 = phi i32 [ %17, %4 ], [ %43, %26 ], !dbg !1386
  %24 = phi i32 [ %19, %4 ], [ %45, %26 ]
  %25 = sub nsw i32 %23, %24, !dbg !1390
  br label %48

26:                                               ; preds = %4, %26
  %27 = phi i8* [ %29, %26 ], [ %0, %4 ]
  %28 = phi i8* [ %30, %26 ], [ %1, %4 ]
  call void @llvm.dbg.value(metadata i8* %27, metadata !1361, metadata !DIExpression()), !dbg !1368
  call void @llvm.dbg.value(metadata i8* %28, metadata !1362, metadata !DIExpression()), !dbg !1368
  %29 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !1393
  call void @llvm.dbg.value(metadata i8* %29, metadata !1361, metadata !DIExpression()), !dbg !1368
  %30 = getelementptr inbounds i8, i8* %28, i64 1, !dbg !1394
  call void @llvm.dbg.value(metadata i8* %30, metadata !1362, metadata !DIExpression()), !dbg !1368
  %31 = load i8, i8* %29, align 1, !dbg !1372, !tbaa !654
  %32 = zext i8 %31 to i32, !dbg !1372
  call void @llvm.dbg.value(metadata i32 %32, metadata !1373, metadata !DIExpression()), !dbg !1378
  %33 = add nsw i32 %32, -65, !dbg !1380
  %34 = icmp ult i32 %33, 26, !dbg !1380
  %35 = add nuw nsw i32 %32, 32, !dbg !1380
  %36 = select i1 %34, i32 %35, i32 %32, !dbg !1380
  call void @llvm.dbg.value(metadata i32 %36, metadata !1363, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1381
  %37 = load i8, i8* %30, align 1, !dbg !1382, !tbaa !654
  %38 = zext i8 %37 to i32, !dbg !1382
  call void @llvm.dbg.value(metadata i32 %38, metadata !1373, metadata !DIExpression()), !dbg !1383
  %39 = add nsw i32 %38, -65, !dbg !1385
  %40 = icmp ult i32 %39, 26, !dbg !1385
  %41 = add nuw nsw i32 %38, 32, !dbg !1385
  %42 = select i1 %40, i32 %41, i32 %38, !dbg !1385
  call void @llvm.dbg.value(metadata i32 %42, metadata !1367, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1381
  %43 = and i32 %36, 255, !dbg !1386
  %44 = icmp ne i32 %43, 0, !dbg !1388
  %45 = and i32 %42, 255
  %46 = icmp eq i32 %43, %45
  %47 = select i1 %44, i1 %46, i1 false, !dbg !1389
  br i1 %47, label %26, label %22, !dbg !1389, !llvm.loop !1395

48:                                               ; preds = %22, %2
  %49 = phi i32 [ %25, %22 ], [ 0, %2 ], !dbg !1368
  ret i32 %49, !dbg !1398
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* noundef %0) local_unnamed_addr #17 !dbg !1399 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1401, metadata !DIExpression()), !dbg !1402
  store i8* %0, i8** @file_name, align 8, !dbg !1403, !tbaa !554
  ret void, !dbg !1404
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #17 !dbg !1405 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1409, metadata !DIExpression()), !dbg !1410
  store i8 %2, i8* @ignore_EPIPE, align 4, !dbg !1411, !tbaa !1412
  ret void, !dbg !1414
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #12 !dbg !1415 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1420, !tbaa !554
  %2 = tail call i32 @close_stream(%struct._IO_FILE* noundef %1) #34, !dbg !1421
  %3 = icmp eq i32 %2, 0, !dbg !1422
  br i1 %3, label %22, label %4, !dbg !1423

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 4, !dbg !1424, !tbaa !1412, !range !1425
  %6 = icmp eq i8 %5, 0, !dbg !1424
  br i1 %6, label %11, label %7, !dbg !1426

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #37, !dbg !1427
  %9 = load i32, i32* %8, align 4, !dbg !1427, !tbaa !645
  %10 = icmp eq i32 %9, 32, !dbg !1428
  br i1 %10, label %22, label %11, !dbg !1429

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.40, i64 0, i64 0), i32 noundef 5) #34, !dbg !1430
  call void @llvm.dbg.value(metadata i8* %12, metadata !1417, metadata !DIExpression()), !dbg !1431
  %13 = load i8*, i8** @file_name, align 8, !dbg !1432, !tbaa !554
  %14 = icmp eq i8* %13, null, !dbg !1432
  %15 = tail call i32* @__errno_location() #37, !dbg !1434
  %16 = load i32, i32* %15, align 4, !dbg !1434, !tbaa !645
  br i1 %14, label %19, label %17, !dbg !1435

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* noundef nonnull %13) #34, !dbg !1436
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.41, i64 0, i64 0), i8* noundef %18, i8* noundef %12) #34, !dbg !1436
  br label %20, !dbg !1436

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.42, i64 0, i64 0), i8* noundef %12) #34, !dbg !1437
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1438, !tbaa !645
  tail call void @_exit(i32 noundef %21) #36, !dbg !1439
  unreachable, !dbg !1439

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1440, !tbaa !554
  %24 = tail call i32 @close_stream(%struct._IO_FILE* noundef %23) #34, !dbg !1442
  %25 = icmp eq i32 %24, 0, !dbg !1443
  br i1 %25, label %28, label %26, !dbg !1444

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1445, !tbaa !645
  tail call void @_exit(i32 noundef %27) #36, !dbg !1446
  unreachable, !dbg !1446

28:                                               ; preds = %22
  ret void, !dbg !1447
}

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #18

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* nocapture noundef readonly %3) local_unnamed_addr #19 !dbg !1448 {
  %5 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1452, metadata !DIExpression()), !dbg !1456
  call void @llvm.dbg.value(metadata i32 %1, metadata !1453, metadata !DIExpression()), !dbg !1456
  call void @llvm.dbg.value(metadata i8* %2, metadata !1454, metadata !DIExpression()), !dbg !1456
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !1455, metadata !DIExpression()), !dbg !1457
  tail call fastcc void @flush_stdout(), !dbg !1458
  %6 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1459, !tbaa !554
  %7 = icmp eq void ()* %6, null, !dbg !1459
  br i1 %7, label %9, label %8, !dbg !1461

8:                                                ; preds = %4
  tail call void %6() #34, !dbg !1462
  br label %13, !dbg !1462

9:                                                ; preds = %4
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1463, !tbaa !554
  %11 = tail call i8* @getprogname() #35, !dbg !1463
  %12 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %10, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.146, i64 0, i64 0), i8* noundef %11) #34, !dbg !1463
  br label %13

13:                                               ; preds = %9, %8
  %14 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1465
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %14) #34, !dbg !1465
  %15 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !1465
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %14, i8* noundef nonnull align 8 dereferenceable(32) %15, i64 32, i1 false), !dbg !1465, !tbaa.struct !1466
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5), !dbg !1465
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %14) #34, !dbg !1465
  ret void, !dbg !1467
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #12 !dbg !1468 {
  call void @llvm.dbg.value(metadata i32 1, metadata !1470, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i32 1, metadata !1472, metadata !DIExpression()) #34, !dbg !1475
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #34, !dbg !1478
  %2 = icmp slt i32 %1, 0, !dbg !1479
  br i1 %2, label %6, label %3, !dbg !1480

3:                                                ; preds = %0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1481, !tbaa !554
  %5 = tail call i32 @fflush_unlocked(%struct._IO_FILE* noundef %4) #34, !dbg !1481
  br label %6, !dbg !1481

6:                                                ; preds = %3, %0
  ret void, !dbg !1482
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef nonnull %2, %"struct.std::__va_list"* nocapture noundef readonly %3) unnamed_addr #12 !dbg !1483 {
  %5 = alloca [1024 x i8], align 1
  %6 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1485, metadata !DIExpression()), !dbg !1489
  call void @llvm.dbg.value(metadata i32 %1, metadata !1486, metadata !DIExpression()), !dbg !1489
  call void @llvm.dbg.value(metadata i8* %2, metadata !1487, metadata !DIExpression()), !dbg !1489
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !1488, metadata !DIExpression()), !dbg !1490
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1491, !tbaa !554
  %8 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !1492
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %7, metadata !1493, metadata !DIExpression()) #34, !dbg !1536
  call void @llvm.dbg.value(metadata i8* %2, metadata !1534, metadata !DIExpression()) #34, !dbg !1536
  %9 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !1538
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #34, !dbg !1538, !noalias !1539
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !1538
  %10 = call i32 @__vfprintf_chk(%struct._IO_FILE* noundef %7, i32 noundef 1, i8* noundef nonnull %2, %"struct.std::__va_list"* noundef nonnull %6) #34, !dbg !1538
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #34, !dbg !1538, !noalias !1539
  %11 = load i32, i32* @error_message_count, align 4, !dbg !1543, !tbaa !645
  %12 = add i32 %11, 1, !dbg !1543
  store i32 %12, i32* @error_message_count, align 4, !dbg !1543, !tbaa !645
  %13 = icmp eq i32 %1, 0, !dbg !1544
  br i1 %13, label %24, label %14, !dbg !1546

14:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !1547, metadata !DIExpression()) #34, !dbg !1555
  %15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0, !dbg !1557
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %15) #34, !dbg !1557
  call void @llvm.dbg.declare(metadata [1024 x i8]* %5, metadata !1551, metadata !DIExpression()) #34, !dbg !1558
  %16 = call i8* @strerror_r(i32 noundef %1, i8* noundef nonnull %15, i64 noundef 1024) #34, !dbg !1559
  call void @llvm.dbg.value(metadata i8* %16, metadata !1550, metadata !DIExpression()) #34, !dbg !1555
  %17 = icmp eq i8* %16, null, !dbg !1560
  br i1 %17, label %18, label %20, !dbg !1562

18:                                               ; preds = %14
  %19 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.147, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5.148, i64 0, i64 0), i32 noundef 5) #34, !dbg !1563
  call void @llvm.dbg.value(metadata i8* %19, metadata !1550, metadata !DIExpression()) #34, !dbg !1555
  br label %20, !dbg !1564

20:                                               ; preds = %14, %18
  %21 = phi i8* [ %16, %14 ], [ %19, %18 ], !dbg !1555
  call void @llvm.dbg.value(metadata i8* %21, metadata !1550, metadata !DIExpression()) #34, !dbg !1555
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1565, !tbaa !554
  %23 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %22, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.149, i64 0, i64 0), i8* noundef %21) #34, !dbg !1565
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %15) #34, !dbg !1566
  br label %24, !dbg !1567

24:                                               ; preds = %20, %4
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1568, !tbaa !554
  call void @llvm.dbg.value(metadata i32 10, metadata !1569, metadata !DIExpression()) #34, !dbg !1575
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %25, metadata !1574, metadata !DIExpression()) #34, !dbg !1575
  %26 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 5, !dbg !1577
  %27 = load i8*, i8** %26, align 8, !dbg !1577, !tbaa !1578
  %28 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 6, !dbg !1577
  %29 = load i8*, i8** %28, align 8, !dbg !1577, !tbaa !1579
  %30 = icmp ult i8* %27, %29, !dbg !1577
  br i1 %30, label %33, label %31, !dbg !1577, !prof !1580

31:                                               ; preds = %24
  %32 = call i32 @__overflow(%struct._IO_FILE* noundef nonnull %25, i32 noundef 10) #34, !dbg !1577
  br label %35, !dbg !1577

33:                                               ; preds = %24
  %34 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !1577
  store i8* %34, i8** %26, align 8, !dbg !1577, !tbaa !1578
  store i8 10, i8* %27, align 1, !dbg !1577, !tbaa !654
  br label %35, !dbg !1577

35:                                               ; preds = %31, %33
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1581, !tbaa !554
  %37 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %36) #34, !dbg !1581
  %38 = icmp eq i32 %0, 0, !dbg !1582
  br i1 %38, label %40, label %39, !dbg !1584

39:                                               ; preds = %35
  call void @exit(i32 noundef %0) #36, !dbg !1585
  unreachable, !dbg !1585

40:                                               ; preds = %35
  ret void, !dbg !1586
}

declare i32 @__vfprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, %"struct.std::__va_list"* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1587 i8* @strerror_r(i32 noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @__overflow(%struct._IO_FILE* noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1591 i32 @fflush_unlocked(%struct._IO_FILE* noundef) local_unnamed_addr #3

declare !dbg !1594 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #12 !dbg !1598 {
  %4 = alloca %"struct.std::__va_list", align 8
  %5 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1602, metadata !DIExpression()), !dbg !1606
  call void @llvm.dbg.value(metadata i32 %1, metadata !1603, metadata !DIExpression()), !dbg !1606
  call void @llvm.dbg.value(metadata i8* %2, metadata !1604, metadata !DIExpression()), !dbg !1606
  %6 = bitcast %"struct.std::__va_list"* %4 to i8*, !dbg !1607
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #34, !dbg !1607
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !1605, metadata !DIExpression()), !dbg !1608
  call void @llvm.va_start(i8* nonnull %6), !dbg !1609
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1610
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #34, !dbg !1610
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %7, i8* noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !1610, !tbaa.struct !1466
  call void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5) #39, !dbg !1610
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #34, !dbg !1610
  call void @llvm.va_end(i8* nonnull %6), !dbg !1611
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #34, !dbg !1612
  ret void, !dbg !1612
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #20

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #20

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* nocapture noundef readonly %5) local_unnamed_addr #19 !dbg !278 {
  %7 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !296, metadata !DIExpression()), !dbg !1613
  call void @llvm.dbg.value(metadata i32 %1, metadata !297, metadata !DIExpression()), !dbg !1613
  call void @llvm.dbg.value(metadata i8* %2, metadata !298, metadata !DIExpression()), !dbg !1613
  call void @llvm.dbg.value(metadata i32 %3, metadata !299, metadata !DIExpression()), !dbg !1613
  call void @llvm.dbg.value(metadata i8* %4, metadata !300, metadata !DIExpression()), !dbg !1613
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !301, metadata !DIExpression()), !dbg !1614
  %8 = load i32, i32* @error_one_per_line, align 4, !dbg !1615, !tbaa !645
  %9 = icmp eq i32 %8, 0, !dbg !1615
  br i1 %9, label %24, label %10, !dbg !1617

10:                                               ; preds = %6
  %11 = load i32, i32* @verror_at_line.old_line_number, align 4, !dbg !1618, !tbaa !645
  %12 = icmp eq i32 %11, %3, !dbg !1621
  br i1 %12, label %13, label %23, !dbg !1622

13:                                               ; preds = %10
  %14 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !1623, !tbaa !554
  %15 = icmp eq i8* %14, %2, !dbg !1624
  br i1 %15, label %39, label %16, !dbg !1625

16:                                               ; preds = %13
  %17 = icmp ne i8* %14, null, !dbg !1626
  %18 = icmp ne i8* %2, null
  %19 = and i1 %18, %17, !dbg !1627
  br i1 %19, label %20, label %23, !dbg !1627

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(i8* noundef nonnull %14, i8* noundef nonnull %2) #35, !dbg !1628
  %22 = icmp eq i32 %21, 0, !dbg !1629
  br i1 %22, label %39, label %23, !dbg !1630

23:                                               ; preds = %20, %16, %10
  store i8* %2, i8** @verror_at_line.old_file_name, align 8, !dbg !1631, !tbaa !554
  store i32 %3, i32* @verror_at_line.old_line_number, align 4, !dbg !1632, !tbaa !645
  br label %24, !dbg !1633

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !1634
  %25 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1635, !tbaa !554
  %26 = icmp eq void ()* %25, null, !dbg !1635
  br i1 %26, label %28, label %27, !dbg !1637

27:                                               ; preds = %24
  tail call void %25() #34, !dbg !1638
  br label %32, !dbg !1638

28:                                               ; preds = %24
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1639, !tbaa !554
  %30 = tail call i8* @getprogname() #35, !dbg !1639
  %31 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %29, i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.152, i64 0, i64 0), i8* noundef %30) #34, !dbg !1639
  br label %32

32:                                               ; preds = %28, %27
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1641, !tbaa !554
  %34 = icmp eq i8* %2, null, !dbg !1641
  %35 = select i1 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.153, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.154, i64 0, i64 0), !dbg !1641
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %33, i32 noundef 1, i8* noundef %35, i8* noundef %2, i32 noundef %3) #34, !dbg !1641
  %37 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1642
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %37) #34, !dbg !1642
  %38 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1642
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %37, i8* noundef nonnull align 8 dereferenceable(32) %38, i64 32, i1 false), !dbg !1642, !tbaa.struct !1466
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7), !dbg !1642
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %37) #34, !dbg !1642
  br label %39, !dbg !1643

39:                                               ; preds = %13, %20, %32
  ret void, !dbg !1643
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, ...) local_unnamed_addr #12 !dbg !1644 {
  %6 = alloca %"struct.std::__va_list", align 8
  %7 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1648, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i32 %1, metadata !1649, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8* %2, metadata !1650, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i32 %3, metadata !1651, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8* %4, metadata !1652, metadata !DIExpression()), !dbg !1654
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !1655
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #34, !dbg !1655
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %6, metadata !1653, metadata !DIExpression()), !dbg !1656
  call void @llvm.va_start(i8* nonnull %8), !dbg !1657
  %9 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1658
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #34, !dbg !1658
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !1658, !tbaa.struct !1466
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7) #39, !dbg !1658
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #34, !dbg !1658
  call void @llvm.va_end(i8* nonnull %8), !dbg !1659
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #34, !dbg !1660
  ret void, !dbg !1660
}

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* noundef nonnull %0) local_unnamed_addr #12 !dbg !1661 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1699, metadata !DIExpression()), !dbg !1703
  call void @llvm.dbg.value(metadata i32 0, metadata !1700, metadata !DIExpression()), !dbg !1703
  %2 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #34, !dbg !1704
  call void @llvm.dbg.value(metadata i32 %2, metadata !1701, metadata !DIExpression()), !dbg !1703
  %3 = icmp slt i32 %2, 0, !dbg !1705
  br i1 %3, label %4, label %6, !dbg !1707

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !1708
  br label %24, !dbg !1709

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #34, !dbg !1710
  %8 = icmp eq i32 %7, 0, !dbg !1710
  br i1 %8, label %13, label %9, !dbg !1712

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #34, !dbg !1713
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #34, !dbg !1714
  %12 = icmp eq i64 %11, -1, !dbg !1715
  br i1 %12, label %16, label %13, !dbg !1716

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* noundef nonnull %0) #34, !dbg !1717
  %15 = icmp eq i32 %14, 0, !dbg !1717
  br i1 %15, label %16, label %18, !dbg !1718

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !1700, metadata !DIExpression()), !dbg !1703
  call void @llvm.dbg.value(metadata i32 0, metadata !1702, metadata !DIExpression()), !dbg !1703
  %17 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !1719
  call void @llvm.dbg.value(metadata i32 %21, metadata !1702, metadata !DIExpression()), !dbg !1703
  br label %24, !dbg !1720

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #37, !dbg !1721
  %20 = load i32, i32* %19, align 4, !dbg !1721, !tbaa !645
  call void @llvm.dbg.value(metadata i32 %20, metadata !1700, metadata !DIExpression()), !dbg !1703
  call void @llvm.dbg.value(metadata i32 0, metadata !1702, metadata !DIExpression()), !dbg !1703
  %21 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !1719
  call void @llvm.dbg.value(metadata i32 %21, metadata !1702, metadata !DIExpression()), !dbg !1703
  %22 = icmp eq i32 %20, 0, !dbg !1722
  br i1 %22, label %24, label %23, !dbg !1720

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !1724, !tbaa !645
  call void @llvm.dbg.value(metadata i32 -1, metadata !1702, metadata !DIExpression()), !dbg !1703
  br label %24, !dbg !1726

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !1703
  ret i32 %25, !dbg !1727
}

; Function Attrs: nofree nounwind
declare !dbg !1728 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !1729 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1730 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* noundef %0) local_unnamed_addr #12 !dbg !1734 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1772, metadata !DIExpression()), !dbg !1773
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !1774
  br i1 %2, label %6, label %3, !dbg !1776

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #34, !dbg !1777
  %5 = icmp eq i32 %4, 0, !dbg !1777
  br i1 %5, label %6, label %8, !dbg !1778

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* noundef %0), !dbg !1779
  br label %17, !dbg !1780

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1781, metadata !DIExpression()) #34, !dbg !1786
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !1788
  %10 = load i32, i32* %9, align 8, !dbg !1788, !tbaa !1005
  %11 = and i32 %10, 256, !dbg !1790
  %12 = icmp eq i32 %11, 0, !dbg !1790
  br i1 %12, label %15, label %13, !dbg !1791

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef 0, i32 noundef 1) #34, !dbg !1792
  br label %15, !dbg !1792

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* noundef nonnull %0), !dbg !1793
  br label %17, !dbg !1794

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !1773
  ret i32 %18, !dbg !1795
}

; Function Attrs: nofree nounwind
declare !dbg !1796 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local %struct._IO_FILE* @freopen_safer(i8* noundef %0, i8* noundef nonnull %1, %struct._IO_FILE* noundef nonnull %2) local_unnamed_addr #12 !dbg !1797 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1835, metadata !DIExpression()), !dbg !1842
  call void @llvm.dbg.value(metadata i8* %1, metadata !1836, metadata !DIExpression()), !dbg !1842
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %2, metadata !1837, metadata !DIExpression()), !dbg !1842
  call void @llvm.dbg.value(metadata i8 0, metadata !1838, metadata !DIExpression()), !dbg !1842
  call void @llvm.dbg.value(metadata i8 0, metadata !1839, metadata !DIExpression()), !dbg !1842
  call void @llvm.dbg.value(metadata i8 0, metadata !1840, metadata !DIExpression()), !dbg !1842
  %4 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %2) #34, !dbg !1843
  switch i32 %4, label %5 [
    i32 2, label %8
    i32 1, label %14
    i32 0, label %57
  ], !dbg !1844

5:                                                ; preds = %3
  %6 = tail call i32 @dup2(i32 noundef 2, i32 noundef 2) #34, !dbg !1845
  %7 = icmp eq i32 %6, 2, !dbg !1848
  br label %8, !dbg !1849

8:                                                ; preds = %3, %5
  %9 = phi i1 [ true, %3 ], [ %7, %5 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !1840, metadata !DIExpression()), !dbg !1842
  %10 = tail call i32 @dup2(i32 noundef 1, i32 noundef 1) #34, !dbg !1850
  %11 = icmp ne i32 %10, 1, !dbg !1852
  call void @llvm.dbg.value(metadata i8 undef, metadata !1839, metadata !DIExpression()), !dbg !1842
  %12 = tail call i32 @dup2(i32 noundef 0, i32 noundef 0) #34, !dbg !1853
  %13 = icmp eq i32 %12, 0, !dbg !1855
  br i1 %13, label %17, label %18, !dbg !1856

14:                                               ; preds = %3
  call void @llvm.dbg.value(metadata i8 undef, metadata !1840, metadata !DIExpression()), !dbg !1842
  call void @llvm.dbg.value(metadata i8 undef, metadata !1839, metadata !DIExpression()), !dbg !1842
  %15 = tail call i32 @dup2(i32 noundef 0, i32 noundef 0) #34, !dbg !1853
  %16 = icmp eq i32 %15, 0, !dbg !1855
  br i1 %16, label %57, label %18, !dbg !1856

17:                                               ; preds = %8
  call void @llvm.dbg.value(metadata i8 poison, metadata !1840, metadata !DIExpression()), !dbg !1842
  call void @llvm.dbg.value(metadata i8 poison, metadata !1839, metadata !DIExpression()), !dbg !1842
  call void @llvm.dbg.value(metadata i8 poison, metadata !1838, metadata !DIExpression()), !dbg !1842
  br i1 %11, label %29, label %40, !dbg !1857

18:                                               ; preds = %14, %8
  %19 = phi i1 [ true, %14 ], [ %9, %8 ]
  %20 = phi i1 [ false, %14 ], [ %11, %8 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1840, metadata !DIExpression()), !dbg !1842
  call void @llvm.dbg.value(metadata i8 poison, metadata !1839, metadata !DIExpression()), !dbg !1842
  call void @llvm.dbg.value(metadata i8 poison, metadata !1838, metadata !DIExpression()), !dbg !1842
  call void @llvm.dbg.value(metadata i32 0, metadata !1860, metadata !DIExpression()) #34, !dbg !1864
  %21 = tail call i32 (i8*, i32, ...) @open(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.163, i64 0, i64 0), i32 noundef 0) #34, !dbg !1866
  call void @llvm.dbg.value(metadata i32 %21, metadata !1863, metadata !DIExpression()) #34, !dbg !1864
  %22 = icmp eq i32 %21, 0, !dbg !1867
  %23 = icmp slt i32 %21, 1, !dbg !1869
  br i1 %23, label %27, label %24, !dbg !1869

24:                                               ; preds = %18
  %25 = tail call i32 @close(i32 noundef %21) #34, !dbg !1870
  %26 = tail call i32* @__errno_location() #37, !dbg !1874
  store i32 9, i32* %26, align 4, !dbg !1875, !tbaa !645
  br label %27, !dbg !1876

27:                                               ; preds = %18, %24
  br i1 %22, label %28, label %64, !dbg !1877

28:                                               ; preds = %27
  br i1 %20, label %29, label %40, !dbg !1857

29:                                               ; preds = %17, %28
  %30 = phi i1 [ %9, %17 ], [ %19, %28 ]
  %31 = phi i1 [ false, %17 ], [ true, %28 ]
  call void @llvm.dbg.value(metadata i32 1, metadata !1860, metadata !DIExpression()) #34, !dbg !1878
  %32 = tail call i32 (i8*, i32, ...) @open(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.163, i64 0, i64 0), i32 noundef 0) #34, !dbg !1880
  call void @llvm.dbg.value(metadata i32 %32, metadata !1863, metadata !DIExpression()) #34, !dbg !1878
  %33 = icmp eq i32 %32, 1, !dbg !1881
  %34 = icmp slt i32 %32, 0
  %35 = or i1 %33, %34, !dbg !1882
  br i1 %35, label %39, label %36, !dbg !1882

36:                                               ; preds = %29
  %37 = tail call i32 @close(i32 noundef %32) #34, !dbg !1883
  %38 = tail call i32* @__errno_location() #37, !dbg !1884
  store i32 9, i32* %38, align 4, !dbg !1885, !tbaa !645
  br label %39, !dbg !1886

39:                                               ; preds = %29, %36
  br i1 %33, label %40, label %64, !dbg !1887

40:                                               ; preds = %17, %39, %28
  %41 = phi i1 [ %9, %17 ], [ %30, %39 ], [ %19, %28 ]
  %42 = phi i1 [ false, %17 ], [ %31, %39 ], [ true, %28 ]
  %43 = phi i1 [ false, %17 ], [ true, %39 ], [ false, %28 ]
  br i1 %41, label %57, label %44, !dbg !1888

44:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i32 2, metadata !1860, metadata !DIExpression()) #34, !dbg !1890
  %45 = tail call i32 (i8*, i32, ...) @open(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.163, i64 0, i64 0), i32 noundef 0) #34, !dbg !1892
  call void @llvm.dbg.value(metadata i32 %45, metadata !1863, metadata !DIExpression()) #34, !dbg !1890
  %46 = icmp eq i32 %45, 2, !dbg !1893
  %47 = icmp slt i32 %45, 0
  %48 = or i1 %46, %47, !dbg !1894
  br i1 %48, label %52, label %49, !dbg !1894

49:                                               ; preds = %44
  %50 = tail call i32 @close(i32 noundef %45) #34, !dbg !1895
  %51 = tail call i32* @__errno_location() #37, !dbg !1896
  store i32 9, i32* %51, align 4, !dbg !1897, !tbaa !645
  br label %52, !dbg !1898

52:                                               ; preds = %44, %49
  br i1 %46, label %57, label %53, !dbg !1899

53:                                               ; preds = %52
  call void @llvm.dbg.value(metadata %struct._IO_FILE* null, metadata !1837, metadata !DIExpression()), !dbg !1842
  %54 = tail call i32* @__errno_location() #37, !dbg !1900
  %55 = load i32, i32* %54, align 4, !dbg !1900, !tbaa !645
  call void @llvm.dbg.value(metadata i32 %69, metadata !1841, metadata !DIExpression()), !dbg !1842
  %56 = tail call i32 @close(i32 noundef 2) #34, !dbg !1901
  br i1 %43, label %83, label %89, !dbg !1903

57:                                               ; preds = %14, %3, %52, %40
  %58 = phi i1 [ true, %52 ], [ false, %40 ], [ false, %3 ], [ false, %14 ]
  %59 = phi i1 [ %43, %52 ], [ %43, %40 ], [ false, %3 ], [ false, %14 ]
  %60 = phi i1 [ %42, %52 ], [ %42, %40 ], [ false, %3 ], [ false, %14 ]
  %61 = tail call %struct._IO_FILE* @freopen(i8* noundef %0, i8* noundef nonnull %1, %struct._IO_FILE* noundef nonnull %2) #34, !dbg !1904
  call void @llvm.dbg.value(metadata %struct._IO_FILE* null, metadata !1837, metadata !DIExpression()), !dbg !1842
  %62 = tail call i32* @__errno_location() #37, !dbg !1900
  %63 = load i32, i32* %62, align 4, !dbg !1900, !tbaa !645
  call void @llvm.dbg.value(metadata i32 %69, metadata !1841, metadata !DIExpression()), !dbg !1842
  br i1 %58, label %70, label %77, !dbg !1905

64:                                               ; preds = %39, %27
  %65 = phi i1 [ %19, %27 ], [ %30, %39 ]
  %66 = phi i1 [ %20, %27 ], [ true, %39 ]
  %67 = phi i1 [ true, %27 ], [ %31, %39 ]
  call void @llvm.dbg.value(metadata %struct._IO_FILE* null, metadata !1837, metadata !DIExpression()), !dbg !1842
  %68 = tail call i32* @__errno_location() #37, !dbg !1900
  %69 = load i32, i32* %68, align 4, !dbg !1900, !tbaa !645
  call void @llvm.dbg.value(metadata i32 %69, metadata !1841, metadata !DIExpression()), !dbg !1842
  br i1 %65, label %77, label %70, !dbg !1905

70:                                               ; preds = %57, %64
  %71 = phi i32 [ %69, %64 ], [ %63, %57 ]
  %72 = phi i32* [ %68, %64 ], [ %62, %57 ]
  %73 = phi %struct._IO_FILE* [ null, %64 ], [ %61, %57 ]
  %74 = phi i1 [ %67, %64 ], [ %60, %57 ]
  %75 = phi i1 [ %66, %64 ], [ %59, %57 ]
  %76 = tail call i32 @close(i32 noundef 2) #34, !dbg !1901
  br i1 %75, label %83, label %89, !dbg !1903

77:                                               ; preds = %57, %64
  %78 = phi i32 [ %69, %64 ], [ %63, %57 ]
  %79 = phi i32* [ %68, %64 ], [ %62, %57 ]
  %80 = phi %struct._IO_FILE* [ null, %64 ], [ %61, %57 ]
  %81 = phi i1 [ %67, %64 ], [ %60, %57 ]
  %82 = phi i1 [ %66, %64 ], [ %59, %57 ]
  br i1 %82, label %83, label %89, !dbg !1903

83:                                               ; preds = %53, %70, %77
  %84 = phi i1 [ %74, %70 ], [ %81, %77 ], [ %42, %53 ]
  %85 = phi %struct._IO_FILE* [ %73, %70 ], [ %80, %77 ], [ null, %53 ]
  %86 = phi i32* [ %72, %70 ], [ %79, %77 ], [ %54, %53 ]
  %87 = phi i32 [ %71, %70 ], [ %78, %77 ], [ %55, %53 ]
  %88 = tail call i32 @close(i32 noundef 1) #34, !dbg !1906
  br i1 %84, label %94, label %99, !dbg !1908

89:                                               ; preds = %53, %70, %77
  %90 = phi i1 [ %74, %70 ], [ %81, %77 ], [ %42, %53 ]
  %91 = phi %struct._IO_FILE* [ %73, %70 ], [ %80, %77 ], [ null, %53 ]
  %92 = phi i32* [ %72, %70 ], [ %79, %77 ], [ %54, %53 ]
  %93 = phi i32 [ %71, %70 ], [ %78, %77 ], [ %55, %53 ]
  br i1 %90, label %94, label %99, !dbg !1908

94:                                               ; preds = %83, %89
  %95 = phi i32 [ %87, %83 ], [ %93, %89 ]
  %96 = phi i32* [ %86, %83 ], [ %92, %89 ]
  %97 = phi %struct._IO_FILE* [ %85, %83 ], [ %91, %89 ]
  %98 = tail call i32 @close(i32 noundef 0) #34, !dbg !1909
  br label %99, !dbg !1909

99:                                               ; preds = %83, %94, %89
  %100 = phi i32 [ %87, %83 ], [ %95, %94 ], [ %93, %89 ]
  %101 = phi i32* [ %86, %83 ], [ %96, %94 ], [ %92, %89 ]
  %102 = phi %struct._IO_FILE* [ %85, %83 ], [ %97, %94 ], [ %91, %89 ]
  %103 = icmp eq %struct._IO_FILE* %102, null, !dbg !1911
  br i1 %103, label %104, label %105, !dbg !1913

104:                                              ; preds = %99
  store i32 %100, i32* %101, align 4, !dbg !1914, !tbaa !645
  br label %105, !dbg !1915

105:                                              ; preds = %104, %99
  ret %struct._IO_FILE* %102, !dbg !1916
}

; Function Attrs: nounwind
declare !dbg !1917 i32 @dup2(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree
declare !dbg !1920 noundef i32 @open(i8* nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #21

declare !dbg !1923 i32 @close(i32 noundef) local_unnamed_addr #3

declare !dbg !1924 %struct._IO_FILE* @freopen(i8* noundef, i8* noundef, %struct._IO_FILE* noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #12 !dbg !1928 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1967, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %1, metadata !1968, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i32 %2, metadata !1969, metadata !DIExpression()), !dbg !1973
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !1974
  %5 = load i8*, i8** %4, align 8, !dbg !1974, !tbaa !1975
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !1976
  %7 = load i8*, i8** %6, align 8, !dbg !1976, !tbaa !1977
  %8 = icmp eq i8* %5, %7, !dbg !1978
  br i1 %8, label %9, label %28, !dbg !1979

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !1980
  %11 = load i8*, i8** %10, align 8, !dbg !1980, !tbaa !1578
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !1981
  %13 = load i8*, i8** %12, align 8, !dbg !1981, !tbaa !1982
  %14 = icmp eq i8* %11, %13, !dbg !1983
  br i1 %14, label %15, label %28, !dbg !1984

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !1985
  %17 = load i8*, i8** %16, align 8, !dbg !1985, !tbaa !1986
  %18 = icmp eq i8* %17, null, !dbg !1987
  br i1 %18, label %19, label %28, !dbg !1988

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #34, !dbg !1989
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #34, !dbg !1990
  call void @llvm.dbg.value(metadata i64 %21, metadata !1970, metadata !DIExpression()), !dbg !1991
  %22 = icmp eq i64 %21, -1, !dbg !1992
  br i1 %22, label %30, label %23, !dbg !1994

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !1995
  %25 = load i32, i32* %24, align 8, !dbg !1996, !tbaa !1005
  %26 = and i32 %25, -17, !dbg !1996
  store i32 %26, i32* %24, align 8, !dbg !1996, !tbaa !1005
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !1997
  store i64 %21, i64* %27, align 8, !dbg !1998, !tbaa !1999
  br label %30, !dbg !2000

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !2001
  br label %30, !dbg !2002

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !1973
  ret i32 %31, !dbg !2003
}

; Function Attrs: nofree nounwind
declare !dbg !2004 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i8* @getprogname() local_unnamed_addr #15 !dbg !2007 {
  %1 = load i8*, i8** @program_invocation_short_name, align 8, !dbg !2010, !tbaa !554
  ret i8* %1, !dbg !2011
}

; Function Attrs: noreturn nounwind uwtable
define internal void @print_and_abort() #0 !dbg !2012 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2013, !tbaa !554
  %2 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.168, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2.169, i64 0, i64 0), i32 noundef 5) #34, !dbg !2013
  %3 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %1, i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.170, i64 0, i64 0), i8* noundef %2) #34, !dbg !2013
  %4 = load volatile i32, i32* @exit_failure, align 4, !dbg !2014, !tbaa !645
  tail call void @exit(i32 noundef %4) #36, !dbg !2015
  unreachable, !dbg !2015
}

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_obstack_begin(%struct.obstack* nocapture noundef %0, i64 noundef %1, i64 noundef %2, i8* (i64)* noundef %3, void (i8*)* noundef %4) local_unnamed_addr #12 !dbg !2016 {
  call void @llvm.dbg.value(metadata %struct.obstack* %0, metadata !2054, metadata !DIExpression()), !dbg !2059
  call void @llvm.dbg.value(metadata i64 %1, metadata !2055, metadata !DIExpression()), !dbg !2059
  call void @llvm.dbg.value(metadata i64 %2, metadata !2056, metadata !DIExpression()), !dbg !2059
  call void @llvm.dbg.value(metadata i8* (i64)* %3, metadata !2057, metadata !DIExpression()), !dbg !2059
  call void @llvm.dbg.value(metadata void (i8*)* %4, metadata !2058, metadata !DIExpression()), !dbg !2059
  %6 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 7, i32 0, !dbg !2060
  store i8* (i64)* %3, i8* (i64)** %6, align 8, !dbg !2061, !tbaa !654
  %7 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 8, i32 0, !dbg !2062
  store void (i8*)* %4, void (i8*)** %7, align 8, !dbg !2063, !tbaa !654
  %8 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 10, !dbg !2064
  %9 = load i8, i8* %8, align 8, !dbg !2065
  %10 = and i8 %9, -2, !dbg !2065
  store i8 %10, i8* %8, align 8, !dbg !2065
  call void @llvm.dbg.value(metadata %struct.obstack* %0, metadata !2066, metadata !DIExpression()) #34, !dbg !2080
  call void @llvm.dbg.value(metadata i64 %1, metadata !2071, metadata !DIExpression()) #34, !dbg !2080
  call void @llvm.dbg.value(metadata i64 %2, metadata !2072, metadata !DIExpression()) #34, !dbg !2080
  %11 = icmp eq i64 %2, 0, !dbg !2082
  call void @llvm.dbg.value(metadata i64 undef, metadata !2072, metadata !DIExpression()) #34, !dbg !2080
  %12 = add i64 %2, -1, !dbg !2084
  %13 = select i1 %11, i64 15, i64 %12, !dbg !2084
  call void @llvm.dbg.value(metadata i64* undef, metadata !2085, metadata !DIExpression()) #34, !dbg !2092
  call void @llvm.dbg.value(metadata i64 %13, metadata !2090, metadata !DIExpression()) #34, !dbg !2092
  call void @llvm.dbg.value(metadata i64 16, metadata !2091, metadata !DIExpression()) #34, !dbg !2092
  %14 = and i64 %13, -16, !dbg !2094
  %15 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %14, i64 16) #34, !dbg !2094
  %16 = extractvalue { i64, i1 } %15, 1, !dbg !2094
  %17 = extractvalue { i64, i1 } %15, 0, !dbg !2094
  call void @llvm.dbg.value(metadata i1 %16, metadata !2075, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !2080
  call void @llvm.dbg.value(metadata i64 %1, metadata !2076, metadata !DIExpression()) #34, !dbg !2080
  call void @llvm.dbg.value(metadata i64 %17, metadata !2074, metadata !DIExpression()) #34, !dbg !2080
  %18 = icmp ugt i64 %17, %1, !dbg !2095
  %19 = icmp ugt i64 %17, 4000, !dbg !2096
  %20 = select i1 %19, i64 %17, i64 4000, !dbg !2096
  %21 = select i1 %18, i64 %20, i64 %1, !dbg !2096
  call void @llvm.dbg.value(metadata i64 %21, metadata !2076, metadata !DIExpression()) #34, !dbg !2080
  %22 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 0, !dbg !2097
  store i64 %21, i64* %22, align 8, !dbg !2098, !tbaa !2099
  %23 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 6, !dbg !2100
  store i64 %13, i64* %23, align 8, !dbg !2101, !tbaa !927
  br i1 %16, label %24, label %27, !dbg !2102

24:                                               ; preds = %5
  %25 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 1, !dbg !2103
  %26 = bitcast %struct._obstack_chunk** %25 to i8**, !dbg !2104
  store i8* null, i8** %26, align 8, !dbg !2104, !tbaa !2105
  call void @llvm.dbg.value(metadata i8* %28, metadata !2073, metadata !DIExpression()) #34, !dbg !2080
  br label %32, !dbg !2106

27:                                               ; preds = %5
  call void @llvm.dbg.value(metadata %struct.obstack* %0, metadata !2107, metadata !DIExpression()) #34, !dbg !2113
  call void @llvm.dbg.value(metadata i64 %21, metadata !2112, metadata !DIExpression()) #34, !dbg !2113
  %28 = tail call i8* %3(i64 noundef %21) #34, !dbg !2115
  %29 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 1, !dbg !2103
  %30 = bitcast %struct._obstack_chunk** %29 to i8**, !dbg !2104
  store i8* %28, i8** %30, align 8, !dbg !2104, !tbaa !2105
  call void @llvm.dbg.value(metadata i8* %28, metadata !2073, metadata !DIExpression()) #34, !dbg !2080
  %31 = icmp eq i8* %28, null, !dbg !2117
  br i1 %31, label %32, label %34, !dbg !2106

32:                                               ; preds = %27, %24
  %33 = load void ()*, void ()** @obstack_alloc_failed_handler, align 8, !dbg !2119, !tbaa !554
  tail call void %33() #36, !dbg !2120
  unreachable, !dbg !2120

34:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8* %28, metadata !2073, metadata !DIExpression()) #34, !dbg !2080
  %35 = getelementptr inbounds i8, i8* %28, i64 16, !dbg !2121
  %36 = ptrtoint i8* %35 to i64, !dbg !2121
  %37 = sub i64 0, %36, !dbg !2121
  %38 = and i64 %13, %37, !dbg !2121
  %39 = getelementptr inbounds i8, i8* %35, i64 %38, !dbg !2121
  %40 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 2, !dbg !2122
  store i8* %39, i8** %40, align 8, !dbg !2123, !tbaa !921
  %41 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 3, !dbg !2124
  store i8* %39, i8** %41, align 8, !dbg !2125, !tbaa !918
  %42 = getelementptr inbounds i8, i8* %28, i64 %21, !dbg !2126
  %43 = sub i64 0, %13, !dbg !2126
  %44 = getelementptr inbounds i8, i8* %42, i64 %43, !dbg !2126
  %45 = ptrtoint i8* %44 to i64, !dbg !2126
  %46 = sub i64 0, %45, !dbg !2126
  %47 = and i64 %13, %46, !dbg !2126
  %48 = getelementptr inbounds i8, i8* %44, i64 %47, !dbg !2126
  %49 = bitcast i8* %28 to i8**, !dbg !2127
  store i8* %48, i8** %49, align 8, !dbg !2128, !tbaa !554
  %50 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 4, !dbg !2129
  store i8* %48, i8** %50, align 8, !dbg !2130, !tbaa !1207
  %51 = getelementptr inbounds i8, i8* %28, i64 8, !dbg !2131
  %52 = bitcast i8* %51 to %struct._obstack_chunk**, !dbg !2131
  store %struct._obstack_chunk* null, %struct._obstack_chunk** %52, align 8, !dbg !2132, !tbaa !554
  %53 = load i8, i8* %8, align 8, !dbg !2133
  %54 = and i8 %53, -7, !dbg !2134
  store i8 %54, i8* %8, align 8, !dbg !2134
  ret i32 1, !dbg !2135
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_obstack_begin_1(%struct.obstack* nocapture noundef %0, i64 noundef %1, i64 noundef %2, i8* (i8*, i64)* noundef %3, void (i8*, i8*)* noundef %4, i8* noundef %5) local_unnamed_addr #12 !dbg !2136 {
  call void @llvm.dbg.value(metadata %struct.obstack* %0, metadata !2140, metadata !DIExpression()), !dbg !2146
  call void @llvm.dbg.value(metadata i64 %1, metadata !2141, metadata !DIExpression()), !dbg !2146
  call void @llvm.dbg.value(metadata i64 %2, metadata !2142, metadata !DIExpression()), !dbg !2146
  call void @llvm.dbg.value(metadata i8* (i8*, i64)* %3, metadata !2143, metadata !DIExpression()), !dbg !2146
  call void @llvm.dbg.value(metadata void (i8*, i8*)* %4, metadata !2144, metadata !DIExpression()), !dbg !2146
  call void @llvm.dbg.value(metadata i8* %5, metadata !2145, metadata !DIExpression()), !dbg !2146
  %7 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 7, !dbg !2147
  %8 = bitcast %union.anon.0* %7 to i8* (i8*, i64)**, !dbg !2148
  store i8* (i8*, i64)* %3, i8* (i8*, i64)** %8, align 8, !dbg !2149, !tbaa !654
  %9 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 8, !dbg !2150
  %10 = bitcast %union.anon.1* %9 to void (i8*, i8*)**, !dbg !2151
  store void (i8*, i8*)* %4, void (i8*, i8*)** %10, align 8, !dbg !2152, !tbaa !654
  %11 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 9, !dbg !2153
  store i8* %5, i8** %11, align 8, !dbg !2154, !tbaa !2155
  %12 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 10, !dbg !2156
  %13 = load i8, i8* %12, align 8, !dbg !2157
  %14 = or i8 %13, 1, !dbg !2157
  store i8 %14, i8* %12, align 8, !dbg !2157
  call void @llvm.dbg.value(metadata %struct.obstack* %0, metadata !2066, metadata !DIExpression()) #34, !dbg !2158
  call void @llvm.dbg.value(metadata i64 %1, metadata !2071, metadata !DIExpression()) #34, !dbg !2158
  call void @llvm.dbg.value(metadata i64 %2, metadata !2072, metadata !DIExpression()) #34, !dbg !2158
  %15 = icmp eq i64 %2, 0, !dbg !2160
  call void @llvm.dbg.value(metadata i64 undef, metadata !2072, metadata !DIExpression()) #34, !dbg !2158
  %16 = add i64 %2, -1, !dbg !2161
  %17 = select i1 %15, i64 15, i64 %16, !dbg !2161
  call void @llvm.dbg.value(metadata i64* undef, metadata !2085, metadata !DIExpression()) #34, !dbg !2162
  call void @llvm.dbg.value(metadata i64 %17, metadata !2090, metadata !DIExpression()) #34, !dbg !2162
  call void @llvm.dbg.value(metadata i64 16, metadata !2091, metadata !DIExpression()) #34, !dbg !2162
  %18 = and i64 %17, -16, !dbg !2164
  %19 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %18, i64 16) #34, !dbg !2164
  %20 = extractvalue { i64, i1 } %19, 1, !dbg !2164
  %21 = extractvalue { i64, i1 } %19, 0, !dbg !2164
  call void @llvm.dbg.value(metadata i1 %20, metadata !2075, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !2158
  call void @llvm.dbg.value(metadata i64 %1, metadata !2076, metadata !DIExpression()) #34, !dbg !2158
  call void @llvm.dbg.value(metadata i64 %21, metadata !2074, metadata !DIExpression()) #34, !dbg !2158
  %22 = icmp ugt i64 %21, %1, !dbg !2165
  %23 = icmp ugt i64 %21, 4000, !dbg !2166
  %24 = select i1 %23, i64 %21, i64 4000, !dbg !2166
  %25 = select i1 %22, i64 %24, i64 %1, !dbg !2166
  call void @llvm.dbg.value(metadata i64 %25, metadata !2076, metadata !DIExpression()) #34, !dbg !2158
  %26 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 0, !dbg !2167
  store i64 %25, i64* %26, align 8, !dbg !2168, !tbaa !2099
  %27 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 6, !dbg !2169
  store i64 %17, i64* %27, align 8, !dbg !2170, !tbaa !927
  br i1 %20, label %28, label %31, !dbg !2171

28:                                               ; preds = %6
  %29 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 1, !dbg !2172
  %30 = bitcast %struct._obstack_chunk** %29 to i8**, !dbg !2173
  store i8* null, i8** %30, align 8, !dbg !2173, !tbaa !2105
  call void @llvm.dbg.value(metadata i8* %32, metadata !2073, metadata !DIExpression()) #34, !dbg !2158
  br label %36, !dbg !2174

31:                                               ; preds = %6
  call void @llvm.dbg.value(metadata %struct.obstack* %0, metadata !2107, metadata !DIExpression()) #34, !dbg !2175
  call void @llvm.dbg.value(metadata i64 %25, metadata !2112, metadata !DIExpression()) #34, !dbg !2175
  %32 = tail call i8* %3(i8* noundef %5, i64 noundef %25) #34, !dbg !2177
  %33 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 1, !dbg !2172
  %34 = bitcast %struct._obstack_chunk** %33 to i8**, !dbg !2173
  store i8* %32, i8** %34, align 8, !dbg !2173, !tbaa !2105
  call void @llvm.dbg.value(metadata i8* %32, metadata !2073, metadata !DIExpression()) #34, !dbg !2158
  %35 = icmp eq i8* %32, null, !dbg !2178
  br i1 %35, label %36, label %38, !dbg !2174

36:                                               ; preds = %31, %28
  %37 = load void ()*, void ()** @obstack_alloc_failed_handler, align 8, !dbg !2179, !tbaa !554
  tail call void %37() #36, !dbg !2180
  unreachable, !dbg !2180

38:                                               ; preds = %31
  call void @llvm.dbg.value(metadata i8* %32, metadata !2073, metadata !DIExpression()) #34, !dbg !2158
  %39 = getelementptr inbounds i8, i8* %32, i64 16, !dbg !2181
  %40 = ptrtoint i8* %39 to i64, !dbg !2181
  %41 = sub i64 0, %40, !dbg !2181
  %42 = and i64 %17, %41, !dbg !2181
  %43 = getelementptr inbounds i8, i8* %39, i64 %42, !dbg !2181
  %44 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 2, !dbg !2182
  store i8* %43, i8** %44, align 8, !dbg !2183, !tbaa !921
  %45 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 3, !dbg !2184
  store i8* %43, i8** %45, align 8, !dbg !2185, !tbaa !918
  %46 = getelementptr inbounds i8, i8* %32, i64 %25, !dbg !2186
  %47 = sub i64 0, %17, !dbg !2186
  %48 = getelementptr inbounds i8, i8* %46, i64 %47, !dbg !2186
  %49 = ptrtoint i8* %48 to i64, !dbg !2186
  %50 = sub i64 0, %49, !dbg !2186
  %51 = and i64 %17, %50, !dbg !2186
  %52 = getelementptr inbounds i8, i8* %48, i64 %51, !dbg !2186
  %53 = bitcast i8* %32 to i8**, !dbg !2187
  store i8* %52, i8** %53, align 8, !dbg !2188, !tbaa !554
  %54 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 4, !dbg !2189
  store i8* %52, i8** %54, align 8, !dbg !2190, !tbaa !1207
  %55 = getelementptr inbounds i8, i8* %32, i64 8, !dbg !2191
  %56 = bitcast i8* %55 to %struct._obstack_chunk**, !dbg !2191
  store %struct._obstack_chunk* null, %struct._obstack_chunk** %56, align 8, !dbg !2192, !tbaa !554
  %57 = load i8, i8* %12, align 8, !dbg !2193
  %58 = and i8 %57, -7, !dbg !2194
  store i8 %58, i8* %12, align 8, !dbg !2194
  ret i32 1, !dbg !2195
}

; Function Attrs: nounwind uwtable
define dso_local void @rpl_obstack_newchunk(%struct.obstack* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !2196 {
  call void @llvm.dbg.value(metadata %struct.obstack* %0, metadata !2200, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i64 %1, metadata !2201, metadata !DIExpression()), !dbg !2209
  %3 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 1, !dbg !2210
  %4 = load %struct._obstack_chunk*, %struct._obstack_chunk** %3, align 8, !dbg !2210, !tbaa !2105
  call void @llvm.dbg.value(metadata %struct._obstack_chunk* %4, metadata !2202, metadata !DIExpression()), !dbg !2209
  %5 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 3, !dbg !2211
  %6 = load i8*, i8** %5, align 8, !dbg !2211, !tbaa !918
  %7 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 2, !dbg !2212
  %8 = load i8*, i8** %7, align 8, !dbg !2212, !tbaa !921
  %9 = ptrtoint i8* %6 to i64, !dbg !2213
  %10 = ptrtoint i8* %8 to i64, !dbg !2213
  %11 = sub i64 %9, %10, !dbg !2213
  call void @llvm.dbg.value(metadata i64 %11, metadata !2203, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i8 0, metadata !2206, metadata !DIExpression()), !dbg !2209
  %12 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %11, i64 %1), !dbg !2214
  %13 = extractvalue { i64, i1 } %12, 1, !dbg !2214
  %14 = extractvalue { i64, i1 } %12, 0, !dbg !2214
  call void @llvm.dbg.value(metadata i64 %14, metadata !2204, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i1 %13, metadata !2206, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2209
  %15 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 6, !dbg !2215
  %16 = load i64, i64* %15, align 8, !dbg !2215, !tbaa !927
  call void @llvm.dbg.value(metadata i64* undef, metadata !2085, metadata !DIExpression()) #34, !dbg !2216
  call void @llvm.dbg.value(metadata i64 %16, metadata !2090, metadata !DIExpression()) #34, !dbg !2216
  call void @llvm.dbg.value(metadata i64 %14, metadata !2091, metadata !DIExpression()) #34, !dbg !2216
  %17 = sub i64 0, %14, !dbg !2218
  %18 = and i64 %16, %17, !dbg !2218
  %19 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %18, i64 %14) #34, !dbg !2218
  %20 = extractvalue { i64, i1 } %19, 1, !dbg !2218
  %21 = extractvalue { i64, i1 } %19, 0, !dbg !2218
  %22 = or i1 %13, %20, !dbg !2219
  call void @llvm.dbg.value(metadata i1 %22, metadata !2206, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2209
  call void @llvm.dbg.value(metadata i64 %21, metadata !2204, metadata !DIExpression()), !dbg !2209
  %23 = add i64 %16, 16, !dbg !2220
  %24 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %21, i64 %23), !dbg !2220
  %25 = extractvalue { i64, i1 } %24, 1, !dbg !2220
  %26 = extractvalue { i64, i1 } %24, 0, !dbg !2220
  call void @llvm.dbg.value(metadata i64 %26, metadata !2204, metadata !DIExpression()), !dbg !2209
  %27 = or i1 %22, %25, !dbg !2221
  call void @llvm.dbg.value(metadata i1 %27, metadata !2206, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2209
  %28 = lshr i64 %11, 3, !dbg !2222
  %29 = add nuw nsw i64 %28, 100, !dbg !2222
  %30 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %26, i64 %29), !dbg !2222
  %31 = extractvalue { i64, i1 } %30, 1, !dbg !2222
  %32 = extractvalue { i64, i1 } %30, 0, !dbg !2222
  call void @llvm.dbg.value(metadata i64 %32, metadata !2205, metadata !DIExpression()), !dbg !2209
  %33 = select i1 %31, i64 %26, i64 %32, !dbg !2224
  call void @llvm.dbg.value(metadata i64 %33, metadata !2205, metadata !DIExpression()), !dbg !2209
  %34 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 0, !dbg !2225
  %35 = load i64, i64* %34, align 8, !dbg !2225, !tbaa !2099
  %36 = icmp ult i64 %33, %35, !dbg !2227
  %37 = select i1 %36, i64 %35, i64 %33, !dbg !2228
  call void @llvm.dbg.value(metadata i64 %37, metadata !2205, metadata !DIExpression()), !dbg !2209
  br i1 %27, label %57, label %38, !dbg !2229

38:                                               ; preds = %2
  call void @llvm.dbg.value(metadata %struct.obstack* %0, metadata !2107, metadata !DIExpression()) #34, !dbg !2230
  call void @llvm.dbg.value(metadata i64 %37, metadata !2112, metadata !DIExpression()) #34, !dbg !2230
  %39 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 10, !dbg !2232
  %40 = load i8, i8* %39, align 8, !dbg !2232
  %41 = and i8 %40, 1, !dbg !2232
  %42 = icmp eq i8 %41, 0, !dbg !2233
  br i1 %42, label %50, label %43, !dbg !2234

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 7, !dbg !2235
  %45 = bitcast %union.anon.0* %44 to i8* (i8*, i64)**, !dbg !2236
  %46 = load i8* (i8*, i64)*, i8* (i8*, i64)** %45, align 8, !dbg !2236, !tbaa !654
  %47 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 9, !dbg !2237
  %48 = load i8*, i8** %47, align 8, !dbg !2237, !tbaa !2155
  %49 = tail call i8* %46(i8* noundef %48, i64 noundef %37) #34, !dbg !2238
  br label %54, !dbg !2239

50:                                               ; preds = %38
  %51 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 7, i32 0, !dbg !2240
  %52 = load i8* (i64)*, i8* (i64)** %51, align 8, !dbg !2240, !tbaa !654
  %53 = tail call i8* %52(i64 noundef %37) #34, !dbg !2241
  br label %54, !dbg !2242

54:                                               ; preds = %50, %43
  %55 = phi i8* [ %49, %43 ], [ %53, %50 ], !dbg !2229
  call void @llvm.dbg.value(metadata i8* %55, metadata !2207, metadata !DIExpression()), !dbg !2209
  %56 = icmp eq i8* %55, null, !dbg !2243
  br i1 %56, label %57, label %59, !dbg !2245

57:                                               ; preds = %2, %54
  %58 = load void ()*, void ()** @obstack_alloc_failed_handler, align 8, !dbg !2246, !tbaa !554
  tail call void %58() #36, !dbg !2247
  unreachable, !dbg !2247

59:                                               ; preds = %54
  call void @llvm.dbg.value(metadata i8* %55, metadata !2207, metadata !DIExpression()), !dbg !2209
  %60 = bitcast %struct._obstack_chunk** %3 to i8**, !dbg !2248
  store i8* %55, i8** %60, align 8, !dbg !2248, !tbaa !2105
  %61 = getelementptr inbounds i8, i8* %55, i64 8, !dbg !2249
  %62 = bitcast i8* %61 to %struct._obstack_chunk**, !dbg !2249
  store %struct._obstack_chunk* %4, %struct._obstack_chunk** %62, align 8, !dbg !2250, !tbaa !554
  %63 = getelementptr inbounds i8, i8* %55, i64 %37, !dbg !2251
  %64 = load i64, i64* %15, align 8, !dbg !2251, !tbaa !927
  %65 = sub i64 0, %64, !dbg !2251
  %66 = getelementptr inbounds i8, i8* %63, i64 %65, !dbg !2251
  %67 = ptrtoint i8* %66 to i64, !dbg !2251
  %68 = sub i64 0, %67, !dbg !2251
  %69 = and i64 %64, %68, !dbg !2251
  %70 = getelementptr inbounds i8, i8* %66, i64 %69, !dbg !2251
  %71 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 4, !dbg !2252
  store i8* %70, i8** %71, align 8, !dbg !2253, !tbaa !1207
  %72 = bitcast i8* %55 to i8**, !dbg !2254
  store i8* %70, i8** %72, align 8, !dbg !2255, !tbaa !554
  %73 = getelementptr inbounds i8, i8* %55, i64 16, !dbg !2256
  %74 = ptrtoint i8* %73 to i64, !dbg !2256
  %75 = sub i64 0, %74, !dbg !2256
  %76 = and i64 %64, %75, !dbg !2256
  %77 = getelementptr inbounds i8, i8* %73, i64 %76, !dbg !2256
  call void @llvm.dbg.value(metadata i8* %77, metadata !2208, metadata !DIExpression()), !dbg !2209
  %78 = load i8*, i8** %7, align 8, !dbg !2257, !tbaa !921
  call void @llvm.dbg.value(metadata i8* %77, metadata !2258, metadata !DIExpression()) #34, !dbg !2267
  call void @llvm.dbg.value(metadata i8* %78, metadata !2265, metadata !DIExpression()) #34, !dbg !2267
  call void @llvm.dbg.value(metadata i64 %11, metadata !2266, metadata !DIExpression()) #34, !dbg !2267
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %77, i8* noundef nonnull align 1 %78, i64 noundef %11, i1 noundef false) #34, !dbg !2269
  %79 = load i8, i8* %39, align 8, !dbg !2270
  %80 = and i8 %79, 2, !dbg !2272
  %81 = icmp eq i8 %80, 0, !dbg !2272
  br i1 %81, label %82, label %107, !dbg !2273

82:                                               ; preds = %59
  %83 = load i8*, i8** %7, align 8, !dbg !2274, !tbaa !921
  %84 = getelementptr inbounds %struct._obstack_chunk, %struct._obstack_chunk* %4, i64 0, i32 2, i64 0, !dbg !2275
  %85 = ptrtoint i8* %84 to i64, !dbg !2275
  %86 = sub i64 0, %85, !dbg !2275
  %87 = load i64, i64* %15, align 8, !dbg !2275, !tbaa !927
  %88 = and i64 %87, %86, !dbg !2275
  %89 = getelementptr inbounds %struct._obstack_chunk, %struct._obstack_chunk* %4, i64 0, i32 2, i64 %88, !dbg !2275
  %90 = icmp eq i8* %83, %89, !dbg !2276
  br i1 %90, label %91, label %107, !dbg !2277

91:                                               ; preds = %82
  %92 = getelementptr inbounds %struct._obstack_chunk, %struct._obstack_chunk* %4, i64 0, i32 1, !dbg !2278
  %93 = load %struct._obstack_chunk*, %struct._obstack_chunk** %92, align 8, !dbg !2278, !tbaa !554
  store %struct._obstack_chunk* %93, %struct._obstack_chunk** %62, align 8, !dbg !2280, !tbaa !554
  %94 = bitcast %struct._obstack_chunk* %4 to i8*, !dbg !2281
  call void @llvm.dbg.value(metadata %struct.obstack* %0, metadata !2282, metadata !DIExpression()) #34, !dbg !2288
  call void @llvm.dbg.value(metadata i8* %94, metadata !2287, metadata !DIExpression()) #34, !dbg !2288
  %95 = load i8, i8* %39, align 8, !dbg !2290
  %96 = and i8 %95, 1, !dbg !2290
  %97 = icmp eq i8 %96, 0, !dbg !2292
  br i1 %97, label %104, label %98, !dbg !2293

98:                                               ; preds = %91
  %99 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 8, !dbg !2294
  %100 = bitcast %union.anon.1* %99 to void (i8*, i8*)**, !dbg !2295
  %101 = load void (i8*, i8*)*, void (i8*, i8*)** %100, align 8, !dbg !2295, !tbaa !654
  %102 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 9, !dbg !2296
  %103 = load i8*, i8** %102, align 8, !dbg !2296, !tbaa !2155
  tail call void %101(i8* noundef %103, i8* noundef nonnull %94) #34, !dbg !2297
  br label %107, !dbg !2297

104:                                              ; preds = %91
  %105 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 8, i32 0, !dbg !2298
  %106 = load void (i8*)*, void (i8*)** %105, align 8, !dbg !2298, !tbaa !654
  tail call void %106(i8* noundef nonnull %94) #34, !dbg !2299
  br label %107

107:                                              ; preds = %104, %98, %82, %59
  store i8* %77, i8** %7, align 8, !dbg !2300, !tbaa !921
  %108 = getelementptr inbounds i8, i8* %77, i64 %11, !dbg !2301
  store i8* %108, i8** %5, align 8, !dbg !2302, !tbaa !918
  %109 = load i8, i8* %39, align 8, !dbg !2303
  %110 = and i8 %109, -3, !dbg !2303
  store i8 %110, i8* %39, align 8, !dbg !2303
  ret void, !dbg !2304
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @rpl_obstack_allocated_p(%struct.obstack* nocapture noundef readonly %0, i8* noundef readnone %1) local_unnamed_addr #15 !dbg !2305 {
  call void @llvm.dbg.value(metadata %struct.obstack* %0, metadata !2309, metadata !DIExpression()), !dbg !2314
  call void @llvm.dbg.value(metadata i8* %1, metadata !2310, metadata !DIExpression()), !dbg !2314
  %3 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 1, !dbg !2315
  call void @llvm.dbg.value(metadata %struct._obstack_chunk* undef, metadata !2311, metadata !DIExpression()), !dbg !2314
  %4 = load %struct._obstack_chunk*, %struct._obstack_chunk** %3, align 8, !dbg !2314, !tbaa !554
  call void @llvm.dbg.value(metadata %struct._obstack_chunk* %4, metadata !2311, metadata !DIExpression()), !dbg !2314
  %5 = icmp eq %struct._obstack_chunk* %4, null, !dbg !2316
  br i1 %5, label %18, label %6, !dbg !2317

6:                                                ; preds = %2, %14
  %7 = phi %struct._obstack_chunk* [ %16, %14 ], [ %4, %2 ]
  %8 = bitcast %struct._obstack_chunk* %7 to i8*, !dbg !2318
  %9 = icmp ult i8* %8, %1, !dbg !2319
  br i1 %9, label %10, label %14, !dbg !2320

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct._obstack_chunk, %struct._obstack_chunk* %7, i64 0, i32 0, !dbg !2321
  %12 = load i8*, i8** %11, align 8, !dbg !2321, !tbaa !554
  %13 = icmp ult i8* %12, %1, !dbg !2322
  br i1 %13, label %14, label %18, !dbg !2323

14:                                               ; preds = %6, %10
  %15 = getelementptr inbounds %struct._obstack_chunk, %struct._obstack_chunk* %7, i64 0, i32 1, !dbg !2324
  call void @llvm.dbg.value(metadata %struct._obstack_chunk* undef, metadata !2312, metadata !DIExpression()), !dbg !2325
  call void @llvm.dbg.value(metadata %struct._obstack_chunk* undef, metadata !2311, metadata !DIExpression()), !dbg !2314
  %16 = load %struct._obstack_chunk*, %struct._obstack_chunk** %15, align 8, !dbg !2314, !tbaa !554
  call void @llvm.dbg.value(metadata %struct._obstack_chunk* %16, metadata !2311, metadata !DIExpression()), !dbg !2314
  %17 = icmp eq %struct._obstack_chunk* %16, null, !dbg !2316
  br i1 %17, label %18, label %6, !dbg !2317, !llvm.loop !2326

18:                                               ; preds = %10, %14, %2
  %19 = phi i32 [ 0, %2 ], [ 0, %14 ], [ 1, %10 ], !dbg !2316
  ret i32 %19, !dbg !2328
}

; Function Attrs: nounwind uwtable
define dso_local void @rpl_obstack_free(%struct.obstack* nocapture noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !2329 {
  call void @llvm.dbg.value(metadata %struct.obstack* %0, metadata !2331, metadata !DIExpression()), !dbg !2336
  call void @llvm.dbg.value(metadata i8* %1, metadata !2332, metadata !DIExpression()), !dbg !2336
  %3 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 1, !dbg !2337
  %4 = load %struct._obstack_chunk*, %struct._obstack_chunk** %3, align 8, !dbg !2337, !tbaa !2105
  call void @llvm.dbg.value(metadata %struct._obstack_chunk* %4, metadata !2333, metadata !DIExpression()), !dbg !2336
  %5 = icmp eq %struct._obstack_chunk* %4, null, !dbg !2338
  br i1 %5, label %41, label %6, !dbg !2339

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 10
  %8 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 8
  %9 = bitcast %union.anon.1* %8 to void (i8*, i8*)**
  %10 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 9
  %11 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 8, i32 0
  br label %12, !dbg !2339

12:                                               ; preds = %6, %31
  %13 = phi %struct._obstack_chunk* [ %4, %6 ], [ %22, %31 ]
  call void @llvm.dbg.value(metadata %struct._obstack_chunk* %13, metadata !2333, metadata !DIExpression()), !dbg !2336
  %14 = bitcast %struct._obstack_chunk* %13 to i8*, !dbg !2340
  %15 = icmp ult i8* %14, %1, !dbg !2341
  br i1 %15, label %16, label %20, !dbg !2342

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct._obstack_chunk, %struct._obstack_chunk* %13, i64 0, i32 0, !dbg !2343
  %18 = load i8*, i8** %17, align 8, !dbg !2343, !tbaa !554
  %19 = icmp ult i8* %18, %1, !dbg !2344
  br i1 %19, label %20, label %35, !dbg !2345

20:                                               ; preds = %12, %16
  %21 = getelementptr inbounds %struct._obstack_chunk, %struct._obstack_chunk* %13, i64 0, i32 1, !dbg !2346
  %22 = load %struct._obstack_chunk*, %struct._obstack_chunk** %21, align 8, !dbg !2346, !tbaa !554
  call void @llvm.dbg.value(metadata %struct._obstack_chunk* %22, metadata !2334, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata %struct.obstack* %0, metadata !2282, metadata !DIExpression()) #34, !dbg !2348
  call void @llvm.dbg.value(metadata i8* %14, metadata !2287, metadata !DIExpression()) #34, !dbg !2348
  %23 = load i8, i8* %7, align 8, !dbg !2350
  %24 = and i8 %23, 1, !dbg !2350
  %25 = icmp eq i8 %24, 0, !dbg !2351
  br i1 %25, label %29, label %26, !dbg !2352

26:                                               ; preds = %20
  %27 = load void (i8*, i8*)*, void (i8*, i8*)** %9, align 8, !dbg !2353, !tbaa !654
  %28 = load i8*, i8** %10, align 8, !dbg !2354, !tbaa !2155
  tail call void %27(i8* noundef %28, i8* noundef nonnull %14) #34, !dbg !2355
  br label %31, !dbg !2355

29:                                               ; preds = %20
  %30 = load void (i8*)*, void (i8*)** %11, align 8, !dbg !2356, !tbaa !654
  tail call void %30(i8* noundef nonnull %14) #34, !dbg !2357
  br label %31

31:                                               ; preds = %26, %29
  call void @llvm.dbg.value(metadata %struct._obstack_chunk* %22, metadata !2333, metadata !DIExpression()), !dbg !2336
  %32 = load i8, i8* %7, align 8, !dbg !2358
  %33 = or i8 %32, 2, !dbg !2358
  store i8 %33, i8* %7, align 8, !dbg !2358
  %34 = icmp eq %struct._obstack_chunk* %22, null, !dbg !2338
  br i1 %34, label %41, label %12, !dbg !2339, !llvm.loop !2359

35:                                               ; preds = %16
  %36 = getelementptr inbounds %struct._obstack_chunk, %struct._obstack_chunk* %13, i64 0, i32 0, !dbg !2343
  %37 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 3, !dbg !2361
  store i8* %1, i8** %37, align 8, !dbg !2364, !tbaa !918
  %38 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 2, !dbg !2365
  store i8* %1, i8** %38, align 8, !dbg !2366, !tbaa !921
  %39 = load i8*, i8** %36, align 8, !dbg !2367, !tbaa !554
  %40 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 4, !dbg !2368
  store i8* %39, i8** %40, align 8, !dbg !2369, !tbaa !1207
  store %struct._obstack_chunk* %13, %struct._obstack_chunk** %3, align 8, !dbg !2370, !tbaa !2105
  br label %44, !dbg !2371

41:                                               ; preds = %31, %2
  %42 = icmp eq i8* %1, null, !dbg !2372
  br i1 %42, label %44, label %43, !dbg !2374

43:                                               ; preds = %41
  tail call void @abort() #36, !dbg !2375
  unreachable, !dbg !2375

44:                                               ; preds = %41, %35
  ret void, !dbg !2376
}

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i64 @rpl_obstack_memory_used(%struct.obstack* nocapture noundef readonly %0) local_unnamed_addr #15 !dbg !2377 {
  call void @llvm.dbg.value(metadata %struct.obstack* %0, metadata !2381, metadata !DIExpression()), !dbg !2385
  call void @llvm.dbg.value(metadata i64 0, metadata !2382, metadata !DIExpression()), !dbg !2385
  %2 = getelementptr inbounds %struct.obstack, %struct.obstack* %0, i64 0, i32 1, !dbg !2386
  call void @llvm.dbg.value(metadata %struct._obstack_chunk* undef, metadata !2383, metadata !DIExpression()), !dbg !2387
  %3 = load %struct._obstack_chunk*, %struct._obstack_chunk** %2, align 8, !dbg !2387, !tbaa !554
  call void @llvm.dbg.value(metadata %struct._obstack_chunk* %3, metadata !2383, metadata !DIExpression()), !dbg !2387
  call void @llvm.dbg.value(metadata i64 0, metadata !2382, metadata !DIExpression()), !dbg !2385
  %4 = icmp eq %struct._obstack_chunk* %3, null, !dbg !2388
  br i1 %4, label %5, label %7, !dbg !2390

5:                                                ; preds = %7, %1
  %6 = phi i64 [ 0, %1 ], [ %15, %7 ], !dbg !2385
  ret i64 %6, !dbg !2391

7:                                                ; preds = %1, %7
  %8 = phi %struct._obstack_chunk* [ %17, %7 ], [ %3, %1 ]
  %9 = phi i64 [ %15, %7 ], [ 0, %1 ]
  call void @llvm.dbg.value(metadata i64 %9, metadata !2382, metadata !DIExpression()), !dbg !2385
  %10 = getelementptr inbounds %struct._obstack_chunk, %struct._obstack_chunk* %8, i64 0, i32 0, !dbg !2392
  %11 = load i8*, i8** %10, align 8, !dbg !2392, !tbaa !554
  %12 = ptrtoint i8* %11 to i64, !dbg !2394
  %13 = ptrtoint %struct._obstack_chunk* %8 to i64, !dbg !2394
  %14 = sub i64 %9, %13, !dbg !2394
  %15 = add i64 %14, %12, !dbg !2395
  call void @llvm.dbg.value(metadata i64 %15, metadata !2382, metadata !DIExpression()), !dbg !2385
  %16 = getelementptr inbounds %struct._obstack_chunk, %struct._obstack_chunk* %8, i64 0, i32 1, !dbg !2396
  call void @llvm.dbg.value(metadata %struct._obstack_chunk* undef, metadata !2383, metadata !DIExpression()), !dbg !2387
  %17 = load %struct._obstack_chunk*, %struct._obstack_chunk** %16, align 8, !dbg !2387, !tbaa !554
  call void @llvm.dbg.value(metadata %struct._obstack_chunk* %17, metadata !2383, metadata !DIExpression()), !dbg !2387
  %18 = icmp eq %struct._obstack_chunk* %17, null, !dbg !2388
  br i1 %18, label %5, label %7, !dbg !2390, !llvm.loop !2397
}

; Function Attrs: mustprogress nofree nounwind uwtable willreturn
define dso_local void @set_program_name(i8* noundef nonnull %0) local_unnamed_addr #22 !dbg !2399 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2401, metadata !DIExpression()), !dbg !2404
  %2 = tail call i8* @strrchr(i8* noundef nonnull %0, i32 noundef 47) #35, !dbg !2405
  call void @llvm.dbg.value(metadata i8* %2, metadata !2402, metadata !DIExpression()), !dbg !2404
  %3 = icmp eq i8* %2, null, !dbg !2406
  %4 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !2406
  %5 = select i1 %3, i8* %0, i8* %4, !dbg !2406
  call void @llvm.dbg.value(metadata i8* %5, metadata !2403, metadata !DIExpression()), !dbg !2404
  %6 = ptrtoint i8* %5 to i64, !dbg !2407
  %7 = ptrtoint i8* %0 to i64, !dbg !2407
  %8 = sub i64 %6, %7, !dbg !2407
  %9 = icmp sgt i64 %8, 6, !dbg !2409
  br i1 %9, label %10, label %19, !dbg !2410

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, i8* %5, i64 -7, !dbg !2411
  call void @llvm.dbg.value(metadata i8* %11, metadata !2412, metadata !DIExpression()) #34, !dbg !2419
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.179, i64 0, i64 0), metadata !2417, metadata !DIExpression()) #34, !dbg !2419
  call void @llvm.dbg.value(metadata i64 7, metadata !2418, metadata !DIExpression()) #34, !dbg !2419
  %12 = tail call i32 @bcmp(i8* noundef nonnull dereferenceable(7) %11, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.179, i64 0, i64 0), i64 7) #34, !dbg !2421
  %13 = icmp eq i32 %12, 0, !dbg !2422
  br i1 %13, label %14, label %19, !dbg !2423

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %5, metadata !2401, metadata !DIExpression()), !dbg !2404
  %15 = tail call i32 @strncmp(i8* noundef nonnull %5, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.180, i64 0, i64 0), i64 noundef 3) #35, !dbg !2424
  %16 = icmp eq i32 %15, 0, !dbg !2427
  %17 = select i1 %16, i64 3, i64 0, !dbg !2428
  %18 = getelementptr i8, i8* %5, i64 %17, !dbg !2428
  br label %19, !dbg !2428

19:                                               ; preds = %14, %10, %1
  %20 = phi i8* [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi i8* [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !2404
  call void @llvm.dbg.value(metadata i8* %21, metadata !2403, metadata !DIExpression()), !dbg !2404
  call void @llvm.dbg.value(metadata i8* %20, metadata !2401, metadata !DIExpression()), !dbg !2404
  store i8* %20, i8** @program_name, align 8, !dbg !2429, !tbaa !554
  store i8* %20, i8** @program_invocation_name, align 8, !dbg !2430, !tbaa !554
  store i8* %21, i8** @program_invocation_short_name, align 8, !dbg !2431, !tbaa !554
  ret void, !dbg !2432
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strrchr(i8* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #23

; Function Attrs: nounwind uwtable
define dso_local i8* @proper_name_lite(i8* noundef %0, i8* noundef readnone %1) local_unnamed_addr #12 !dbg !325 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !332, metadata !DIExpression()), !dbg !2433
  call void @llvm.dbg.value(metadata i8* %1, metadata !333, metadata !DIExpression()), !dbg !2433
  %5 = tail call i8* @dcgettext(i8* noundef null, i8* noundef %0, i32 noundef 5) #34, !dbg !2434
  call void @llvm.dbg.value(metadata i8* %5, metadata !334, metadata !DIExpression()), !dbg !2433
  %6 = icmp eq i8* %5, %0, !dbg !2435
  br i1 %6, label %7, label %17, !dbg !2437

7:                                                ; preds = %2
  %8 = bitcast i64* %4 to %struct.__mbstate_t*
  %9 = bitcast i32* %3 to i8*, !dbg !2438
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #34, !dbg !2438
  %10 = bitcast i64* %4 to i8*, !dbg !2439
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #34, !dbg !2439
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !340, metadata !DIExpression()), !dbg !2440
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %8, metadata !2441, metadata !DIExpression()) #34, !dbg !2448
  call void @llvm.dbg.value(metadata i8* %10, metadata !2450, metadata !DIExpression()) #34, !dbg !2457
  call void @llvm.dbg.value(metadata i32 0, metadata !2455, metadata !DIExpression()) #34, !dbg !2457
  call void @llvm.dbg.value(metadata i64 8, metadata !2456, metadata !DIExpression()) #34, !dbg !2457
  store i64 0, i64* %4, align 8, !dbg !2459
  call void @llvm.dbg.value(metadata i32* %3, metadata !335, metadata !DIExpression(DW_OP_deref)), !dbg !2433
  %11 = call i64 @mbrtoc32(i32* noundef nonnull %3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @proper_name_lite.utf07FF, i64 0, i64 0), i64 noundef 2, %struct.__mbstate_t* noundef nonnull %8) #34, !dbg !2460
  %12 = icmp eq i64 %11, 2, !dbg !2462
  %13 = load i32, i32* %3, align 4
  call void @llvm.dbg.value(metadata i32 %13, metadata !335, metadata !DIExpression()), !dbg !2433
  %14 = icmp eq i32 %13, 2047
  %15 = select i1 %12, i1 %14, i1 false, !dbg !2463
  %16 = select i1 %15, i8* %1, i8* %0, !dbg !2433
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #34, !dbg !2464
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #34, !dbg !2464
  br label %17

17:                                               ; preds = %2, %7
  %18 = phi i8* [ %16, %7 ], [ %5, %2 ], !dbg !2433
  ret i8* %18, !dbg !2464
}

; Function Attrs: nounwind
declare !dbg !2465 i64 @mbrtoc32(i32* noundef, i8* noundef, i64 noundef, %struct.__mbstate_t* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* noundef %0) local_unnamed_addr #12 !dbg !2471 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2476, metadata !DIExpression()), !dbg !2479
  %2 = tail call i32* @__errno_location() #37, !dbg !2480
  %3 = load i32, i32* %2, align 4, !dbg !2480, !tbaa !645
  call void @llvm.dbg.value(metadata i32 %3, metadata !2477, metadata !DIExpression()), !dbg !2479
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2481
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2481
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2481
  %7 = tail call noalias nonnull i8* @xmemdup(i8* noundef %6, i64 noundef 56) #40, !dbg !2482
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !2482
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !2478, metadata !DIExpression()), !dbg !2479
  store i32 %3, i32* %2, align 4, !dbg !2483, !tbaa !645
  ret %struct.quoting_options* %8, !dbg !2484
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* noundef readonly %0) local_unnamed_addr #15 !dbg !2485 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2491, metadata !DIExpression()), !dbg !2492
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !2493
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2493
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2494
  %5 = load i32, i32* %4, align 8, !dbg !2494, !tbaa !2495
  ret i32 %5, !dbg !2497
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* noundef writeonly %0, i32 noundef %1) local_unnamed_addr #17 !dbg !2498 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2502, metadata !DIExpression()), !dbg !2504
  call void @llvm.dbg.value(metadata i32 %1, metadata !2503, metadata !DIExpression()), !dbg !2504
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2505
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2505
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2506
  store i32 %1, i32* %5, align 8, !dbg !2507, !tbaa !2495
  ret void, !dbg !2508
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #24 !dbg !2509 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2513, metadata !DIExpression()), !dbg !2521
  call void @llvm.dbg.value(metadata i8 %1, metadata !2514, metadata !DIExpression()), !dbg !2521
  call void @llvm.dbg.value(metadata i32 %2, metadata !2515, metadata !DIExpression()), !dbg !2521
  call void @llvm.dbg.value(metadata i8 %1, metadata !2516, metadata !DIExpression()), !dbg !2521
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2522
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2522
  %6 = lshr i8 %1, 5, !dbg !2523
  %7 = zext i8 %6 to i64, !dbg !2523
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !2524
  call void @llvm.dbg.value(metadata i32* %8, metadata !2517, metadata !DIExpression()), !dbg !2521
  %9 = and i8 %1, 31, !dbg !2525
  %10 = zext i8 %9 to i32, !dbg !2525
  call void @llvm.dbg.value(metadata i32 %10, metadata !2519, metadata !DIExpression()), !dbg !2521
  %11 = load i32, i32* %8, align 4, !dbg !2526, !tbaa !645
  %12 = lshr i32 %11, %10, !dbg !2527
  %13 = and i32 %12, 1, !dbg !2528
  call void @llvm.dbg.value(metadata i32 %13, metadata !2520, metadata !DIExpression()), !dbg !2521
  %14 = and i32 %2, 1, !dbg !2529
  %15 = xor i32 %13, %14, !dbg !2530
  %16 = shl i32 %15, %10, !dbg !2531
  %17 = xor i32 %16, %11, !dbg !2532
  store i32 %17, i32* %8, align 4, !dbg !2532, !tbaa !645
  ret i32 %13, !dbg !2533
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* noundef %0, i32 noundef %1) local_unnamed_addr #24 !dbg !2534 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2538, metadata !DIExpression()), !dbg !2541
  call void @llvm.dbg.value(metadata i32 %1, metadata !2539, metadata !DIExpression()), !dbg !2541
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2542
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2544
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2538, metadata !DIExpression()), !dbg !2541
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2545
  %6 = load i32, i32* %5, align 4, !dbg !2545, !tbaa !2546
  call void @llvm.dbg.value(metadata i32 %6, metadata !2540, metadata !DIExpression()), !dbg !2541
  store i32 %1, i32* %5, align 4, !dbg !2547, !tbaa !2546
  ret i32 %6, !dbg !2548
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* noundef writeonly %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2549 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2553, metadata !DIExpression()), !dbg !2556
  call void @llvm.dbg.value(metadata i8* %1, metadata !2554, metadata !DIExpression()), !dbg !2556
  call void @llvm.dbg.value(metadata i8* %2, metadata !2555, metadata !DIExpression()), !dbg !2556
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2557
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2559
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2553, metadata !DIExpression()), !dbg !2556
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2560
  store i32 10, i32* %6, align 8, !dbg !2561, !tbaa !2495
  %7 = icmp ne i8* %1, null, !dbg !2562
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !2564
  br i1 %9, label %11, label %10, !dbg !2564

10:                                               ; preds = %3
  tail call void @abort() #36, !dbg !2565
  unreachable, !dbg !2565

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2566
  store i8* %1, i8** %12, align 8, !dbg !2567, !tbaa !2568
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2569
  store i8* %2, i8** %13, align 8, !dbg !2570, !tbaa !2571
  ret void, !dbg !2572
}

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef %4) local_unnamed_addr #12 !dbg !2573 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2577, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i64 %1, metadata !2578, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i8* %2, metadata !2579, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i64 %3, metadata !2580, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2581, metadata !DIExpression()), !dbg !2585
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !2586
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !2586
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !2582, metadata !DIExpression()), !dbg !2585
  %8 = tail call i32* @__errno_location() #37, !dbg !2587
  %9 = load i32, i32* %8, align 4, !dbg !2587, !tbaa !645
  call void @llvm.dbg.value(metadata i32 %9, metadata !2583, metadata !DIExpression()), !dbg !2585
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !2588
  %11 = load i32, i32* %10, align 8, !dbg !2588, !tbaa !2495
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !2589
  %13 = load i32, i32* %12, align 4, !dbg !2589, !tbaa !2546
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !2590
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !2591
  %16 = load i8*, i8** %15, align 8, !dbg !2591, !tbaa !2568
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !2592
  %18 = load i8*, i8** %17, align 8, !dbg !2592, !tbaa !2571
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %11, i32 noundef %13, i32* noundef nonnull %14, i8* noundef %16, i8* noundef %18), !dbg !2593
  call void @llvm.dbg.value(metadata i64 %19, metadata !2584, metadata !DIExpression()), !dbg !2585
  store i32 %9, i32* %8, align 4, !dbg !2594, !tbaa !645
  ret i64 %19, !dbg !2595
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32* noundef %6, i8* noundef %7, i8* noundef %8) unnamed_addr #12 !dbg !2596 {
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = bitcast i64* %14 to %struct.__mbstate_t*
  %16 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2602, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i64 %1, metadata !2603, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i8* %2, metadata !2604, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i64 %3, metadata !2605, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i32 %4, metadata !2606, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i32 %5, metadata !2607, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i32* %6, metadata !2608, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i8* %7, metadata !2609, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i8* %8, metadata !2610, metadata !DIExpression()), !dbg !2664
  %17 = tail call i64 @__ctype_get_mb_cur_max() #34, !dbg !2665
  %18 = icmp eq i64 %17, 1, !dbg !2666
  call void @llvm.dbg.value(metadata i1 %18, metadata !2611, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2664
  call void @llvm.dbg.value(metadata i64 0, metadata !2612, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i64 0, metadata !2613, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i8* null, metadata !2614, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i64 0, metadata !2615, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i8 0, metadata !2616, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i32 %5, metadata !2617, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2664
  call void @llvm.dbg.value(metadata i8 0, metadata !2618, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i8 1, metadata !2619, metadata !DIExpression()), !dbg !2664
  %19 = and i32 %5, 2, !dbg !2667
  %20 = icmp ne i32 %19, 0, !dbg !2667
  %21 = bitcast i64* %13 to %struct.__mbstate_t*
  %22 = bitcast i32* %12 to i8*
  %23 = bitcast i64* %13 to i8*
  %24 = bitcast i64* %11 to %struct.__mbstate_t*
  %25 = bitcast i32* %10 to i8*
  %26 = bitcast i64* %11 to i8*
  %27 = getelementptr inbounds i8, i8* %2, i64 1
  %28 = and i32 %5, 4
  %29 = icmp eq i32 %28, 0
  %30 = and i32 %5, 1
  %31 = icmp eq i32 %30, 0
  %32 = bitcast i64* %14 to i8*
  %33 = bitcast i32* %16 to i8*
  %34 = icmp ne i32* %6, null
  %35 = icmp eq i32* %6, null
  br label %36, !dbg !2667

36:                                               ; preds = %608, %9
  %37 = phi i32 [ %4, %9 ], [ 2, %608 ]
  %38 = phi i8* [ %7, %9 ], [ %113, %608 ]
  %39 = phi i8* [ %8, %9 ], [ %114, %608 ]
  %40 = phi i64 [ %3, %9 ], [ %133, %608 ]
  %41 = phi i64 [ 0, %9 ], [ %135, %608 ], !dbg !2668
  %42 = phi i8* [ null, %9 ], [ %116, %608 ], !dbg !2669
  %43 = phi i64 [ 0, %9 ], [ %117, %608 ], !dbg !2670
  %44 = phi i1 [ false, %9 ], [ %118, %608 ]
  %45 = phi i1 [ %20, %9 ], [ false, %608 ]
  %46 = phi i1 [ false, %9 ], [ %136, %608 ]
  %47 = phi i1 [ true, %9 ], [ false, %608 ]
  %48 = phi i64 [ %1, %9 ], [ %135, %608 ]
  call void @llvm.dbg.value(metadata i64 %48, metadata !2603, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i8 poison, metadata !2619, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i8 poison, metadata !2618, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i8 poison, metadata !2617, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i8 poison, metadata !2616, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i64 %43, metadata !2615, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i8* %42, metadata !2614, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i64 %41, metadata !2613, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i64 0, metadata !2612, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i64 %40, metadata !2605, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i8* %39, metadata !2610, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i8* %38, metadata !2609, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i32 %37, metadata !2606, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.label(metadata !2657), !dbg !2671
  call void @llvm.dbg.value(metadata i8 0, metadata !2620, metadata !DIExpression()), !dbg !2664
  switch i32 %37, label %110 [
    i32 6, label %49
    i32 5, label %50
    i32 7, label %111
    i32 0, label %109
    i32 2, label %104
    i32 4, label %101
    i32 3, label %100
    i32 1, label %102
    i32 10, label %79
    i32 8, label %54
    i32 9, label %54
  ], !dbg !2672

49:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !2617, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i32 5, metadata !2606, metadata !DIExpression()), !dbg !2664
  br label %111, !dbg !2673

50:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !2617, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i32 5, metadata !2606, metadata !DIExpression()), !dbg !2664
  br i1 %45, label %111, label %51, !dbg !2673

51:                                               ; preds = %50
  %52 = icmp eq i64 %48, 0, !dbg !2674
  br i1 %52, label %111, label %53, !dbg !2678

53:                                               ; preds = %51
  store i8 34, i8* %0, align 1, !dbg !2674, !tbaa !654
  br label %111, !dbg !2674

54:                                               ; preds = %36, %36
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.193, i64 0, i64 0), metadata !402, metadata !DIExpression()) #34, !dbg !2679
  call void @llvm.dbg.value(metadata i32 %37, metadata !403, metadata !DIExpression()) #34, !dbg !2679
  %55 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.194, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.193, i64 0, i64 0), i32 noundef 5) #34, !dbg !2683
  call void @llvm.dbg.value(metadata i8* %55, metadata !404, metadata !DIExpression()) #34, !dbg !2679
  %56 = icmp eq i8* %55, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.193, i64 0, i64 0), !dbg !2684
  br i1 %56, label %57, label %66, !dbg !2686

57:                                               ; preds = %54
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %22) #34, !dbg !2687
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #34, !dbg !2688
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %21, metadata !406, metadata !DIExpression()) #34, !dbg !2689
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %21, metadata !2690, metadata !DIExpression()) #34, !dbg !2696
  call void @llvm.dbg.value(metadata i8* %23, metadata !2698, metadata !DIExpression()) #34, !dbg !2703
  call void @llvm.dbg.value(metadata i32 0, metadata !2701, metadata !DIExpression()) #34, !dbg !2703
  call void @llvm.dbg.value(metadata i64 8, metadata !2702, metadata !DIExpression()) #34, !dbg !2703
  store i64 0, i64* %13, align 8, !dbg !2705
  call void @llvm.dbg.value(metadata i32* %12, metadata !405, metadata !DIExpression(DW_OP_deref)) #34, !dbg !2679
  %58 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %12, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %21) #34, !dbg !2706
  %59 = icmp eq i64 %58, 3, !dbg !2708
  %60 = load i32, i32* %12, align 4
  call void @llvm.dbg.value(metadata i32 %60, metadata !405, metadata !DIExpression()) #34, !dbg !2679
  %61 = icmp eq i32 %60, 8216
  %62 = select i1 %59, i1 %61, i1 false, !dbg !2709
  %63 = icmp eq i32 %37, 9, !dbg !2709
  %64 = select i1 %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.195, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.196, i64 0, i64 0), !dbg !2709
  %65 = select i1 %62, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i8* %64, !dbg !2709
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #34, !dbg !2710
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %22) #34, !dbg !2710
  br label %66

66:                                               ; preds = %54, %57
  %67 = phi i8* [ %65, %57 ], [ %55, %54 ], !dbg !2679
  call void @llvm.dbg.value(metadata i8* %67, metadata !2609, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.196, i64 0, i64 0), metadata !402, metadata !DIExpression()) #34, !dbg !2711
  call void @llvm.dbg.value(metadata i32 %37, metadata !403, metadata !DIExpression()) #34, !dbg !2711
  %68 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.194, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.196, i64 0, i64 0), i32 noundef 5) #34, !dbg !2713
  call void @llvm.dbg.value(metadata i8* %68, metadata !404, metadata !DIExpression()) #34, !dbg !2711
  %69 = icmp eq i8* %68, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.196, i64 0, i64 0), !dbg !2714
  br i1 %69, label %70, label %79, !dbg !2715

70:                                               ; preds = %66
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %25) #34, !dbg !2716
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %26) #34, !dbg !2717
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %24, metadata !406, metadata !DIExpression()) #34, !dbg !2718
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %24, metadata !2690, metadata !DIExpression()) #34, !dbg !2719
  call void @llvm.dbg.value(metadata i8* %26, metadata !2698, metadata !DIExpression()) #34, !dbg !2721
  call void @llvm.dbg.value(metadata i32 0, metadata !2701, metadata !DIExpression()) #34, !dbg !2721
  call void @llvm.dbg.value(metadata i64 8, metadata !2702, metadata !DIExpression()) #34, !dbg !2721
  store i64 0, i64* %11, align 8, !dbg !2723
  call void @llvm.dbg.value(metadata i32* %10, metadata !405, metadata !DIExpression(DW_OP_deref)) #34, !dbg !2711
  %71 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %10, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %24) #34, !dbg !2724
  %72 = icmp eq i64 %71, 3, !dbg !2725
  %73 = load i32, i32* %10, align 4
  call void @llvm.dbg.value(metadata i32 %73, metadata !405, metadata !DIExpression()) #34, !dbg !2711
  %74 = icmp eq i32 %73, 8216
  %75 = select i1 %72, i1 %74, i1 false, !dbg !2726
  %76 = icmp eq i32 %37, 9, !dbg !2726
  %77 = select i1 %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.195, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.196, i64 0, i64 0), !dbg !2726
  %78 = select i1 %75, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 1, i64 0), i8* %77, !dbg !2726
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %26) #34, !dbg !2727
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %25) #34, !dbg !2727
  br label %79

79:                                               ; preds = %70, %66, %36
  %80 = phi i8* [ %38, %36 ], [ %67, %66 ], [ %67, %70 ]
  %81 = phi i8* [ %39, %36 ], [ %68, %66 ], [ %78, %70 ]
  call void @llvm.dbg.value(metadata i8* %81, metadata !2610, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i8* %80, metadata !2609, metadata !DIExpression()), !dbg !2664
  br i1 %45, label %97, label %82, !dbg !2728

82:                                               ; preds = %79
  call void @llvm.dbg.value(metadata i8* %80, metadata !2621, metadata !DIExpression()), !dbg !2729
  call void @llvm.dbg.value(metadata i64 0, metadata !2612, metadata !DIExpression()), !dbg !2664
  %83 = load i8, i8* %80, align 1, !dbg !2730, !tbaa !654
  %84 = icmp eq i8 %83, 0, !dbg !2732
  br i1 %84, label %97, label %85, !dbg !2732

85:                                               ; preds = %82, %92
  %86 = phi i8 [ %95, %92 ], [ %83, %82 ]
  %87 = phi i8* [ %94, %92 ], [ %80, %82 ]
  %88 = phi i64 [ %93, %92 ], [ 0, %82 ]
  call void @llvm.dbg.value(metadata i8* %87, metadata !2621, metadata !DIExpression()), !dbg !2729
  call void @llvm.dbg.value(metadata i64 %88, metadata !2612, metadata !DIExpression()), !dbg !2664
  %89 = icmp ult i64 %88, %48, !dbg !2733
  br i1 %89, label %90, label %92, !dbg !2736

90:                                               ; preds = %85
  %91 = getelementptr inbounds i8, i8* %0, i64 %88, !dbg !2733
  store i8 %86, i8* %91, align 1, !dbg !2733, !tbaa !654
  br label %92, !dbg !2733

92:                                               ; preds = %90, %85
  %93 = add i64 %88, 1, !dbg !2736
  call void @llvm.dbg.value(metadata i64 %93, metadata !2612, metadata !DIExpression()), !dbg !2664
  %94 = getelementptr inbounds i8, i8* %87, i64 1, !dbg !2737
  call void @llvm.dbg.value(metadata i8* %94, metadata !2621, metadata !DIExpression()), !dbg !2729
  %95 = load i8, i8* %94, align 1, !dbg !2730, !tbaa !654
  %96 = icmp eq i8 %95, 0, !dbg !2732
  br i1 %96, label %97, label %85, !dbg !2732, !llvm.loop !2738

97:                                               ; preds = %92, %82, %79
  %98 = phi i64 [ 0, %79 ], [ 0, %82 ], [ %93, %92 ], !dbg !2740
  call void @llvm.dbg.value(metadata i64 %98, metadata !2612, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i8 1, metadata !2616, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i8* %81, metadata !2614, metadata !DIExpression()), !dbg !2664
  %99 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %81) #35, !dbg !2741
  call void @llvm.dbg.value(metadata i64 %99, metadata !2615, metadata !DIExpression()), !dbg !2664
  br label %111, !dbg !2742

100:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 1, metadata !2616, metadata !DIExpression()), !dbg !2664
  br label %102, !dbg !2743

101:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !2617, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i8 poison, metadata !2616, metadata !DIExpression()), !dbg !2664
  br i1 %45, label %102, label %105, !dbg !2744

102:                                              ; preds = %101, %100, %36
  %103 = phi i1 [ %44, %101 ], [ %44, %36 ], [ true, %100 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2617, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i8 poison, metadata !2616, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i32 2, metadata !2606, metadata !DIExpression()), !dbg !2664
  br label %111, !dbg !2745

104:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !2617, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i8 poison, metadata !2616, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i32 2, metadata !2606, metadata !DIExpression()), !dbg !2664
  br i1 %45, label %111, label %105, !dbg !2745

105:                                              ; preds = %101, %104
  %106 = phi i1 [ %44, %104 ], [ true, %101 ]
  %107 = icmp eq i64 %48, 0, !dbg !2746
  br i1 %107, label %111, label %108, !dbg !2750

108:                                              ; preds = %105
  store i8 39, i8* %0, align 1, !dbg !2746, !tbaa !654
  br label %111, !dbg !2746

109:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 0, metadata !2617, metadata !DIExpression()), !dbg !2664
  br label %111, !dbg !2751

110:                                              ; preds = %36
  call void @abort() #36, !dbg !2752
  unreachable, !dbg !2752

111:                                              ; preds = %102, %49, %104, %108, %105, %36, %50, %53, %51, %109, %97
  %112 = phi i32 [ 0, %109 ], [ %37, %97 ], [ 5, %51 ], [ 5, %53 ], [ 5, %50 ], [ %37, %36 ], [ 2, %105 ], [ 2, %108 ], [ 2, %104 ], [ 5, %49 ], [ 2, %102 ]
  %113 = phi i8* [ %38, %109 ], [ %80, %97 ], [ %38, %51 ], [ %38, %53 ], [ %38, %50 ], [ %38, %36 ], [ %38, %105 ], [ %38, %108 ], [ %38, %104 ], [ %38, %49 ], [ %38, %102 ]
  %114 = phi i8* [ %39, %109 ], [ %81, %97 ], [ %39, %51 ], [ %39, %53 ], [ %39, %50 ], [ %39, %36 ], [ %39, %105 ], [ %39, %108 ], [ %39, %104 ], [ %39, %49 ], [ %39, %102 ]
  %115 = phi i64 [ 0, %109 ], [ %98, %97 ], [ 1, %51 ], [ 1, %53 ], [ 0, %50 ], [ 0, %36 ], [ 1, %105 ], [ 1, %108 ], [ 0, %104 ], [ 0, %49 ], [ 0, %102 ], !dbg !2740
  %116 = phi i8* [ %42, %109 ], [ %81, %97 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.195, i64 0, i64 0), %51 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.195, i64 0, i64 0), %53 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.195, i64 0, i64 0), %50 ], [ %42, %36 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.196, i64 0, i64 0), %105 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.196, i64 0, i64 0), %108 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.196, i64 0, i64 0), %104 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.195, i64 0, i64 0), %49 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.196, i64 0, i64 0), %102 ], !dbg !2664
  %117 = phi i64 [ %43, %109 ], [ %99, %97 ], [ 1, %51 ], [ 1, %53 ], [ 1, %50 ], [ %43, %36 ], [ 1, %105 ], [ 1, %108 ], [ 1, %104 ], [ 1, %49 ], [ 1, %102 ], !dbg !2664
  %118 = phi i1 [ %44, %109 ], [ true, %97 ], [ true, %51 ], [ true, %53 ], [ true, %50 ], [ true, %36 ], [ %106, %105 ], [ %106, %108 ], [ %44, %104 ], [ true, %49 ], [ %103, %102 ]
  %119 = phi i1 [ false, %109 ], [ %45, %97 ], [ false, %51 ], [ false, %53 ], [ true, %50 ], [ false, %36 ], [ false, %105 ], [ false, %108 ], [ true, %104 ], [ true, %49 ], [ true, %102 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2617, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i8 poison, metadata !2616, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i64 %117, metadata !2615, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i8* %116, metadata !2614, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i64 %115, metadata !2612, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i8* %114, metadata !2610, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i8* %113, metadata !2609, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i32 %112, metadata !2606, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i64 0, metadata !2626, metadata !DIExpression()), !dbg !2753
  %120 = icmp ne i32 %112, 2
  %121 = and i1 %120, %118
  %122 = icmp ne i64 %117, 0
  %123 = select i1 %121, i1 %122, i1 false
  %124 = icmp ugt i64 %117, 1
  %125 = xor i1 %119, true
  %126 = icmp eq i32 %112, 2
  %127 = select i1 %119, i1 %122, i1 false
  %128 = or i1 %120, %125
  %129 = and i1 %126, %119
  %130 = xor i1 %118, true
  %131 = and i1 %34, %119
  br label %132, !dbg !2754

132:                                              ; preds = %586, %111
  %133 = phi i64 [ %40, %111 ], [ %587, %586 ]
  %134 = phi i64 [ %115, %111 ], [ %588, %586 ], !dbg !2740
  %135 = phi i64 [ %41, %111 ], [ %589, %586 ], !dbg !2668
  %136 = phi i1 [ %46, %111 ], [ %590, %586 ]
  %137 = phi i1 [ %47, %111 ], [ %591, %586 ]
  %138 = phi i1 [ false, %111 ], [ %592, %586 ]
  %139 = phi i64 [ 0, %111 ], [ %595, %586 ], !dbg !2753
  %140 = phi i64 [ %48, %111 ], [ %594, %586 ]
  call void @llvm.dbg.value(metadata i64 %140, metadata !2603, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i64 %139, metadata !2626, metadata !DIExpression()), !dbg !2753
  call void @llvm.dbg.value(metadata i8 poison, metadata !2620, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i8 poison, metadata !2619, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i8 poison, metadata !2618, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i64 %135, metadata !2613, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i64 %134, metadata !2612, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i64 %133, metadata !2605, metadata !DIExpression()), !dbg !2664
  %141 = icmp eq i64 %133, -1, !dbg !2755
  br i1 %141, label %142, label %146, !dbg !2756

142:                                              ; preds = %132
  %143 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !2757
  %144 = load i8, i8* %143, align 1, !dbg !2757, !tbaa !654
  %145 = icmp eq i8 %144, 0, !dbg !2758
  br i1 %145, label %596, label %148, !dbg !2759

146:                                              ; preds = %132
  %147 = icmp eq i64 %139, %133, !dbg !2760
  br i1 %147, label %596, label %148, !dbg !2759

148:                                              ; preds = %142, %146
  call void @llvm.dbg.value(metadata i8 0, metadata !2628, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 0, metadata !2631, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 0, metadata !2632, metadata !DIExpression()), !dbg !2761
  br i1 %123, label %149, label %163, !dbg !2762

149:                                              ; preds = %148
  %150 = add i64 %139, %117, !dbg !2764
  %151 = select i1 %141, i1 %124, i1 false, !dbg !2765
  br i1 %151, label %152, label %154, !dbg !2765

152:                                              ; preds = %149
  %153 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #35, !dbg !2766
  call void @llvm.dbg.value(metadata i64 %153, metadata !2605, metadata !DIExpression()), !dbg !2664
  br label %154, !dbg !2767

154:                                              ; preds = %149, %152
  %155 = phi i64 [ %153, %152 ], [ %133, %149 ], !dbg !2767
  call void @llvm.dbg.value(metadata i64 %155, metadata !2605, metadata !DIExpression()), !dbg !2664
  %156 = icmp ugt i64 %150, %155, !dbg !2768
  br i1 %156, label %163, label %157, !dbg !2769

157:                                              ; preds = %154
  %158 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !2770
  call void @llvm.dbg.value(metadata i8* %158, metadata !2771, metadata !DIExpression()) #34, !dbg !2776
  call void @llvm.dbg.value(metadata i8* %116, metadata !2774, metadata !DIExpression()) #34, !dbg !2776
  call void @llvm.dbg.value(metadata i64 %117, metadata !2775, metadata !DIExpression()) #34, !dbg !2776
  %159 = call i32 @bcmp(i8* %158, i8* %116, i64 %117) #34, !dbg !2778
  %160 = icmp ne i32 %159, 0, !dbg !2779
  %161 = or i1 %160, %125, !dbg !2780
  %162 = xor i1 %160, true, !dbg !2780
  br i1 %161, label %163, label %647, !dbg !2780

163:                                              ; preds = %157, %154, %148
  %164 = phi i64 [ %155, %157 ], [ %155, %154 ], [ %133, %148 ]
  %165 = phi i1 [ %162, %157 ], [ false, %154 ], [ false, %148 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2628, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %164, metadata !2605, metadata !DIExpression()), !dbg !2664
  %166 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !2781
  %167 = load i8, i8* %166, align 1, !dbg !2781, !tbaa !654
  call void @llvm.dbg.value(metadata i8 %167, metadata !2633, metadata !DIExpression()), !dbg !2761
  switch i8 %167, label %298 [
    i8 0, label %168
    i8 63, label %216
    i8 7, label %263
    i8 8, label %252
    i8 12, label %253
    i8 10, label %261
    i8 13, label %254
    i8 9, label %255
    i8 11, label %256
    i8 92, label %257
    i8 123, label %265
    i8 125, label %265
    i8 35, label %269
    i8 126, label %269
    i8 32, label %271
    i8 33, label %272
    i8 34, label %272
    i8 36, label %272
    i8 38, label %272
    i8 40, label %272
    i8 41, label %272
    i8 42, label %272
    i8 59, label %272
    i8 60, label %272
    i8 61, label %272
    i8 62, label %272
    i8 91, label %272
    i8 94, label %272
    i8 96, label %272
    i8 124, label %272
    i8 39, label %275
    i8 37, label %456
    i8 43, label %456
    i8 44, label %456
    i8 45, label %456
    i8 46, label %456
    i8 47, label %456
    i8 48, label %456
    i8 49, label %456
    i8 50, label %456
    i8 51, label %456
    i8 52, label %456
    i8 53, label %456
    i8 54, label %456
    i8 55, label %456
    i8 56, label %456
    i8 57, label %456
    i8 58, label %456
    i8 65, label %456
    i8 66, label %456
    i8 67, label %456
    i8 68, label %456
    i8 69, label %456
    i8 70, label %456
    i8 71, label %456
    i8 72, label %456
    i8 73, label %456
    i8 74, label %456
    i8 75, label %456
    i8 76, label %456
    i8 77, label %456
    i8 78, label %456
    i8 79, label %456
    i8 80, label %456
    i8 81, label %456
    i8 82, label %456
    i8 83, label %456
    i8 84, label %456
    i8 85, label %456
    i8 86, label %456
    i8 87, label %456
    i8 88, label %456
    i8 89, label %456
    i8 90, label %456
    i8 93, label %456
    i8 95, label %456
    i8 97, label %456
    i8 98, label %456
    i8 99, label %456
    i8 100, label %456
    i8 101, label %456
    i8 102, label %456
    i8 103, label %456
    i8 104, label %456
    i8 105, label %456
    i8 106, label %456
    i8 107, label %456
    i8 108, label %456
    i8 109, label %456
    i8 110, label %456
    i8 111, label %456
    i8 112, label %456
    i8 113, label %456
    i8 114, label %456
    i8 115, label %456
    i8 116, label %456
    i8 117, label %456
    i8 118, label %456
    i8 119, label %456
    i8 120, label %456
    i8 121, label %456
    i8 122, label %456
  ], !dbg !2782

168:                                              ; preds = %163
  br i1 %118, label %169, label %215, !dbg !2783

169:                                              ; preds = %168
  br i1 %119, label %636, label %170, !dbg !2784

170:                                              ; preds = %169
  call void @llvm.dbg.value(metadata i8 1, metadata !2631, metadata !DIExpression()), !dbg !2761
  %171 = select i1 %120, i1 true, i1 %138, !dbg !2788
  br i1 %171, label %188, label %172, !dbg !2788

172:                                              ; preds = %170
  %173 = icmp ult i64 %134, %140, !dbg !2790
  br i1 %173, label %174, label %176, !dbg !2794

174:                                              ; preds = %172
  %175 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !2790
  store i8 39, i8* %175, align 1, !dbg !2790, !tbaa !654
  br label %176, !dbg !2790

176:                                              ; preds = %174, %172
  %177 = add i64 %134, 1, !dbg !2794
  call void @llvm.dbg.value(metadata i64 %177, metadata !2612, metadata !DIExpression()), !dbg !2664
  %178 = icmp ult i64 %177, %140, !dbg !2795
  br i1 %178, label %179, label %181, !dbg !2798

179:                                              ; preds = %176
  %180 = getelementptr inbounds i8, i8* %0, i64 %177, !dbg !2795
  store i8 36, i8* %180, align 1, !dbg !2795, !tbaa !654
  br label %181, !dbg !2795

181:                                              ; preds = %179, %176
  %182 = add i64 %134, 2, !dbg !2798
  call void @llvm.dbg.value(metadata i64 %182, metadata !2612, metadata !DIExpression()), !dbg !2664
  %183 = icmp ult i64 %182, %140, !dbg !2799
  br i1 %183, label %184, label %186, !dbg !2802

184:                                              ; preds = %181
  %185 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !2799
  store i8 39, i8* %185, align 1, !dbg !2799, !tbaa !654
  br label %186, !dbg !2799

186:                                              ; preds = %184, %181
  %187 = add i64 %134, 3, !dbg !2802
  call void @llvm.dbg.value(metadata i64 %187, metadata !2612, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i8 1, metadata !2620, metadata !DIExpression()), !dbg !2664
  br label %188, !dbg !2803

188:                                              ; preds = %170, %186
  %189 = phi i64 [ %187, %186 ], [ %134, %170 ], !dbg !2664
  %190 = phi i1 [ true, %186 ], [ %138, %170 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2620, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i64 %189, metadata !2612, metadata !DIExpression()), !dbg !2664
  %191 = icmp ult i64 %189, %140, !dbg !2804
  br i1 %191, label %192, label %194, !dbg !2807

192:                                              ; preds = %188
  %193 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !2804
  store i8 92, i8* %193, align 1, !dbg !2804, !tbaa !654
  br label %194, !dbg !2804

194:                                              ; preds = %192, %188
  %195 = add i64 %189, 1, !dbg !2807
  call void @llvm.dbg.value(metadata i64 %195, metadata !2612, metadata !DIExpression()), !dbg !2664
  br i1 %120, label %196, label %499, !dbg !2808

196:                                              ; preds = %194
  %197 = add i64 %139, 1, !dbg !2810
  %198 = icmp ult i64 %197, %164, !dbg !2811
  br i1 %198, label %199, label %456, !dbg !2812

199:                                              ; preds = %196
  %200 = getelementptr inbounds i8, i8* %2, i64 %197, !dbg !2813
  %201 = load i8, i8* %200, align 1, !dbg !2813, !tbaa !654
  %202 = add i8 %201, -48, !dbg !2814
  %203 = icmp ult i8 %202, 10, !dbg !2814
  br i1 %203, label %204, label %456, !dbg !2814

204:                                              ; preds = %199
  %205 = icmp ult i64 %195, %140, !dbg !2815
  br i1 %205, label %206, label %208, !dbg !2819

206:                                              ; preds = %204
  %207 = getelementptr inbounds i8, i8* %0, i64 %195, !dbg !2815
  store i8 48, i8* %207, align 1, !dbg !2815, !tbaa !654
  br label %208, !dbg !2815

208:                                              ; preds = %206, %204
  %209 = add i64 %189, 2, !dbg !2819
  call void @llvm.dbg.value(metadata i64 %209, metadata !2612, metadata !DIExpression()), !dbg !2664
  %210 = icmp ult i64 %209, %140, !dbg !2820
  br i1 %210, label %211, label %213, !dbg !2823

211:                                              ; preds = %208
  %212 = getelementptr inbounds i8, i8* %0, i64 %209, !dbg !2820
  store i8 48, i8* %212, align 1, !dbg !2820, !tbaa !654
  br label %213, !dbg !2820

213:                                              ; preds = %211, %208
  %214 = add i64 %189, 3, !dbg !2823
  call void @llvm.dbg.value(metadata i64 %214, metadata !2612, metadata !DIExpression()), !dbg !2664
  br label %456, !dbg !2824

215:                                              ; preds = %168
  br i1 %31, label %467, label %586, !dbg !2825

216:                                              ; preds = %163
  switch i32 %112, label %456 [
    i32 2, label %217
    i32 5, label %218
  ], !dbg !2826

217:                                              ; preds = %216
  br i1 %119, label %638, label %456, !dbg !2827

218:                                              ; preds = %216
  br i1 %29, label %456, label %219, !dbg !2829

219:                                              ; preds = %218
  %220 = add i64 %139, 2, !dbg !2831
  %221 = icmp ult i64 %220, %164, !dbg !2832
  br i1 %221, label %222, label %456, !dbg !2833

222:                                              ; preds = %219
  %223 = add i64 %139, 1, !dbg !2834
  %224 = getelementptr inbounds i8, i8* %2, i64 %223, !dbg !2835
  %225 = load i8, i8* %224, align 1, !dbg !2835, !tbaa !654
  %226 = icmp eq i8 %225, 63, !dbg !2836
  br i1 %226, label %227, label %456, !dbg !2837

227:                                              ; preds = %222
  %228 = getelementptr inbounds i8, i8* %2, i64 %220, !dbg !2838
  %229 = load i8, i8* %228, align 1, !dbg !2838, !tbaa !654
  switch i8 %229, label %456 [
    i8 33, label %230
    i8 39, label %230
    i8 40, label %230
    i8 41, label %230
    i8 45, label %230
    i8 47, label %230
    i8 60, label %230
    i8 61, label %230
    i8 62, label %230
  ], !dbg !2839

230:                                              ; preds = %227, %227, %227, %227, %227, %227, %227, %227, %227
  br i1 %119, label %638, label %231, !dbg !2840

231:                                              ; preds = %230
  call void @llvm.dbg.value(metadata i8 %229, metadata !2633, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %220, metadata !2626, metadata !DIExpression()), !dbg !2753
  %232 = icmp ult i64 %134, %140, !dbg !2842
  br i1 %232, label %233, label %235, !dbg !2845

233:                                              ; preds = %231
  %234 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !2842
  store i8 63, i8* %234, align 1, !dbg !2842, !tbaa !654
  br label %235, !dbg !2842

235:                                              ; preds = %233, %231
  %236 = add i64 %134, 1, !dbg !2845
  call void @llvm.dbg.value(metadata i64 %236, metadata !2612, metadata !DIExpression()), !dbg !2664
  %237 = icmp ult i64 %236, %140, !dbg !2846
  br i1 %237, label %238, label %240, !dbg !2849

238:                                              ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !2846
  store i8 34, i8* %239, align 1, !dbg !2846, !tbaa !654
  br label %240, !dbg !2846

240:                                              ; preds = %238, %235
  %241 = add i64 %134, 2, !dbg !2849
  call void @llvm.dbg.value(metadata i64 %241, metadata !2612, metadata !DIExpression()), !dbg !2664
  %242 = icmp ult i64 %241, %140, !dbg !2850
  br i1 %242, label %243, label %245, !dbg !2853

243:                                              ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !2850
  store i8 34, i8* %244, align 1, !dbg !2850, !tbaa !654
  br label %245, !dbg !2850

245:                                              ; preds = %243, %240
  %246 = add i64 %134, 3, !dbg !2853
  call void @llvm.dbg.value(metadata i64 %246, metadata !2612, metadata !DIExpression()), !dbg !2664
  %247 = icmp ult i64 %246, %140, !dbg !2854
  br i1 %247, label %248, label %250, !dbg !2857

248:                                              ; preds = %245
  %249 = getelementptr inbounds i8, i8* %0, i64 %246, !dbg !2854
  store i8 63, i8* %249, align 1, !dbg !2854, !tbaa !654
  br label %250, !dbg !2854

250:                                              ; preds = %248, %245
  %251 = add i64 %134, 4, !dbg !2857
  call void @llvm.dbg.value(metadata i64 %251, metadata !2612, metadata !DIExpression()), !dbg !2664
  br label %456, !dbg !2858

252:                                              ; preds = %163
  br label %263, !dbg !2859

253:                                              ; preds = %163
  br label %263, !dbg !2860

254:                                              ; preds = %163
  br label %261, !dbg !2861

255:                                              ; preds = %163
  br label %261, !dbg !2862

256:                                              ; preds = %163
  br label %263, !dbg !2863

257:                                              ; preds = %163
  br i1 %126, label %258, label %259, !dbg !2864

258:                                              ; preds = %257
  br i1 %119, label %638, label %546, !dbg !2865

259:                                              ; preds = %257
  br i1 %118, label %260, label %467, !dbg !2868

260:                                              ; preds = %259
  br i1 %127, label %546, label %510, !dbg !2870

261:                                              ; preds = %163, %255, %254
  %262 = phi i8 [ 116, %255 ], [ 114, %254 ], [ 110, %163 ], !dbg !2871
  call void @llvm.dbg.label(metadata !2658), !dbg !2872
  br i1 %128, label %263, label %638, !dbg !2873

263:                                              ; preds = %261, %163, %256, %253, %252
  %264 = phi i8 [ %262, %261 ], [ 118, %256 ], [ 102, %253 ], [ 98, %252 ], [ 97, %163 ], !dbg !2871
  call void @llvm.dbg.label(metadata !2660), !dbg !2875
  br i1 %118, label %510, label %467, !dbg !2876

265:                                              ; preds = %163, %163
  switch i64 %164, label %456 [
    i64 -1, label %266
    i64 1, label %269
  ], !dbg !2877

266:                                              ; preds = %265
  %267 = load i8, i8* %27, align 1, !dbg !2878, !tbaa !654
  %268 = icmp eq i8 %267, 0, !dbg !2880
  br i1 %268, label %269, label %456, !dbg !2881

269:                                              ; preds = %265, %266, %163, %163
  %270 = icmp eq i64 %139, 0, !dbg !2882
  br i1 %270, label %271, label %456, !dbg !2884

271:                                              ; preds = %269, %163
  call void @llvm.dbg.value(metadata i8 1, metadata !2632, metadata !DIExpression()), !dbg !2761
  br label %272, !dbg !2885

272:                                              ; preds = %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %271
  %273 = phi i1 [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ true, %271 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !2632, metadata !DIExpression()), !dbg !2761
  br i1 %126, label %274, label %456, !dbg !2886

274:                                              ; preds = %272
  br i1 %119, label %638, label %456, !dbg !2888

275:                                              ; preds = %163
  call void @llvm.dbg.value(metadata i8 1, metadata !2618, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i8 1, metadata !2632, metadata !DIExpression()), !dbg !2761
  br i1 %126, label %276, label %456, !dbg !2889

276:                                              ; preds = %275
  br i1 %119, label %638, label %277, !dbg !2890

277:                                              ; preds = %276
  %278 = icmp eq i64 %140, 0, !dbg !2893
  %279 = icmp ne i64 %135, 0
  %280 = select i1 %278, i1 true, i1 %279, !dbg !2895
  %281 = select i1 %280, i64 %135, i64 %140, !dbg !2895
  %282 = select i1 %280, i64 %140, i64 0, !dbg !2895
  call void @llvm.dbg.value(metadata i64 %282, metadata !2603, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i64 %281, metadata !2613, metadata !DIExpression()), !dbg !2664
  %283 = icmp ult i64 %134, %282, !dbg !2896
  br i1 %283, label %284, label %286, !dbg !2899

284:                                              ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !2896
  store i8 39, i8* %285, align 1, !dbg !2896, !tbaa !654
  br label %286, !dbg !2896

286:                                              ; preds = %284, %277
  %287 = add i64 %134, 1, !dbg !2899
  call void @llvm.dbg.value(metadata i64 %287, metadata !2612, metadata !DIExpression()), !dbg !2664
  %288 = icmp ult i64 %287, %282, !dbg !2900
  br i1 %288, label %289, label %291, !dbg !2903

289:                                              ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !2900
  store i8 92, i8* %290, align 1, !dbg !2900, !tbaa !654
  br label %291, !dbg !2900

291:                                              ; preds = %289, %286
  %292 = add i64 %134, 2, !dbg !2903
  call void @llvm.dbg.value(metadata i64 %292, metadata !2612, metadata !DIExpression()), !dbg !2664
  %293 = icmp ult i64 %292, %282, !dbg !2904
  br i1 %293, label %294, label %296, !dbg !2907

294:                                              ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !2904
  store i8 39, i8* %295, align 1, !dbg !2904, !tbaa !654
  br label %296, !dbg !2904

296:                                              ; preds = %294, %291
  %297 = add i64 %134, 3, !dbg !2907
  call void @llvm.dbg.value(metadata i64 %297, metadata !2612, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i8 0, metadata !2620, metadata !DIExpression()), !dbg !2664
  br label %456, !dbg !2908

298:                                              ; preds = %163
  br i1 %18, label %299, label %307, !dbg !2909

299:                                              ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, metadata !2634, metadata !DIExpression()), !dbg !2910
  %300 = tail call i16** @__ctype_b_loc() #37, !dbg !2911
  %301 = load i16*, i16** %300, align 8, !dbg !2911, !tbaa !554
  %302 = zext i8 %167 to i64
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !2911
  %304 = load i16, i16* %303, align 2, !dbg !2911, !tbaa !679
  %305 = and i16 %304, 16384, !dbg !2911
  %306 = icmp ne i16 %305, 0, !dbg !2913
  call void @llvm.dbg.value(metadata i8 poison, metadata !2637, metadata !DIExpression()), !dbg !2910
  call void @llvm.dbg.value(metadata i64 %349, metadata !2634, metadata !DIExpression()), !dbg !2910
  call void @llvm.dbg.value(metadata i64 %312, metadata !2605, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i1 %350, metadata !2632, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2761
  br label %352, !dbg !2914

307:                                              ; preds = %298
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %32) #34, !dbg !2915
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %15, metadata !2638, metadata !DIExpression()), !dbg !2916
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %15, metadata !2690, metadata !DIExpression()) #34, !dbg !2917
  call void @llvm.dbg.value(metadata i8* %32, metadata !2698, metadata !DIExpression()) #34, !dbg !2919
  call void @llvm.dbg.value(metadata i32 0, metadata !2701, metadata !DIExpression()) #34, !dbg !2919
  call void @llvm.dbg.value(metadata i64 8, metadata !2702, metadata !DIExpression()) #34, !dbg !2919
  store i64 0, i64* %14, align 8, !dbg !2921
  call void @llvm.dbg.value(metadata i64 0, metadata !2634, metadata !DIExpression()), !dbg !2910
  call void @llvm.dbg.value(metadata i8 1, metadata !2637, metadata !DIExpression()), !dbg !2910
  %308 = icmp eq i64 %164, -1, !dbg !2922
  br i1 %308, label %309, label %311, !dbg !2924

309:                                              ; preds = %307
  %310 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #35, !dbg !2925
  call void @llvm.dbg.value(metadata i64 %310, metadata !2605, metadata !DIExpression()), !dbg !2664
  br label %311, !dbg !2926

311:                                              ; preds = %307, %309
  %312 = phi i64 [ %310, %309 ], [ %164, %307 ], !dbg !2761
  call void @llvm.dbg.value(metadata i64 %312, metadata !2605, metadata !DIExpression()), !dbg !2664
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %33) #34, !dbg !2927
  %313 = sub i64 %312, %139, !dbg !2928
  call void @llvm.dbg.value(metadata i32* %16, metadata !2641, metadata !DIExpression(DW_OP_deref)), !dbg !2929
  %314 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %16, i8* noundef nonnull %166, i64 noundef %313, %struct.__mbstate_t* noundef nonnull %15) #34, !dbg !2930
  call void @llvm.dbg.value(metadata i64 %314, metadata !2645, metadata !DIExpression()), !dbg !2929
  switch i64 %314, label %329 [
    i64 0, label %346
    i64 -1, label %318
    i64 -2, label %315
  ], !dbg !2931

315:                                              ; preds = %311
  call void @llvm.dbg.value(metadata i64 0, metadata !2634, metadata !DIExpression()), !dbg !2910
  %316 = icmp ugt i64 %312, %139, !dbg !2932
  br i1 %316, label %319, label %317, !dbg !2934

317:                                              ; preds = %315
  call void @llvm.dbg.value(metadata i8 poison, metadata !2637, metadata !DIExpression()), !dbg !2910
  call void @llvm.dbg.value(metadata i64 0, metadata !2634, metadata !DIExpression()), !dbg !2910
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #34, !dbg !2935
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #34, !dbg !2936
  call void @llvm.dbg.value(metadata i64 %349, metadata !2634, metadata !DIExpression()), !dbg !2910
  call void @llvm.dbg.value(metadata i64 %312, metadata !2605, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i1 %350, metadata !2632, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2761
  br label %352, !dbg !2914

318:                                              ; preds = %311
  call void @llvm.dbg.value(metadata i8 0, metadata !2637, metadata !DIExpression()), !dbg !2910
  br label %346, !dbg !2937

319:                                              ; preds = %315, %325
  %320 = phi i64 [ %327, %325 ], [ %139, %315 ]
  %321 = phi i64 [ %326, %325 ], [ 0, %315 ]
  call void @llvm.dbg.value(metadata i64 %321, metadata !2634, metadata !DIExpression()), !dbg !2910
  %322 = getelementptr inbounds i8, i8* %2, i64 %320, !dbg !2939
  %323 = load i8, i8* %322, align 1, !dbg !2939, !tbaa !654
  %324 = icmp eq i8 %323, 0, !dbg !2934
  br i1 %324, label %348, label %325, !dbg !2940

325:                                              ; preds = %319
  %326 = add i64 %321, 1, !dbg !2941
  call void @llvm.dbg.value(metadata i64 %326, metadata !2634, metadata !DIExpression()), !dbg !2910
  %327 = add i64 %326, %139, !dbg !2942
  %328 = icmp eq i64 %326, %313, !dbg !2932
  br i1 %328, label %348, label %319, !dbg !2934, !llvm.loop !2943

329:                                              ; preds = %311
  %330 = icmp ugt i64 %314, 1
  %331 = select i1 %129, i1 %330, i1 false, !dbg !2944
  call void @llvm.dbg.value(metadata i64 1, metadata !2646, metadata !DIExpression()), !dbg !2945
  br i1 %331, label %332, label %340, !dbg !2944

332:                                              ; preds = %329, %337
  %333 = phi i64 [ %338, %337 ], [ 1, %329 ]
  call void @llvm.dbg.value(metadata i64 %333, metadata !2646, metadata !DIExpression()), !dbg !2945
  %334 = add i64 %333, %139, !dbg !2946
  %335 = getelementptr inbounds i8, i8* %2, i64 %334, !dbg !2948
  %336 = load i8, i8* %335, align 1, !dbg !2948, !tbaa !654
  switch i8 %336, label %337 [
    i8 91, label %344
    i8 92, label %344
    i8 94, label %344
    i8 96, label %344
    i8 124, label %344
  ], !dbg !2949

337:                                              ; preds = %332
  %338 = add nuw i64 %333, 1, !dbg !2950
  call void @llvm.dbg.value(metadata i64 %338, metadata !2646, metadata !DIExpression()), !dbg !2945
  %339 = icmp eq i64 %338, %314, !dbg !2951
  br i1 %339, label %340, label %332, !dbg !2952, !llvm.loop !2953

340:                                              ; preds = %337, %329
  %341 = load i32, i32* %16, align 4, !dbg !2955, !tbaa !645
  call void @llvm.dbg.value(metadata i32 %341, metadata !2641, metadata !DIExpression()), !dbg !2929
  call void @llvm.dbg.value(metadata i32 %341, metadata !2957, metadata !DIExpression()) #34, !dbg !2965
  %342 = call i32 @iswprint(i32 noundef %341) #34, !dbg !2967
  %343 = icmp ne i32 %342, 0, !dbg !2968
  call void @llvm.dbg.value(metadata i8 poison, metadata !2637, metadata !DIExpression()), !dbg !2910
  call void @llvm.dbg.value(metadata i64 %314, metadata !2634, metadata !DIExpression()), !dbg !2910
  br label %348, !dbg !2969

344:                                              ; preds = %332, %332, %332, %332, %332
  call void @llvm.dbg.value(metadata i8 poison, metadata !2637, metadata !DIExpression()), !dbg !2910
  call void @llvm.dbg.value(metadata i64 0, metadata !2634, metadata !DIExpression()), !dbg !2910
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #34, !dbg !2935
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #34, !dbg !2936
  call void @llvm.dbg.label(metadata !2663), !dbg !2970
  %345 = select i1 %118, i32 4, i32 2, !dbg !2971
  br label %643, !dbg !2971

346:                                              ; preds = %311, %318
  %347 = phi i1 [ false, %318 ], [ true, %311 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2637, metadata !DIExpression()), !dbg !2910
  call void @llvm.dbg.value(metadata i64 0, metadata !2634, metadata !DIExpression()), !dbg !2910
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #34, !dbg !2935
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #34, !dbg !2936
  call void @llvm.dbg.value(metadata i64 %349, metadata !2634, metadata !DIExpression()), !dbg !2910
  call void @llvm.dbg.value(metadata i64 %312, metadata !2605, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i1 %350, metadata !2632, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2761
  br label %352, !dbg !2914

348:                                              ; preds = %319, %325, %340
  %349 = phi i64 [ %314, %340 ], [ %321, %319 ], [ %313, %325 ]
  %350 = phi i1 [ %343, %340 ], [ false, %325 ], [ false, %319 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2637, metadata !DIExpression()), !dbg !2910
  call void @llvm.dbg.value(metadata i64 0, metadata !2634, metadata !DIExpression()), !dbg !2910
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #34, !dbg !2935
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #34, !dbg !2936
  call void @llvm.dbg.value(metadata i64 %349, metadata !2634, metadata !DIExpression()), !dbg !2910
  call void @llvm.dbg.value(metadata i64 %312, metadata !2605, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i1 %350, metadata !2632, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2761
  %351 = icmp ugt i64 %349, 1, !dbg !2973
  br i1 %351, label %357, label %352, !dbg !2914

352:                                              ; preds = %317, %346, %299, %348
  %353 = phi i1 [ %306, %299 ], [ %350, %348 ], [ %347, %346 ], [ false, %317 ]
  %354 = phi i64 [ 1, %299 ], [ %349, %348 ], [ 0, %346 ], [ 0, %317 ]
  %355 = phi i64 [ %164, %299 ], [ %312, %348 ], [ %312, %346 ], [ %312, %317 ]
  %356 = select i1 %130, i1 true, i1 %353, !dbg !2974
  br i1 %356, label %456, label %357, !dbg !2974

357:                                              ; preds = %352, %348
  %358 = phi i1 [ false, %352 ], [ %350, %348 ]
  %359 = phi i64 [ %354, %352 ], [ %349, %348 ]
  %360 = phi i64 [ %355, %352 ], [ %312, %348 ]
  %361 = add i64 %359, %139, !dbg !2975
  call void @llvm.dbg.value(metadata i64 %361, metadata !2654, metadata !DIExpression()), !dbg !2976
  %362 = select i1 %130, i1 true, i1 %358
  br label %363, !dbg !2977

363:                                              ; preds = %450, %357
  %364 = phi i64 [ %134, %357 ], [ %451, %450 ], !dbg !2664
  %365 = phi i1 [ %138, %357 ], [ %446, %450 ]
  %366 = phi i64 [ %139, %357 ], [ %427, %450 ], !dbg !2753
  %367 = phi i1 [ %165, %357 ], [ %424, %450 ]
  %368 = phi i8 [ 0, %357 ], [ %425, %450 ], !dbg !2978
  %369 = phi i8 [ %167, %357 ], [ %453, %450 ], !dbg !2761
  call void @llvm.dbg.value(metadata i8 %369, metadata !2633, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 %368, metadata !2631, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 poison, metadata !2628, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %366, metadata !2626, metadata !DIExpression()), !dbg !2753
  call void @llvm.dbg.value(metadata i8 poison, metadata !2620, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i64 %364, metadata !2612, metadata !DIExpression()), !dbg !2664
  br i1 %362, label %414, label %370, !dbg !2979

370:                                              ; preds = %363
  br i1 %119, label %638, label %371, !dbg !2984

371:                                              ; preds = %370
  call void @llvm.dbg.value(metadata i8 1, metadata !2631, metadata !DIExpression()), !dbg !2761
  %372 = select i1 %120, i1 true, i1 %365, !dbg !2987
  br i1 %372, label %389, label %373, !dbg !2987

373:                                              ; preds = %371
  %374 = icmp ult i64 %364, %140, !dbg !2989
  br i1 %374, label %375, label %377, !dbg !2993

375:                                              ; preds = %373
  %376 = getelementptr inbounds i8, i8* %0, i64 %364, !dbg !2989
  store i8 39, i8* %376, align 1, !dbg !2989, !tbaa !654
  br label %377, !dbg !2989

377:                                              ; preds = %375, %373
  %378 = add i64 %364, 1, !dbg !2993
  call void @llvm.dbg.value(metadata i64 %378, metadata !2612, metadata !DIExpression()), !dbg !2664
  %379 = icmp ult i64 %378, %140, !dbg !2994
  br i1 %379, label %380, label %382, !dbg !2997

380:                                              ; preds = %377
  %381 = getelementptr inbounds i8, i8* %0, i64 %378, !dbg !2994
  store i8 36, i8* %381, align 1, !dbg !2994, !tbaa !654
  br label %382, !dbg !2994

382:                                              ; preds = %380, %377
  %383 = add i64 %364, 2, !dbg !2997
  call void @llvm.dbg.value(metadata i64 %383, metadata !2612, metadata !DIExpression()), !dbg !2664
  %384 = icmp ult i64 %383, %140, !dbg !2998
  br i1 %384, label %385, label %387, !dbg !3001

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !2998
  store i8 39, i8* %386, align 1, !dbg !2998, !tbaa !654
  br label %387, !dbg !2998

387:                                              ; preds = %385, %382
  %388 = add i64 %364, 3, !dbg !3001
  call void @llvm.dbg.value(metadata i64 %388, metadata !2612, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i8 1, metadata !2620, metadata !DIExpression()), !dbg !2664
  br label %389, !dbg !3002

389:                                              ; preds = %371, %387
  %390 = phi i64 [ %388, %387 ], [ %364, %371 ], !dbg !2664
  %391 = phi i1 [ true, %387 ], [ %365, %371 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2620, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i64 %390, metadata !2612, metadata !DIExpression()), !dbg !2664
  %392 = icmp ult i64 %390, %140, !dbg !3003
  br i1 %392, label %393, label %395, !dbg !3006

393:                                              ; preds = %389
  %394 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !3003
  store i8 92, i8* %394, align 1, !dbg !3003, !tbaa !654
  br label %395, !dbg !3003

395:                                              ; preds = %393, %389
  %396 = add i64 %390, 1, !dbg !3006
  call void @llvm.dbg.value(metadata i64 %396, metadata !2612, metadata !DIExpression()), !dbg !2664
  %397 = icmp ult i64 %396, %140, !dbg !3007
  br i1 %397, label %398, label %402, !dbg !3010

398:                                              ; preds = %395
  %399 = lshr i8 %369, 6, !dbg !3007
  %400 = or i8 %399, 48, !dbg !3007
  %401 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !3007
  store i8 %400, i8* %401, align 1, !dbg !3007, !tbaa !654
  br label %402, !dbg !3007

402:                                              ; preds = %398, %395
  %403 = add i64 %390, 2, !dbg !3010
  call void @llvm.dbg.value(metadata i64 %403, metadata !2612, metadata !DIExpression()), !dbg !2664
  %404 = icmp ult i64 %403, %140, !dbg !3011
  br i1 %404, label %405, label %410, !dbg !3014

405:                                              ; preds = %402
  %406 = lshr i8 %369, 3, !dbg !3011
  %407 = and i8 %406, 7, !dbg !3011
  %408 = or i8 %407, 48, !dbg !3011
  %409 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !3011
  store i8 %408, i8* %409, align 1, !dbg !3011, !tbaa !654
  br label %410, !dbg !3011

410:                                              ; preds = %405, %402
  %411 = add i64 %390, 3, !dbg !3014
  call void @llvm.dbg.value(metadata i64 %411, metadata !2612, metadata !DIExpression()), !dbg !2664
  %412 = and i8 %369, 7, !dbg !3015
  %413 = or i8 %412, 48, !dbg !3016
  call void @llvm.dbg.value(metadata i8 %413, metadata !2633, metadata !DIExpression()), !dbg !2761
  br label %421, !dbg !3017

414:                                              ; preds = %363
  br i1 %367, label %415, label %421, !dbg !3018

415:                                              ; preds = %414
  %416 = icmp ult i64 %364, %140, !dbg !3019
  br i1 %416, label %417, label %419, !dbg !3024

417:                                              ; preds = %415
  %418 = getelementptr inbounds i8, i8* %0, i64 %364, !dbg !3019
  store i8 92, i8* %418, align 1, !dbg !3019, !tbaa !654
  br label %419, !dbg !3019

419:                                              ; preds = %417, %415
  %420 = add i64 %364, 1, !dbg !3024
  call void @llvm.dbg.value(metadata i64 %420, metadata !2612, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i8 0, metadata !2628, metadata !DIExpression()), !dbg !2761
  br label %421, !dbg !3025

421:                                              ; preds = %414, %419, %410
  %422 = phi i64 [ %420, %419 ], [ %364, %414 ], [ %411, %410 ], !dbg !2664
  %423 = phi i1 [ %365, %419 ], [ %365, %414 ], [ %391, %410 ]
  %424 = phi i1 [ false, %419 ], [ false, %414 ], [ %367, %410 ]
  %425 = phi i8 [ %368, %419 ], [ %368, %414 ], [ 1, %410 ], !dbg !2761
  %426 = phi i8 [ %369, %419 ], [ %369, %414 ], [ %413, %410 ], !dbg !2761
  call void @llvm.dbg.value(metadata i8 %426, metadata !2633, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 %425, metadata !2631, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 poison, metadata !2628, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 poison, metadata !2620, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i64 %422, metadata !2612, metadata !DIExpression()), !dbg !2664
  %427 = add i64 %366, 1, !dbg !3026
  %428 = icmp ugt i64 %361, %427, !dbg !3028
  %429 = and i8 %425, 1
  br i1 %428, label %430, label %454, !dbg !3029

430:                                              ; preds = %421
  %431 = icmp eq i8 %429, 0, !dbg !3030
  %432 = select i1 %423, i1 %431, i1 false, !dbg !3030
  br i1 %432, label %433, label %444, !dbg !3030

433:                                              ; preds = %430
  %434 = icmp ult i64 %422, %140, !dbg !3033
  br i1 %434, label %435, label %437, !dbg !3037

435:                                              ; preds = %433
  %436 = getelementptr inbounds i8, i8* %0, i64 %422, !dbg !3033
  store i8 39, i8* %436, align 1, !dbg !3033, !tbaa !654
  br label %437, !dbg !3033

437:                                              ; preds = %435, %433
  %438 = add i64 %422, 1, !dbg !3037
  call void @llvm.dbg.value(metadata i64 %438, metadata !2612, metadata !DIExpression()), !dbg !2664
  %439 = icmp ult i64 %438, %140, !dbg !3038
  br i1 %439, label %440, label %442, !dbg !3041

440:                                              ; preds = %437
  %441 = getelementptr inbounds i8, i8* %0, i64 %438, !dbg !3038
  store i8 39, i8* %441, align 1, !dbg !3038, !tbaa !654
  br label %442, !dbg !3038

442:                                              ; preds = %440, %437
  %443 = add i64 %422, 2, !dbg !3041
  call void @llvm.dbg.value(metadata i64 %443, metadata !2612, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i8 0, metadata !2620, metadata !DIExpression()), !dbg !2664
  br label %444, !dbg !3042

444:                                              ; preds = %430, %442
  %445 = phi i64 [ %443, %442 ], [ %422, %430 ], !dbg !3043
  %446 = phi i1 [ false, %442 ], [ %423, %430 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2620, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i64 %445, metadata !2612, metadata !DIExpression()), !dbg !2664
  %447 = icmp ult i64 %445, %140, !dbg !3044
  br i1 %447, label %448, label %450, !dbg !3047

448:                                              ; preds = %444
  %449 = getelementptr inbounds i8, i8* %0, i64 %445, !dbg !3044
  store i8 %426, i8* %449, align 1, !dbg !3044, !tbaa !654
  br label %450, !dbg !3044

450:                                              ; preds = %448, %444
  %451 = add i64 %445, 1, !dbg !3047
  call void @llvm.dbg.value(metadata i64 %451, metadata !2612, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i64 %427, metadata !2626, metadata !DIExpression()), !dbg !2753
  %452 = getelementptr inbounds i8, i8* %2, i64 %427, !dbg !3048
  %453 = load i8, i8* %452, align 1, !dbg !3048, !tbaa !654
  call void @llvm.dbg.value(metadata i8 %453, metadata !2633, metadata !DIExpression()), !dbg !2761
  br label %363, !dbg !3049, !llvm.loop !3050

454:                                              ; preds = %421
  call void @llvm.dbg.value(metadata i8 %426, metadata !2633, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i1 %358, metadata !2632, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2761
  call void @llvm.dbg.value(metadata i8 %425, metadata !2631, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 poison, metadata !2628, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %366, metadata !2626, metadata !DIExpression()), !dbg !2753
  call void @llvm.dbg.value(metadata i8 poison, metadata !2620, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i64 %422, metadata !2612, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i64 %360, metadata !2605, metadata !DIExpression()), !dbg !2664
  %455 = icmp ne i8 %429, 0
  br label %546

456:                                              ; preds = %352, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %265, %196, %199, %213, %275, %296, %272, %274, %269, %266, %216, %217, %250, %227, %222, %219, %218
  %457 = phi i64 [ %164, %296 ], [ %164, %275 ], [ %164, %274 ], [ %164, %272 ], [ %164, %269 ], [ -1, %266 ], [ %164, %216 ], [ %164, %227 ], [ %164, %250 ], [ %164, %222 ], [ %164, %219 ], [ %164, %218 ], [ %164, %217 ], [ %164, %213 ], [ %164, %199 ], [ %164, %196 ], [ %164, %265 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %355, %352 ], !dbg !3053
  %458 = phi i64 [ %297, %296 ], [ %134, %275 ], [ %134, %274 ], [ %134, %272 ], [ %134, %269 ], [ %134, %266 ], [ %134, %216 ], [ %134, %227 ], [ %251, %250 ], [ %134, %222 ], [ %134, %219 ], [ %134, %218 ], [ %134, %217 ], [ %214, %213 ], [ %195, %199 ], [ %195, %196 ], [ %134, %265 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %352 ], !dbg !2664
  %459 = phi i64 [ %281, %296 ], [ %135, %275 ], [ %135, %274 ], [ %135, %272 ], [ %135, %269 ], [ %135, %266 ], [ %135, %216 ], [ %135, %227 ], [ %135, %250 ], [ %135, %222 ], [ %135, %219 ], [ %135, %218 ], [ %135, %217 ], [ %135, %213 ], [ %135, %199 ], [ %135, %196 ], [ %135, %265 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %352 ], !dbg !2668
  %460 = phi i1 [ true, %296 ], [ true, %275 ], [ %136, %274 ], [ %136, %272 ], [ %136, %269 ], [ %136, %266 ], [ %136, %216 ], [ %136, %227 ], [ %136, %250 ], [ %136, %222 ], [ %136, %219 ], [ %136, %218 ], [ %136, %217 ], [ %136, %213 ], [ %136, %199 ], [ %136, %196 ], [ %136, %265 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %352 ]
  %461 = phi i1 [ false, %296 ], [ %138, %275 ], [ %138, %274 ], [ %138, %272 ], [ %138, %269 ], [ %138, %266 ], [ %138, %216 ], [ %138, %227 ], [ %138, %250 ], [ %138, %222 ], [ %138, %219 ], [ %138, %218 ], [ %138, %217 ], [ %190, %213 ], [ %190, %199 ], [ %190, %196 ], [ %138, %265 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %352 ]
  %462 = phi i64 [ %139, %296 ], [ %139, %275 ], [ %139, %274 ], [ %139, %272 ], [ %139, %269 ], [ %139, %266 ], [ %139, %216 ], [ %139, %227 ], [ %220, %250 ], [ %139, %222 ], [ %139, %219 ], [ %139, %218 ], [ %139, %217 ], [ %139, %213 ], [ %139, %199 ], [ %139, %196 ], [ %139, %265 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %352 ], !dbg !2753
  %463 = phi i1 [ false, %296 ], [ false, %275 ], [ false, %274 ], [ false, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ true, %213 ], [ true, %199 ], [ true, %196 ], [ false, %265 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %352 ]
  %464 = phi i1 [ true, %296 ], [ true, %275 ], [ %273, %274 ], [ %273, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ false, %213 ], [ false, %199 ], [ false, %196 ], [ false, %265 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ %353, %352 ]
  %465 = phi i8 [ 39, %296 ], [ 39, %275 ], [ %167, %274 ], [ %167, %272 ], [ %167, %269 ], [ %167, %266 ], [ 63, %216 ], [ 63, %227 ], [ %229, %250 ], [ 63, %222 ], [ 63, %219 ], [ 63, %218 ], [ 63, %217 ], [ 48, %213 ], [ 48, %199 ], [ 48, %196 ], [ %167, %265 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %352 ], !dbg !2761
  %466 = phi i64 [ %282, %296 ], [ %140, %275 ], [ %140, %274 ], [ %140, %272 ], [ %140, %269 ], [ %140, %266 ], [ %140, %216 ], [ %140, %227 ], [ %140, %250 ], [ %140, %222 ], [ %140, %219 ], [ %140, %218 ], [ %140, %217 ], [ %140, %213 ], [ %140, %199 ], [ %140, %196 ], [ %140, %265 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %352 ]
  call void @llvm.dbg.value(metadata i64 %466, metadata !2603, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i8 %465, metadata !2633, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 poison, metadata !2632, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 poison, metadata !2631, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 poison, metadata !2628, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %462, metadata !2626, metadata !DIExpression()), !dbg !2753
  call void @llvm.dbg.value(metadata i8 poison, metadata !2620, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i8 poison, metadata !2618, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i64 %459, metadata !2613, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i64 %458, metadata !2612, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i64 %457, metadata !2605, metadata !DIExpression()), !dbg !2664
  br i1 %121, label %478, label %467, !dbg !3054

467:                                              ; preds = %259, %215, %263, %456
  %468 = phi i64 [ %466, %456 ], [ %140, %263 ], [ %140, %215 ], [ %140, %259 ]
  %469 = phi i8 [ %465, %456 ], [ %167, %263 ], [ 0, %215 ], [ 92, %259 ]
  %470 = phi i1 [ %464, %456 ], [ false, %263 ], [ false, %215 ], [ false, %259 ]
  %471 = phi i1 [ %463, %456 ], [ false, %263 ], [ false, %215 ], [ false, %259 ]
  %472 = phi i64 [ %462, %456 ], [ %139, %263 ], [ %139, %215 ], [ %139, %259 ]
  %473 = phi i1 [ %461, %456 ], [ %138, %263 ], [ %138, %215 ], [ %138, %259 ]
  %474 = phi i1 [ %460, %456 ], [ %136, %263 ], [ %136, %215 ], [ %136, %259 ]
  %475 = phi i64 [ %459, %456 ], [ %135, %263 ], [ %135, %215 ], [ %135, %259 ]
  %476 = phi i64 [ %458, %456 ], [ %134, %263 ], [ %134, %215 ], [ %134, %259 ]
  %477 = phi i64 [ %457, %456 ], [ %164, %263 ], [ %164, %215 ], [ %164, %259 ]
  br i1 %131, label %479, label %499, !dbg !3056

478:                                              ; preds = %456
  br i1 %35, label %499, label %479, !dbg !3057

479:                                              ; preds = %467, %478
  %480 = phi i64 [ %468, %467 ], [ %466, %478 ]
  %481 = phi i8 [ %469, %467 ], [ %465, %478 ]
  %482 = phi i1 [ %470, %467 ], [ %464, %478 ]
  %483 = phi i1 [ %471, %467 ], [ %463, %478 ]
  %484 = phi i64 [ %472, %467 ], [ %462, %478 ]
  %485 = phi i1 [ %473, %467 ], [ %461, %478 ]
  %486 = phi i1 [ %474, %467 ], [ %460, %478 ]
  %487 = phi i64 [ %475, %467 ], [ %459, %478 ]
  %488 = phi i64 [ %476, %467 ], [ %458, %478 ]
  %489 = phi i64 [ %477, %467 ], [ %457, %478 ]
  %490 = lshr i8 %481, 5, !dbg !3058
  %491 = zext i8 %490 to i64, !dbg !3058
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !3059
  %493 = load i32, i32* %492, align 4, !dbg !3059, !tbaa !645
  %494 = and i8 %481, 31, !dbg !3060
  %495 = zext i8 %494 to i32, !dbg !3060
  %496 = shl nuw i32 1, %495, !dbg !3061
  %497 = and i32 %493, %496, !dbg !3061
  %498 = icmp eq i32 %497, 0, !dbg !3061
  br i1 %498, label %499, label %510, !dbg !3062

499:                                              ; preds = %194, %479, %478, %467
  %500 = phi i64 [ %480, %479 ], [ %466, %478 ], [ %468, %467 ], [ %140, %194 ]
  %501 = phi i8 [ %481, %479 ], [ %465, %478 ], [ %469, %467 ], [ 48, %194 ]
  %502 = phi i1 [ %482, %479 ], [ %464, %478 ], [ %470, %467 ], [ false, %194 ]
  %503 = phi i1 [ %483, %479 ], [ %463, %478 ], [ %471, %467 ], [ true, %194 ]
  %504 = phi i64 [ %484, %479 ], [ %462, %478 ], [ %472, %467 ], [ %139, %194 ]
  %505 = phi i1 [ %485, %479 ], [ %461, %478 ], [ %473, %467 ], [ %190, %194 ]
  %506 = phi i1 [ %486, %479 ], [ %460, %478 ], [ %474, %467 ], [ %136, %194 ]
  %507 = phi i64 [ %487, %479 ], [ %459, %478 ], [ %475, %467 ], [ %135, %194 ]
  %508 = phi i64 [ %488, %479 ], [ %458, %478 ], [ %476, %467 ], [ %195, %194 ]
  %509 = phi i64 [ %489, %479 ], [ %457, %478 ], [ %477, %467 ], [ %164, %194 ]
  br i1 %165, label %510, label %546, !dbg !3063

510:                                              ; preds = %260, %263, %499, %479
  %511 = phi i64 [ %489, %479 ], [ %509, %499 ], [ %164, %263 ], [ %164, %260 ], !dbg !3053
  %512 = phi i64 [ %488, %479 ], [ %508, %499 ], [ %134, %263 ], [ %134, %260 ], !dbg !2664
  %513 = phi i64 [ %487, %479 ], [ %507, %499 ], [ %135, %263 ], [ %135, %260 ], !dbg !2668
  %514 = phi i1 [ %486, %479 ], [ %506, %499 ], [ %136, %263 ], [ %136, %260 ]
  %515 = phi i1 [ %485, %479 ], [ %505, %499 ], [ %138, %263 ], [ %138, %260 ]
  %516 = phi i64 [ %484, %479 ], [ %504, %499 ], [ %139, %263 ], [ %139, %260 ], !dbg !3064
  %517 = phi i1 [ %482, %479 ], [ %502, %499 ], [ false, %263 ], [ false, %260 ]
  %518 = phi i8 [ %481, %479 ], [ %501, %499 ], [ %264, %263 ], [ 92, %260 ], !dbg !2761
  %519 = phi i64 [ %480, %479 ], [ %500, %499 ], [ %140, %263 ], [ %140, %260 ]
  call void @llvm.dbg.value(metadata i64 %519, metadata !2603, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i8 %518, metadata !2633, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 poison, metadata !2632, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %516, metadata !2626, metadata !DIExpression()), !dbg !2753
  call void @llvm.dbg.value(metadata i8 poison, metadata !2620, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i8 poison, metadata !2618, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i64 %513, metadata !2613, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i64 %512, metadata !2612, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i64 %511, metadata !2605, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.label(metadata !2661), !dbg !3065
  br i1 %119, label %638, label %520, !dbg !3066

520:                                              ; preds = %510
  call void @llvm.dbg.value(metadata i8 1, metadata !2631, metadata !DIExpression()), !dbg !2761
  %521 = select i1 %120, i1 true, i1 %515, !dbg !3068
  br i1 %521, label %538, label %522, !dbg !3068

522:                                              ; preds = %520
  %523 = icmp ult i64 %512, %519, !dbg !3070
  br i1 %523, label %524, label %526, !dbg !3074

524:                                              ; preds = %522
  %525 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !3070
  store i8 39, i8* %525, align 1, !dbg !3070, !tbaa !654
  br label %526, !dbg !3070

526:                                              ; preds = %524, %522
  %527 = add i64 %512, 1, !dbg !3074
  call void @llvm.dbg.value(metadata i64 %527, metadata !2612, metadata !DIExpression()), !dbg !2664
  %528 = icmp ult i64 %527, %519, !dbg !3075
  br i1 %528, label %529, label %531, !dbg !3078

529:                                              ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !3075
  store i8 36, i8* %530, align 1, !dbg !3075, !tbaa !654
  br label %531, !dbg !3075

531:                                              ; preds = %529, %526
  %532 = add i64 %512, 2, !dbg !3078
  call void @llvm.dbg.value(metadata i64 %532, metadata !2612, metadata !DIExpression()), !dbg !2664
  %533 = icmp ult i64 %532, %519, !dbg !3079
  br i1 %533, label %534, label %536, !dbg !3082

534:                                              ; preds = %531
  %535 = getelementptr inbounds i8, i8* %0, i64 %532, !dbg !3079
  store i8 39, i8* %535, align 1, !dbg !3079, !tbaa !654
  br label %536, !dbg !3079

536:                                              ; preds = %534, %531
  %537 = add i64 %512, 3, !dbg !3082
  call void @llvm.dbg.value(metadata i64 %537, metadata !2612, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i8 1, metadata !2620, metadata !DIExpression()), !dbg !2664
  br label %538, !dbg !3083

538:                                              ; preds = %520, %536
  %539 = phi i64 [ %537, %536 ], [ %512, %520 ], !dbg !2761
  %540 = phi i1 [ true, %536 ], [ %515, %520 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2620, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i64 %539, metadata !2612, metadata !DIExpression()), !dbg !2664
  %541 = icmp ult i64 %539, %519, !dbg !3084
  br i1 %541, label %542, label %544, !dbg !3087

542:                                              ; preds = %538
  %543 = getelementptr inbounds i8, i8* %0, i64 %539, !dbg !3084
  store i8 92, i8* %543, align 1, !dbg !3084, !tbaa !654
  br label %544, !dbg !3084

544:                                              ; preds = %538, %542
  %545 = add i64 %539, 1, !dbg !3087
  call void @llvm.dbg.value(metadata i64 %556, metadata !2603, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i8 %555, metadata !2633, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 poison, metadata !2632, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 poison, metadata !2631, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %552, metadata !2626, metadata !DIExpression()), !dbg !2753
  call void @llvm.dbg.value(metadata i8 poison, metadata !2620, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i8 poison, metadata !2618, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i64 %549, metadata !2613, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i64 %548, metadata !2612, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i64 %547, metadata !2605, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.label(metadata !2662), !dbg !3088
  br label %570, !dbg !3089

546:                                              ; preds = %454, %258, %260, %499
  %547 = phi i64 [ %360, %454 ], [ %509, %499 ], [ %164, %258 ], [ %164, %260 ], !dbg !3053
  %548 = phi i64 [ %422, %454 ], [ %508, %499 ], [ %134, %258 ], [ %134, %260 ], !dbg !2664
  %549 = phi i64 [ %135, %454 ], [ %507, %499 ], [ %135, %258 ], [ %135, %260 ], !dbg !2668
  %550 = phi i1 [ %136, %454 ], [ %506, %499 ], [ %136, %258 ], [ %136, %260 ]
  %551 = phi i1 [ %423, %454 ], [ %505, %499 ], [ %138, %258 ], [ %138, %260 ]
  %552 = phi i64 [ %366, %454 ], [ %504, %499 ], [ %139, %258 ], [ %139, %260 ], !dbg !3064
  %553 = phi i1 [ %455, %454 ], [ %503, %499 ], [ false, %258 ], [ false, %260 ]
  %554 = phi i1 [ %358, %454 ], [ %502, %499 ], [ false, %258 ], [ false, %260 ]
  %555 = phi i8 [ %426, %454 ], [ %501, %499 ], [ 92, %258 ], [ 92, %260 ], !dbg !3092
  %556 = phi i64 [ %140, %454 ], [ %500, %499 ], [ %140, %258 ], [ %140, %260 ]
  call void @llvm.dbg.value(metadata i64 %556, metadata !2603, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i8 %555, metadata !2633, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 poison, metadata !2632, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 poison, metadata !2631, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %552, metadata !2626, metadata !DIExpression()), !dbg !2753
  call void @llvm.dbg.value(metadata i8 poison, metadata !2620, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i8 poison, metadata !2618, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i64 %549, metadata !2613, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i64 %548, metadata !2612, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i64 %547, metadata !2605, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.label(metadata !2662), !dbg !3088
  %557 = xor i1 %551, true, !dbg !3089
  %558 = select i1 %557, i1 true, i1 %553, !dbg !3089
  br i1 %558, label %570, label %559, !dbg !3089

559:                                              ; preds = %546
  %560 = icmp ult i64 %548, %556, !dbg !3093
  br i1 %560, label %561, label %563, !dbg !3097

561:                                              ; preds = %559
  %562 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !3093
  store i8 39, i8* %562, align 1, !dbg !3093, !tbaa !654
  br label %563, !dbg !3093

563:                                              ; preds = %561, %559
  %564 = add i64 %548, 1, !dbg !3097
  call void @llvm.dbg.value(metadata i64 %564, metadata !2612, metadata !DIExpression()), !dbg !2664
  %565 = icmp ult i64 %564, %556, !dbg !3098
  br i1 %565, label %566, label %568, !dbg !3101

566:                                              ; preds = %563
  %567 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !3098
  store i8 39, i8* %567, align 1, !dbg !3098, !tbaa !654
  br label %568, !dbg !3098

568:                                              ; preds = %566, %563
  %569 = add i64 %548, 2, !dbg !3101
  call void @llvm.dbg.value(metadata i64 %569, metadata !2612, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i8 0, metadata !2620, metadata !DIExpression()), !dbg !2664
  br label %570, !dbg !3102

570:                                              ; preds = %544, %546, %568
  %571 = phi i64 [ %556, %568 ], [ %556, %546 ], [ %519, %544 ]
  %572 = phi i8 [ %555, %568 ], [ %555, %546 ], [ %518, %544 ]
  %573 = phi i1 [ %554, %568 ], [ %554, %546 ], [ %517, %544 ]
  %574 = phi i64 [ %552, %568 ], [ %552, %546 ], [ %516, %544 ]
  %575 = phi i1 [ %550, %568 ], [ %550, %546 ], [ %514, %544 ]
  %576 = phi i64 [ %549, %568 ], [ %549, %546 ], [ %513, %544 ]
  %577 = phi i64 [ %547, %568 ], [ %547, %546 ], [ %511, %544 ]
  %578 = phi i64 [ %569, %568 ], [ %548, %546 ], [ %545, %544 ], !dbg !2761
  %579 = phi i1 [ false, %568 ], [ %551, %546 ], [ %540, %544 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2620, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i64 %578, metadata !2612, metadata !DIExpression()), !dbg !2664
  %580 = icmp ult i64 %578, %571, !dbg !3103
  br i1 %580, label %581, label %583, !dbg !3106

581:                                              ; preds = %570
  %582 = getelementptr inbounds i8, i8* %0, i64 %578, !dbg !3103
  store i8 %572, i8* %582, align 1, !dbg !3103, !tbaa !654
  br label %583, !dbg !3103

583:                                              ; preds = %581, %570
  %584 = add i64 %578, 1, !dbg !3106
  call void @llvm.dbg.value(metadata i64 %584, metadata !2612, metadata !DIExpression()), !dbg !2664
  %585 = select i1 %573, i1 %137, i1 false, !dbg !3107
  call void @llvm.dbg.value(metadata i8 poison, metadata !2619, metadata !DIExpression()), !dbg !2664
  br label %586, !dbg !3108

586:                                              ; preds = %215, %583
  %587 = phi i64 [ %577, %583 ], [ %164, %215 ], !dbg !3053
  %588 = phi i64 [ %584, %583 ], [ %134, %215 ], !dbg !2664
  %589 = phi i64 [ %576, %583 ], [ %135, %215 ], !dbg !2668
  %590 = phi i1 [ %575, %583 ], [ %136, %215 ]
  %591 = phi i1 [ %585, %583 ], [ %137, %215 ]
  %592 = phi i1 [ %579, %583 ], [ %138, %215 ]
  %593 = phi i64 [ %574, %583 ], [ %139, %215 ], !dbg !3064
  %594 = phi i64 [ %571, %583 ], [ %140, %215 ]
  call void @llvm.dbg.value(metadata i64 %594, metadata !2603, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i64 %593, metadata !2626, metadata !DIExpression()), !dbg !2753
  call void @llvm.dbg.value(metadata i8 poison, metadata !2620, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i8 poison, metadata !2619, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i8 poison, metadata !2618, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i64 %589, metadata !2613, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i64 %588, metadata !2612, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i64 %587, metadata !2605, metadata !DIExpression()), !dbg !2664
  %595 = add i64 %593, 1, !dbg !3109
  call void @llvm.dbg.value(metadata i64 %595, metadata !2626, metadata !DIExpression()), !dbg !2753
  br label %132, !dbg !3110, !llvm.loop !3111

596:                                              ; preds = %146, %142
  call void @llvm.dbg.value(metadata i64 undef, metadata !2603, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i8 poison, metadata !2619, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i8 poison, metadata !2618, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i64 undef, metadata !2613, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i64 undef, metadata !2612, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i64 undef, metadata !2605, metadata !DIExpression()), !dbg !2664
  %597 = icmp eq i64 %134, 0, !dbg !3113
  %598 = and i1 %126, %597, !dbg !3115
  %599 = and i1 %598, %119, !dbg !3115
  br i1 %599, label %638, label %600, !dbg !3115

600:                                              ; preds = %596
  %601 = xor i1 %126, true, !dbg !3116
  %602 = or i1 %119, %601, !dbg !3116
  %603 = xor i1 %136, true, !dbg !3116
  %604 = select i1 %602, i1 true, i1 %603, !dbg !3116
  br i1 %604, label %612, label %605, !dbg !3116

605:                                              ; preds = %600
  br i1 %137, label %606, label %608, !dbg !3118

606:                                              ; preds = %605
  %607 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %135, i8* noundef %2, i64 noundef %133, i32 noundef 5, i32 noundef %5, i32* noundef %6, i8* noundef %113, i8* noundef %114), !dbg !3120
  br label %653, !dbg !3122

608:                                              ; preds = %605
  %609 = icmp eq i64 %140, 0, !dbg !3123
  %610 = icmp ne i64 %135, 0
  %611 = select i1 %609, i1 %610, i1 false, !dbg !3125
  br i1 %611, label %36, label %612, !dbg !3125

612:                                              ; preds = %600, %608
  %613 = phi i1 [ %119, %600 ], [ false, %608 ]
  %614 = icmp eq i8* %116, null, !dbg !3126
  %615 = or i1 %614, %613, !dbg !3128
  br i1 %615, label %631, label %616, !dbg !3128

616:                                              ; preds = %612
  call void @llvm.dbg.value(metadata i8* %116, metadata !2614, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i64 %134, metadata !2612, metadata !DIExpression()), !dbg !2664
  %617 = load i8, i8* %116, align 1, !dbg !3129, !tbaa !654
  %618 = icmp eq i8 %617, 0, !dbg !3132
  br i1 %618, label %631, label %619, !dbg !3132

619:                                              ; preds = %616, %626
  %620 = phi i8 [ %629, %626 ], [ %617, %616 ]
  %621 = phi i8* [ %628, %626 ], [ %116, %616 ]
  %622 = phi i64 [ %627, %626 ], [ %134, %616 ]
  call void @llvm.dbg.value(metadata i8* %621, metadata !2614, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i64 %622, metadata !2612, metadata !DIExpression()), !dbg !2664
  %623 = icmp ult i64 %622, %140, !dbg !3133
  br i1 %623, label %624, label %626, !dbg !3136

624:                                              ; preds = %619
  %625 = getelementptr inbounds i8, i8* %0, i64 %622, !dbg !3133
  store i8 %620, i8* %625, align 1, !dbg !3133, !tbaa !654
  br label %626, !dbg !3133

626:                                              ; preds = %624, %619
  %627 = add i64 %622, 1, !dbg !3136
  call void @llvm.dbg.value(metadata i64 %627, metadata !2612, metadata !DIExpression()), !dbg !2664
  %628 = getelementptr inbounds i8, i8* %621, i64 1, !dbg !3137
  call void @llvm.dbg.value(metadata i8* %628, metadata !2614, metadata !DIExpression()), !dbg !2664
  %629 = load i8, i8* %628, align 1, !dbg !3129, !tbaa !654
  %630 = icmp eq i8 %629, 0, !dbg !3132
  br i1 %630, label %631, label %619, !dbg !3132, !llvm.loop !3138

631:                                              ; preds = %626, %616, %612
  %632 = phi i64 [ %134, %612 ], [ %134, %616 ], [ %627, %626 ], !dbg !2740
  call void @llvm.dbg.value(metadata i64 %632, metadata !2612, metadata !DIExpression()), !dbg !2664
  %633 = icmp ult i64 %632, %140, !dbg !3140
  br i1 %633, label %634, label %653, !dbg !3142

634:                                              ; preds = %631
  %635 = getelementptr inbounds i8, i8* %0, i64 %632, !dbg !3143
  store i8 0, i8* %635, align 1, !dbg !3144, !tbaa !654
  br label %653, !dbg !3143

636:                                              ; preds = %169
  call void @llvm.dbg.label(metadata !2663), !dbg !2970
  %637 = icmp eq i32 %112, 2, !dbg !3145
  br i1 %637, label %643, label %647, !dbg !2971

638:                                              ; preds = %596, %510, %276, %274, %261, %258, %230, %217, %370
  %639 = phi i64 [ %140, %370 ], [ %519, %510 ], [ %140, %276 ], [ %140, %274 ], [ %140, %261 ], [ %140, %258 ], [ %140, %230 ], [ %140, %217 ], [ %140, %596 ]
  %640 = phi i64 [ %360, %370 ], [ %511, %510 ], [ %164, %276 ], [ %164, %274 ], [ %164, %261 ], [ %164, %258 ], [ %164, %230 ], [ %164, %217 ], [ %133, %596 ]
  call void @llvm.dbg.label(metadata !2663), !dbg !2970
  %641 = icmp eq i32 %112, 2, !dbg !3145
  %642 = select i1 %118, i32 4, i32 2, !dbg !2971
  br i1 %641, label %643, label %647, !dbg !2971

643:                                              ; preds = %344, %638, %636
  %644 = phi i32 [ 4, %636 ], [ %345, %344 ], [ %642, %638 ]
  %645 = phi i64 [ %140, %636 ], [ %140, %344 ], [ %639, %638 ]
  %646 = phi i64 [ %164, %636 ], [ %312, %344 ], [ %640, %638 ]
  br label %647, !dbg !2971

647:                                              ; preds = %157, %638, %636, %643
  %648 = phi i64 [ %645, %643 ], [ %140, %636 ], [ %639, %638 ], [ %140, %157 ]
  %649 = phi i64 [ %646, %643 ], [ %164, %636 ], [ %640, %638 ], [ %155, %157 ]
  %650 = phi i32 [ %644, %643 ], [ %112, %636 ], [ %112, %638 ], [ %112, %157 ]
  call void @llvm.dbg.value(metadata i32 %650, metadata !2606, metadata !DIExpression()), !dbg !2664
  %651 = and i32 %5, -3, !dbg !3146
  %652 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %648, i8* noundef %2, i64 noundef %649, i32 noundef %650, i32 noundef %651, i32* noundef null, i8* noundef %113, i8* noundef %114), !dbg !3147
  br label %653, !dbg !3148

653:                                              ; preds = %631, %634, %647, %606
  %654 = phi i64 [ %652, %647 ], [ %607, %606 ], [ %632, %634 ], [ %632, %631 ]
  ret i64 %654, !dbg !3149
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind
declare !dbg !3150 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc(i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef %2) local_unnamed_addr #12 !dbg !3152 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3156, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i64 %1, metadata !3157, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3158, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i8* %0, metadata !3160, metadata !DIExpression()) #34, !dbg !3173
  call void @llvm.dbg.value(metadata i64 %1, metadata !3165, metadata !DIExpression()) #34, !dbg !3173
  call void @llvm.dbg.value(metadata i64* null, metadata !3166, metadata !DIExpression()) #34, !dbg !3173
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3167, metadata !DIExpression()) #34, !dbg !3173
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !3175
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !3175
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3168, metadata !DIExpression()) #34, !dbg !3173
  %6 = tail call i32* @__errno_location() #37, !dbg !3176
  %7 = load i32, i32* %6, align 4, !dbg !3176, !tbaa !645
  call void @llvm.dbg.value(metadata i32 %7, metadata !3169, metadata !DIExpression()) #34, !dbg !3173
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3177
  %9 = load i32, i32* %8, align 4, !dbg !3177, !tbaa !2546
  %10 = or i32 %9, 1, !dbg !3178
  call void @llvm.dbg.value(metadata i32 %10, metadata !3170, metadata !DIExpression()) #34, !dbg !3173
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3179
  %12 = load i32, i32* %11, align 8, !dbg !3179, !tbaa !2495
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !3180
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3181
  %15 = load i8*, i8** %14, align 8, !dbg !3181, !tbaa !2568
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3182
  %17 = load i8*, i8** %16, align 8, !dbg !3182, !tbaa !2571
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %12, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %15, i8* noundef %17) #34, !dbg !3183
  %19 = add i64 %18, 1, !dbg !3184
  call void @llvm.dbg.value(metadata i64 %19, metadata !3171, metadata !DIExpression()) #34, !dbg !3173
  %20 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %19) #41, !dbg !3185
  call void @llvm.dbg.value(metadata i8* %20, metadata !3172, metadata !DIExpression()) #34, !dbg !3173
  %21 = load i32, i32* %11, align 8, !dbg !3186, !tbaa !2495
  %22 = load i8*, i8** %14, align 8, !dbg !3187, !tbaa !2568
  %23 = load i8*, i8** %16, align 8, !dbg !3188, !tbaa !2571
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %20, i64 noundef %19, i8* noundef %0, i64 noundef %1, i32 noundef %21, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %22, i8* noundef %23) #34, !dbg !3189
  store i32 %7, i32* %6, align 4, !dbg !3190, !tbaa !645
  ret i8* %20, !dbg !3191
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %0, i64 noundef %1, i64* noundef writeonly %2, %struct.quoting_options* noundef %3) local_unnamed_addr #12 !dbg !3161 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3160, metadata !DIExpression()), !dbg !3192
  call void @llvm.dbg.value(metadata i64 %1, metadata !3165, metadata !DIExpression()), !dbg !3192
  call void @llvm.dbg.value(metadata i64* %2, metadata !3166, metadata !DIExpression()), !dbg !3192
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3167, metadata !DIExpression()), !dbg !3192
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !3193
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !3193
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3168, metadata !DIExpression()), !dbg !3192
  %7 = tail call i32* @__errno_location() #37, !dbg !3194
  %8 = load i32, i32* %7, align 4, !dbg !3194, !tbaa !645
  call void @llvm.dbg.value(metadata i32 %8, metadata !3169, metadata !DIExpression()), !dbg !3192
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3195
  %10 = load i32, i32* %9, align 4, !dbg !3195, !tbaa !2546
  %11 = icmp eq i64* %2, null, !dbg !3196
  %12 = zext i1 %11 to i32, !dbg !3196
  %13 = or i32 %10, %12, !dbg !3197
  call void @llvm.dbg.value(metadata i32 %13, metadata !3170, metadata !DIExpression()), !dbg !3192
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3198
  %15 = load i32, i32* %14, align 8, !dbg !3198, !tbaa !2495
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !3199
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3200
  %18 = load i8*, i8** %17, align 8, !dbg !3200, !tbaa !2568
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3201
  %20 = load i8*, i8** %19, align 8, !dbg !3201, !tbaa !2571
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %15, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %18, i8* noundef %20), !dbg !3202
  %22 = add i64 %21, 1, !dbg !3203
  call void @llvm.dbg.value(metadata i64 %22, metadata !3171, metadata !DIExpression()), !dbg !3192
  %23 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %22) #41, !dbg !3204
  call void @llvm.dbg.value(metadata i8* %23, metadata !3172, metadata !DIExpression()), !dbg !3192
  %24 = load i32, i32* %14, align 8, !dbg !3205, !tbaa !2495
  %25 = load i8*, i8** %17, align 8, !dbg !3206, !tbaa !2568
  %26 = load i8*, i8** %19, align 8, !dbg !3207, !tbaa !2571
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %23, i64 noundef %22, i8* noundef %0, i64 noundef %1, i32 noundef %24, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %25, i8* noundef %26), !dbg !3208
  store i32 %8, i32* %7, align 4, !dbg !3209, !tbaa !645
  br i1 %11, label %29, label %28, !dbg !3210

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !3211, !tbaa !961
  br label %29, !dbg !3213

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !3214
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #12 !dbg !3215 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3220, !tbaa !554
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !3217, metadata !DIExpression()), !dbg !3221
  call void @llvm.dbg.value(metadata i32 1, metadata !3218, metadata !DIExpression()), !dbg !3222
  %2 = load i32, i32* @nslots, align 4, !tbaa !645
  call void @llvm.dbg.value(metadata i32 1, metadata !3218, metadata !DIExpression()), !dbg !3222
  %3 = icmp sgt i32 %2, 1, !dbg !3223
  br i1 %3, label %4, label %6, !dbg !3225

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !3223
  br label %10, !dbg !3225

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !3226
  %8 = load i8*, i8** %7, align 8, !dbg !3226, !tbaa !3228
  %9 = icmp eq i8* %8, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3230
  br i1 %9, label %17, label %16, !dbg !3231

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !3218, metadata !DIExpression()), !dbg !3222
  %12 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %11, i32 1, !dbg !3232
  %13 = load i8*, i8** %12, align 8, !dbg !3232, !tbaa !3228
  tail call void @free(i8* noundef %13) #34, !dbg !3233
  %14 = add nuw nsw i64 %11, 1, !dbg !3234
  call void @llvm.dbg.value(metadata i64 %14, metadata !3218, metadata !DIExpression()), !dbg !3222
  %15 = icmp eq i64 %14, %5, !dbg !3223
  br i1 %15, label %6, label %10, !dbg !3225, !llvm.loop !3235

16:                                               ; preds = %6
  tail call void @free(i8* noundef %8) #34, !dbg !3237
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !3239, !tbaa !3240
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !3241, !tbaa !3228
  br label %17, !dbg !3242

17:                                               ; preds = %16, %6
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !3243
  br i1 %18, label %21, label %19, !dbg !3245

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !3246
  tail call void @free(i8* noundef %20) #34, !dbg !3248
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !3249, !tbaa !554
  br label %21, !dbg !3250

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !3251, !tbaa !645
  ret void, !dbg !3252
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !3253 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3255, metadata !DIExpression()), !dbg !3257
  call void @llvm.dbg.value(metadata i8* %1, metadata !3256, metadata !DIExpression()), !dbg !3257
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options), !dbg !3258
  ret i8* %3, !dbg !3259
}

; Function Attrs: nounwind uwtable
define internal fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef %3) unnamed_addr #12 !dbg !3260 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3264, metadata !DIExpression()), !dbg !3280
  call void @llvm.dbg.value(metadata i8* %1, metadata !3265, metadata !DIExpression()), !dbg !3280
  call void @llvm.dbg.value(metadata i64 %2, metadata !3266, metadata !DIExpression()), !dbg !3280
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3267, metadata !DIExpression()), !dbg !3280
  %6 = tail call i32* @__errno_location() #37, !dbg !3281
  %7 = load i32, i32* %6, align 4, !dbg !3281, !tbaa !645
  call void @llvm.dbg.value(metadata i32 %7, metadata !3268, metadata !DIExpression()), !dbg !3280
  %8 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3282, !tbaa !554
  call void @llvm.dbg.value(metadata %struct.slotvec* %8, metadata !3269, metadata !DIExpression()), !dbg !3280
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !3270, metadata !DIExpression()), !dbg !3280
  %9 = icmp ugt i32 %0, 2147483646, !dbg !3283
  br i1 %9, label %10, label %11, !dbg !3283

10:                                               ; preds = %4
  tail call void @abort() #36, !dbg !3285
  unreachable, !dbg !3285

11:                                               ; preds = %4
  %12 = load i32, i32* @nslots, align 4, !dbg !3286, !tbaa !645
  %13 = icmp sgt i32 %12, %0, !dbg !3287
  br i1 %13, label %36, label %14, !dbg !3288

14:                                               ; preds = %11
  %15 = icmp eq %struct.slotvec* %8, @slotvec0, !dbg !3289
  call void @llvm.dbg.value(metadata i1 %15, metadata !3271, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3290
  %16 = bitcast i64* %5 to i8*, !dbg !3291
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16) #34, !dbg !3291
  %17 = sext i32 %12 to i64, !dbg !3292
  call void @llvm.dbg.value(metadata i64 %17, metadata !3274, metadata !DIExpression()), !dbg !3290
  store i64 %17, i64* %5, align 8, !dbg !3293, !tbaa !961
  %18 = select i1 %15, %struct.slotvec* null, %struct.slotvec* %8, !dbg !3294
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !3294
  %20 = add nuw nsw i32 %0, 1, !dbg !3295
  %21 = sub i32 %20, %12, !dbg !3296
  %22 = sext i32 %21 to i64, !dbg !3297
  call void @llvm.dbg.value(metadata i64* %5, metadata !3274, metadata !DIExpression(DW_OP_deref)), !dbg !3290
  %23 = call nonnull i8* @xpalloc(i8* noundef %19, i64* noundef nonnull %5, i64 noundef %22, i64 noundef 2147483647, i64 noundef 16) #34, !dbg !3298
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !3298
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !3269, metadata !DIExpression()), !dbg !3280
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !3299, !tbaa !554
  br i1 %15, label %25, label %26, !dbg !3300

25:                                               ; preds = %14
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %23, i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !3301, !tbaa.struct !3303
  br label %26, !dbg !3304

26:                                               ; preds = %25, %14
  %27 = load i32, i32* @nslots, align 4, !dbg !3305, !tbaa !645
  %28 = sext i32 %27 to i64, !dbg !3306
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !3306
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !3307
  %31 = load i64, i64* %5, align 8, !dbg !3308, !tbaa !961
  call void @llvm.dbg.value(metadata i64 %31, metadata !3274, metadata !DIExpression()), !dbg !3290
  %32 = sub nsw i64 %31, %28, !dbg !3309
  %33 = shl i64 %32, 4, !dbg !3310
  call void @llvm.dbg.value(metadata i8* %30, metadata !2698, metadata !DIExpression()) #34, !dbg !3311
  call void @llvm.dbg.value(metadata i32 0, metadata !2701, metadata !DIExpression()) #34, !dbg !3311
  call void @llvm.dbg.value(metadata i64 %33, metadata !2702, metadata !DIExpression()) #34, !dbg !3311
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 %30, i8 noundef 0, i64 noundef %33, i1 noundef false) #34, !dbg !3313
  %34 = load i64, i64* %5, align 8, !dbg !3314, !tbaa !961
  call void @llvm.dbg.value(metadata i64 %34, metadata !3274, metadata !DIExpression()), !dbg !3290
  %35 = trunc i64 %34 to i32, !dbg !3314
  store i32 %35, i32* @nslots, align 4, !dbg !3315, !tbaa !645
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #34, !dbg !3316
  br label %36, !dbg !3317

36:                                               ; preds = %26, %11
  %37 = phi %struct.slotvec* [ %24, %26 ], [ %8, %11 ], !dbg !3280
  call void @llvm.dbg.value(metadata %struct.slotvec* %37, metadata !3269, metadata !DIExpression()), !dbg !3280
  %38 = zext i32 %0 to i64, !dbg !3318
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 0, !dbg !3319
  %40 = load i64, i64* %39, align 8, !dbg !3319, !tbaa !3240
  call void @llvm.dbg.value(metadata i64 %40, metadata !3275, metadata !DIExpression()), !dbg !3320
  %41 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 1, !dbg !3321
  %42 = load i8*, i8** %41, align 8, !dbg !3321, !tbaa !3228
  call void @llvm.dbg.value(metadata i8* %42, metadata !3277, metadata !DIExpression()), !dbg !3320
  %43 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !3322
  %44 = load i32, i32* %43, align 4, !dbg !3322, !tbaa !2546
  %45 = or i32 %44, 1, !dbg !3323
  call void @llvm.dbg.value(metadata i32 %45, metadata !3278, metadata !DIExpression()), !dbg !3320
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3324
  %47 = load i32, i32* %46, align 8, !dbg !3324, !tbaa !2495
  %48 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !3325
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !3326
  %50 = load i8*, i8** %49, align 8, !dbg !3326, !tbaa !2568
  %51 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !3327
  %52 = load i8*, i8** %51, align 8, !dbg !3327, !tbaa !2571
  %53 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %42, i64 noundef %40, i8* noundef %1, i64 noundef %2, i32 noundef %47, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %50, i8* noundef %52), !dbg !3328
  call void @llvm.dbg.value(metadata i64 %53, metadata !3279, metadata !DIExpression()), !dbg !3320
  %54 = icmp ugt i64 %40, %53, !dbg !3329
  br i1 %54, label %65, label %55, !dbg !3331

55:                                               ; preds = %36
  %56 = add i64 %53, 1, !dbg !3332
  call void @llvm.dbg.value(metadata i64 %56, metadata !3275, metadata !DIExpression()), !dbg !3320
  store i64 %56, i64* %39, align 8, !dbg !3334, !tbaa !3240
  %57 = icmp eq i8* %42, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3335
  br i1 %57, label %59, label %58, !dbg !3337

58:                                               ; preds = %55
  call void @free(i8* noundef %42) #34, !dbg !3338
  br label %59, !dbg !3338

59:                                               ; preds = %58, %55
  %60 = call noalias nonnull i8* @xcharalloc(i64 noundef %56) #41, !dbg !3339
  call void @llvm.dbg.value(metadata i8* %60, metadata !3277, metadata !DIExpression()), !dbg !3320
  store i8* %60, i8** %41, align 8, !dbg !3340, !tbaa !3228
  %61 = load i32, i32* %46, align 8, !dbg !3341, !tbaa !2495
  %62 = load i8*, i8** %49, align 8, !dbg !3342, !tbaa !2568
  %63 = load i8*, i8** %51, align 8, !dbg !3343, !tbaa !2571
  %64 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %60, i64 noundef %56, i8* noundef %1, i64 noundef %2, i32 noundef %61, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %62, i8* noundef %63), !dbg !3344
  br label %65, !dbg !3345

65:                                               ; preds = %59, %36
  %66 = phi i8* [ %60, %59 ], [ %42, %36 ], !dbg !3320
  call void @llvm.dbg.value(metadata i8* %66, metadata !3277, metadata !DIExpression()), !dbg !3320
  store i32 %7, i32* %6, align 4, !dbg !3346, !tbaa !645
  ret i8* %66, !dbg !3347
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #25

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !3348 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3352, metadata !DIExpression()), !dbg !3355
  call void @llvm.dbg.value(metadata i8* %1, metadata !3353, metadata !DIExpression()), !dbg !3355
  call void @llvm.dbg.value(metadata i64 %2, metadata !3354, metadata !DIExpression()), !dbg !3355
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @default_quoting_options), !dbg !3356
  ret i8* %4, !dbg !3357
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg(i8* noundef %0) local_unnamed_addr #12 !dbg !3358 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3360, metadata !DIExpression()), !dbg !3361
  call void @llvm.dbg.value(metadata i32 0, metadata !3255, metadata !DIExpression()) #34, !dbg !3362
  call void @llvm.dbg.value(metadata i8* %0, metadata !3256, metadata !DIExpression()) #34, !dbg !3362
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options) #34, !dbg !3364
  ret i8* %2, !dbg !3365
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !3366 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3370, metadata !DIExpression()), !dbg !3372
  call void @llvm.dbg.value(metadata i64 %1, metadata !3371, metadata !DIExpression()), !dbg !3372
  call void @llvm.dbg.value(metadata i32 0, metadata !3352, metadata !DIExpression()) #34, !dbg !3373
  call void @llvm.dbg.value(metadata i8* %0, metadata !3353, metadata !DIExpression()) #34, !dbg !3373
  call void @llvm.dbg.value(metadata i64 %1, metadata !3354, metadata !DIExpression()) #34, !dbg !3373
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @default_quoting_options) #34, !dbg !3375
  ret i8* %3, !dbg !3376
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !3377 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3381, metadata !DIExpression()), !dbg !3385
  call void @llvm.dbg.value(metadata i32 %1, metadata !3382, metadata !DIExpression()), !dbg !3385
  call void @llvm.dbg.value(metadata i8* %2, metadata !3383, metadata !DIExpression()), !dbg !3385
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3386
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #34, !dbg !3386
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3384, metadata !DIExpression()), !dbg !3387
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3388), !dbg !3391
  call void @llvm.dbg.value(metadata i32 %1, metadata !3392, metadata !DIExpression()) #34, !dbg !3398
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3397, metadata !DIExpression()) #34, !dbg !3400
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #34, !dbg !3400, !alias.scope !3388
  %6 = icmp eq i32 %1, 10, !dbg !3401
  br i1 %6, label %7, label %8, !dbg !3403

7:                                                ; preds = %3
  tail call void @abort() #36, !dbg !3404, !noalias !3388
  unreachable, !dbg !3404

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3405
  store i32 %1, i32* %9, align 8, !dbg !3406, !tbaa !2495, !alias.scope !3388
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4), !dbg !3407
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #34, !dbg !3408
  ret i8* %10, !dbg !3409
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #12 !dbg !3410 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3414, metadata !DIExpression()), !dbg !3419
  call void @llvm.dbg.value(metadata i32 %1, metadata !3415, metadata !DIExpression()), !dbg !3419
  call void @llvm.dbg.value(metadata i8* %2, metadata !3416, metadata !DIExpression()), !dbg !3419
  call void @llvm.dbg.value(metadata i64 %3, metadata !3417, metadata !DIExpression()), !dbg !3419
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3420
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #34, !dbg !3420
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3418, metadata !DIExpression()), !dbg !3421
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3422), !dbg !3425
  call void @llvm.dbg.value(metadata i32 %1, metadata !3392, metadata !DIExpression()) #34, !dbg !3426
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3397, metadata !DIExpression()) #34, !dbg !3428
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #34, !dbg !3428, !alias.scope !3422
  %7 = icmp eq i32 %1, 10, !dbg !3429
  br i1 %7, label %8, label %9, !dbg !3430

8:                                                ; preds = %4
  tail call void @abort() #36, !dbg !3431, !noalias !3422
  unreachable, !dbg !3431

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3432
  store i32 %1, i32* %10, align 8, !dbg !3433, !tbaa !2495, !alias.scope !3422
  %11 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5), !dbg !3434
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #34, !dbg !3435
  ret i8* %11, !dbg !3436
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !3437 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3441, metadata !DIExpression()), !dbg !3443
  call void @llvm.dbg.value(metadata i8* %1, metadata !3442, metadata !DIExpression()), !dbg !3443
  call void @llvm.dbg.value(metadata i32 0, metadata !3381, metadata !DIExpression()) #34, !dbg !3444
  call void @llvm.dbg.value(metadata i32 %0, metadata !3382, metadata !DIExpression()) #34, !dbg !3444
  call void @llvm.dbg.value(metadata i8* %1, metadata !3383, metadata !DIExpression()) #34, !dbg !3444
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3446
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #34, !dbg !3446
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3384, metadata !DIExpression()) #34, !dbg !3447
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3448) #34, !dbg !3451
  call void @llvm.dbg.value(metadata i32 %0, metadata !3392, metadata !DIExpression()) #34, !dbg !3452
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3397, metadata !DIExpression()) #34, !dbg !3454
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #34, !dbg !3454, !alias.scope !3448
  %5 = icmp eq i32 %0, 10, !dbg !3455
  br i1 %5, label %6, label %7, !dbg !3456

6:                                                ; preds = %2
  tail call void @abort() #36, !dbg !3457, !noalias !3448
  unreachable, !dbg !3457

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3458
  store i32 %0, i32* %8, align 8, !dbg !3459, !tbaa !2495, !alias.scope !3448
  %9 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #34, !dbg !3460
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #34, !dbg !3461
  ret i8* %9, !dbg !3462
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !3463 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3467, metadata !DIExpression()), !dbg !3470
  call void @llvm.dbg.value(metadata i8* %1, metadata !3468, metadata !DIExpression()), !dbg !3470
  call void @llvm.dbg.value(metadata i64 %2, metadata !3469, metadata !DIExpression()), !dbg !3470
  call void @llvm.dbg.value(metadata i32 0, metadata !3414, metadata !DIExpression()) #34, !dbg !3471
  call void @llvm.dbg.value(metadata i32 %0, metadata !3415, metadata !DIExpression()) #34, !dbg !3471
  call void @llvm.dbg.value(metadata i8* %1, metadata !3416, metadata !DIExpression()) #34, !dbg !3471
  call void @llvm.dbg.value(metadata i64 %2, metadata !3417, metadata !DIExpression()) #34, !dbg !3471
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3473
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #34, !dbg !3473
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3418, metadata !DIExpression()) #34, !dbg !3474
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3475) #34, !dbg !3478
  call void @llvm.dbg.value(metadata i32 %0, metadata !3392, metadata !DIExpression()) #34, !dbg !3479
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3397, metadata !DIExpression()) #34, !dbg !3481
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #34, !dbg !3481, !alias.scope !3475
  %6 = icmp eq i32 %0, 10, !dbg !3482
  br i1 %6, label %7, label %8, !dbg !3483

7:                                                ; preds = %3
  tail call void @abort() #36, !dbg !3484, !noalias !3475
  unreachable, !dbg !3484

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3485
  store i32 %0, i32* %9, align 8, !dbg !3486, !tbaa !2495, !alias.scope !3475
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull %4) #34, !dbg !3487
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #34, !dbg !3488
  ret i8* %10, !dbg !3489
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char_mem(i8* noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #12 !dbg !3490 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3494, metadata !DIExpression()), !dbg !3498
  call void @llvm.dbg.value(metadata i64 %1, metadata !3495, metadata !DIExpression()), !dbg !3498
  call void @llvm.dbg.value(metadata i8 %2, metadata !3496, metadata !DIExpression()), !dbg !3498
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3499
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #34, !dbg !3499
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3497, metadata !DIExpression()), !dbg !3500
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3501, !tbaa.struct !3502
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2513, metadata !DIExpression()), !dbg !3503
  call void @llvm.dbg.value(metadata i8 %2, metadata !2514, metadata !DIExpression()), !dbg !3503
  call void @llvm.dbg.value(metadata i32 1, metadata !2515, metadata !DIExpression()), !dbg !3503
  call void @llvm.dbg.value(metadata i8 %2, metadata !2516, metadata !DIExpression()), !dbg !3503
  %6 = lshr i8 %2, 5, !dbg !3505
  %7 = zext i8 %6 to i64, !dbg !3505
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3506
  call void @llvm.dbg.value(metadata i32* %8, metadata !2517, metadata !DIExpression()), !dbg !3503
  %9 = and i8 %2, 31, !dbg !3507
  %10 = zext i8 %9 to i32, !dbg !3507
  call void @llvm.dbg.value(metadata i32 %10, metadata !2519, metadata !DIExpression()), !dbg !3503
  %11 = load i32, i32* %8, align 4, !dbg !3508, !tbaa !645
  %12 = lshr i32 %11, %10, !dbg !3509
  %13 = and i32 %12, 1, !dbg !3510
  call void @llvm.dbg.value(metadata i32 %13, metadata !2520, metadata !DIExpression()), !dbg !3503
  %14 = xor i32 %13, 1, !dbg !3511
  %15 = shl i32 %14, %10, !dbg !3512
  %16 = xor i32 %15, %11, !dbg !3513
  store i32 %16, i32* %8, align 4, !dbg !3513, !tbaa !645
  %17 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %4), !dbg !3514
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #34, !dbg !3515
  ret i8* %17, !dbg !3516
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char(i8* noundef %0, i8 noundef %1) local_unnamed_addr #12 !dbg !3517 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3521, metadata !DIExpression()), !dbg !3523
  call void @llvm.dbg.value(metadata i8 %1, metadata !3522, metadata !DIExpression()), !dbg !3523
  call void @llvm.dbg.value(metadata i8* %0, metadata !3494, metadata !DIExpression()) #34, !dbg !3524
  call void @llvm.dbg.value(metadata i64 -1, metadata !3495, metadata !DIExpression()) #34, !dbg !3524
  call void @llvm.dbg.value(metadata i8 %1, metadata !3496, metadata !DIExpression()) #34, !dbg !3524
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3526
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #34, !dbg !3526
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3497, metadata !DIExpression()) #34, !dbg !3527
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #34, !dbg !3528, !tbaa.struct !3502
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2513, metadata !DIExpression()) #34, !dbg !3529
  call void @llvm.dbg.value(metadata i8 %1, metadata !2514, metadata !DIExpression()) #34, !dbg !3529
  call void @llvm.dbg.value(metadata i32 1, metadata !2515, metadata !DIExpression()) #34, !dbg !3529
  call void @llvm.dbg.value(metadata i8 %1, metadata !2516, metadata !DIExpression()) #34, !dbg !3529
  %5 = lshr i8 %1, 5, !dbg !3531
  %6 = zext i8 %5 to i64, !dbg !3531
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3532
  call void @llvm.dbg.value(metadata i32* %7, metadata !2517, metadata !DIExpression()) #34, !dbg !3529
  %8 = and i8 %1, 31, !dbg !3533
  %9 = zext i8 %8 to i32, !dbg !3533
  call void @llvm.dbg.value(metadata i32 %9, metadata !2519, metadata !DIExpression()) #34, !dbg !3529
  %10 = load i32, i32* %7, align 4, !dbg !3534, !tbaa !645
  %11 = lshr i32 %10, %9, !dbg !3535
  %12 = and i32 %11, 1, !dbg !3536
  call void @llvm.dbg.value(metadata i32 %12, metadata !2520, metadata !DIExpression()) #34, !dbg !3529
  %13 = xor i32 %12, 1, !dbg !3537
  %14 = shl i32 %13, %9, !dbg !3538
  %15 = xor i32 %14, %10, !dbg !3539
  store i32 %15, i32* %7, align 4, !dbg !3539, !tbaa !645
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #34, !dbg !3540
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #34, !dbg !3541
  ret i8* %16, !dbg !3542
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon(i8* noundef %0) local_unnamed_addr #12 !dbg !3543 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3545, metadata !DIExpression()), !dbg !3546
  call void @llvm.dbg.value(metadata i8* %0, metadata !3521, metadata !DIExpression()) #34, !dbg !3547
  call void @llvm.dbg.value(metadata i8 58, metadata !3522, metadata !DIExpression()) #34, !dbg !3547
  call void @llvm.dbg.value(metadata i8* %0, metadata !3494, metadata !DIExpression()) #34, !dbg !3549
  call void @llvm.dbg.value(metadata i64 -1, metadata !3495, metadata !DIExpression()) #34, !dbg !3549
  call void @llvm.dbg.value(metadata i8 58, metadata !3496, metadata !DIExpression()) #34, !dbg !3549
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3551
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #34, !dbg !3551
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !3497, metadata !DIExpression()) #34, !dbg !3552
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %3, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #34, !dbg !3553, !tbaa.struct !3502
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2513, metadata !DIExpression()) #34, !dbg !3554
  call void @llvm.dbg.value(metadata i8 58, metadata !2514, metadata !DIExpression()) #34, !dbg !3554
  call void @llvm.dbg.value(metadata i32 1, metadata !2515, metadata !DIExpression()) #34, !dbg !3554
  call void @llvm.dbg.value(metadata i8 58, metadata !2516, metadata !DIExpression()) #34, !dbg !3554
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3556
  call void @llvm.dbg.value(metadata i32* %4, metadata !2517, metadata !DIExpression()) #34, !dbg !3554
  call void @llvm.dbg.value(metadata i32 26, metadata !2519, metadata !DIExpression()) #34, !dbg !3554
  %5 = load i32, i32* %4, align 4, !dbg !3557, !tbaa !645
  call void @llvm.dbg.value(metadata i32 %5, metadata !2520, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #34, !dbg !3554
  %6 = or i32 %5, 67108864, !dbg !3558
  store i32 %6, i32* %4, align 4, !dbg !3558, !tbaa !645
  %7 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %2) #34, !dbg !3559
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #34, !dbg !3560
  ret i8* %7, !dbg !3561
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !3562 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3564, metadata !DIExpression()), !dbg !3566
  call void @llvm.dbg.value(metadata i64 %1, metadata !3565, metadata !DIExpression()), !dbg !3566
  call void @llvm.dbg.value(metadata i8* %0, metadata !3494, metadata !DIExpression()) #34, !dbg !3567
  call void @llvm.dbg.value(metadata i64 %1, metadata !3495, metadata !DIExpression()) #34, !dbg !3567
  call void @llvm.dbg.value(metadata i8 58, metadata !3496, metadata !DIExpression()) #34, !dbg !3567
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3569
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #34, !dbg !3569
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3497, metadata !DIExpression()) #34, !dbg !3570
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #34, !dbg !3571, !tbaa.struct !3502
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2513, metadata !DIExpression()) #34, !dbg !3572
  call void @llvm.dbg.value(metadata i8 58, metadata !2514, metadata !DIExpression()) #34, !dbg !3572
  call void @llvm.dbg.value(metadata i32 1, metadata !2515, metadata !DIExpression()) #34, !dbg !3572
  call void @llvm.dbg.value(metadata i8 58, metadata !2516, metadata !DIExpression()) #34, !dbg !3572
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3574
  call void @llvm.dbg.value(metadata i32* %5, metadata !2517, metadata !DIExpression()) #34, !dbg !3572
  call void @llvm.dbg.value(metadata i32 26, metadata !2519, metadata !DIExpression()) #34, !dbg !3572
  %6 = load i32, i32* %5, align 4, !dbg !3575, !tbaa !645
  call void @llvm.dbg.value(metadata i32 %6, metadata !2520, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #34, !dbg !3572
  %7 = or i32 %6, 67108864, !dbg !3576
  store i32 %7, i32* %5, align 4, !dbg !3576, !tbaa !645
  %8 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %3) #34, !dbg !3577
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #34, !dbg !3578
  ret i8* %8, !dbg !3579
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !3580 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3582, metadata !DIExpression()), !dbg !3586
  call void @llvm.dbg.value(metadata i32 %1, metadata !3583, metadata !DIExpression()), !dbg !3586
  call void @llvm.dbg.value(metadata i8* %2, metadata !3584, metadata !DIExpression()), !dbg !3586
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3587
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #34, !dbg !3587
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3585, metadata !DIExpression()), !dbg !3588
  call void @llvm.dbg.value(metadata i32 %1, metadata !3392, metadata !DIExpression()) #34, !dbg !3589
  call void @llvm.dbg.value(metadata i32 0, metadata !3397, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3589
  %6 = icmp eq i32 %1, 10, !dbg !3591
  br i1 %6, label %7, label %8, !dbg !3592

7:                                                ; preds = %3
  tail call void @abort() #36, !dbg !3593, !noalias !3594
  unreachable, !dbg !3593

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3397, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3589
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3597
  store i32 %1, i32* %9, align 8, !dbg !3597, !tbaa.struct !3502
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3597
  %11 = bitcast i32* %10 to i8*, !dbg !3597
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(52) %11, i8 0, i64 52, i1 false), !dbg !3597
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2513, metadata !DIExpression()), !dbg !3598
  call void @llvm.dbg.value(metadata i8 58, metadata !2514, metadata !DIExpression()), !dbg !3598
  call void @llvm.dbg.value(metadata i32 1, metadata !2515, metadata !DIExpression()), !dbg !3598
  call void @llvm.dbg.value(metadata i8 58, metadata !2516, metadata !DIExpression()), !dbg !3598
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !3600
  call void @llvm.dbg.value(metadata i32* %12, metadata !2517, metadata !DIExpression()), !dbg !3598
  call void @llvm.dbg.value(metadata i32 26, metadata !2519, metadata !DIExpression()), !dbg !3598
  %13 = load i32, i32* %12, align 4, !dbg !3601, !tbaa !645
  call void @llvm.dbg.value(metadata i32 %13, metadata !2520, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !3598
  %14 = or i32 %13, 67108864, !dbg !3602
  store i32 %14, i32* %12, align 4, !dbg !3602, !tbaa !645
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4), !dbg !3603
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #34, !dbg !3604
  ret i8* %15, !dbg !3605
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) local_unnamed_addr #12 !dbg !3606 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3610, metadata !DIExpression()), !dbg !3614
  call void @llvm.dbg.value(metadata i8* %1, metadata !3611, metadata !DIExpression()), !dbg !3614
  call void @llvm.dbg.value(metadata i8* %2, metadata !3612, metadata !DIExpression()), !dbg !3614
  call void @llvm.dbg.value(metadata i8* %3, metadata !3613, metadata !DIExpression()), !dbg !3614
  call void @llvm.dbg.value(metadata i32 %0, metadata !3615, metadata !DIExpression()) #34, !dbg !3625
  call void @llvm.dbg.value(metadata i8* %1, metadata !3620, metadata !DIExpression()) #34, !dbg !3625
  call void @llvm.dbg.value(metadata i8* %2, metadata !3621, metadata !DIExpression()) #34, !dbg !3625
  call void @llvm.dbg.value(metadata i8* %3, metadata !3622, metadata !DIExpression()) #34, !dbg !3625
  call void @llvm.dbg.value(metadata i64 -1, metadata !3623, metadata !DIExpression()) #34, !dbg !3625
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3627
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #34, !dbg !3627
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3624, metadata !DIExpression()) #34, !dbg !3628
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #34, !dbg !3629, !tbaa.struct !3502
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2553, metadata !DIExpression()) #34, !dbg !3630
  call void @llvm.dbg.value(metadata i8* %1, metadata !2554, metadata !DIExpression()) #34, !dbg !3630
  call void @llvm.dbg.value(metadata i8* %2, metadata !2555, metadata !DIExpression()) #34, !dbg !3630
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2553, metadata !DIExpression()) #34, !dbg !3630
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3632
  store i32 10, i32* %7, align 8, !dbg !3633, !tbaa !2495
  %8 = icmp ne i8* %1, null, !dbg !3634
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !3635
  br i1 %10, label %12, label %11, !dbg !3635

11:                                               ; preds = %4
  tail call void @abort() #36, !dbg !3636
  unreachable, !dbg !3636

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3637
  store i8* %1, i8** %13, align 8, !dbg !3638, !tbaa !2568
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3639
  store i8* %2, i8** %14, align 8, !dbg !3640, !tbaa !2571
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef -1, %struct.quoting_options* noundef nonnull %5) #34, !dbg !3641
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #34, !dbg !3642
  ret i8* %15, !dbg !3643
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i64 noundef %4) local_unnamed_addr #12 !dbg !3616 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3615, metadata !DIExpression()), !dbg !3644
  call void @llvm.dbg.value(metadata i8* %1, metadata !3620, metadata !DIExpression()), !dbg !3644
  call void @llvm.dbg.value(metadata i8* %2, metadata !3621, metadata !DIExpression()), !dbg !3644
  call void @llvm.dbg.value(metadata i8* %3, metadata !3622, metadata !DIExpression()), !dbg !3644
  call void @llvm.dbg.value(metadata i64 %4, metadata !3623, metadata !DIExpression()), !dbg !3644
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3645
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #34, !dbg !3645
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !3624, metadata !DIExpression()), !dbg !3646
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %7, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !3647, !tbaa.struct !3502
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2553, metadata !DIExpression()) #34, !dbg !3648
  call void @llvm.dbg.value(metadata i8* %1, metadata !2554, metadata !DIExpression()) #34, !dbg !3648
  call void @llvm.dbg.value(metadata i8* %2, metadata !2555, metadata !DIExpression()) #34, !dbg !3648
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2553, metadata !DIExpression()) #34, !dbg !3648
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3650
  store i32 10, i32* %8, align 8, !dbg !3651, !tbaa !2495
  %9 = icmp ne i8* %1, null, !dbg !3652
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !3653
  br i1 %11, label %13, label %12, !dbg !3653

12:                                               ; preds = %5
  tail call void @abort() #36, !dbg !3654
  unreachable, !dbg !3654

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3655
  store i8* %1, i8** %14, align 8, !dbg !3656, !tbaa !2568
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3657
  store i8* %2, i8** %15, align 8, !dbg !3658, !tbaa !2571
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef %4, %struct.quoting_options* noundef nonnull %6), !dbg !3659
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #34, !dbg !3660
  ret i8* %16, !dbg !3661
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom(i8* noundef %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !3662 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3666, metadata !DIExpression()), !dbg !3669
  call void @llvm.dbg.value(metadata i8* %1, metadata !3667, metadata !DIExpression()), !dbg !3669
  call void @llvm.dbg.value(metadata i8* %2, metadata !3668, metadata !DIExpression()), !dbg !3669
  call void @llvm.dbg.value(metadata i32 0, metadata !3610, metadata !DIExpression()) #34, !dbg !3670
  call void @llvm.dbg.value(metadata i8* %0, metadata !3611, metadata !DIExpression()) #34, !dbg !3670
  call void @llvm.dbg.value(metadata i8* %1, metadata !3612, metadata !DIExpression()) #34, !dbg !3670
  call void @llvm.dbg.value(metadata i8* %2, metadata !3613, metadata !DIExpression()) #34, !dbg !3670
  call void @llvm.dbg.value(metadata i32 0, metadata !3615, metadata !DIExpression()) #34, !dbg !3672
  call void @llvm.dbg.value(metadata i8* %0, metadata !3620, metadata !DIExpression()) #34, !dbg !3672
  call void @llvm.dbg.value(metadata i8* %1, metadata !3621, metadata !DIExpression()) #34, !dbg !3672
  call void @llvm.dbg.value(metadata i8* %2, metadata !3622, metadata !DIExpression()) #34, !dbg !3672
  call void @llvm.dbg.value(metadata i64 -1, metadata !3623, metadata !DIExpression()) #34, !dbg !3672
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3674
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #34, !dbg !3674
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3624, metadata !DIExpression()) #34, !dbg !3675
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #34, !dbg !3676, !tbaa.struct !3502
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2553, metadata !DIExpression()) #34, !dbg !3677
  call void @llvm.dbg.value(metadata i8* %0, metadata !2554, metadata !DIExpression()) #34, !dbg !3677
  call void @llvm.dbg.value(metadata i8* %1, metadata !2555, metadata !DIExpression()) #34, !dbg !3677
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2553, metadata !DIExpression()) #34, !dbg !3677
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3679
  store i32 10, i32* %6, align 8, !dbg !3680, !tbaa !2495
  %7 = icmp ne i8* %0, null, !dbg !3681
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !3682
  br i1 %9, label %11, label %10, !dbg !3682

10:                                               ; preds = %3
  tail call void @abort() #36, !dbg !3683
  unreachable, !dbg !3683

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3684
  store i8* %0, i8** %12, align 8, !dbg !3685, !tbaa !2568
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3686
  store i8* %1, i8** %13, align 8, !dbg !3687, !tbaa !2571
  %14 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4) #34, !dbg !3688
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #34, !dbg !3689
  ret i8* %14, !dbg !3690
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom_mem(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #12 !dbg !3691 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3695, metadata !DIExpression()), !dbg !3699
  call void @llvm.dbg.value(metadata i8* %1, metadata !3696, metadata !DIExpression()), !dbg !3699
  call void @llvm.dbg.value(metadata i8* %2, metadata !3697, metadata !DIExpression()), !dbg !3699
  call void @llvm.dbg.value(metadata i64 %3, metadata !3698, metadata !DIExpression()), !dbg !3699
  call void @llvm.dbg.value(metadata i32 0, metadata !3615, metadata !DIExpression()) #34, !dbg !3700
  call void @llvm.dbg.value(metadata i8* %0, metadata !3620, metadata !DIExpression()) #34, !dbg !3700
  call void @llvm.dbg.value(metadata i8* %1, metadata !3621, metadata !DIExpression()) #34, !dbg !3700
  call void @llvm.dbg.value(metadata i8* %2, metadata !3622, metadata !DIExpression()) #34, !dbg !3700
  call void @llvm.dbg.value(metadata i64 %3, metadata !3623, metadata !DIExpression()) #34, !dbg !3700
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3702
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #34, !dbg !3702
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3624, metadata !DIExpression()) #34, !dbg !3703
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #34, !dbg !3704, !tbaa.struct !3502
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2553, metadata !DIExpression()) #34, !dbg !3705
  call void @llvm.dbg.value(metadata i8* %0, metadata !2554, metadata !DIExpression()) #34, !dbg !3705
  call void @llvm.dbg.value(metadata i8* %1, metadata !2555, metadata !DIExpression()) #34, !dbg !3705
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2553, metadata !DIExpression()) #34, !dbg !3705
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3707
  store i32 10, i32* %7, align 8, !dbg !3708, !tbaa !2495
  %8 = icmp ne i8* %0, null, !dbg !3709
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !3710
  br i1 %10, label %12, label %11, !dbg !3710

11:                                               ; preds = %4
  tail call void @abort() #36, !dbg !3711
  unreachable, !dbg !3711

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3712
  store i8* %0, i8** %13, align 8, !dbg !3713, !tbaa !2568
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3714
  store i8* %1, i8** %14, align 8, !dbg !3715, !tbaa !2571
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5) #34, !dbg !3716
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #34, !dbg !3717
  ret i8* %15, !dbg !3718
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !3719 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3723, metadata !DIExpression()), !dbg !3726
  call void @llvm.dbg.value(metadata i8* %1, metadata !3724, metadata !DIExpression()), !dbg !3726
  call void @llvm.dbg.value(metadata i64 %2, metadata !3725, metadata !DIExpression()), !dbg !3726
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @quote_quoting_options), !dbg !3727
  ret i8* %4, !dbg !3728
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !3729 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3733, metadata !DIExpression()), !dbg !3735
  call void @llvm.dbg.value(metadata i64 %1, metadata !3734, metadata !DIExpression()), !dbg !3735
  call void @llvm.dbg.value(metadata i32 0, metadata !3723, metadata !DIExpression()) #34, !dbg !3736
  call void @llvm.dbg.value(metadata i8* %0, metadata !3724, metadata !DIExpression()) #34, !dbg !3736
  call void @llvm.dbg.value(metadata i64 %1, metadata !3725, metadata !DIExpression()) #34, !dbg !3736
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #34, !dbg !3738
  ret i8* %3, !dbg !3739
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !3740 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3744, metadata !DIExpression()), !dbg !3746
  call void @llvm.dbg.value(metadata i8* %1, metadata !3745, metadata !DIExpression()), !dbg !3746
  call void @llvm.dbg.value(metadata i32 %0, metadata !3723, metadata !DIExpression()) #34, !dbg !3747
  call void @llvm.dbg.value(metadata i8* %1, metadata !3724, metadata !DIExpression()) #34, !dbg !3747
  call void @llvm.dbg.value(metadata i64 -1, metadata !3725, metadata !DIExpression()) #34, !dbg !3747
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #34, !dbg !3749
  ret i8* %3, !dbg !3750
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote(i8* noundef %0) local_unnamed_addr #12 !dbg !3751 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3755, metadata !DIExpression()), !dbg !3756
  call void @llvm.dbg.value(metadata i32 0, metadata !3744, metadata !DIExpression()) #34, !dbg !3757
  call void @llvm.dbg.value(metadata i8* %0, metadata !3745, metadata !DIExpression()) #34, !dbg !3757
  call void @llvm.dbg.value(metadata i32 0, metadata !3723, metadata !DIExpression()) #34, !dbg !3759
  call void @llvm.dbg.value(metadata i8* %0, metadata !3724, metadata !DIExpression()) #34, !dbg !3759
  call void @llvm.dbg.value(metadata i64 -1, metadata !3725, metadata !DIExpression()) #34, !dbg !3759
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #34, !dbg !3761
  ret i8* %2, !dbg !3762
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef readonly %4, i64 noundef %5) local_unnamed_addr #12 !dbg !3763 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3802, metadata !DIExpression()), !dbg !3808
  call void @llvm.dbg.value(metadata i8* %1, metadata !3803, metadata !DIExpression()), !dbg !3808
  call void @llvm.dbg.value(metadata i8* %2, metadata !3804, metadata !DIExpression()), !dbg !3808
  call void @llvm.dbg.value(metadata i8* %3, metadata !3805, metadata !DIExpression()), !dbg !3808
  call void @llvm.dbg.value(metadata i8** %4, metadata !3806, metadata !DIExpression()), !dbg !3808
  call void @llvm.dbg.value(metadata i64 %5, metadata !3807, metadata !DIExpression()), !dbg !3808
  %7 = icmp eq i8* %1, null, !dbg !3809
  br i1 %7, label %10, label %8, !dbg !3811

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.203, i64 0, i64 0), i8* noundef nonnull %1, i8* noundef %2, i8* noundef %3) #34, !dbg !3812
  br label %12, !dbg !3812

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.204, i64 0, i64 0), i8* noundef %2, i8* noundef %3) #34, !dbg !3813
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.205, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3.206, i64 0, i64 0), i32 noundef 5) #34, !dbg !3814
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* noundef %13, i32 noundef 2026) #34, !dbg !3814
  %15 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.207, i64 0, i64 0), %struct._IO_FILE* noundef %0), !dbg !3815
  %16 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.205, i64 0, i64 0), i8* noundef getelementptr inbounds ([171 x i8], [171 x i8]* @.str.5.208, i64 0, i64 0), i32 noundef 5) #34, !dbg !3816
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %16, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6.209, i64 0, i64 0)) #34, !dbg !3816
  %18 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.207, i64 0, i64 0), %struct._IO_FILE* noundef %0), !dbg !3817
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
  ], !dbg !3818

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.205, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7.210, i64 0, i64 0), i32 noundef 5) #34, !dbg !3819
  %21 = load i8*, i8** %4, align 8, !dbg !3819, !tbaa !554
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %20, i8* noundef %21) #34, !dbg !3819
  br label %147, !dbg !3821

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.205, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8.211, i64 0, i64 0), i32 noundef 5) #34, !dbg !3822
  %25 = load i8*, i8** %4, align 8, !dbg !3822, !tbaa !554
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3822
  %27 = load i8*, i8** %26, align 8, !dbg !3822, !tbaa !554
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %24, i8* noundef %25, i8* noundef %27) #34, !dbg !3822
  br label %147, !dbg !3823

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.205, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9.212, i64 0, i64 0), i32 noundef 5) #34, !dbg !3824
  %31 = load i8*, i8** %4, align 8, !dbg !3824, !tbaa !554
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3824
  %33 = load i8*, i8** %32, align 8, !dbg !3824, !tbaa !554
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3824
  %35 = load i8*, i8** %34, align 8, !dbg !3824, !tbaa !554
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %30, i8* noundef %31, i8* noundef %33, i8* noundef %35) #34, !dbg !3824
  br label %147, !dbg !3825

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.205, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10.213, i64 0, i64 0), i32 noundef 5) #34, !dbg !3826
  %39 = load i8*, i8** %4, align 8, !dbg !3826, !tbaa !554
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3826
  %41 = load i8*, i8** %40, align 8, !dbg !3826, !tbaa !554
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3826
  %43 = load i8*, i8** %42, align 8, !dbg !3826, !tbaa !554
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3826
  %45 = load i8*, i8** %44, align 8, !dbg !3826, !tbaa !554
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %38, i8* noundef %39, i8* noundef %41, i8* noundef %43, i8* noundef %45) #34, !dbg !3826
  br label %147, !dbg !3827

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.205, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11.214, i64 0, i64 0), i32 noundef 5) #34, !dbg !3828
  %49 = load i8*, i8** %4, align 8, !dbg !3828, !tbaa !554
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3828
  %51 = load i8*, i8** %50, align 8, !dbg !3828, !tbaa !554
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3828
  %53 = load i8*, i8** %52, align 8, !dbg !3828, !tbaa !554
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3828
  %55 = load i8*, i8** %54, align 8, !dbg !3828, !tbaa !554
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3828
  %57 = load i8*, i8** %56, align 8, !dbg !3828, !tbaa !554
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %48, i8* noundef %49, i8* noundef %51, i8* noundef %53, i8* noundef %55, i8* noundef %57) #34, !dbg !3828
  br label %147, !dbg !3829

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.205, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12.215, i64 0, i64 0), i32 noundef 5) #34, !dbg !3830
  %61 = load i8*, i8** %4, align 8, !dbg !3830, !tbaa !554
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3830
  %63 = load i8*, i8** %62, align 8, !dbg !3830, !tbaa !554
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3830
  %65 = load i8*, i8** %64, align 8, !dbg !3830, !tbaa !554
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3830
  %67 = load i8*, i8** %66, align 8, !dbg !3830, !tbaa !554
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3830
  %69 = load i8*, i8** %68, align 8, !dbg !3830, !tbaa !554
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3830
  %71 = load i8*, i8** %70, align 8, !dbg !3830, !tbaa !554
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %60, i8* noundef %61, i8* noundef %63, i8* noundef %65, i8* noundef %67, i8* noundef %69, i8* noundef %71) #34, !dbg !3830
  br label %147, !dbg !3831

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.205, i64 0, i64 0), i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13.216, i64 0, i64 0), i32 noundef 5) #34, !dbg !3832
  %75 = load i8*, i8** %4, align 8, !dbg !3832, !tbaa !554
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3832
  %77 = load i8*, i8** %76, align 8, !dbg !3832, !tbaa !554
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3832
  %79 = load i8*, i8** %78, align 8, !dbg !3832, !tbaa !554
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3832
  %81 = load i8*, i8** %80, align 8, !dbg !3832, !tbaa !554
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3832
  %83 = load i8*, i8** %82, align 8, !dbg !3832, !tbaa !554
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3832
  %85 = load i8*, i8** %84, align 8, !dbg !3832, !tbaa !554
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3832
  %87 = load i8*, i8** %86, align 8, !dbg !3832, !tbaa !554
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %74, i8* noundef %75, i8* noundef %77, i8* noundef %79, i8* noundef %81, i8* noundef %83, i8* noundef %85, i8* noundef %87) #34, !dbg !3832
  br label %147, !dbg !3833

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.205, i64 0, i64 0), i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14.217, i64 0, i64 0), i32 noundef 5) #34, !dbg !3834
  %91 = load i8*, i8** %4, align 8, !dbg !3834, !tbaa !554
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3834
  %93 = load i8*, i8** %92, align 8, !dbg !3834, !tbaa !554
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3834
  %95 = load i8*, i8** %94, align 8, !dbg !3834, !tbaa !554
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3834
  %97 = load i8*, i8** %96, align 8, !dbg !3834, !tbaa !554
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3834
  %99 = load i8*, i8** %98, align 8, !dbg !3834, !tbaa !554
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3834
  %101 = load i8*, i8** %100, align 8, !dbg !3834, !tbaa !554
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3834
  %103 = load i8*, i8** %102, align 8, !dbg !3834, !tbaa !554
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3834
  %105 = load i8*, i8** %104, align 8, !dbg !3834, !tbaa !554
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %90, i8* noundef %91, i8* noundef %93, i8* noundef %95, i8* noundef %97, i8* noundef %99, i8* noundef %101, i8* noundef %103, i8* noundef %105) #34, !dbg !3834
  br label %147, !dbg !3835

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.205, i64 0, i64 0), i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15.218, i64 0, i64 0), i32 noundef 5) #34, !dbg !3836
  %109 = load i8*, i8** %4, align 8, !dbg !3836, !tbaa !554
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3836
  %111 = load i8*, i8** %110, align 8, !dbg !3836, !tbaa !554
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3836
  %113 = load i8*, i8** %112, align 8, !dbg !3836, !tbaa !554
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3836
  %115 = load i8*, i8** %114, align 8, !dbg !3836, !tbaa !554
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3836
  %117 = load i8*, i8** %116, align 8, !dbg !3836, !tbaa !554
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3836
  %119 = load i8*, i8** %118, align 8, !dbg !3836, !tbaa !554
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3836
  %121 = load i8*, i8** %120, align 8, !dbg !3836, !tbaa !554
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3836
  %123 = load i8*, i8** %122, align 8, !dbg !3836, !tbaa !554
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3836
  %125 = load i8*, i8** %124, align 8, !dbg !3836, !tbaa !554
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %108, i8* noundef %109, i8* noundef %111, i8* noundef %113, i8* noundef %115, i8* noundef %117, i8* noundef %119, i8* noundef %121, i8* noundef %123, i8* noundef %125) #34, !dbg !3836
  br label %147, !dbg !3837

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.205, i64 0, i64 0), i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16.219, i64 0, i64 0), i32 noundef 5) #34, !dbg !3838
  %129 = load i8*, i8** %4, align 8, !dbg !3838, !tbaa !554
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3838
  %131 = load i8*, i8** %130, align 8, !dbg !3838, !tbaa !554
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3838
  %133 = load i8*, i8** %132, align 8, !dbg !3838, !tbaa !554
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3838
  %135 = load i8*, i8** %134, align 8, !dbg !3838, !tbaa !554
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3838
  %137 = load i8*, i8** %136, align 8, !dbg !3838, !tbaa !554
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3838
  %139 = load i8*, i8** %138, align 8, !dbg !3838, !tbaa !554
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3838
  %141 = load i8*, i8** %140, align 8, !dbg !3838, !tbaa !554
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3838
  %143 = load i8*, i8** %142, align 8, !dbg !3838, !tbaa !554
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3838
  %145 = load i8*, i8** %144, align 8, !dbg !3838, !tbaa !554
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %128, i8* noundef %129, i8* noundef %131, i8* noundef %133, i8* noundef %135, i8* noundef %137, i8* noundef %139, i8* noundef %141, i8* noundef %143, i8* noundef %145) #34, !dbg !3838
  br label %147, !dbg !3839

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3840
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4) local_unnamed_addr #12 !dbg !3841 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3845, metadata !DIExpression()), !dbg !3851
  call void @llvm.dbg.value(metadata i8* %1, metadata !3846, metadata !DIExpression()), !dbg !3851
  call void @llvm.dbg.value(metadata i8* %2, metadata !3847, metadata !DIExpression()), !dbg !3851
  call void @llvm.dbg.value(metadata i8* %3, metadata !3848, metadata !DIExpression()), !dbg !3851
  call void @llvm.dbg.value(metadata i8** %4, metadata !3849, metadata !DIExpression()), !dbg !3851
  call void @llvm.dbg.value(metadata i64 0, metadata !3850, metadata !DIExpression()), !dbg !3851
  br label %6, !dbg !3852

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3854
  call void @llvm.dbg.value(metadata i64 %7, metadata !3850, metadata !DIExpression()), !dbg !3851
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3855
  %9 = load i8*, i8** %8, align 8, !dbg !3855, !tbaa !554
  %10 = icmp eq i8* %9, null, !dbg !3857
  %11 = add i64 %7, 1, !dbg !3858
  call void @llvm.dbg.value(metadata i64 %11, metadata !3850, metadata !DIExpression()), !dbg !3851
  br i1 %10, label %12, label %6, !dbg !3857, !llvm.loop !3859

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %4, i64 noundef %7), !dbg !3861
  ret void, !dbg !3862
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* nocapture noundef %4) local_unnamed_addr #12 !dbg !3863 {
  %6 = alloca [10 x i8*], align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3878, metadata !DIExpression()), !dbg !3886
  call void @llvm.dbg.value(metadata i8* %1, metadata !3879, metadata !DIExpression()), !dbg !3886
  call void @llvm.dbg.value(metadata i8* %2, metadata !3880, metadata !DIExpression()), !dbg !3886
  call void @llvm.dbg.value(metadata i8* %3, metadata !3881, metadata !DIExpression()), !dbg !3886
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !3882, metadata !DIExpression()), !dbg !3887
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3888
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #34, !dbg !3888
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3884, metadata !DIExpression()), !dbg !3889
  call void @llvm.dbg.value(metadata i64 0, metadata !3883, metadata !DIExpression()), !dbg !3886
  %8 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 3
  %9 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 1
  %10 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 0
  call void @llvm.dbg.value(metadata i64 0, metadata !3883, metadata !DIExpression()), !dbg !3886
  %11 = load i32, i32* %8, align 8, !dbg !3890
  %12 = icmp sgt i32 %11, -1, !dbg !3890
  br i1 %12, label %20, label %13, !dbg !3890

13:                                               ; preds = %5
  %14 = add nsw i32 %11, 8, !dbg !3890
  store i32 %14, i32* %8, align 8, !dbg !3890
  %15 = icmp ult i32 %11, -7, !dbg !3890
  br i1 %15, label %16, label %20, !dbg !3890

16:                                               ; preds = %13
  %17 = load i8*, i8** %9, align 8, !dbg !3890
  %18 = sext i32 %11 to i64, !dbg !3890
  %19 = getelementptr inbounds i8, i8* %17, i64 %18, !dbg !3890
  br label %24, !dbg !3890

20:                                               ; preds = %13, %5
  %21 = phi i32 [ %14, %13 ], [ %11, %5 ]
  %22 = load i8*, i8** %10, align 8, !dbg !3890
  %23 = getelementptr inbounds i8, i8* %22, i64 8, !dbg !3890
  store i8* %23, i8** %10, align 8, !dbg !3890
  br label %24, !dbg !3890

24:                                               ; preds = %20, %16
  %25 = phi i32 [ %14, %16 ], [ %21, %20 ]
  %26 = phi i8* [ %19, %16 ], [ %22, %20 ]
  %27 = bitcast i8* %26 to i8**, !dbg !3890
  %28 = load i8*, i8** %27, align 8, !dbg !3890
  %29 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3893
  store i8* %28, i8** %29, align 8, !dbg !3894, !tbaa !554
  %30 = icmp eq i8* %28, null, !dbg !3895
  br i1 %30, label %210, label %31, !dbg !3896

31:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i64 1, metadata !3883, metadata !DIExpression()), !dbg !3886
  call void @llvm.dbg.value(metadata i64 1, metadata !3883, metadata !DIExpression()), !dbg !3886
  %32 = icmp sgt i32 %25, -1, !dbg !3890
  br i1 %32, label %40, label %33, !dbg !3890

33:                                               ; preds = %31
  %34 = add nsw i32 %25, 8, !dbg !3890
  store i32 %34, i32* %8, align 8, !dbg !3890
  %35 = icmp ult i32 %25, -7, !dbg !3890
  br i1 %35, label %36, label %40, !dbg !3890

36:                                               ; preds = %33
  %37 = load i8*, i8** %9, align 8, !dbg !3890
  %38 = sext i32 %25 to i64, !dbg !3890
  %39 = getelementptr inbounds i8, i8* %37, i64 %38, !dbg !3890
  br label %44, !dbg !3890

40:                                               ; preds = %33, %31
  %41 = phi i32 [ %34, %33 ], [ %25, %31 ]
  %42 = load i8*, i8** %10, align 8, !dbg !3890
  %43 = getelementptr inbounds i8, i8* %42, i64 8, !dbg !3890
  store i8* %43, i8** %10, align 8, !dbg !3890
  br label %44, !dbg !3890

44:                                               ; preds = %40, %36
  %45 = phi i32 [ %34, %36 ], [ %41, %40 ]
  %46 = phi i8* [ %39, %36 ], [ %42, %40 ]
  %47 = bitcast i8* %46 to i8**, !dbg !3890
  %48 = load i8*, i8** %47, align 8, !dbg !3890
  %49 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3893
  store i8* %48, i8** %49, align 8, !dbg !3894, !tbaa !554
  %50 = icmp eq i8* %48, null, !dbg !3895
  br i1 %50, label %210, label %51, !dbg !3896

51:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i64 2, metadata !3883, metadata !DIExpression()), !dbg !3886
  call void @llvm.dbg.value(metadata i64 2, metadata !3883, metadata !DIExpression()), !dbg !3886
  %52 = icmp sgt i32 %45, -1, !dbg !3890
  br i1 %52, label %60, label %53, !dbg !3890

53:                                               ; preds = %51
  %54 = add nsw i32 %45, 8, !dbg !3890
  store i32 %54, i32* %8, align 8, !dbg !3890
  %55 = icmp ult i32 %45, -7, !dbg !3890
  br i1 %55, label %56, label %60, !dbg !3890

56:                                               ; preds = %53
  %57 = load i8*, i8** %9, align 8, !dbg !3890
  %58 = sext i32 %45 to i64, !dbg !3890
  %59 = getelementptr inbounds i8, i8* %57, i64 %58, !dbg !3890
  br label %64, !dbg !3890

60:                                               ; preds = %53, %51
  %61 = phi i32 [ %54, %53 ], [ %45, %51 ]
  %62 = load i8*, i8** %10, align 8, !dbg !3890
  %63 = getelementptr inbounds i8, i8* %62, i64 8, !dbg !3890
  store i8* %63, i8** %10, align 8, !dbg !3890
  br label %64, !dbg !3890

64:                                               ; preds = %60, %56
  %65 = phi i32 [ %54, %56 ], [ %61, %60 ]
  %66 = phi i8* [ %59, %56 ], [ %62, %60 ]
  %67 = bitcast i8* %66 to i8**, !dbg !3890
  %68 = load i8*, i8** %67, align 8, !dbg !3890
  %69 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3893
  store i8* %68, i8** %69, align 8, !dbg !3894, !tbaa !554
  %70 = icmp eq i8* %68, null, !dbg !3895
  br i1 %70, label %210, label %71, !dbg !3896

71:                                               ; preds = %64
  call void @llvm.dbg.value(metadata i64 3, metadata !3883, metadata !DIExpression()), !dbg !3886
  call void @llvm.dbg.value(metadata i64 3, metadata !3883, metadata !DIExpression()), !dbg !3886
  %72 = icmp sgt i32 %65, -1, !dbg !3890
  br i1 %72, label %80, label %73, !dbg !3890

73:                                               ; preds = %71
  %74 = add nsw i32 %65, 8, !dbg !3890
  store i32 %74, i32* %8, align 8, !dbg !3890
  %75 = icmp ult i32 %65, -7, !dbg !3890
  br i1 %75, label %76, label %80, !dbg !3890

76:                                               ; preds = %73
  %77 = load i8*, i8** %9, align 8, !dbg !3890
  %78 = sext i32 %65 to i64, !dbg !3890
  %79 = getelementptr inbounds i8, i8* %77, i64 %78, !dbg !3890
  br label %84, !dbg !3890

80:                                               ; preds = %73, %71
  %81 = phi i32 [ %74, %73 ], [ %65, %71 ]
  %82 = load i8*, i8** %10, align 8, !dbg !3890
  %83 = getelementptr inbounds i8, i8* %82, i64 8, !dbg !3890
  store i8* %83, i8** %10, align 8, !dbg !3890
  br label %84, !dbg !3890

84:                                               ; preds = %80, %76
  %85 = phi i32 [ %74, %76 ], [ %81, %80 ]
  %86 = phi i8* [ %79, %76 ], [ %82, %80 ]
  %87 = bitcast i8* %86 to i8**, !dbg !3890
  %88 = load i8*, i8** %87, align 8, !dbg !3890
  %89 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3893
  store i8* %88, i8** %89, align 8, !dbg !3894, !tbaa !554
  %90 = icmp eq i8* %88, null, !dbg !3895
  br i1 %90, label %210, label %91, !dbg !3896

91:                                               ; preds = %84
  call void @llvm.dbg.value(metadata i64 4, metadata !3883, metadata !DIExpression()), !dbg !3886
  call void @llvm.dbg.value(metadata i64 4, metadata !3883, metadata !DIExpression()), !dbg !3886
  %92 = icmp sgt i32 %85, -1, !dbg !3890
  br i1 %92, label %100, label %93, !dbg !3890

93:                                               ; preds = %91
  %94 = add nsw i32 %85, 8, !dbg !3890
  store i32 %94, i32* %8, align 8, !dbg !3890
  %95 = icmp ult i32 %85, -7, !dbg !3890
  br i1 %95, label %96, label %100, !dbg !3890

96:                                               ; preds = %93
  %97 = load i8*, i8** %9, align 8, !dbg !3890
  %98 = sext i32 %85 to i64, !dbg !3890
  %99 = getelementptr inbounds i8, i8* %97, i64 %98, !dbg !3890
  br label %104, !dbg !3890

100:                                              ; preds = %93, %91
  %101 = phi i32 [ %94, %93 ], [ %85, %91 ]
  %102 = load i8*, i8** %10, align 8, !dbg !3890
  %103 = getelementptr inbounds i8, i8* %102, i64 8, !dbg !3890
  store i8* %103, i8** %10, align 8, !dbg !3890
  br label %104, !dbg !3890

104:                                              ; preds = %100, %96
  %105 = phi i32 [ %94, %96 ], [ %101, %100 ]
  %106 = phi i8* [ %99, %96 ], [ %102, %100 ]
  %107 = bitcast i8* %106 to i8**, !dbg !3890
  %108 = load i8*, i8** %107, align 8, !dbg !3890
  %109 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3893
  store i8* %108, i8** %109, align 8, !dbg !3894, !tbaa !554
  %110 = icmp eq i8* %108, null, !dbg !3895
  br i1 %110, label %210, label %111, !dbg !3896

111:                                              ; preds = %104
  call void @llvm.dbg.value(metadata i64 5, metadata !3883, metadata !DIExpression()), !dbg !3886
  call void @llvm.dbg.value(metadata i64 5, metadata !3883, metadata !DIExpression()), !dbg !3886
  %112 = icmp sgt i32 %105, -1, !dbg !3890
  br i1 %112, label %120, label %113, !dbg !3890

113:                                              ; preds = %111
  %114 = add nsw i32 %105, 8, !dbg !3890
  store i32 %114, i32* %8, align 8, !dbg !3890
  %115 = icmp ult i32 %105, -7, !dbg !3890
  br i1 %115, label %116, label %120, !dbg !3890

116:                                              ; preds = %113
  %117 = load i8*, i8** %9, align 8, !dbg !3890
  %118 = sext i32 %105 to i64, !dbg !3890
  %119 = getelementptr inbounds i8, i8* %117, i64 %118, !dbg !3890
  br label %124, !dbg !3890

120:                                              ; preds = %113, %111
  %121 = phi i32 [ %114, %113 ], [ %105, %111 ]
  %122 = load i8*, i8** %10, align 8, !dbg !3890
  %123 = getelementptr inbounds i8, i8* %122, i64 8, !dbg !3890
  store i8* %123, i8** %10, align 8, !dbg !3890
  br label %124, !dbg !3890

124:                                              ; preds = %120, %116
  %125 = phi i32 [ %114, %116 ], [ %121, %120 ]
  %126 = phi i8* [ %119, %116 ], [ %122, %120 ]
  %127 = bitcast i8* %126 to i8**, !dbg !3890
  %128 = load i8*, i8** %127, align 8, !dbg !3890
  %129 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3893
  store i8* %128, i8** %129, align 8, !dbg !3894, !tbaa !554
  %130 = icmp eq i8* %128, null, !dbg !3895
  br i1 %130, label %210, label %131, !dbg !3896

131:                                              ; preds = %124
  call void @llvm.dbg.value(metadata i64 6, metadata !3883, metadata !DIExpression()), !dbg !3886
  call void @llvm.dbg.value(metadata i64 6, metadata !3883, metadata !DIExpression()), !dbg !3886
  %132 = icmp sgt i32 %125, -1, !dbg !3890
  br i1 %132, label %140, label %133, !dbg !3890

133:                                              ; preds = %131
  %134 = add nsw i32 %125, 8, !dbg !3890
  store i32 %134, i32* %8, align 8, !dbg !3890
  %135 = icmp ult i32 %125, -7, !dbg !3890
  br i1 %135, label %136, label %140, !dbg !3890

136:                                              ; preds = %133
  %137 = load i8*, i8** %9, align 8, !dbg !3890
  %138 = sext i32 %125 to i64, !dbg !3890
  %139 = getelementptr inbounds i8, i8* %137, i64 %138, !dbg !3890
  br label %144, !dbg !3890

140:                                              ; preds = %133, %131
  %141 = phi i32 [ %134, %133 ], [ %125, %131 ]
  %142 = load i8*, i8** %10, align 8, !dbg !3890
  %143 = getelementptr inbounds i8, i8* %142, i64 8, !dbg !3890
  store i8* %143, i8** %10, align 8, !dbg !3890
  br label %144, !dbg !3890

144:                                              ; preds = %140, %136
  %145 = phi i32 [ %134, %136 ], [ %141, %140 ]
  %146 = phi i8* [ %139, %136 ], [ %142, %140 ]
  %147 = bitcast i8* %146 to i8**, !dbg !3890
  %148 = load i8*, i8** %147, align 8, !dbg !3890
  %149 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3893
  store i8* %148, i8** %149, align 8, !dbg !3894, !tbaa !554
  %150 = icmp eq i8* %148, null, !dbg !3895
  br i1 %150, label %210, label %151, !dbg !3896

151:                                              ; preds = %144
  call void @llvm.dbg.value(metadata i64 7, metadata !3883, metadata !DIExpression()), !dbg !3886
  call void @llvm.dbg.value(metadata i64 7, metadata !3883, metadata !DIExpression()), !dbg !3886
  %152 = icmp sgt i32 %145, -1, !dbg !3890
  br i1 %152, label %160, label %153, !dbg !3890

153:                                              ; preds = %151
  %154 = add nsw i32 %145, 8, !dbg !3890
  store i32 %154, i32* %8, align 8, !dbg !3890
  %155 = icmp ult i32 %145, -7, !dbg !3890
  br i1 %155, label %156, label %160, !dbg !3890

156:                                              ; preds = %153
  %157 = load i8*, i8** %9, align 8, !dbg !3890
  %158 = sext i32 %145 to i64, !dbg !3890
  %159 = getelementptr inbounds i8, i8* %157, i64 %158, !dbg !3890
  br label %164, !dbg !3890

160:                                              ; preds = %153, %151
  %161 = phi i32 [ %154, %153 ], [ %145, %151 ]
  %162 = load i8*, i8** %10, align 8, !dbg !3890
  %163 = getelementptr inbounds i8, i8* %162, i64 8, !dbg !3890
  store i8* %163, i8** %10, align 8, !dbg !3890
  br label %164, !dbg !3890

164:                                              ; preds = %160, %156
  %165 = phi i32 [ %154, %156 ], [ %161, %160 ]
  %166 = phi i8* [ %159, %156 ], [ %162, %160 ]
  %167 = bitcast i8* %166 to i8**, !dbg !3890
  %168 = load i8*, i8** %167, align 8, !dbg !3890
  %169 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3893
  store i8* %168, i8** %169, align 8, !dbg !3894, !tbaa !554
  %170 = icmp eq i8* %168, null, !dbg !3895
  br i1 %170, label %210, label %171, !dbg !3896

171:                                              ; preds = %164
  call void @llvm.dbg.value(metadata i64 8, metadata !3883, metadata !DIExpression()), !dbg !3886
  call void @llvm.dbg.value(metadata i64 8, metadata !3883, metadata !DIExpression()), !dbg !3886
  %172 = icmp sgt i32 %165, -1, !dbg !3890
  br i1 %172, label %180, label %173, !dbg !3890

173:                                              ; preds = %171
  %174 = add nsw i32 %165, 8, !dbg !3890
  store i32 %174, i32* %8, align 8, !dbg !3890
  %175 = icmp ult i32 %165, -7, !dbg !3890
  br i1 %175, label %176, label %180, !dbg !3890

176:                                              ; preds = %173
  %177 = load i8*, i8** %9, align 8, !dbg !3890
  %178 = sext i32 %165 to i64, !dbg !3890
  %179 = getelementptr inbounds i8, i8* %177, i64 %178, !dbg !3890
  br label %184, !dbg !3890

180:                                              ; preds = %173, %171
  %181 = phi i32 [ %174, %173 ], [ %165, %171 ]
  %182 = load i8*, i8** %10, align 8, !dbg !3890
  %183 = getelementptr inbounds i8, i8* %182, i64 8, !dbg !3890
  store i8* %183, i8** %10, align 8, !dbg !3890
  br label %184, !dbg !3890

184:                                              ; preds = %180, %176
  %185 = phi i32 [ %174, %176 ], [ %181, %180 ]
  %186 = phi i8* [ %179, %176 ], [ %182, %180 ]
  %187 = bitcast i8* %186 to i8**, !dbg !3890
  %188 = load i8*, i8** %187, align 8, !dbg !3890
  %189 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3893
  store i8* %188, i8** %189, align 8, !dbg !3894, !tbaa !554
  %190 = icmp eq i8* %188, null, !dbg !3895
  br i1 %190, label %210, label %191, !dbg !3896

191:                                              ; preds = %184
  call void @llvm.dbg.value(metadata i64 9, metadata !3883, metadata !DIExpression()), !dbg !3886
  call void @llvm.dbg.value(metadata i64 9, metadata !3883, metadata !DIExpression()), !dbg !3886
  %192 = icmp sgt i32 %185, -1, !dbg !3890
  br i1 %192, label %200, label %193, !dbg !3890

193:                                              ; preds = %191
  %194 = add nsw i32 %185, 8, !dbg !3890
  store i32 %194, i32* %8, align 8, !dbg !3890
  %195 = icmp ult i32 %185, -7, !dbg !3890
  br i1 %195, label %196, label %200, !dbg !3890

196:                                              ; preds = %193
  %197 = load i8*, i8** %9, align 8, !dbg !3890
  %198 = sext i32 %185 to i64, !dbg !3890
  %199 = getelementptr inbounds i8, i8* %197, i64 %198, !dbg !3890
  br label %203, !dbg !3890

200:                                              ; preds = %193, %191
  %201 = load i8*, i8** %10, align 8, !dbg !3890
  %202 = getelementptr inbounds i8, i8* %201, i64 8, !dbg !3890
  store i8* %202, i8** %10, align 8, !dbg !3890
  br label %203, !dbg !3890

203:                                              ; preds = %200, %196
  %204 = phi i8* [ %199, %196 ], [ %201, %200 ]
  %205 = bitcast i8* %204 to i8**, !dbg !3890
  %206 = load i8*, i8** %205, align 8, !dbg !3890
  %207 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3893
  store i8* %206, i8** %207, align 8, !dbg !3894, !tbaa !554
  %208 = icmp eq i8* %206, null, !dbg !3895
  %209 = select i1 %208, i64 9, i64 10, !dbg !3896
  br label %210, !dbg !3896

210:                                              ; preds = %203, %184, %164, %144, %124, %104, %84, %64, %44, %24
  %211 = phi i64 [ 0, %24 ], [ 1, %44 ], [ 2, %64 ], [ 3, %84 ], [ 4, %104 ], [ 5, %124 ], [ 6, %144 ], [ 7, %164 ], [ 8, %184 ], [ %209, %203 ], !dbg !3897
  call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %29, i64 noundef %211), !dbg !3898
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #34, !dbg !3899
  ret void, !dbg !3899
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, ...) local_unnamed_addr #12 !dbg !3900 {
  %5 = alloca %"struct.std::__va_list", align 8
  %6 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3904, metadata !DIExpression()), !dbg !3909
  call void @llvm.dbg.value(metadata i8* %1, metadata !3905, metadata !DIExpression()), !dbg !3909
  call void @llvm.dbg.value(metadata i8* %2, metadata !3906, metadata !DIExpression()), !dbg !3909
  call void @llvm.dbg.value(metadata i8* %3, metadata !3907, metadata !DIExpression()), !dbg !3909
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !3910
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #34, !dbg !3910
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !3908, metadata !DIExpression()), !dbg !3911
  call void @llvm.va_start(i8* nonnull %7), !dbg !3912
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !3913
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #34, !dbg !3913
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %8, i8* noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !dbg !3913, !tbaa.struct !1466
  call void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* noundef nonnull %6), !dbg !3913
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #34, !dbg !3913
  call void @llvm.va_end(i8* nonnull %7), !dbg !3914
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #34, !dbg !3915
  ret void, !dbg !3915
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #12 !dbg !3916 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3917, !tbaa !554
  %2 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.207, i64 0, i64 0), %struct._IO_FILE* noundef %1), !dbg !3917
  %3 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.205, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17.224, i64 0, i64 0), i32 noundef 5) #34, !dbg !3918
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %3, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18.225, i64 0, i64 0)) #34, !dbg !3918
  %5 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.205, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19.226, i64 0, i64 0), i32 noundef 5) #34, !dbg !3919
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %5, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20.227, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21.228, i64 0, i64 0)) #34, !dbg !3919
  %7 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.205, i64 0, i64 0), i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22.229, i64 0, i64 0), i32 noundef 5) #34, !dbg !3920
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %7, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23.230, i64 0, i64 0)) #34, !dbg !3920
  ret void, !dbg !3921
}

; Function Attrs: inlinehint nounwind uwtable allocsize(1,2)
define dso_local i8* @xnrealloc(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3922 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3927, metadata !DIExpression()), !dbg !3930
  call void @llvm.dbg.value(metadata i64 %1, metadata !3928, metadata !DIExpression()), !dbg !3930
  call void @llvm.dbg.value(metadata i64 %2, metadata !3929, metadata !DIExpression()), !dbg !3930
  call void @llvm.dbg.value(metadata i8* %0, metadata !3931, metadata !DIExpression()) #34, !dbg !3936
  call void @llvm.dbg.value(metadata i64 %1, metadata !3934, metadata !DIExpression()) #34, !dbg !3936
  call void @llvm.dbg.value(metadata i64 %2, metadata !3935, metadata !DIExpression()) #34, !dbg !3936
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #34, !dbg !3938
  call void @llvm.dbg.value(metadata i8* %4, metadata !3939, metadata !DIExpression()) #34, !dbg !3944
  %5 = icmp eq i8* %4, null, !dbg !3946
  br i1 %5, label %6, label %7, !dbg !3948

6:                                                ; preds = %3
  tail call void @xalloc_die() #36, !dbg !3949
  unreachable, !dbg !3949

7:                                                ; preds = %3
  ret i8* %4, !dbg !3950
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local i8* @xreallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #28 !dbg !3932 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3931, metadata !DIExpression()), !dbg !3951
  call void @llvm.dbg.value(metadata i64 %1, metadata !3934, metadata !DIExpression()), !dbg !3951
  call void @llvm.dbg.value(metadata i64 %2, metadata !3935, metadata !DIExpression()), !dbg !3951
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #34, !dbg !3952
  call void @llvm.dbg.value(metadata i8* %4, metadata !3939, metadata !DIExpression()) #34, !dbg !3953
  %5 = icmp eq i8* %4, null, !dbg !3955
  br i1 %5, label %6, label %7, !dbg !3956

6:                                                ; preds = %3
  tail call void @xalloc_die() #36, !dbg !3957
  unreachable, !dbg !3957

7:                                                ; preds = %3
  ret i8* %4, !dbg !3958
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xmalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3959 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3961, metadata !DIExpression()), !dbg !3962
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #34, !dbg !3963
  call void @llvm.dbg.value(metadata i8* %2, metadata !3939, metadata !DIExpression()) #34, !dbg !3964
  %3 = icmp eq i8* %2, null, !dbg !3966
  br i1 %3, label %4, label %5, !dbg !3967

4:                                                ; preds = %1
  tail call void @xalloc_die() #36, !dbg !3968
  unreachable, !dbg !3968

5:                                                ; preds = %1
  ret i8* %2, !dbg !3969
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @ximalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3970 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3974, metadata !DIExpression()), !dbg !3975
  call void @llvm.dbg.value(metadata i64 %0, metadata !3976, metadata !DIExpression()) #34, !dbg !3980
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #34, !dbg !3982
  call void @llvm.dbg.value(metadata i8* %2, metadata !3939, metadata !DIExpression()) #34, !dbg !3983
  %3 = icmp eq i8* %2, null, !dbg !3985
  br i1 %3, label %4, label %5, !dbg !3986

4:                                                ; preds = %1
  tail call void @xalloc_die() #36, !dbg !3987
  unreachable, !dbg !3987

5:                                                ; preds = %1
  ret i8* %2, !dbg !3988
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xcharalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3989 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3993, metadata !DIExpression()), !dbg !3994
  call void @llvm.dbg.value(metadata i64 %0, metadata !3961, metadata !DIExpression()) #34, !dbg !3995
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #34, !dbg !3997
  call void @llvm.dbg.value(metadata i8* %2, metadata !3939, metadata !DIExpression()) #34, !dbg !3998
  %3 = icmp eq i8* %2, null, !dbg !4000
  br i1 %3, label %4, label %5, !dbg !4001

4:                                                ; preds = %1
  tail call void @xalloc_die() #36, !dbg !4002
  unreachable, !dbg !4002

5:                                                ; preds = %1
  ret i8* %2, !dbg !4003
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias i8* @xrealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !4004 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4006, metadata !DIExpression()), !dbg !4008
  call void @llvm.dbg.value(metadata i64 %1, metadata !4007, metadata !DIExpression()), !dbg !4008
  call void @llvm.dbg.value(metadata i8* %0, metadata !4009, metadata !DIExpression()) #34, !dbg !4014
  call void @llvm.dbg.value(metadata i64 %1, metadata !4013, metadata !DIExpression()) #34, !dbg !4014
  %3 = icmp eq i64 %1, 0, !dbg !4016
  %4 = select i1 %3, i64 1, i64 %1, !dbg !4016
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #34, !dbg !4017
  call void @llvm.dbg.value(metadata i8* %5, metadata !3939, metadata !DIExpression()) #34, !dbg !4018
  %6 = icmp eq i8* %5, null, !dbg !4020
  br i1 %6, label %7, label %8, !dbg !4021

7:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !4022
  unreachable, !dbg !4022

8:                                                ; preds = %2
  ret i8* %5, !dbg !4023
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xirealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !4024 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4028, metadata !DIExpression()), !dbg !4030
  call void @llvm.dbg.value(metadata i64 %1, metadata !4029, metadata !DIExpression()), !dbg !4030
  call void @llvm.dbg.value(metadata i8* %0, metadata !4031, metadata !DIExpression()) #34, !dbg !4035
  call void @llvm.dbg.value(metadata i64 %1, metadata !4034, metadata !DIExpression()) #34, !dbg !4035
  call void @llvm.dbg.value(metadata i8* %0, metadata !4009, metadata !DIExpression()) #34, !dbg !4037
  call void @llvm.dbg.value(metadata i64 %1, metadata !4013, metadata !DIExpression()) #34, !dbg !4037
  %3 = icmp eq i64 %1, 0, !dbg !4039
  %4 = select i1 %3, i64 1, i64 %1, !dbg !4039
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #34, !dbg !4040
  call void @llvm.dbg.value(metadata i8* %5, metadata !3939, metadata !DIExpression()) #34, !dbg !4041
  %6 = icmp eq i8* %5, null, !dbg !4043
  br i1 %6, label %7, label %8, !dbg !4044

7:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !4045
  unreachable, !dbg !4045

8:                                                ; preds = %2
  ret i8* %5, !dbg !4046
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local nonnull i8* @xireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #28 !dbg !4047 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4051, metadata !DIExpression()), !dbg !4054
  call void @llvm.dbg.value(metadata i64 %1, metadata !4052, metadata !DIExpression()), !dbg !4054
  call void @llvm.dbg.value(metadata i64 %2, metadata !4053, metadata !DIExpression()), !dbg !4054
  call void @llvm.dbg.value(metadata i8* %0, metadata !4055, metadata !DIExpression()) #34, !dbg !4060
  call void @llvm.dbg.value(metadata i64 %1, metadata !4058, metadata !DIExpression()) #34, !dbg !4060
  call void @llvm.dbg.value(metadata i64 %2, metadata !4059, metadata !DIExpression()) #34, !dbg !4060
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #34, !dbg !4062
  call void @llvm.dbg.value(metadata i8* %4, metadata !3939, metadata !DIExpression()) #34, !dbg !4063
  %5 = icmp eq i8* %4, null, !dbg !4065
  br i1 %5, label %6, label %7, !dbg !4066

6:                                                ; preds = %3
  tail call void @xalloc_die() #36, !dbg !4067
  unreachable, !dbg !4067

7:                                                ; preds = %3
  ret i8* %4, !dbg !4068
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !4069 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4073, metadata !DIExpression()), !dbg !4075
  call void @llvm.dbg.value(metadata i64 %1, metadata !4074, metadata !DIExpression()), !dbg !4075
  call void @llvm.dbg.value(metadata i8* null, metadata !3931, metadata !DIExpression()) #34, !dbg !4076
  call void @llvm.dbg.value(metadata i64 %0, metadata !3934, metadata !DIExpression()) #34, !dbg !4076
  call void @llvm.dbg.value(metadata i64 %1, metadata !3935, metadata !DIExpression()) #34, !dbg !4076
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #34, !dbg !4078
  call void @llvm.dbg.value(metadata i8* %3, metadata !3939, metadata !DIExpression()) #34, !dbg !4079
  %4 = icmp eq i8* %3, null, !dbg !4081
  br i1 %4, label %5, label %6, !dbg !4082

5:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !4083
  unreachable, !dbg !4083

6:                                                ; preds = %2
  ret i8* %3, !dbg !4084
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !4085 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4089, metadata !DIExpression()), !dbg !4091
  call void @llvm.dbg.value(metadata i64 %1, metadata !4090, metadata !DIExpression()), !dbg !4091
  call void @llvm.dbg.value(metadata i8* null, metadata !4051, metadata !DIExpression()) #34, !dbg !4092
  call void @llvm.dbg.value(metadata i64 %0, metadata !4052, metadata !DIExpression()) #34, !dbg !4092
  call void @llvm.dbg.value(metadata i64 %1, metadata !4053, metadata !DIExpression()) #34, !dbg !4092
  call void @llvm.dbg.value(metadata i8* null, metadata !4055, metadata !DIExpression()) #34, !dbg !4094
  call void @llvm.dbg.value(metadata i64 %0, metadata !4058, metadata !DIExpression()) #34, !dbg !4094
  call void @llvm.dbg.value(metadata i64 %1, metadata !4059, metadata !DIExpression()) #34, !dbg !4094
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #34, !dbg !4096
  call void @llvm.dbg.value(metadata i8* %3, metadata !3939, metadata !DIExpression()) #34, !dbg !4097
  %4 = icmp eq i8* %3, null, !dbg !4099
  br i1 %4, label %5, label %6, !dbg !4100

5:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !4101
  unreachable, !dbg !4101

6:                                                ; preds = %2
  ret i8* %3, !dbg !4102
}

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2realloc(i8* noundef %0, i64* nocapture noundef %1) local_unnamed_addr #12 !dbg !4103 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4107, metadata !DIExpression()), !dbg !4109
  call void @llvm.dbg.value(metadata i64* %1, metadata !4108, metadata !DIExpression()), !dbg !4109
  call void @llvm.dbg.value(metadata i8* %0, metadata !496, metadata !DIExpression()) #34, !dbg !4110
  call void @llvm.dbg.value(metadata i64* %1, metadata !497, metadata !DIExpression()) #34, !dbg !4110
  call void @llvm.dbg.value(metadata i64 1, metadata !498, metadata !DIExpression()) #34, !dbg !4110
  %3 = load i64, i64* %1, align 8, !dbg !4112, !tbaa !961
  call void @llvm.dbg.value(metadata i64 %3, metadata !499, metadata !DIExpression()) #34, !dbg !4110
  %4 = icmp eq i8* %0, null, !dbg !4113
  br i1 %4, label %5, label %8, !dbg !4115

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4116
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4119
  br label %15, !dbg !4119

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !4120
  %10 = add nuw i64 %9, 1, !dbg !4120
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10) #34, !dbg !4120
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !4120
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !4120
  call void @llvm.dbg.value(metadata i64 %13, metadata !499, metadata !DIExpression()) #34, !dbg !4110
  br i1 %12, label %14, label %15, !dbg !4123

14:                                               ; preds = %8
  tail call void @xalloc_die() #36, !dbg !4124
  unreachable, !dbg !4124

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !4110
  call void @llvm.dbg.value(metadata i64 %16, metadata !499, metadata !DIExpression()) #34, !dbg !4110
  call void @llvm.dbg.value(metadata i8* %0, metadata !3931, metadata !DIExpression()) #34, !dbg !4125
  call void @llvm.dbg.value(metadata i64 %16, metadata !3934, metadata !DIExpression()) #34, !dbg !4125
  call void @llvm.dbg.value(metadata i64 1, metadata !3935, metadata !DIExpression()) #34, !dbg !4125
  %17 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %16, i64 noundef 1) #34, !dbg !4127
  call void @llvm.dbg.value(metadata i8* %17, metadata !3939, metadata !DIExpression()) #34, !dbg !4128
  %18 = icmp eq i8* %17, null, !dbg !4130
  br i1 %18, label %19, label %20, !dbg !4131

19:                                               ; preds = %15
  tail call void @xalloc_die() #36, !dbg !4132
  unreachable, !dbg !4132

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %17, metadata !496, metadata !DIExpression()) #34, !dbg !4110
  store i64 %16, i64* %1, align 8, !dbg !4133, !tbaa !961
  ret i8* %17, !dbg !4134
}

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2nrealloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !491 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !496, metadata !DIExpression()), !dbg !4135
  call void @llvm.dbg.value(metadata i64* %1, metadata !497, metadata !DIExpression()), !dbg !4135
  call void @llvm.dbg.value(metadata i64 %2, metadata !498, metadata !DIExpression()), !dbg !4135
  %4 = load i64, i64* %1, align 8, !dbg !4136, !tbaa !961
  call void @llvm.dbg.value(metadata i64 %4, metadata !499, metadata !DIExpression()), !dbg !4135
  %5 = icmp eq i8* %0, null, !dbg !4137
  br i1 %5, label %6, label %13, !dbg !4138

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4139
  br i1 %7, label %8, label %20, !dbg !4140

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4141
  call void @llvm.dbg.value(metadata i64 %9, metadata !499, metadata !DIExpression()), !dbg !4135
  %10 = icmp ugt i64 %2, 128, !dbg !4143
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !4144
  call void @llvm.dbg.value(metadata i64 %12, metadata !499, metadata !DIExpression()), !dbg !4135
  br label %20, !dbg !4145

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !4146
  %15 = add nuw i64 %14, 1, !dbg !4146
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !4146
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !4146
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !4146
  call void @llvm.dbg.value(metadata i64 %18, metadata !499, metadata !DIExpression()), !dbg !4135
  br i1 %17, label %19, label %20, !dbg !4147

19:                                               ; preds = %13
  tail call void @xalloc_die() #36, !dbg !4148
  unreachable, !dbg !4148

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !4135
  call void @llvm.dbg.value(metadata i64 %21, metadata !499, metadata !DIExpression()), !dbg !4135
  call void @llvm.dbg.value(metadata i8* %0, metadata !3931, metadata !DIExpression()) #34, !dbg !4149
  call void @llvm.dbg.value(metadata i64 %21, metadata !3934, metadata !DIExpression()) #34, !dbg !4149
  call void @llvm.dbg.value(metadata i64 %2, metadata !3935, metadata !DIExpression()) #34, !dbg !4149
  %22 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %21, i64 noundef %2) #34, !dbg !4151
  call void @llvm.dbg.value(metadata i8* %22, metadata !3939, metadata !DIExpression()) #34, !dbg !4152
  %23 = icmp eq i8* %22, null, !dbg !4154
  br i1 %23, label %24, label %25, !dbg !4155

24:                                               ; preds = %20
  tail call void @xalloc_die() #36, !dbg !4156
  unreachable, !dbg !4156

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %22, metadata !496, metadata !DIExpression()), !dbg !4135
  store i64 %21, i64* %1, align 8, !dbg !4157, !tbaa !961
  ret i8* %22, !dbg !4158
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xpalloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #12 !dbg !503 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !508, metadata !DIExpression()), !dbg !4159
  call void @llvm.dbg.value(metadata i64* %1, metadata !509, metadata !DIExpression()), !dbg !4159
  call void @llvm.dbg.value(metadata i64 %2, metadata !510, metadata !DIExpression()), !dbg !4159
  call void @llvm.dbg.value(metadata i64 %3, metadata !511, metadata !DIExpression()), !dbg !4159
  call void @llvm.dbg.value(metadata i64 %4, metadata !512, metadata !DIExpression()), !dbg !4159
  %6 = load i64, i64* %1, align 8, !dbg !4160, !tbaa !961
  call void @llvm.dbg.value(metadata i64 %6, metadata !513, metadata !DIExpression()), !dbg !4159
  %7 = ashr i64 %6, 1, !dbg !4161
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !4161
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !4161
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !4161
  call void @llvm.dbg.value(metadata i64 %10, metadata !514, metadata !DIExpression()), !dbg !4159
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !4163
  call void @llvm.dbg.value(metadata i64 %11, metadata !514, metadata !DIExpression()), !dbg !4159
  %12 = icmp sgt i64 %3, -1, !dbg !4164
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !4166
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !4166
  call void @llvm.dbg.value(metadata i64 %15, metadata !514, metadata !DIExpression()), !dbg !4159
  %16 = icmp slt i64 %4, 0, !dbg !4167
  br i1 %16, label %17, label %30, !dbg !4167

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !4167
  br i1 %18, label %19, label %24, !dbg !4167

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !4167
  %21 = udiv i64 9223372036854775807, %20, !dbg !4167
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !4167
  br i1 %23, label %46, label %43, !dbg !4167

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !4167
  br i1 %25, label %43, label %26, !dbg !4167

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !4167
  %28 = udiv i64 -9223372036854775808, %27, !dbg !4167
  %29 = icmp ult i64 %28, %15, !dbg !4167
  br i1 %29, label %46, label %43, !dbg !4167

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !4167
  br i1 %31, label %43, label %32, !dbg !4167

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !4167
  br i1 %33, label %34, label %40, !dbg !4167

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !4167
  br i1 %35, label %43, label %36, !dbg !4167

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !4167
  %38 = udiv i64 -9223372036854775808, %37, !dbg !4167
  %39 = icmp ult i64 %38, %4, !dbg !4167
  br i1 %39, label %46, label %43, !dbg !4167

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4, !dbg !4167
  %42 = icmp ult i64 %41, %15, !dbg !4167
  br i1 %42, label %46, label %43, !dbg !4167

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !515, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4159
  %44 = mul i64 %15, %4, !dbg !4167
  call void @llvm.dbg.value(metadata i64 %44, metadata !515, metadata !DIExpression()), !dbg !4159
  %45 = icmp slt i64 %44, 128, !dbg !4167
  br i1 %45, label %46, label %52, !dbg !4167

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 undef, metadata !516, metadata !DIExpression()), !dbg !4159
  %48 = sdiv i64 %47, %4, !dbg !4168
  call void @llvm.dbg.value(metadata i64 %48, metadata !514, metadata !DIExpression()), !dbg !4159
  %49 = mul i64 %48, %4
  %50 = sub i64 %47, %49
  %51 = sub nsw i64 %47, %50, !dbg !4171
  call void @llvm.dbg.value(metadata i64 %51, metadata !515, metadata !DIExpression()), !dbg !4159
  br label %52, !dbg !4172

52:                                               ; preds = %43, %46
  %53 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !4159
  %54 = phi i64 [ %51, %46 ], [ %44, %43 ], !dbg !4159
  call void @llvm.dbg.value(metadata i64 %54, metadata !515, metadata !DIExpression()), !dbg !4159
  call void @llvm.dbg.value(metadata i64 %53, metadata !514, metadata !DIExpression()), !dbg !4159
  %55 = icmp eq i8* %0, null, !dbg !4173
  br i1 %55, label %56, label %57, !dbg !4175

56:                                               ; preds = %52
  store i64 0, i64* %1, align 8, !dbg !4176, !tbaa !961
  br label %57, !dbg !4177

57:                                               ; preds = %56, %52
  %58 = sub nsw i64 %53, %6, !dbg !4178
  %59 = icmp slt i64 %58, %2, !dbg !4180
  br i1 %59, label %60, label %97, !dbg !4181

60:                                               ; preds = %57
  %61 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !4182
  %62 = extractvalue { i64, i1 } %61, 1, !dbg !4182
  %63 = extractvalue { i64, i1 } %61, 0, !dbg !4182
  call void @llvm.dbg.value(metadata i64 %63, metadata !514, metadata !DIExpression()), !dbg !4159
  br i1 %62, label %96, label %64, !dbg !4183

64:                                               ; preds = %60
  %65 = icmp sgt i64 %63, %3
  %66 = select i1 %12, i1 %65, i1 false, !dbg !4184
  br i1 %66, label %96, label %67, !dbg !4184

67:                                               ; preds = %64
  br i1 %16, label %68, label %81, !dbg !4185

68:                                               ; preds = %67
  %69 = icmp slt i64 %63, 0, !dbg !4185
  br i1 %69, label %70, label %75, !dbg !4185

70:                                               ; preds = %68
  %71 = sub i64 0, %4, !dbg !4185
  %72 = udiv i64 9223372036854775807, %71, !dbg !4185
  %73 = sub nsw i64 0, %72
  %74 = icmp slt i64 %63, %73, !dbg !4185
  br i1 %74, label %96, label %94, !dbg !4185

75:                                               ; preds = %68
  %76 = icmp eq i64 %4, -1, !dbg !4185
  br i1 %76, label %94, label %77, !dbg !4185

77:                                               ; preds = %75
  %78 = sub i64 0, %4, !dbg !4185
  %79 = udiv i64 -9223372036854775808, %78, !dbg !4185
  %80 = icmp ult i64 %79, %63, !dbg !4185
  br i1 %80, label %96, label %94, !dbg !4185

81:                                               ; preds = %67
  %82 = icmp eq i64 %4, 0, !dbg !4185
  br i1 %82, label %94, label %83, !dbg !4185

83:                                               ; preds = %81
  %84 = icmp slt i64 %63, 0, !dbg !4185
  br i1 %84, label %85, label %91, !dbg !4185

85:                                               ; preds = %83
  %86 = icmp eq i64 %63, -1, !dbg !4185
  br i1 %86, label %94, label %87, !dbg !4185

87:                                               ; preds = %85
  %88 = sub i64 0, %63, !dbg !4185
  %89 = udiv i64 -9223372036854775808, %88, !dbg !4185
  %90 = icmp ult i64 %89, %4, !dbg !4185
  br i1 %90, label %96, label %94, !dbg !4185

91:                                               ; preds = %83
  %92 = udiv i64 9223372036854775807, %4, !dbg !4185
  %93 = icmp ult i64 %92, %63, !dbg !4185
  br i1 %93, label %96, label %94, !dbg !4185

94:                                               ; preds = %70, %77, %87, %91, %81, %75, %85
  call void @llvm.dbg.value(metadata !DIArgList(i64 %63, i64 %4), metadata !515, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4159
  %95 = mul i64 %63, %4, !dbg !4185
  call void @llvm.dbg.value(metadata i64 %95, metadata !515, metadata !DIExpression()), !dbg !4159
  br label %97, !dbg !4186

96:                                               ; preds = %70, %77, %87, %91, %64, %60
  tail call void @xalloc_die() #36, !dbg !4187
  unreachable, !dbg !4187

97:                                               ; preds = %94, %57
  %98 = phi i64 [ %63, %94 ], [ %53, %57 ], !dbg !4159
  %99 = phi i64 [ %95, %94 ], [ %54, %57 ], !dbg !4159
  call void @llvm.dbg.value(metadata i64 %99, metadata !515, metadata !DIExpression()), !dbg !4159
  call void @llvm.dbg.value(metadata i64 %98, metadata !514, metadata !DIExpression()), !dbg !4159
  call void @llvm.dbg.value(metadata i8* %0, metadata !4006, metadata !DIExpression()) #34, !dbg !4188
  call void @llvm.dbg.value(metadata i64 %99, metadata !4007, metadata !DIExpression()) #34, !dbg !4188
  call void @llvm.dbg.value(metadata i8* %0, metadata !4009, metadata !DIExpression()) #34, !dbg !4190
  call void @llvm.dbg.value(metadata i64 %99, metadata !4013, metadata !DIExpression()) #34, !dbg !4190
  %100 = icmp eq i64 %99, 0, !dbg !4192
  %101 = select i1 %100, i64 1, i64 %99, !dbg !4192
  %102 = tail call i8* @realloc(i8* noundef %0, i64 noundef %101) #34, !dbg !4193
  call void @llvm.dbg.value(metadata i8* %102, metadata !3939, metadata !DIExpression()) #34, !dbg !4194
  %103 = icmp eq i8* %102, null, !dbg !4196
  br i1 %103, label %104, label %105, !dbg !4197

104:                                              ; preds = %97
  tail call void @xalloc_die() #36, !dbg !4198
  unreachable, !dbg !4198

105:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i8* %102, metadata !508, metadata !DIExpression()), !dbg !4159
  store i64 %98, i64* %1, align 8, !dbg !4199, !tbaa !961
  ret i8* %102, !dbg !4200
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xzalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !4201 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4203, metadata !DIExpression()), !dbg !4204
  call void @llvm.dbg.value(metadata i64 %0, metadata !4205, metadata !DIExpression()) #34, !dbg !4209
  call void @llvm.dbg.value(metadata i64 1, metadata !4208, metadata !DIExpression()) #34, !dbg !4209
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #34, !dbg !4211
  call void @llvm.dbg.value(metadata i8* %2, metadata !3939, metadata !DIExpression()) #34, !dbg !4212
  %3 = icmp eq i8* %2, null, !dbg !4214
  br i1 %3, label %4, label %5, !dbg !4215

4:                                                ; preds = %1
  tail call void @xalloc_die() #36, !dbg !4216
  unreachable, !dbg !4216

5:                                                ; preds = %1
  ret i8* %2, !dbg !4217
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !4206 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4205, metadata !DIExpression()), !dbg !4218
  call void @llvm.dbg.value(metadata i64 %1, metadata !4208, metadata !DIExpression()), !dbg !4218
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #34, !dbg !4219
  call void @llvm.dbg.value(metadata i8* %3, metadata !3939, metadata !DIExpression()) #34, !dbg !4220
  %4 = icmp eq i8* %3, null, !dbg !4222
  br i1 %4, label %5, label %6, !dbg !4223

5:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !4224
  unreachable, !dbg !4224

6:                                                ; preds = %2
  ret i8* %3, !dbg !4225
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xizalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !4226 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4228, metadata !DIExpression()), !dbg !4229
  call void @llvm.dbg.value(metadata i64 %0, metadata !4230, metadata !DIExpression()) #34, !dbg !4234
  call void @llvm.dbg.value(metadata i64 1, metadata !4233, metadata !DIExpression()) #34, !dbg !4234
  call void @llvm.dbg.value(metadata i64 %0, metadata !4236, metadata !DIExpression()) #34, !dbg !4240
  call void @llvm.dbg.value(metadata i64 1, metadata !4239, metadata !DIExpression()) #34, !dbg !4240
  call void @llvm.dbg.value(metadata i64 %0, metadata !4236, metadata !DIExpression()) #34, !dbg !4240
  call void @llvm.dbg.value(metadata i64 1, metadata !4239, metadata !DIExpression()) #34, !dbg !4240
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #34, !dbg !4242
  call void @llvm.dbg.value(metadata i8* %2, metadata !3939, metadata !DIExpression()) #34, !dbg !4243
  %3 = icmp eq i8* %2, null, !dbg !4245
  br i1 %3, label %4, label %5, !dbg !4246

4:                                                ; preds = %1
  tail call void @xalloc_die() #36, !dbg !4247
  unreachable, !dbg !4247

5:                                                ; preds = %1
  ret i8* %2, !dbg !4248
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !4231 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4230, metadata !DIExpression()), !dbg !4249
  call void @llvm.dbg.value(metadata i64 %1, metadata !4233, metadata !DIExpression()), !dbg !4249
  call void @llvm.dbg.value(metadata i64 %0, metadata !4236, metadata !DIExpression()) #34, !dbg !4250
  call void @llvm.dbg.value(metadata i64 %1, metadata !4239, metadata !DIExpression()) #34, !dbg !4250
  call void @llvm.dbg.value(metadata i64 %0, metadata !4236, metadata !DIExpression()) #34, !dbg !4250
  call void @llvm.dbg.value(metadata i64 %1, metadata !4239, metadata !DIExpression()) #34, !dbg !4250
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #34, !dbg !4252
  call void @llvm.dbg.value(metadata i8* %3, metadata !3939, metadata !DIExpression()) #34, !dbg !4253
  %4 = icmp eq i8* %3, null, !dbg !4255
  br i1 %4, label %5, label %6, !dbg !4256

5:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !4257
  unreachable, !dbg !4257

6:                                                ; preds = %2
  ret i8* %3, !dbg !4258
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xmemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !4259 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4263, metadata !DIExpression()), !dbg !4265
  call void @llvm.dbg.value(metadata i64 %1, metadata !4264, metadata !DIExpression()), !dbg !4265
  call void @llvm.dbg.value(metadata i64 %1, metadata !3961, metadata !DIExpression()) #34, !dbg !4266
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #34, !dbg !4268
  call void @llvm.dbg.value(metadata i8* %3, metadata !3939, metadata !DIExpression()) #34, !dbg !4269
  %4 = icmp eq i8* %3, null, !dbg !4271
  br i1 %4, label %5, label %6, !dbg !4272

5:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !4273
  unreachable, !dbg !4273

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !4274, metadata !DIExpression()) #34, !dbg !4279
  call void @llvm.dbg.value(metadata i8* %0, metadata !4277, metadata !DIExpression()) #34, !dbg !4279
  call void @llvm.dbg.value(metadata i64 %1, metadata !4278, metadata !DIExpression()) #34, !dbg !4279
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #34, !dbg !4281
  ret i8* %3, !dbg !4282
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @ximemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !4283 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4287, metadata !DIExpression()), !dbg !4289
  call void @llvm.dbg.value(metadata i64 %1, metadata !4288, metadata !DIExpression()), !dbg !4289
  call void @llvm.dbg.value(metadata i64 %1, metadata !3974, metadata !DIExpression()) #34, !dbg !4290
  call void @llvm.dbg.value(metadata i64 %1, metadata !3976, metadata !DIExpression()) #34, !dbg !4292
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #34, !dbg !4294
  call void @llvm.dbg.value(metadata i8* %3, metadata !3939, metadata !DIExpression()) #34, !dbg !4295
  %4 = icmp eq i8* %3, null, !dbg !4297
  br i1 %4, label %5, label %6, !dbg !4298

5:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !4299
  unreachable, !dbg !4299

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !4274, metadata !DIExpression()) #34, !dbg !4300
  call void @llvm.dbg.value(metadata i8* %0, metadata !4277, metadata !DIExpression()) #34, !dbg !4300
  call void @llvm.dbg.value(metadata i64 %1, metadata !4278, metadata !DIExpression()) #34, !dbg !4300
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #34, !dbg !4302
  ret i8* %3, !dbg !4303
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @ximemdup0(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #12 !dbg !4304 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4308, metadata !DIExpression()), !dbg !4311
  call void @llvm.dbg.value(metadata i64 %1, metadata !4309, metadata !DIExpression()), !dbg !4311
  %3 = add nsw i64 %1, 1, !dbg !4312
  call void @llvm.dbg.value(metadata i64 %3, metadata !3974, metadata !DIExpression()) #34, !dbg !4313
  call void @llvm.dbg.value(metadata i64 %3, metadata !3976, metadata !DIExpression()) #34, !dbg !4315
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #34, !dbg !4317
  call void @llvm.dbg.value(metadata i8* %4, metadata !3939, metadata !DIExpression()) #34, !dbg !4318
  %5 = icmp eq i8* %4, null, !dbg !4320
  br i1 %5, label %6, label %7, !dbg !4321

6:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !4322
  unreachable, !dbg !4322

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %4, metadata !4310, metadata !DIExpression()), !dbg !4311
  %8 = getelementptr inbounds i8, i8* %4, i64 %1, !dbg !4323
  store i8 0, i8* %8, align 1, !dbg !4324, !tbaa !654
  call void @llvm.dbg.value(metadata i8* %4, metadata !4274, metadata !DIExpression()) #34, !dbg !4325
  call void @llvm.dbg.value(metadata i8* %0, metadata !4277, metadata !DIExpression()) #34, !dbg !4325
  call void @llvm.dbg.value(metadata i64 %1, metadata !4278, metadata !DIExpression()) #34, !dbg !4325
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #34, !dbg !4327
  ret i8* %4, !dbg !4328
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xstrdup(i8* nocapture noundef readonly %0) local_unnamed_addr #12 !dbg !4329 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4331, metadata !DIExpression()), !dbg !4332
  %2 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #35, !dbg !4333
  %3 = add i64 %2, 1, !dbg !4334
  call void @llvm.dbg.value(metadata i8* %0, metadata !4263, metadata !DIExpression()) #34, !dbg !4335
  call void @llvm.dbg.value(metadata i64 %3, metadata !4264, metadata !DIExpression()) #34, !dbg !4335
  call void @llvm.dbg.value(metadata i64 %3, metadata !3961, metadata !DIExpression()) #34, !dbg !4337
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #34, !dbg !4339
  call void @llvm.dbg.value(metadata i8* %4, metadata !3939, metadata !DIExpression()) #34, !dbg !4340
  %5 = icmp eq i8* %4, null, !dbg !4342
  br i1 %5, label %6, label %7, !dbg !4343

6:                                                ; preds = %1
  tail call void @xalloc_die() #36, !dbg !4344
  unreachable, !dbg !4344

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !4274, metadata !DIExpression()) #34, !dbg !4345
  call void @llvm.dbg.value(metadata i8* %0, metadata !4277, metadata !DIExpression()) #34, !dbg !4345
  call void @llvm.dbg.value(metadata i64 %3, metadata !4278, metadata !DIExpression()) #34, !dbg !4345
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #34, !dbg !4347
  ret i8* %4, !dbg !4348
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4349 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4354, !tbaa !645
  call void @llvm.dbg.value(metadata i32 %1, metadata !4351, metadata !DIExpression()), !dbg !4355
  %2 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.243, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2.244, i64 0, i64 0), i32 noundef 5) #34, !dbg !4354
  tail call void (i32, i32, i8*, ...) @error(i32 noundef %1, i32 noundef 0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.245, i64 0, i64 0), i8* noundef %2) #34, !dbg !4354
  %3 = icmp eq i32 %1, 0, !dbg !4354
  tail call void @llvm.assume(i1 %3), !dbg !4354
  tail call void @abort() #36, !dbg !4356
  unreachable, !dbg !4356
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #26

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* noundef %0) local_unnamed_addr #12 !dbg !4357 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4395, metadata !DIExpression()), !dbg !4400
  %2 = tail call i64 @__fpending(%struct._IO_FILE* noundef %0) #34, !dbg !4401
  call void @llvm.dbg.value(metadata i1 undef, metadata !4396, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4400
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4402, metadata !DIExpression()), !dbg !4405
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4407
  %4 = load i32, i32* %3, align 8, !dbg !4407, !tbaa !1005
  %5 = and i32 %4, 32, !dbg !4408
  %6 = icmp eq i32 %5, 0, !dbg !4408
  call void @llvm.dbg.value(metadata i1 %6, metadata !4398, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4400
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* noundef %0) #34, !dbg !4409
  %8 = icmp eq i32 %7, 0, !dbg !4410
  call void @llvm.dbg.value(metadata i1 %8, metadata !4399, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4400
  br i1 %6, label %9, label %19, !dbg !4411

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4413
  call void @llvm.dbg.value(metadata i1 %10, metadata !4396, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4400
  %11 = select i1 %8, i1 true, i1 %10, !dbg !4414
  %12 = xor i1 %8, true, !dbg !4414
  %13 = sext i1 %12 to i32, !dbg !4414
  br i1 %11, label %22, label %14, !dbg !4414

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #37, !dbg !4415
  %16 = load i32, i32* %15, align 4, !dbg !4415, !tbaa !645
  %17 = icmp ne i32 %16, 9, !dbg !4416
  %18 = sext i1 %17 to i32, !dbg !4417
  br label %22, !dbg !4417

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !4418

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #37, !dbg !4420
  store i32 0, i32* %21, align 4, !dbg !4422, !tbaa !645
  br label %22, !dbg !4420

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !4400
  ret i32 %23, !dbg !4423
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(i32* noundef %0, i8* noundef %1, i64 noundef %2, %struct.__mbstate_t* noundef %3) local_unnamed_addr #12 !dbg !4424 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !4429, metadata !DIExpression()), !dbg !4434
  call void @llvm.dbg.value(metadata i8* %1, metadata !4430, metadata !DIExpression()), !dbg !4434
  call void @llvm.dbg.value(metadata i64 %2, metadata !4431, metadata !DIExpression()), !dbg !4434
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !4432, metadata !DIExpression()), !dbg !4434
  %5 = icmp eq i8* %1, null, !dbg !4435
  %6 = select i1 %5, i32* null, i32* %0, !dbg !4437
  %7 = select i1 %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.250, i64 0, i64 0), i8* %1, !dbg !4437
  %8 = select i1 %5, i64 1, i64 %2, !dbg !4437
  call void @llvm.dbg.value(metadata i64 %8, metadata !4431, metadata !DIExpression()), !dbg !4434
  call void @llvm.dbg.value(metadata i8* %7, metadata !4430, metadata !DIExpression()), !dbg !4434
  call void @llvm.dbg.value(metadata i32* %6, metadata !4429, metadata !DIExpression()), !dbg !4434
  %9 = icmp eq %struct.__mbstate_t* %3, null, !dbg !4438
  %10 = select i1 %9, %struct.__mbstate_t* @internal_state, %struct.__mbstate_t* %3, !dbg !4440
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !4432, metadata !DIExpression()), !dbg !4434
  %11 = tail call i64 @mbrtoc32(i32* noundef %6, i8* noundef %7, i64 noundef %8, %struct.__mbstate_t* noundef %10) #34, !dbg !4441
  call void @llvm.dbg.value(metadata i64 %11, metadata !4433, metadata !DIExpression()), !dbg !4434
  %12 = icmp ult i64 %11, -3, !dbg !4442
  br i1 %12, label %13, label %18, !dbg !4444

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(%struct.__mbstate_t* noundef %10) #35, !dbg !4445
  %15 = icmp eq i32 %14, 0, !dbg !4445
  br i1 %15, label %16, label %30, !dbg !4446

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !4447, metadata !DIExpression()) #34, !dbg !4452
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !4454, metadata !DIExpression()) #34, !dbg !4459
  call void @llvm.dbg.value(metadata i32 0, metadata !4457, metadata !DIExpression()) #34, !dbg !4459
  call void @llvm.dbg.value(metadata i64 8, metadata !4458, metadata !DIExpression()) #34, !dbg !4459
  %17 = bitcast %struct.__mbstate_t* %10 to i64*, !dbg !4461
  store i64 0, i64* %17, align 1, !dbg !4461
  br label %30, !dbg !4462

18:                                               ; preds = %4
  %19 = icmp eq i64 %11, -3, !dbg !4463
  br i1 %19, label %20, label %21, !dbg !4465

20:                                               ; preds = %18
  tail call void @abort() #36, !dbg !4466
  unreachable, !dbg !4466

21:                                               ; preds = %18
  %22 = icmp eq i64 %8, 0
  br i1 %22, label %30, label %23, !dbg !4467

23:                                               ; preds = %21
  %24 = tail call i1 @hard_locale(i32 noundef 0) #34, !dbg !4469
  br i1 %24, label %30, label %25, !dbg !4470

25:                                               ; preds = %23
  %26 = icmp eq i32* %6, null, !dbg !4471
  br i1 %26, label %30, label %27, !dbg !4474

27:                                               ; preds = %25
  %28 = load i8, i8* %7, align 1, !dbg !4475, !tbaa !654
  %29 = zext i8 %28 to i32, !dbg !4476
  store i32 %29, i32* %6, align 4, !dbg !4477, !tbaa !645
  br label %30, !dbg !4478

30:                                               ; preds = %16, %13, %21, %23, %25, %27
  %31 = phi i64 [ 1, %27 ], [ 1, %25 ], [ %11, %23 ], [ %11, %21 ], [ %11, %13 ], [ %11, %16 ], !dbg !4434
  ret i64 %31, !dbg !4479
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare !dbg !4480 i32 @mbsinit(%struct.__mbstate_t* noundef) local_unnamed_addr #32

; Function Attrs: mustprogress nounwind uwtable willreturn
define dso_local noalias i8* @rpl_reallocarray(i8* nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #33 !dbg !4486 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4488, metadata !DIExpression()), !dbg !4492
  call void @llvm.dbg.value(metadata i64 %1, metadata !4489, metadata !DIExpression()), !dbg !4492
  call void @llvm.dbg.value(metadata i64 %2, metadata !4490, metadata !DIExpression()), !dbg !4492
  %4 = icmp eq i64 %2, 0, !dbg !4493
  br i1 %4, label %8, label %5, !dbg !4493

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !4493
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !4493
  br i1 %7, label %13, label %8, !dbg !4493

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4491, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4492
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4491, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4492
  %9 = mul i64 %2, %1, !dbg !4493
  call void @llvm.dbg.value(metadata i64 %9, metadata !4491, metadata !DIExpression()), !dbg !4492
  call void @llvm.dbg.value(metadata i8* %0, metadata !4495, metadata !DIExpression()) #34, !dbg !4499
  call void @llvm.dbg.value(metadata i64 %9, metadata !4498, metadata !DIExpression()) #34, !dbg !4499
  %10 = icmp eq i64 %9, 0, !dbg !4501
  %11 = select i1 %10, i64 1, i64 %9, !dbg !4501
  %12 = tail call i8* @realloc(i8* noundef %0, i64 noundef %11) #34, !dbg !4502
  br label %15, !dbg !4503

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4491, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4492
  %14 = tail call i32* @__errno_location() #37, !dbg !4504
  store i32 12, i32* %14, align 4, !dbg !4506, !tbaa !645
  br label %15, !dbg !4507

15:                                               ; preds = %8, %13
  %16 = phi i8* [ null, %13 ], [ %12, %8 ], !dbg !4492
  ret i8* %16, !dbg !4508
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i1 @hard_locale(i32 noundef %0) local_unnamed_addr #12 !dbg !4509 {
  %2 = alloca [257 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !4511, metadata !DIExpression()), !dbg !4516
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !4517
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #34, !dbg !4517
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !4512, metadata !DIExpression()), !dbg !4518
  %4 = call i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %3, i64 noundef 257) #34, !dbg !4519
  %5 = icmp eq i32 %4, 0, !dbg !4519
  br i1 %5, label %6, label %13, !dbg !4521

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %3, metadata !4522, metadata !DIExpression()) #34, !dbg !4526
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.255, i64 0, i64 0), metadata !4525, metadata !DIExpression()) #34, !dbg !4526
  %7 = call i32 @bcmp(i8* noundef nonnull dereferenceable(2) %3, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.255, i64 0, i64 0), i64 2), !dbg !4529
  %8 = icmp eq i32 %7, 0, !dbg !4530
  br i1 %8, label %12, label %9, !dbg !4531

9:                                                ; preds = %6
  call void @llvm.dbg.value(metadata i8* %3, metadata !4522, metadata !DIExpression()) #34, !dbg !4532
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.256, i64 0, i64 0), metadata !4525, metadata !DIExpression()) #34, !dbg !4532
  %10 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) %3, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.256, i64 0, i64 0), i64 6), !dbg !4534
  %11 = icmp eq i32 %10, 0, !dbg !4535
  br i1 %11, label %12, label %13, !dbg !4536

12:                                               ; preds = %9, %6
  br label %13, !dbg !4537

13:                                               ; preds = %9, %1, %12
  %14 = phi i1 [ false, %12 ], [ false, %1 ], [ true, %9 ], !dbg !4516
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #34, !dbg !4538
  ret i1 %14, !dbg !4538
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 !dbg !4539 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4543, metadata !DIExpression()), !dbg !4546
  call void @llvm.dbg.value(metadata i8* %1, metadata !4544, metadata !DIExpression()), !dbg !4546
  call void @llvm.dbg.value(metadata i64 %2, metadata !4545, metadata !DIExpression()), !dbg !4546
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #34, !dbg !4547
  ret i32 %4, !dbg !4548
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null(i32 noundef %0) local_unnamed_addr #12 !dbg !4549 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4553, metadata !DIExpression()), !dbg !4554
  %2 = tail call i8* @setlocale_null_unlocked(i32 noundef %0) #34, !dbg !4555
  ret i8* %2, !dbg !4556
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #12 !dbg !4557 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4559, metadata !DIExpression()), !dbg !4561
  %2 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #34, !dbg !4562
  call void @llvm.dbg.value(metadata i8* %2, metadata !4560, metadata !DIExpression()), !dbg !4561
  ret i8* %2, !dbg !4563
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 !dbg !4564 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4566, metadata !DIExpression()), !dbg !4573
  call void @llvm.dbg.value(metadata i8* %1, metadata !4567, metadata !DIExpression()), !dbg !4573
  call void @llvm.dbg.value(metadata i64 %2, metadata !4568, metadata !DIExpression()), !dbg !4573
  call void @llvm.dbg.value(metadata i32 %0, metadata !4559, metadata !DIExpression()) #34, !dbg !4574
  %4 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #34, !dbg !4576
  call void @llvm.dbg.value(metadata i8* %4, metadata !4560, metadata !DIExpression()) #34, !dbg !4574
  call void @llvm.dbg.value(metadata i8* %4, metadata !4569, metadata !DIExpression()), !dbg !4573
  %5 = icmp eq i8* %4, null, !dbg !4577
  br i1 %5, label %6, label %9, !dbg !4578

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4579
  br i1 %7, label %19, label %8, !dbg !4582

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !4583, !tbaa !654
  br label %19, !dbg !4584

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* noundef nonnull %4) #35, !dbg !4585
  call void @llvm.dbg.value(metadata i64 %10, metadata !4570, metadata !DIExpression()), !dbg !4586
  %11 = icmp ult i64 %10, %2, !dbg !4587
  br i1 %11, label %12, label %14, !dbg !4589

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4590
  call void @llvm.dbg.value(metadata i8* %1, metadata !4592, metadata !DIExpression()) #34, !dbg !4597
  call void @llvm.dbg.value(metadata i8* %4, metadata !4595, metadata !DIExpression()) #34, !dbg !4597
  call void @llvm.dbg.value(metadata i64 %13, metadata !4596, metadata !DIExpression()) #34, !dbg !4597
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #34, !dbg !4599
  br label %19, !dbg !4600

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4601
  br i1 %15, label %19, label %16, !dbg !4604

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4605
  call void @llvm.dbg.value(metadata i8* %1, metadata !4592, metadata !DIExpression()) #34, !dbg !4607
  call void @llvm.dbg.value(metadata i8* %4, metadata !4595, metadata !DIExpression()) #34, !dbg !4607
  call void @llvm.dbg.value(metadata i64 %17, metadata !4596, metadata !DIExpression()) #34, !dbg !4607
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #34, !dbg !4609
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !4610
  store i8 0, i8* %18, align 1, !dbg !4611, !tbaa !654
  br label %19, !dbg !4612

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4613
  ret i32 %20, !dbg !4614
}

attributes #0 = { noreturn nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #3 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #4 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #5 = { inlinehint nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #6 = { argmemonly nofree nosync nounwind willreturn }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #9 = { noreturn nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #10 = { nofree nounwind readonly "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #11 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #12 = { nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #13 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #14 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #16 = { mustprogress nofree nounwind readonly uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #18 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #19 = { cold nounwind optsize uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #20 = { nofree nosync nounwind willreturn }
attributes #21 = { nofree "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #22 = { mustprogress nofree nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #23 = { argmemonly nofree nounwind readonly willreturn }
attributes #24 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #25 = { argmemonly nofree nounwind willreturn writeonly }
attributes #26 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #27 = { inlinehint nounwind uwtable allocsize(1,2) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #28 = { nounwind uwtable allocsize(1,2) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #29 = { nounwind uwtable allocsize(0) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #30 = { nounwind uwtable allocsize(1) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #31 = { nounwind uwtable allocsize(0,1) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #32 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #33 = { mustprogress nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #34 = { nounwind }
attributes #35 = { nounwind readonly willreturn }
attributes #36 = { noreturn nounwind }
attributes #37 = { nounwind readnone willreturn }
attributes #38 = { noreturn }
attributes #39 = { cold }
attributes #40 = { nounwind allocsize(1) }
attributes #41 = { nounwind allocsize(0) }

!llvm.dbg.cu = !{!2, !260, !463, !465, !265, !272, !443, !470, !472, !475, !477, !479, !313, !319, !329, !361, !481, !435, !487, !518, !520, !449, !522, !525, !527, !529}
!llvm.ident = !{!531, !531, !531, !531, !531, !531, !531, !531, !531, !531, !531, !531, !531, !531, !531, !531, !531, !531, !531, !531, !531, !531, !531, !531, !531, !531}
!llvm.module.flags = !{!532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "long_options", scope: !2, file: !3, line: 82, type: !245, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !144, globals: !146, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/dircolors.c", directory: "/src", checksumkind: CSK_MD5, checksum: "670b95ccf0215cde2984ed04e905f87d")
!4 = !{!5, !11, !26, !130}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "Shell_syntax", file: !3, line: 40, baseType: !6, size: 32, elements: !7)
!6 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!7 = !{!8, !9, !10}
!8 = !DIEnumerator(name: "SHELL_SYNTAX_BOURNE", value: 0)
!9 = !DIEnumerator(name: "SHELL_SYNTAX_C", value: 1)
!10 = !DIEnumerator(name: "SHELL_SYNTAX_UNKNOWN", value: 2)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !12, line: 46, baseType: !6, size: 32, elements: !13)
!12 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!13 = !{!14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25}
!14 = !DIEnumerator(name: "_ISupper", value: 256)
!15 = !DIEnumerator(name: "_ISlower", value: 512)
!16 = !DIEnumerator(name: "_ISalpha", value: 1024)
!17 = !DIEnumerator(name: "_ISdigit", value: 2048)
!18 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!19 = !DIEnumerator(name: "_ISspace", value: 8192)
!20 = !DIEnumerator(name: "_ISprint", value: 16384)
!21 = !DIEnumerator(name: "_ISgraph", value: 32768)
!22 = !DIEnumerator(name: "_ISblank", value: 1)
!23 = !DIEnumerator(name: "_IScntrl", value: 2)
!24 = !DIEnumerator(name: "_ISpunct", value: 4)
!25 = !DIEnumerator(name: "_ISalnum", value: 8)
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !27, file: !3, line: 290, baseType: !6, size: 32, elements: !125)
!27 = distinct !DISubprogram(name: "dc_parse_stream", scope: !3, file: !3, line: 278, type: !28, scopeLine: 279, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !96)
!28 = !DISubroutineType(types: !29)
!29 = !{!30, !31, !94}
!30 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !33, line: 7, baseType: !34)
!33 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !35, line: 49, size: 1728, elements: !36)
!35 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!36 = !{!37, !39, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !55, !57, !58, !59, !63, !65, !67, !71, !74, !76, !79, !82, !83, !85, !89, !90}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !34, file: !35, line: 51, baseType: !38, size: 32)
!38 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !34, file: !35, line: 54, baseType: !40, size: 64, offset: 64)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !34, file: !35, line: 55, baseType: !40, size: 64, offset: 128)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !34, file: !35, line: 56, baseType: !40, size: 64, offset: 192)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !34, file: !35, line: 57, baseType: !40, size: 64, offset: 256)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !34, file: !35, line: 58, baseType: !40, size: 64, offset: 320)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !34, file: !35, line: 59, baseType: !40, size: 64, offset: 384)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !34, file: !35, line: 60, baseType: !40, size: 64, offset: 448)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !34, file: !35, line: 61, baseType: !40, size: 64, offset: 512)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !34, file: !35, line: 64, baseType: !40, size: 64, offset: 576)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !34, file: !35, line: 65, baseType: !40, size: 64, offset: 640)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !34, file: !35, line: 66, baseType: !40, size: 64, offset: 704)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !34, file: !35, line: 68, baseType: !53, size: 64, offset: 768)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !35, line: 36, flags: DIFlagFwdDecl)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !34, file: !35, line: 70, baseType: !56, size: 64, offset: 832)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !34, file: !35, line: 72, baseType: !38, size: 32, offset: 896)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !34, file: !35, line: 73, baseType: !38, size: 32, offset: 928)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !34, file: !35, line: 74, baseType: !60, size: 64, offset: 960)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !61, line: 152, baseType: !62)
!61 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!62 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !34, file: !35, line: 77, baseType: !64, size: 16, offset: 1024)
!64 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !34, file: !35, line: 78, baseType: !66, size: 8, offset: 1040)
!66 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !34, file: !35, line: 79, baseType: !68, size: 8, offset: 1048)
!68 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 8, elements: !69)
!69 = !{!70}
!70 = !DISubrange(count: 1)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !34, file: !35, line: 81, baseType: !72, size: 64, offset: 1088)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !35, line: 43, baseType: null)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !34, file: !35, line: 89, baseType: !75, size: 64, offset: 1152)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !61, line: 153, baseType: !62)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !34, file: !35, line: 91, baseType: !77, size: 64, offset: 1216)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !35, line: 37, flags: DIFlagFwdDecl)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !34, file: !35, line: 92, baseType: !80, size: 64, offset: 1280)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !35, line: 38, flags: DIFlagFwdDecl)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !34, file: !35, line: 93, baseType: !56, size: 64, offset: 1344)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !34, file: !35, line: 94, baseType: !84, size: 64, offset: 1408)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !34, file: !35, line: 95, baseType: !86, size: 64, offset: 1472)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !87, line: 46, baseType: !88)
!87 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!88 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !34, file: !35, line: 96, baseType: !38, size: 32, offset: 1536)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !34, file: !35, line: 98, baseType: !91, size: 160, offset: 1568)
!91 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 160, elements: !92)
!92 = !{!93}
!93 = !DISubrange(count: 20)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!96 = !{!97, !98, !99, !103, !104, !105, !106, !107, !108, !109, !110, !111, !113, !114, !115}
!97 = !DILocalVariable(name: "fp", arg: 1, scope: !27, file: !3, line: 278, type: !31)
!98 = !DILocalVariable(name: "filename", arg: 2, scope: !27, file: !3, line: 278, type: !94)
!99 = !DILocalVariable(name: "line_number", scope: !27, file: !3, line: 280, type: !100)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !101, line: 130, baseType: !102)
!101 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !87, line: 35, baseType: !62)
!103 = !DILocalVariable(name: "next_G_line", scope: !27, file: !3, line: 281, type: !94)
!104 = !DILocalVariable(name: "input_line", scope: !27, file: !3, line: 282, type: !40)
!105 = !DILocalVariable(name: "input_line_size", scope: !27, file: !3, line: 283, type: !86)
!106 = !DILocalVariable(name: "line", scope: !27, file: !3, line: 284, type: !94)
!107 = !DILocalVariable(name: "term", scope: !27, file: !3, line: 285, type: !94)
!108 = !DILocalVariable(name: "colorterm", scope: !27, file: !3, line: 286, type: !94)
!109 = !DILocalVariable(name: "ok", scope: !27, file: !3, line: 287, type: !30)
!110 = !DILocalVariable(name: "state", scope: !27, file: !3, line: 290, type: !26)
!111 = !DILocalVariable(name: "keywd", scope: !112, file: !3, line: 304, type: !40)
!112 = distinct !DILexicalBlock(scope: !27, file: !3, line: 303, column: 5)
!113 = !DILocalVariable(name: "arg", scope: !112, file: !3, line: 304, type: !40)
!114 = !DILocalVariable(name: "unrecognized", scope: !112, file: !3, line: 305, type: !30)
!115 = !DILocalVariable(name: "i", scope: !116, file: !3, line: 375, type: !38)
!116 = distinct !DILexicalBlock(scope: !117, file: !3, line: 374, column: 17)
!117 = distinct !DILexicalBlock(scope: !118, file: !3, line: 367, column: 24)
!118 = distinct !DILexicalBlock(scope: !119, file: !3, line: 365, column: 24)
!119 = distinct !DILexicalBlock(scope: !120, file: !3, line: 363, column: 19)
!120 = distinct !DILexicalBlock(scope: !121, file: !3, line: 362, column: 13)
!121 = distinct !DILexicalBlock(scope: !122, file: !3, line: 361, column: 15)
!122 = distinct !DILexicalBlock(scope: !123, file: !3, line: 357, column: 9)
!123 = distinct !DILexicalBlock(scope: !124, file: !3, line: 351, column: 16)
!124 = distinct !DILexicalBlock(scope: !112, file: !3, line: 346, column: 11)
!125 = !{!126, !127, !128, !129}
!126 = !DIEnumerator(name: "ST_TERMNO", value: 0)
!127 = !DIEnumerator(name: "ST_TERMYES", value: 1)
!128 = !DIEnumerator(name: "ST_TERMSURE", value: 2)
!129 = !DIEnumerator(name: "ST_GLOBAL", value: 3)
!130 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !131, line: 42, baseType: !6, size: 32, elements: !132)
!131 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!132 = !{!133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143}
!133 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!134 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!135 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!136 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!137 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!138 = !DIEnumerator(name: "c_quoting_style", value: 5)
!139 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!140 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!141 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!142 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!143 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!144 = !{!40, !84, !86, !88, !94, !38, !64, !145}
!145 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!146 = !{!147, !198, !200, !0, !231, !237, !243}
!147 = !DIGlobalVariableExpression(var: !148, expr: !DIExpression())
!148 = distinct !DIGlobalVariable(name: "lsc_obstack", scope: !2, file: !3, line: 51, type: !149, isLocal: true, isDefinition: true)
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !150, line: 210, size: 704, elements: !151)
!150 = !DIFile(filename: "./lib/obstack.h", directory: "/src", checksumkind: CSK_MD5, checksum: "8dc5712d9cd0944565da172aee39448c")
!151 = !{!152, !153, !163, !164, !165, !166, !171, !172, !183, !194, !195, !196, !197}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !149, file: !150, line: 212, baseType: !86, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !149, file: !150, line: 213, baseType: !154, size: 64, offset: 64)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !150, line: 203, size: 128, elements: !156)
!156 = !{!157, !158, !159}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !155, file: !150, line: 205, baseType: !40, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !155, file: !150, line: 206, baseType: !154, size: 64, offset: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !155, file: !150, line: 207, baseType: !160, offset: 128)
!160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, elements: !161)
!161 = !{!162}
!162 = !DISubrange(count: -1)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !149, file: !150, line: 214, baseType: !40, size: 64, offset: 128)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !149, file: !150, line: 215, baseType: !40, size: 64, offset: 192)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !149, file: !150, line: 216, baseType: !40, size: 64, offset: 256)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !149, file: !150, line: 221, baseType: !167, size: 64, offset: 320)
!167 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !149, file: !150, line: 217, size: 64, elements: !168)
!168 = !{!169, !170}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "tempint", scope: !167, file: !150, line: 219, baseType: !86, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "tempptr", scope: !167, file: !150, line: 220, baseType: !84, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !149, file: !150, line: 222, baseType: !86, size: 64, offset: 384)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !149, file: !150, line: 229, baseType: !173, size: 64, offset: 448)
!173 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !149, file: !150, line: 225, size: 64, elements: !174)
!174 = !{!175, !179}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "plain", scope: !173, file: !150, line: 227, baseType: !176, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = !DISubroutineType(types: !178)
!178 = !{!84, !86}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !173, file: !150, line: 228, baseType: !180, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = !DISubroutineType(types: !182)
!182 = !{!84, !84, !86}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !149, file: !150, line: 234, baseType: !184, size: 64, offset: 512)
!184 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !149, file: !150, line: 230, size: 64, elements: !185)
!185 = !{!186, !190}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "plain", scope: !184, file: !150, line: 232, baseType: !187, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = !DISubroutineType(types: !189)
!189 = !{null, !84}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !184, file: !150, line: 233, baseType: !191, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DISubroutineType(types: !193)
!193 = !{null, !84, !84}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !149, file: !150, line: 236, baseType: !84, size: 64, offset: 576)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !149, file: !150, line: 237, baseType: !6, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !149, file: !150, line: 238, baseType: !6, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !149, file: !150, line: 242, baseType: !6, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!198 = !DIGlobalVariableExpression(var: !199, expr: !DIExpression())
!199 = distinct !DIGlobalVariable(name: "print_ls_colors", scope: !2, file: !3, line: 73, type: !30, isLocal: true, isDefinition: true)
!200 = !DIGlobalVariableExpression(var: !201, expr: !DIExpression())
!201 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !202, file: !203, line: 575, type: !38, isLocal: true, isDefinition: true)
!202 = distinct !DISubprogram(name: "oputs_", scope: !203, file: !203, line: 573, type: !204, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !206)
!203 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!204 = !DISubroutineType(types: !205)
!205 = !{null, !94, !94}
!206 = !{!207, !208, !209, !212, !213, !214, !215, !219, !220, !221, !222, !224, !225, !226, !227, !229, !230}
!207 = !DILocalVariable(name: "program", arg: 1, scope: !202, file: !203, line: 573, type: !94)
!208 = !DILocalVariable(name: "option", arg: 2, scope: !202, file: !203, line: 573, type: !94)
!209 = !DILocalVariable(name: "term", scope: !210, file: !203, line: 585, type: !94)
!210 = distinct !DILexicalBlock(scope: !211, file: !203, line: 582, column: 5)
!211 = distinct !DILexicalBlock(scope: !202, file: !203, line: 581, column: 7)
!212 = !DILocalVariable(name: "double_space", scope: !202, file: !203, line: 594, type: !30)
!213 = !DILocalVariable(name: "first_word", scope: !202, file: !203, line: 595, type: !94)
!214 = !DILocalVariable(name: "option_text", scope: !202, file: !203, line: 596, type: !94)
!215 = !DILocalVariable(name: "s", scope: !216, file: !203, line: 608, type: !94)
!216 = distinct !DILexicalBlock(scope: !217, file: !203, line: 605, column: 5)
!217 = distinct !DILexicalBlock(scope: !218, file: !203, line: 604, column: 12)
!218 = distinct !DILexicalBlock(scope: !202, file: !203, line: 597, column: 7)
!219 = !DILocalVariable(name: "spaces", scope: !216, file: !203, line: 609, type: !86)
!220 = !DILocalVariable(name: "anchor_len", scope: !202, file: !203, line: 620, type: !86)
!221 = !DILocalVariable(name: "desc_text", scope: !202, file: !203, line: 625, type: !94)
!222 = !DILocalVariable(name: "__ptr", scope: !223, file: !203, line: 644, type: !94)
!223 = distinct !DILexicalBlock(scope: !202, file: !203, line: 644, column: 3)
!224 = !DILocalVariable(name: "__stream", scope: !223, file: !203, line: 644, type: !31)
!225 = !DILocalVariable(name: "__cnt", scope: !223, file: !203, line: 644, type: !86)
!226 = !DILocalVariable(name: "url_program", scope: !202, file: !203, line: 648, type: !94)
!227 = !DILocalVariable(name: "__ptr", scope: !228, file: !203, line: 686, type: !94)
!228 = distinct !DILexicalBlock(scope: !202, file: !203, line: 686, column: 3)
!229 = !DILocalVariable(name: "__stream", scope: !228, file: !203, line: 686, type: !31)
!230 = !DILocalVariable(name: "__cnt", scope: !228, file: !203, line: 686, type: !86)
!231 = !DIGlobalVariableExpression(var: !232, expr: !DIExpression())
!232 = distinct !DIGlobalVariable(name: "G_line", scope: !2, file: !233, line: 1, type: !234, isLocal: true, isDefinition: true)
!233 = !DIFile(filename: "src/dircolors.h", directory: "/src", checksumkind: CSK_MD5, checksum: "78932583f5d466470594a9a0cc5465b7")
!234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 44928, elements: !235)
!235 = !{!236}
!236 = !DISubrange(count: 5616)
!237 = !DIGlobalVariableExpression(var: !238, expr: !DIExpression())
!238 = distinct !DIGlobalVariable(name: "slack_codes", scope: !2, file: !3, line: 53, type: !239, isLocal: true, isDefinition: true)
!239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !240, size: 2432, elements: !241)
!240 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !94)
!241 = !{!242}
!242 = !DISubrange(count: 38)
!243 = !DIGlobalVariableExpression(var: !244, expr: !DIExpression())
!244 = distinct !DIGlobalVariable(name: "ls_codes", scope: !2, file: !3, line: 63, type: !239, isLocal: true, isDefinition: true)
!245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !246, size: 2304, elements: !255)
!246 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !247)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !248, line: 50, size: 256, elements: !249)
!248 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!249 = !{!250, !251, !252, !254}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !247, file: !248, line: 52, baseType: !94, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !247, file: !248, line: 55, baseType: !38, size: 32, offset: 64)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !247, file: !248, line: 56, baseType: !253, size: 64, offset: 128)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !247, file: !248, line: 57, baseType: !38, size: 32, offset: 192)
!255 = !{!256}
!256 = !DISubrange(count: 9)
!257 = !DIGlobalVariableExpression(var: !199, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!258 = !DIGlobalVariableExpression(var: !259, expr: !DIExpression())
!259 = distinct !DIGlobalVariable(name: "Version", scope: !260, file: !261, line: 3, type: !94, isLocal: false, isDefinition: true)
!260 = distinct !DICompileUnit(language: DW_LANG_C99, file: !261, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !262, splitDebugInlining: false, nameTableKind: None)
!261 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!262 = !{!258}
!263 = !DIGlobalVariableExpression(var: !264, expr: !DIExpression())
!264 = distinct !DIGlobalVariable(name: "file_name", scope: !265, file: !266, line: 45, type: !94, isLocal: true, isDefinition: true)
!265 = distinct !DICompileUnit(language: DW_LANG_C99, file: !266, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !267, splitDebugInlining: false, nameTableKind: None)
!266 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!267 = !{!263, !268}
!268 = !DIGlobalVariableExpression(var: !269, expr: !DIExpression())
!269 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !265, file: !266, line: 55, type: !30, isLocal: true, isDefinition: true)
!270 = !DIGlobalVariableExpression(var: !271, expr: !DIExpression())
!271 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !272, file: !273, line: 66, type: !308, isLocal: false, isDefinition: true)
!272 = distinct !DICompileUnit(language: DW_LANG_C99, file: !273, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !274, globals: !275, splitDebugInlining: false, nameTableKind: None)
!273 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!274 = !{!84, !145}
!275 = !{!276, !302, !270, !304, !306}
!276 = !DIGlobalVariableExpression(var: !277, expr: !DIExpression())
!277 = distinct !DIGlobalVariable(name: "old_file_name", scope: !278, file: !273, line: 304, type: !94, isLocal: true, isDefinition: true)
!278 = distinct !DISubprogram(name: "verror_at_line", scope: !273, file: !273, line: 298, type: !279, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !295)
!279 = !DISubroutineType(types: !280)
!280 = !{null, !38, !38, !94, !6, !94, !281}
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !282, line: 52, baseType: !283)
!282 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !284, line: 32, baseType: !285)
!284 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4de3cbd931b589d291e5c39387aecf82")
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !286, baseType: !287)
!286 = !DIFile(filename: "lib/error.c", directory: "/src")
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !288, size: 256, elements: !289)
!288 = !DINamespace(name: "std", scope: null)
!289 = !{!290, !291, !292, !293, !294}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !287, file: !286, baseType: !84, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !287, file: !286, baseType: !84, size: 64, offset: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !287, file: !286, baseType: !84, size: 64, offset: 128)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !287, file: !286, baseType: !38, size: 32, offset: 192)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !287, file: !286, baseType: !38, size: 32, offset: 224)
!295 = !{!296, !297, !298, !299, !300, !301}
!296 = !DILocalVariable(name: "status", arg: 1, scope: !278, file: !273, line: 298, type: !38)
!297 = !DILocalVariable(name: "errnum", arg: 2, scope: !278, file: !273, line: 298, type: !38)
!298 = !DILocalVariable(name: "file_name", arg: 3, scope: !278, file: !273, line: 298, type: !94)
!299 = !DILocalVariable(name: "line_number", arg: 4, scope: !278, file: !273, line: 298, type: !6)
!300 = !DILocalVariable(name: "message", arg: 5, scope: !278, file: !273, line: 298, type: !94)
!301 = !DILocalVariable(name: "args", arg: 6, scope: !278, file: !273, line: 298, type: !281)
!302 = !DIGlobalVariableExpression(var: !303, expr: !DIExpression())
!303 = distinct !DIGlobalVariable(name: "old_line_number", scope: !278, file: !273, line: 305, type: !6, isLocal: true, isDefinition: true)
!304 = !DIGlobalVariableExpression(var: !305, expr: !DIExpression())
!305 = distinct !DIGlobalVariable(name: "error_message_count", scope: !272, file: !273, line: 69, type: !6, isLocal: false, isDefinition: true)
!306 = !DIGlobalVariableExpression(var: !307, expr: !DIExpression())
!307 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !272, file: !273, line: 295, type: !38, isLocal: false, isDefinition: true)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = !DISubroutineType(types: !310)
!310 = !{null}
!311 = !DIGlobalVariableExpression(var: !312, expr: !DIExpression())
!312 = distinct !DIGlobalVariable(name: "obstack_alloc_failed_handler", scope: !313, file: !314, line: 53, type: !308, isLocal: false, isDefinition: true)
!313 = distinct !DICompileUnit(language: DW_LANG_C99, file: !314, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !315, globals: !316, splitDebugInlining: false, nameTableKind: None)
!314 = !DIFile(filename: "lib/obstack.c", directory: "/src", checksumkind: CSK_MD5, checksum: "47f5bbc27e7c2d5a5cc3aab9403d8d27")
!315 = !{!30, !84, !40, !88}
!316 = !{!311}
!317 = !DIGlobalVariableExpression(var: !318, expr: !DIExpression())
!318 = distinct !DIGlobalVariable(name: "program_name", scope: !319, file: !320, line: 31, type: !94, isLocal: false, isDefinition: true)
!319 = distinct !DICompileUnit(language: DW_LANG_C99, file: !320, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !321, globals: !322, splitDebugInlining: false, nameTableKind: None)
!320 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!321 = !{!40}
!322 = !{!317}
!323 = !DIGlobalVariableExpression(var: !324, expr: !DIExpression())
!324 = distinct !DIGlobalVariable(name: "utf07FF", scope: !325, file: !326, line: 46, type: !356, isLocal: true, isDefinition: true)
!325 = distinct !DISubprogram(name: "proper_name_lite", scope: !326, file: !326, line: 38, type: !327, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !329, retainedNodes: !331)
!326 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!327 = !DISubroutineType(types: !328)
!328 = !{!94, !94, !94}
!329 = distinct !DICompileUnit(language: DW_LANG_C99, file: !326, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !330, splitDebugInlining: false, nameTableKind: None)
!330 = !{!323}
!331 = !{!332, !333, !334, !335, !340}
!332 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !325, file: !326, line: 38, type: !94)
!333 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !325, file: !326, line: 38, type: !94)
!334 = !DILocalVariable(name: "translation", scope: !325, file: !326, line: 40, type: !94)
!335 = !DILocalVariable(name: "w", scope: !325, file: !326, line: 47, type: !336)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !337, line: 37, baseType: !338)
!337 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !61, line: 57, baseType: !339)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !61, line: 42, baseType: !6)
!340 = !DILocalVariable(name: "mbs", scope: !325, file: !326, line: 48, type: !341)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !342, line: 6, baseType: !343)
!342 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !344, line: 21, baseType: !345)
!344 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !344, line: 13, size: 64, elements: !346)
!346 = !{!347, !348}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !345, file: !344, line: 15, baseType: !38, size: 32)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !345, file: !344, line: 20, baseType: !349, size: 32, offset: 32)
!349 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !345, file: !344, line: 16, size: 32, elements: !350)
!350 = !{!351, !352}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !349, file: !344, line: 18, baseType: !6, size: 32)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !349, file: !344, line: 19, baseType: !353, size: 32)
!353 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 32, elements: !354)
!354 = !{!355}
!355 = !DISubrange(count: 4)
!356 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 16, elements: !357)
!357 = !{!358}
!358 = !DISubrange(count: 2)
!359 = !DIGlobalVariableExpression(var: !360, expr: !DIExpression())
!360 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !361, file: !362, line: 76, type: !430, isLocal: false, isDefinition: true)
!361 = distinct !DICompileUnit(language: DW_LANG_C99, file: !362, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !363, retainedTypes: !369, globals: !370, splitDebugInlining: false, nameTableKind: None)
!362 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!363 = !{!130, !364, !11}
!364 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !131, line: 254, baseType: !6, size: 32, elements: !365)
!365 = !{!366, !367, !368}
!366 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!367 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!368 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!369 = !{!38, !64, !86}
!370 = !{!359, !371, !377, !389, !391, !396, !419, !426, !428}
!371 = !DIGlobalVariableExpression(var: !372, expr: !DIExpression())
!372 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !361, file: !362, line: 92, type: !373, isLocal: false, isDefinition: true)
!373 = !DICompositeType(tag: DW_TAG_array_type, baseType: !374, size: 320, elements: !375)
!374 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !130)
!375 = !{!376}
!376 = !DISubrange(count: 10)
!377 = !DIGlobalVariableExpression(var: !378, expr: !DIExpression())
!378 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !361, file: !362, line: 1040, type: !379, isLocal: false, isDefinition: true)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !362, line: 56, size: 448, elements: !380)
!380 = !{!381, !382, !383, !387, !388}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !379, file: !362, line: 59, baseType: !130, size: 32)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !379, file: !362, line: 62, baseType: !38, size: 32, offset: 32)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !379, file: !362, line: 66, baseType: !384, size: 256, offset: 64)
!384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 256, elements: !385)
!385 = !{!386}
!386 = !DISubrange(count: 8)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !379, file: !362, line: 69, baseType: !94, size: 64, offset: 320)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !379, file: !362, line: 72, baseType: !94, size: 64, offset: 384)
!389 = !DIGlobalVariableExpression(var: !390, expr: !DIExpression())
!390 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !361, file: !362, line: 107, type: !379, isLocal: true, isDefinition: true)
!391 = !DIGlobalVariableExpression(var: !392, expr: !DIExpression())
!392 = distinct !DIGlobalVariable(name: "slot0", scope: !361, file: !362, line: 831, type: !393, isLocal: true, isDefinition: true)
!393 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 2048, elements: !394)
!394 = !{!395}
!395 = !DISubrange(count: 256)
!396 = !DIGlobalVariableExpression(var: !397, expr: !DIExpression())
!397 = distinct !DIGlobalVariable(name: "quote", scope: !398, file: !362, line: 228, type: !417, isLocal: true, isDefinition: true)
!398 = distinct !DISubprogram(name: "gettext_quote", scope: !362, file: !362, line: 197, type: !399, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !401)
!399 = !DISubroutineType(types: !400)
!400 = !{!94, !94, !130}
!401 = !{!402, !403, !404, !405, !406}
!402 = !DILocalVariable(name: "msgid", arg: 1, scope: !398, file: !362, line: 197, type: !94)
!403 = !DILocalVariable(name: "s", arg: 2, scope: !398, file: !362, line: 197, type: !130)
!404 = !DILocalVariable(name: "translation", scope: !398, file: !362, line: 199, type: !94)
!405 = !DILocalVariable(name: "w", scope: !398, file: !362, line: 229, type: !336)
!406 = !DILocalVariable(name: "mbs", scope: !398, file: !362, line: 230, type: !407)
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !342, line: 6, baseType: !408)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !344, line: 21, baseType: !409)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !344, line: 13, size: 64, elements: !410)
!410 = !{!411, !412}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !409, file: !344, line: 15, baseType: !38, size: 32)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !409, file: !344, line: 20, baseType: !413, size: 32, offset: 32)
!413 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !409, file: !344, line: 16, size: 32, elements: !414)
!414 = !{!415, !416}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !413, file: !344, line: 18, baseType: !6, size: 32)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !413, file: !344, line: 19, baseType: !353, size: 32)
!417 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 64, elements: !418)
!418 = !{!358, !355}
!419 = !DIGlobalVariableExpression(var: !420, expr: !DIExpression())
!420 = distinct !DIGlobalVariable(name: "slotvec", scope: !361, file: !362, line: 834, type: !421, isLocal: true, isDefinition: true)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !362, line: 823, size: 128, elements: !423)
!423 = !{!424, !425}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !422, file: !362, line: 825, baseType: !86, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !422, file: !362, line: 826, baseType: !40, size: 64, offset: 64)
!426 = !DIGlobalVariableExpression(var: !427, expr: !DIExpression())
!427 = distinct !DIGlobalVariable(name: "nslots", scope: !361, file: !362, line: 832, type: !38, isLocal: true, isDefinition: true)
!428 = !DIGlobalVariableExpression(var: !429, expr: !DIExpression())
!429 = distinct !DIGlobalVariable(name: "slotvec0", scope: !361, file: !362, line: 833, type: !422, isLocal: true, isDefinition: true)
!430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !240, size: 704, elements: !431)
!431 = !{!432}
!432 = !DISubrange(count: 11)
!433 = !DIGlobalVariableExpression(var: !434, expr: !DIExpression())
!434 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !435, file: !436, line: 26, type: !438, isLocal: false, isDefinition: true)
!435 = distinct !DICompileUnit(language: DW_LANG_C99, file: !436, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !437, splitDebugInlining: false, nameTableKind: None)
!436 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!437 = !{!433}
!438 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 376, elements: !439)
!439 = !{!440}
!440 = !DISubrange(count: 47)
!441 = !DIGlobalVariableExpression(var: !442, expr: !DIExpression())
!442 = distinct !DIGlobalVariable(name: "exit_failure", scope: !443, file: !444, line: 24, type: !446, isLocal: false, isDefinition: true)
!443 = distinct !DICompileUnit(language: DW_LANG_C99, file: !444, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !445, splitDebugInlining: false, nameTableKind: None)
!444 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!445 = !{!441}
!446 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !38)
!447 = !DIGlobalVariableExpression(var: !448, expr: !DIExpression())
!448 = distinct !DIGlobalVariable(name: "internal_state", scope: !449, file: !450, line: 97, type: !453, isLocal: true, isDefinition: true)
!449 = distinct !DICompileUnit(language: DW_LANG_C99, file: !450, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !451, globals: !452, splitDebugInlining: false, nameTableKind: None)
!450 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!451 = !{!84, !86, !145}
!452 = !{!447}
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !342, line: 6, baseType: !454)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !344, line: 21, baseType: !455)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !344, line: 13, size: 64, elements: !456)
!456 = !{!457, !458}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !455, file: !344, line: 15, baseType: !38, size: 32)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !455, file: !344, line: 20, baseType: !459, size: 32, offset: 32)
!459 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !455, file: !344, line: 16, size: 32, elements: !460)
!460 = !{!461, !462}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !459, file: !344, line: 18, baseType: !6, size: 32)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !459, file: !344, line: 19, baseType: !353, size: 32)
!463 = distinct !DICompileUnit(language: DW_LANG_C99, file: !464, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !321, splitDebugInlining: false, nameTableKind: None)
!464 = !DIFile(filename: "lib/basename-lgpl.c", directory: "/src", checksumkind: CSK_MD5, checksum: "0c866bbc0b14fb4f9b15561a581e91dd")
!465 = distinct !DICompileUnit(language: DW_LANG_C99, file: !466, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !467, splitDebugInlining: false, nameTableKind: None)
!466 = !DIFile(filename: "lib/c-strcasecmp.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7d8203371740f321f2a78256f94ab3b7")
!467 = !{!468}
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !145)
!470 = distinct !DICompileUnit(language: DW_LANG_C99, file: !471, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!471 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!472 = distinct !DICompileUnit(language: DW_LANG_C99, file: !473, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !474, splitDebugInlining: false, nameTableKind: None)
!473 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!474 = !{!84}
!475 = distinct !DICompileUnit(language: DW_LANG_C99, file: !476, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!476 = !DIFile(filename: "lib/freopen-safer.c", directory: "/src", checksumkind: CSK_MD5, checksum: "380f3eea209580e07073525fbfd0dac5")
!477 = distinct !DICompileUnit(language: DW_LANG_C99, file: !478, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !474, splitDebugInlining: false, nameTableKind: None)
!478 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!479 = distinct !DICompileUnit(language: DW_LANG_C99, file: !480, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!480 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!481 = distinct !DICompileUnit(language: DW_LANG_C99, file: !482, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !483, retainedTypes: !474, splitDebugInlining: false, nameTableKind: None)
!482 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!483 = !{!484}
!484 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !482, line: 40, baseType: !6, size: 32, elements: !485)
!485 = !{!486}
!486 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!487 = distinct !DICompileUnit(language: DW_LANG_C99, file: !488, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !489, retainedTypes: !517, splitDebugInlining: false, nameTableKind: None)
!488 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!489 = !{!490, !502}
!490 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !491, file: !488, line: 188, baseType: !6, size: 32, elements: !500)
!491 = distinct !DISubprogram(name: "x2nrealloc", scope: !488, file: !488, line: 176, type: !492, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !495)
!492 = !DISubroutineType(types: !493)
!493 = !{!84, !84, !494, !86}
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!495 = !{!496, !497, !498, !499}
!496 = !DILocalVariable(name: "p", arg: 1, scope: !491, file: !488, line: 176, type: !84)
!497 = !DILocalVariable(name: "pn", arg: 2, scope: !491, file: !488, line: 176, type: !494)
!498 = !DILocalVariable(name: "s", arg: 3, scope: !491, file: !488, line: 176, type: !86)
!499 = !DILocalVariable(name: "n", scope: !491, file: !488, line: 178, type: !86)
!500 = !{!501}
!501 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!502 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !503, file: !488, line: 228, baseType: !6, size: 32, elements: !500)
!503 = distinct !DISubprogram(name: "xpalloc", scope: !488, file: !488, line: 223, type: !504, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !507)
!504 = !DISubroutineType(types: !505)
!505 = !{!84, !84, !506, !100, !102, !100}
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!507 = !{!508, !509, !510, !511, !512, !513, !514, !515, !516}
!508 = !DILocalVariable(name: "pa", arg: 1, scope: !503, file: !488, line: 223, type: !84)
!509 = !DILocalVariable(name: "pn", arg: 2, scope: !503, file: !488, line: 223, type: !506)
!510 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !503, file: !488, line: 223, type: !100)
!511 = !DILocalVariable(name: "n_max", arg: 4, scope: !503, file: !488, line: 223, type: !102)
!512 = !DILocalVariable(name: "s", arg: 5, scope: !503, file: !488, line: 223, type: !100)
!513 = !DILocalVariable(name: "n0", scope: !503, file: !488, line: 230, type: !100)
!514 = !DILocalVariable(name: "n", scope: !503, file: !488, line: 237, type: !100)
!515 = !DILocalVariable(name: "nbytes", scope: !503, file: !488, line: 248, type: !100)
!516 = !DILocalVariable(name: "adjusted_nbytes", scope: !503, file: !488, line: 252, type: !100)
!517 = !{!40, !84, !30, !62, !88}
!518 = distinct !DICompileUnit(language: DW_LANG_C99, file: !519, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!519 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!520 = distinct !DICompileUnit(language: DW_LANG_C99, file: !521, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!521 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!522 = distinct !DICompileUnit(language: DW_LANG_C99, file: !523, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !524, splitDebugInlining: false, nameTableKind: None)
!523 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!524 = !{!30, !88, !84}
!525 = distinct !DICompileUnit(language: DW_LANG_C99, file: !526, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!526 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!527 = distinct !DICompileUnit(language: DW_LANG_C99, file: !528, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!528 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!529 = distinct !DICompileUnit(language: DW_LANG_C99, file: !530, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !474, splitDebugInlining: false, nameTableKind: None)
!530 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!531 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!532 = !{i32 7, !"Dwarf Version", i32 5}
!533 = !{i32 2, !"Debug Info Version", i32 3}
!534 = !{i32 1, !"wchar_size", i32 4}
!535 = !{i32 1, !"branch-target-enforcement", i32 0}
!536 = !{i32 1, !"sign-return-address", i32 0}
!537 = !{i32 1, !"sign-return-address-all", i32 0}
!538 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!539 = !{i32 7, !"PIC Level", i32 2}
!540 = !{i32 7, !"PIE Level", i32 2}
!541 = !{i32 7, !"uwtable", i32 1}
!542 = !{i32 7, !"frame-pointer", i32 1}
!543 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 96, type: !544, scopeLine: 97, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !546)
!544 = !DISubroutineType(types: !545)
!545 = !{null, !38}
!546 = !{!547}
!547 = !DILocalVariable(name: "status", arg: 1, scope: !543, file: !3, line: 96, type: !38)
!548 = !DILocation(line: 0, scope: !543)
!549 = !DILocation(line: 98, column: 14, scope: !550)
!550 = distinct !DILexicalBlock(scope: !543, file: !3, line: 98, column: 7)
!551 = !DILocation(line: 98, column: 7, scope: !543)
!552 = !DILocation(line: 99, column: 5, scope: !553)
!553 = distinct !DILexicalBlock(scope: !550, file: !3, line: 99, column: 5)
!554 = !{!555, !555, i64 0}
!555 = !{!"any pointer", !556, i64 0}
!556 = !{!"omnipotent char", !557, i64 0}
!557 = !{!"Simple C/C++ TBAA"}
!558 = !DILocation(line: 102, column: 7, scope: !559)
!559 = distinct !DILexicalBlock(scope: !550, file: !3, line: 101, column: 5)
!560 = !DILocation(line: 103, column: 7, scope: !559)
!561 = !DILocation(line: 108, column: 7, scope: !559)
!562 = !DILocation(line: 112, column: 7, scope: !559)
!563 = !DILocation(line: 116, column: 7, scope: !559)
!564 = !DILocation(line: 120, column: 7, scope: !559)
!565 = !DILocation(line: 124, column: 7, scope: !559)
!566 = !DILocation(line: 125, column: 7, scope: !559)
!567 = !DILocation(line: 126, column: 7, scope: !559)
!568 = !DILocalVariable(name: "program", arg: 1, scope: !569, file: !203, line: 836, type: !94)
!569 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !203, file: !203, line: 836, type: !570, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !572)
!570 = !DISubroutineType(types: !571)
!571 = !{null, !94}
!572 = !{!568, !573, !582, !583, !585, !586}
!573 = !DILocalVariable(name: "infomap", scope: !569, file: !203, line: 838, type: !574)
!574 = !DICompositeType(tag: DW_TAG_array_type, baseType: !575, size: 896, elements: !580)
!575 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !576)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !569, file: !203, line: 838, size: 128, elements: !577)
!577 = !{!578, !579}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !576, file: !203, line: 838, baseType: !94, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !576, file: !203, line: 838, baseType: !94, size: 64, offset: 64)
!580 = !{!581}
!581 = !DISubrange(count: 7)
!582 = !DILocalVariable(name: "node", scope: !569, file: !203, line: 848, type: !94)
!583 = !DILocalVariable(name: "map_prog", scope: !569, file: !203, line: 849, type: !584)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!585 = !DILocalVariable(name: "lc_messages", scope: !569, file: !203, line: 861, type: !94)
!586 = !DILocalVariable(name: "url_program", scope: !569, file: !203, line: 874, type: !94)
!587 = !DILocation(line: 0, scope: !569, inlinedAt: !588)
!588 = distinct !DILocation(line: 132, column: 7, scope: !559)
!589 = !DILocation(line: 838, column: 3, scope: !569, inlinedAt: !588)
!590 = !DILocation(line: 838, column: 67, scope: !569, inlinedAt: !588)
!591 = !DILocation(line: 849, column: 36, scope: !569, inlinedAt: !588)
!592 = !DILocation(line: 851, column: 3, scope: !569, inlinedAt: !588)
!593 = !DILocalVariable(name: "__s1", arg: 1, scope: !594, file: !595, line: 1359, type: !94)
!594 = distinct !DISubprogram(name: "streq", scope: !595, file: !595, line: 1359, type: !596, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !598)
!595 = !DIFile(filename: "./lib/string.h", directory: "/src")
!596 = !DISubroutineType(types: !597)
!597 = !{!30, !94, !94}
!598 = !{!593, !599}
!599 = !DILocalVariable(name: "__s2", arg: 2, scope: !594, file: !595, line: 1359, type: !94)
!600 = !DILocation(line: 0, scope: !594, inlinedAt: !601)
!601 = distinct !DILocation(line: 851, column: 33, scope: !569, inlinedAt: !588)
!602 = !DILocation(line: 1361, column: 11, scope: !594, inlinedAt: !601)
!603 = !DILocation(line: 1361, column: 10, scope: !594, inlinedAt: !601)
!604 = !DILocation(line: 852, column: 13, scope: !569, inlinedAt: !588)
!605 = !DILocation(line: 851, column: 20, scope: !569, inlinedAt: !588)
!606 = !{!607, !555, i64 0}
!607 = !{!"infomap", !555, i64 0, !555, i64 8}
!608 = !DILocation(line: 851, column: 10, scope: !569, inlinedAt: !588)
!609 = !DILocation(line: 851, column: 28, scope: !569, inlinedAt: !588)
!610 = distinct !{!610, !592, !604, !611}
!611 = !{!"llvm.loop.mustprogress"}
!612 = !DILocation(line: 854, column: 17, scope: !613, inlinedAt: !588)
!613 = distinct !DILexicalBlock(scope: !569, file: !203, line: 854, column: 7)
!614 = !{!607, !555, i64 8}
!615 = !DILocation(line: 854, column: 7, scope: !613, inlinedAt: !588)
!616 = !DILocation(line: 854, column: 7, scope: !569, inlinedAt: !588)
!617 = !DILocation(line: 857, column: 3, scope: !569, inlinedAt: !588)
!618 = !DILocation(line: 861, column: 29, scope: !569, inlinedAt: !588)
!619 = !DILocation(line: 862, column: 7, scope: !620, inlinedAt: !588)
!620 = distinct !DILexicalBlock(scope: !569, file: !203, line: 862, column: 7)
!621 = !DILocation(line: 862, column: 19, scope: !620, inlinedAt: !588)
!622 = !DILocation(line: 862, column: 22, scope: !620, inlinedAt: !588)
!623 = !DILocation(line: 862, column: 7, scope: !569, inlinedAt: !588)
!624 = !DILocation(line: 868, column: 7, scope: !625, inlinedAt: !588)
!625 = distinct !DILexicalBlock(scope: !620, file: !203, line: 863, column: 5)
!626 = !DILocation(line: 870, column: 5, scope: !625, inlinedAt: !588)
!627 = !DILocation(line: 0, scope: !594, inlinedAt: !628)
!628 = distinct !DILocation(line: 874, column: 29, scope: !569, inlinedAt: !588)
!629 = !DILocation(line: 875, column: 3, scope: !569, inlinedAt: !588)
!630 = !DILocation(line: 877, column: 3, scope: !569, inlinedAt: !588)
!631 = !DILocation(line: 879, column: 1, scope: !569, inlinedAt: !588)
!632 = !DILocation(line: 135, column: 3, scope: !543)
!633 = !DISubprogram(name: "dcgettext", scope: !634, file: !634, line: 51, type: !635, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !637)
!634 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!635 = !DISubroutineType(types: !636)
!636 = !{!40, !94, !94, !38}
!637 = !{}
!638 = !DISubprogram(name: "fputs_unlocked", scope: !282, file: !282, line: 691, type: !639, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !637)
!639 = !DISubroutineType(types: !640)
!640 = !{!38, !641, !642}
!641 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !94)
!642 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !31)
!643 = !DILocation(line: 0, scope: !202)
!644 = !DILocation(line: 581, column: 7, scope: !211)
!645 = !{!646, !646, i64 0}
!646 = !{!"int", !556, i64 0}
!647 = !DILocation(line: 581, column: 19, scope: !211)
!648 = !DILocation(line: 581, column: 7, scope: !202)
!649 = !DILocation(line: 585, column: 26, scope: !210)
!650 = !DILocation(line: 0, scope: !210)
!651 = !DILocation(line: 586, column: 23, scope: !210)
!652 = !DILocation(line: 586, column: 28, scope: !210)
!653 = !DILocation(line: 586, column: 32, scope: !210)
!654 = !{!556, !556, i64 0}
!655 = !DILocation(line: 586, column: 38, scope: !210)
!656 = !DILocation(line: 0, scope: !594, inlinedAt: !657)
!657 = distinct !DILocation(line: 586, column: 41, scope: !210)
!658 = !DILocation(line: 1361, column: 11, scope: !594, inlinedAt: !657)
!659 = !DILocation(line: 1361, column: 10, scope: !594, inlinedAt: !657)
!660 = !DILocation(line: 586, column: 19, scope: !210)
!661 = !DILocation(line: 587, column: 5, scope: !210)
!662 = !DILocation(line: 588, column: 7, scope: !663)
!663 = distinct !DILexicalBlock(scope: !202, file: !203, line: 588, column: 7)
!664 = !DILocation(line: 588, column: 7, scope: !202)
!665 = !DILocation(line: 590, column: 7, scope: !666)
!666 = distinct !DILexicalBlock(scope: !663, file: !203, line: 589, column: 5)
!667 = !DILocation(line: 591, column: 7, scope: !666)
!668 = !DILocation(line: 595, column: 37, scope: !202)
!669 = !DILocation(line: 595, column: 35, scope: !202)
!670 = !DILocation(line: 596, column: 29, scope: !202)
!671 = !DILocation(line: 597, column: 8, scope: !218)
!672 = !DILocation(line: 597, column: 7, scope: !202)
!673 = !DILocation(line: 604, column: 24, scope: !217)
!674 = !DILocation(line: 604, column: 12, scope: !218)
!675 = !DILocation(line: 0, scope: !216)
!676 = !DILocation(line: 610, column: 16, scope: !216)
!677 = !DILocation(line: 610, column: 7, scope: !216)
!678 = !DILocation(line: 611, column: 21, scope: !216)
!679 = !{!680, !680, i64 0}
!680 = !{!"short", !556, i64 0}
!681 = !DILocation(line: 611, column: 19, scope: !216)
!682 = !DILocation(line: 611, column: 16, scope: !216)
!683 = !DILocation(line: 610, column: 30, scope: !216)
!684 = distinct !{!684, !677, !678, !611}
!685 = !DILocation(line: 612, column: 18, scope: !686)
!686 = distinct !DILexicalBlock(scope: !216, file: !203, line: 612, column: 11)
!687 = !DILocation(line: 612, column: 11, scope: !216)
!688 = !DILocation(line: 620, column: 23, scope: !202)
!689 = !DILocation(line: 625, column: 39, scope: !202)
!690 = !DILocation(line: 626, column: 3, scope: !202)
!691 = !DILocation(line: 626, column: 10, scope: !202)
!692 = !DILocation(line: 626, column: 21, scope: !202)
!693 = !DILocation(line: 628, column: 44, scope: !694)
!694 = distinct !DILexicalBlock(scope: !695, file: !203, line: 628, column: 11)
!695 = distinct !DILexicalBlock(scope: !202, file: !203, line: 627, column: 5)
!696 = !DILocation(line: 628, column: 32, scope: !694)
!697 = !DILocation(line: 628, column: 49, scope: !694)
!698 = !DILocation(line: 628, column: 11, scope: !695)
!699 = !DILocation(line: 630, column: 11, scope: !700)
!700 = distinct !DILexicalBlock(scope: !695, file: !203, line: 630, column: 11)
!701 = !DILocation(line: 630, column: 11, scope: !695)
!702 = !DILocation(line: 632, column: 26, scope: !703)
!703 = distinct !DILexicalBlock(scope: !704, file: !203, line: 632, column: 15)
!704 = distinct !DILexicalBlock(scope: !700, file: !203, line: 631, column: 9)
!705 = !DILocation(line: 632, column: 34, scope: !703)
!706 = !DILocation(line: 632, column: 37, scope: !703)
!707 = !DILocation(line: 632, column: 15, scope: !704)
!708 = !DILocation(line: 636, column: 29, scope: !709)
!709 = distinct !DILexicalBlock(scope: !704, file: !203, line: 636, column: 15)
!710 = !DILocation(line: 640, column: 16, scope: !695)
!711 = distinct !{!711, !690, !712, !611}
!712 = !DILocation(line: 641, column: 5, scope: !202)
!713 = !DILocation(line: 644, column: 3, scope: !202)
!714 = !DILocation(line: 0, scope: !594, inlinedAt: !715)
!715 = distinct !DILocation(line: 648, column: 31, scope: !202)
!716 = !DILocation(line: 0, scope: !594, inlinedAt: !717)
!717 = distinct !DILocation(line: 649, column: 31, scope: !202)
!718 = !DILocation(line: 0, scope: !594, inlinedAt: !719)
!719 = distinct !DILocation(line: 650, column: 31, scope: !202)
!720 = !DILocation(line: 0, scope: !594, inlinedAt: !721)
!721 = distinct !DILocation(line: 651, column: 31, scope: !202)
!722 = !DILocation(line: 0, scope: !594, inlinedAt: !723)
!723 = distinct !DILocation(line: 652, column: 31, scope: !202)
!724 = !DILocation(line: 0, scope: !594, inlinedAt: !725)
!725 = distinct !DILocation(line: 653, column: 31, scope: !202)
!726 = !DILocation(line: 0, scope: !594, inlinedAt: !727)
!727 = distinct !DILocation(line: 654, column: 31, scope: !202)
!728 = !DILocation(line: 0, scope: !594, inlinedAt: !729)
!729 = distinct !DILocation(line: 655, column: 31, scope: !202)
!730 = !DILocation(line: 0, scope: !594, inlinedAt: !731)
!731 = distinct !DILocation(line: 656, column: 31, scope: !202)
!732 = !DILocation(line: 0, scope: !594, inlinedAt: !733)
!733 = distinct !DILocation(line: 657, column: 31, scope: !202)
!734 = !DILocation(line: 663, column: 7, scope: !735)
!735 = distinct !DILexicalBlock(scope: !202, file: !203, line: 663, column: 7)
!736 = !DILocation(line: 664, column: 7, scope: !735)
!737 = !DILocation(line: 664, column: 10, scope: !735)
!738 = !DILocation(line: 663, column: 7, scope: !202)
!739 = !DILocation(line: 669, column: 7, scope: !740)
!740 = distinct !DILexicalBlock(scope: !735, file: !203, line: 665, column: 5)
!741 = !DILocation(line: 671, column: 5, scope: !740)
!742 = !DILocation(line: 676, column: 7, scope: !743)
!743 = distinct !DILexicalBlock(scope: !735, file: !203, line: 673, column: 5)
!744 = !DILocation(line: 679, column: 3, scope: !202)
!745 = !DILocation(line: 683, column: 3, scope: !202)
!746 = !DILocation(line: 686, column: 3, scope: !202)
!747 = !DILocation(line: 688, column: 3, scope: !202)
!748 = !DILocation(line: 691, column: 3, scope: !202)
!749 = !DILocation(line: 695, column: 3, scope: !202)
!750 = !DILocation(line: 696, column: 1, scope: !202)
!751 = !DISubprogram(name: "setlocale", scope: !752, file: !752, line: 122, type: !753, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !637)
!752 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!753 = !DISubroutineType(types: !754)
!754 = !{!40, !38, !94}
!755 = !DISubprogram(name: "getenv", scope: !756, file: !756, line: 641, type: !757, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !637)
!756 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!757 = !DISubroutineType(types: !758)
!758 = !{!40, !94}
!759 = !DISubprogram(name: "fwrite_unlocked", scope: !282, file: !282, line: 704, type: !760, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !637)
!760 = !DISubroutineType(types: !761)
!761 = !{!86, !762, !86, !86, !642}
!762 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !763)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!765 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 429, type: !766, scopeLine: 430, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !769)
!766 = !DISubroutineType(types: !767)
!767 = !{!38, !38, !768}
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!769 = !{!770, !771, !772, !773, !774, !775, !776, !779, !783, !787, !788, !791, !792, !793, !794, !796, !797}
!770 = !DILocalVariable(name: "argc", arg: 1, scope: !765, file: !3, line: 429, type: !38)
!771 = !DILocalVariable(name: "argv", arg: 2, scope: !765, file: !3, line: 429, type: !768)
!772 = !DILocalVariable(name: "ok", scope: !765, file: !3, line: 431, type: !30)
!773 = !DILocalVariable(name: "optc", scope: !765, file: !3, line: 432, type: !38)
!774 = !DILocalVariable(name: "syntax", scope: !765, file: !3, line: 433, type: !5)
!775 = !DILocalVariable(name: "print_database", scope: !765, file: !3, line: 434, type: !30)
!776 = !DILocalVariable(name: "p", scope: !777, file: !3, line: 505, type: !94)
!777 = distinct !DILexicalBlock(scope: !778, file: !3, line: 504, column: 5)
!778 = distinct !DILexicalBlock(scope: !765, file: !3, line: 503, column: 7)
!779 = !DILocalVariable(name: "len", scope: !780, file: !3, line: 532, type: !86)
!780 = distinct !DILexicalBlock(scope: !781, file: !3, line: 531, column: 9)
!781 = distinct !DILexicalBlock(scope: !782, file: !3, line: 530, column: 11)
!782 = distinct !DILexicalBlock(scope: !778, file: !3, line: 513, column: 5)
!783 = !DILocalVariable(name: "__o", scope: !784, file: !3, line: 532, type: !785)
!784 = distinct !DILexicalBlock(scope: !780, file: !3, line: 532, column: 24)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !149)
!787 = !DILocalVariable(name: "s", scope: !780, file: !3, line: 533, type: !40)
!788 = !DILocalVariable(name: "__o1", scope: !789, file: !3, line: 533, type: !790)
!789 = distinct !DILexicalBlock(scope: !780, file: !3, line: 533, column: 21)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!791 = !DILocalVariable(name: "__value", scope: !789, file: !3, line: 533, type: !84)
!792 = !DILocalVariable(name: "prefix", scope: !780, file: !3, line: 534, type: !94)
!793 = !DILocalVariable(name: "suffix", scope: !780, file: !3, line: 535, type: !94)
!794 = !DILocalVariable(name: "__ptr", scope: !795, file: !3, line: 549, type: !94)
!795 = distinct !DILexicalBlock(scope: !780, file: !3, line: 549, column: 11)
!796 = !DILocalVariable(name: "__stream", scope: !795, file: !3, line: 549, type: !31)
!797 = !DILocalVariable(name: "__cnt", scope: !795, file: !3, line: 549, type: !86)
!798 = !DILocation(line: 0, scope: !765)
!799 = !DILocation(line: 437, column: 21, scope: !765)
!800 = !DILocation(line: 437, column: 3, scope: !765)
!801 = !DILocation(line: 438, column: 3, scope: !765)
!802 = !DILocation(line: 439, column: 3, scope: !765)
!803 = !DILocation(line: 440, column: 3, scope: !765)
!804 = !DILocation(line: 442, column: 3, scope: !765)
!805 = !DILocation(line: 444, column: 3, scope: !765)
!806 = !DILocation(line: 444, column: 18, scope: !765)
!807 = distinct !{!807, !805, !808, !611}
!808 = !DILocation(line: 469, column: 7, scope: !765)
!809 = !DILocation(line: 453, column: 9, scope: !810)
!810 = distinct !DILexicalBlock(scope: !765, file: !3, line: 446, column: 7)
!811 = !DILocation(line: 460, column: 25, scope: !810)
!812 = !DILocation(line: 461, column: 9, scope: !810)
!813 = !DILocation(line: 463, column: 7, scope: !810)
!814 = !DILocation(line: 465, column: 7, scope: !810)
!815 = !DILocation(line: 468, column: 9, scope: !810)
!816 = !DILocation(line: 471, column: 11, scope: !765)
!817 = !DILocation(line: 471, column: 8, scope: !765)
!818 = !DILocation(line: 472, column: 8, scope: !765)
!819 = !DILocation(line: 476, column: 25, scope: !820)
!820 = distinct !DILexicalBlock(scope: !765, file: !3, line: 476, column: 7)
!821 = !DILocation(line: 476, column: 23, scope: !820)
!822 = !DILocation(line: 476, column: 42, scope: !820)
!823 = !DILocation(line: 478, column: 7, scope: !824)
!824 = distinct !DILexicalBlock(scope: !820, file: !3, line: 477, column: 5)
!825 = !DILocation(line: 481, column: 7, scope: !824)
!826 = !DILocation(line: 484, column: 22, scope: !827)
!827 = distinct !DILexicalBlock(scope: !765, file: !3, line: 484, column: 7)
!828 = !DILocation(line: 486, column: 7, scope: !829)
!829 = distinct !DILexicalBlock(scope: !827, file: !3, line: 485, column: 5)
!830 = !DILocation(line: 489, column: 7, scope: !829)
!831 = !DILocation(line: 492, column: 8, scope: !832)
!832 = distinct !DILexicalBlock(scope: !765, file: !3, line: 492, column: 7)
!833 = !DILocation(line: 492, column: 25, scope: !832)
!834 = !DILocation(line: 492, column: 7, scope: !765)
!835 = !DILocation(line: 494, column: 7, scope: !836)
!836 = distinct !DILexicalBlock(scope: !832, file: !3, line: 493, column: 5)
!837 = !DILocation(line: 496, column: 11, scope: !836)
!838 = !DILocation(line: 497, column: 9, scope: !839)
!839 = distinct !DILexicalBlock(scope: !836, file: !3, line: 496, column: 11)
!840 = !DILocation(line: 500, column: 7, scope: !836)
!841 = !DILocation(line: 503, column: 7, scope: !765)
!842 = !DILocation(line: 0, scope: !777)
!843 = !DILocation(line: 508, column: 11, scope: !844)
!844 = distinct !DILexicalBlock(scope: !777, file: !3, line: 507, column: 9)
!845 = !DILocation(line: 509, column: 16, scope: !844)
!846 = !DILocation(line: 509, column: 27, scope: !844)
!847 = !DILocation(line: 509, column: 13, scope: !844)
!848 = !DILocation(line: 506, column: 16, scope: !777)
!849 = !DILocation(line: 506, column: 25, scope: !777)
!850 = !DILocation(line: 506, column: 7, scope: !777)
!851 = distinct !{!851, !850, !852, !611}
!852 = !DILocation(line: 510, column: 9, scope: !777)
!853 = !DILocation(line: 515, column: 42, scope: !854)
!854 = distinct !DILexicalBlock(scope: !782, file: !3, line: 515, column: 11)
!855 = !DILocation(line: 146, column: 11, scope: !856, inlinedAt: !861)
!856 = distinct !DISubprogram(name: "guess_shell_syntax", scope: !3, file: !3, line: 142, type: !857, scopeLine: 143, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !859)
!857 = !DISubroutineType(types: !858)
!858 = !{!5}
!859 = !{!860}
!860 = !DILocalVariable(name: "shell", scope: !856, file: !3, line: 144, type: !40)
!861 = distinct !DILocation(line: 517, column: 20, scope: !862)
!862 = distinct !DILexicalBlock(scope: !854, file: !3, line: 516, column: 9)
!863 = !DILocation(line: 0, scope: !856, inlinedAt: !861)
!864 = !DILocation(line: 147, column: 13, scope: !865, inlinedAt: !861)
!865 = distinct !DILexicalBlock(scope: !856, file: !3, line: 147, column: 7)
!866 = !DILocation(line: 147, column: 21, scope: !865, inlinedAt: !861)
!867 = !DILocation(line: 147, column: 24, scope: !865, inlinedAt: !861)
!868 = !DILocation(line: 147, column: 31, scope: !865, inlinedAt: !861)
!869 = !DILocation(line: 147, column: 7, scope: !856, inlinedAt: !861)
!870 = !DILocation(line: 150, column: 11, scope: !856, inlinedAt: !861)
!871 = !DILocation(line: 0, scope: !594, inlinedAt: !872)
!872 = distinct !DILocation(line: 152, column: 7, scope: !873, inlinedAt: !861)
!873 = distinct !DILexicalBlock(scope: !856, file: !3, line: 152, column: 7)
!874 = !DILocation(line: 1361, column: 11, scope: !594, inlinedAt: !872)
!875 = !DILocation(line: 1361, column: 10, scope: !594, inlinedAt: !872)
!876 = !DILocation(line: 152, column: 28, scope: !873, inlinedAt: !861)
!877 = !DILocation(line: 0, scope: !594, inlinedAt: !878)
!878 = distinct !DILocation(line: 152, column: 31, scope: !873, inlinedAt: !861)
!879 = !DILocation(line: 1361, column: 11, scope: !594, inlinedAt: !878)
!880 = !DILocation(line: 1361, column: 10, scope: !594, inlinedAt: !878)
!881 = !DILocation(line: 152, column: 7, scope: !856, inlinedAt: !861)
!882 = !DILocation(line: 519, column: 13, scope: !883)
!883 = distinct !DILexicalBlock(scope: !862, file: !3, line: 518, column: 15)
!884 = !DILocation(line: 524, column: 7, scope: !782)
!885 = !DILocation(line: 525, column: 16, scope: !886)
!886 = distinct !DILexicalBlock(scope: !782, file: !3, line: 525, column: 11)
!887 = !DILocation(line: 525, column: 11, scope: !782)
!888 = !DILocation(line: 526, column: 14, scope: !886)
!889 = !DILocation(line: 530, column: 11, scope: !782)
!890 = !DILocation(line: 528, column: 29, scope: !886)
!891 = !DILocalVariable(name: "filename", arg: 1, scope: !892, file: !3, line: 407, type: !94)
!892 = distinct !DISubprogram(name: "dc_parse_file", scope: !3, file: !3, line: 407, type: !893, scopeLine: 408, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !895)
!893 = !DISubroutineType(types: !894)
!894 = !{!30, !94}
!895 = !{!891, !896}
!896 = !DILocalVariable(name: "ok", scope: !892, file: !3, line: 409, type: !30)
!897 = !DILocation(line: 0, scope: !892, inlinedAt: !898)
!898 = distinct !DILocation(line: 528, column: 14, scope: !886)
!899 = !DILocation(line: 0, scope: !594, inlinedAt: !900)
!900 = distinct !DILocation(line: 411, column: 9, scope: !901, inlinedAt: !898)
!901 = distinct !DILexicalBlock(scope: !892, file: !3, line: 411, column: 7)
!902 = !DILocation(line: 1361, column: 11, scope: !594, inlinedAt: !900)
!903 = !DILocation(line: 1361, column: 10, scope: !594, inlinedAt: !900)
!904 = !DILocation(line: 411, column: 31, scope: !901, inlinedAt: !898)
!905 = !DILocation(line: 411, column: 58, scope: !901, inlinedAt: !898)
!906 = !DILocation(line: 411, column: 34, scope: !901, inlinedAt: !898)
!907 = !DILocation(line: 411, column: 65, scope: !901, inlinedAt: !898)
!908 = !DILocation(line: 411, column: 7, scope: !892, inlinedAt: !898)
!909 = !DILocation(line: 417, column: 25, scope: !892, inlinedAt: !898)
!910 = !DILocation(line: 417, column: 8, scope: !892, inlinedAt: !898)
!911 = !DILocation(line: 419, column: 15, scope: !912, inlinedAt: !898)
!912 = distinct !DILexicalBlock(scope: !892, file: !3, line: 419, column: 7)
!913 = !DILocation(line: 419, column: 7, scope: !912, inlinedAt: !898)
!914 = !DILocation(line: 419, column: 22, scope: !912, inlinedAt: !898)
!915 = !DILocation(line: 419, column: 7, scope: !892, inlinedAt: !898)
!916 = !DILocation(line: 0, scope: !784)
!917 = !DILocation(line: 532, column: 24, scope: !784)
!918 = !{!919, !555, i64 24}
!919 = !{!"obstack", !920, i64 0, !555, i64 8, !555, i64 16, !555, i64 24, !555, i64 32, !556, i64 40, !920, i64 48, !556, i64 56, !556, i64 64, !555, i64 72, !646, i64 80, !646, i64 80, !646, i64 80}
!920 = !{!"long", !556, i64 0}
!921 = !{!919, !555, i64 16}
!922 = !DILocation(line: 0, scope: !780)
!923 = !DILocation(line: 0, scope: !789)
!924 = !DILocation(line: 533, column: 21, scope: !925)
!925 = distinct !DILexicalBlock(scope: !789, file: !3, line: 533, column: 21)
!926 = !DILocation(line: 533, column: 21, scope: !789)
!927 = !{!919, !920, i64 48}
!928 = !DILocation(line: 537, column: 22, scope: !929)
!929 = distinct !DILexicalBlock(scope: !780, file: !3, line: 537, column: 15)
!930 = !DILocation(line: 547, column: 17, scope: !931)
!931 = distinct !DILexicalBlock(scope: !780, file: !3, line: 547, column: 15)
!932 = !DILocation(line: 547, column: 15, scope: !780)
!933 = !DILocation(line: 548, column: 13, scope: !931)
!934 = !DILocation(line: 549, column: 11, scope: !780)
!935 = !DILocation(line: 550, column: 17, scope: !936)
!936 = distinct !DILexicalBlock(scope: !780, file: !3, line: 550, column: 15)
!937 = !DILocation(line: 550, column: 15, scope: !780)
!938 = !DILocation(line: 551, column: 13, scope: !936)
!939 = !DILocation(line: 556, column: 1, scope: !765)
!940 = !DISubprogram(name: "bindtextdomain", scope: !634, file: !634, line: 86, type: !941, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !637)
!941 = !DISubroutineType(types: !942)
!942 = !{!40, !94, !94}
!943 = !DISubprogram(name: "textdomain", scope: !634, file: !634, line: 82, type: !757, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !637)
!944 = !DISubprogram(name: "atexit", scope: !756, file: !756, line: 602, type: !945, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !637)
!945 = !DISubroutineType(types: !946)
!946 = !{!38, !308}
!947 = !DISubprogram(name: "getopt_long", scope: !248, file: !248, line: 66, type: !948, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !637)
!948 = !DISubroutineType(types: !949)
!949 = !{!38, !38, !950, !94, !952, !253}
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!951 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!953 = !DISubprogram(name: "puts", scope: !282, file: !282, line: 661, type: !954, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !637)
!954 = !DISubroutineType(types: !955)
!955 = !{!38, !94}
!956 = !DILocation(line: 0, scope: !27)
!957 = !DILocation(line: 282, column: 3, scope: !27)
!958 = !DILocation(line: 282, column: 9, scope: !27)
!959 = !DILocation(line: 283, column: 3, scope: !27)
!960 = !DILocation(line: 283, column: 10, scope: !27)
!961 = !{!920, !920, i64 0}
!962 = !DILocation(line: 293, column: 10, scope: !27)
!963 = !DILocation(line: 294, column: 12, scope: !964)
!964 = distinct !DILexicalBlock(scope: !27, file: !3, line: 294, column: 7)
!965 = !DILocation(line: 294, column: 20, scope: !964)
!966 = !DILocation(line: 294, column: 23, scope: !964)
!967 = !DILocation(line: 294, column: 29, scope: !964)
!968 = !DILocation(line: 294, column: 7, scope: !27)
!969 = !DILocation(line: 295, column: 5, scope: !964)
!970 = !DILocation(line: 298, column: 15, scope: !27)
!971 = !DILocation(line: 299, column: 17, scope: !972)
!972 = distinct !DILexicalBlock(scope: !27, file: !3, line: 299, column: 7)
!973 = !DILocation(line: 299, column: 7, scope: !27)
!974 = !DILocation(line: 302, column: 3, scope: !27)
!975 = !DILocation(line: 309, column: 11, scope: !112)
!976 = !DILocation(line: 281, column: 15, scope: !27)
!977 = !DILocation(line: 307, column: 7, scope: !112)
!978 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !979, file: !980, line: 118, type: !768)
!979 = distinct !DISubprogram(name: "getline", scope: !980, file: !980, line: 118, type: !981, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !984)
!980 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!981 = !DISubroutineType(types: !982)
!982 = !{!983, !768, !494, !31}
!983 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !61, line: 194, baseType: !62)
!984 = !{!978, !985, !986}
!985 = !DILocalVariable(name: "__n", arg: 2, scope: !979, file: !980, line: 118, type: !494)
!986 = !DILocalVariable(name: "__stream", arg: 3, scope: !979, file: !980, line: 118, type: !31)
!987 = !DILocation(line: 0, scope: !979, inlinedAt: !988)
!988 = distinct !DILocation(line: 311, column: 15, scope: !989)
!989 = distinct !DILexicalBlock(scope: !990, file: !3, line: 311, column: 15)
!990 = distinct !DILexicalBlock(scope: !991, file: !3, line: 310, column: 9)
!991 = distinct !DILexicalBlock(scope: !112, file: !3, line: 309, column: 11)
!992 = !DILocation(line: 120, column: 10, scope: !979, inlinedAt: !988)
!993 = !DILocation(line: 311, column: 59, scope: !989)
!994 = !DILocation(line: 311, column: 15, scope: !990)
!995 = !DILocalVariable(name: "__stream", arg: 1, scope: !996, file: !980, line: 135, type: !31)
!996 = distinct !DISubprogram(name: "ferror_unlocked", scope: !980, file: !980, line: 135, type: !997, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !999)
!997 = !DISubroutineType(types: !998)
!998 = !{!38, !31}
!999 = !{!995}
!1000 = !DILocation(line: 0, scope: !996, inlinedAt: !1001)
!1001 = distinct !DILocation(line: 313, column: 19, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !1003, file: !3, line: 313, column: 19)
!1003 = distinct !DILexicalBlock(scope: !989, file: !3, line: 312, column: 13)
!1004 = !DILocation(line: 137, column: 10, scope: !996, inlinedAt: !1001)
!1005 = !{!1006, !646, i64 0}
!1006 = !{!"_IO_FILE", !646, i64 0, !555, i64 8, !555, i64 16, !555, i64 24, !555, i64 32, !555, i64 40, !555, i64 48, !555, i64 56, !555, i64 64, !555, i64 72, !555, i64 80, !555, i64 88, !555, i64 96, !555, i64 104, !646, i64 112, !646, i64 116, !920, i64 120, !680, i64 128, !556, i64 130, !556, i64 131, !555, i64 136, !920, i64 144, !555, i64 152, !555, i64 160, !555, i64 168, !555, i64 176, !920, i64 184, !646, i64 192, !556, i64 196}
!1007 = !DILocation(line: 313, column: 19, scope: !1002)
!1008 = !DILocation(line: 313, column: 19, scope: !1003)
!1009 = !DILocation(line: 315, column: 19, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !1002, file: !3, line: 314, column: 17)
!1011 = !DILocation(line: 317, column: 17, scope: !1010)
!1012 = !DILocation(line: 318, column: 21, scope: !1003)
!1013 = !DILocation(line: 318, column: 15, scope: !1003)
!1014 = !DILocation(line: 319, column: 15, scope: !1003)
!1015 = !DILocation(line: 321, column: 18, scope: !990)
!1016 = !DILocation(line: 322, column: 9, scope: !990)
!1017 = !DILocation(line: 325, column: 27, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !1019, file: !3, line: 325, column: 15)
!1019 = distinct !DILexicalBlock(scope: !991, file: !3, line: 324, column: 9)
!1020 = !DILocation(line: 325, column: 15, scope: !1019)
!1021 = !DILocation(line: 328, column: 26, scope: !1019)
!1022 = !DILocation(line: 328, column: 47, scope: !1019)
!1023 = !DILocation(line: 328, column: 23, scope: !1019)
!1024 = !DILocation(line: 0, scope: !991)
!1025 = !DILocalVariable(name: "line", arg: 1, scope: !1026, file: !3, line: 159, type: !94)
!1026 = distinct !DISubprogram(name: "parse_line", scope: !3, file: !3, line: 159, type: !1027, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1029)
!1027 = !DISubroutineType(types: !1028)
!1028 = !{null, !94, !768, !768}
!1029 = !{!1025, !1030, !1031, !1032, !1033, !1034}
!1030 = !DILocalVariable(name: "keyword", arg: 2, scope: !1026, file: !3, line: 159, type: !768)
!1031 = !DILocalVariable(name: "arg", arg: 3, scope: !1026, file: !3, line: 159, type: !768)
!1032 = !DILocalVariable(name: "p", scope: !1026, file: !3, line: 161, type: !94)
!1033 = !DILocalVariable(name: "keyword_start", scope: !1026, file: !3, line: 162, type: !94)
!1034 = !DILocalVariable(name: "arg_start", scope: !1026, file: !3, line: 163, type: !94)
!1035 = !DILocation(line: 0, scope: !1026, inlinedAt: !1036)
!1036 = distinct !DILocation(line: 331, column: 7, scope: !112)
!1037 = !DILocation(line: 168, column: 8, scope: !1038, inlinedAt: !1036)
!1038 = distinct !DILexicalBlock(scope: !1026, file: !3, line: 168, column: 3)
!1039 = !DILocation(line: 0, scope: !1038, inlinedAt: !1036)
!1040 = !DILocation(line: 168, column: 29, scope: !1041, inlinedAt: !1036)
!1041 = distinct !DILexicalBlock(scope: !1038, file: !3, line: 168, column: 3)
!1042 = !DILocalVariable(name: "c", arg: 1, scope: !1043, file: !1044, line: 300, type: !38)
!1043 = distinct !DISubprogram(name: "c_isspace", scope: !1044, file: !1044, line: 300, type: !1045, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1047)
!1044 = !DIFile(filename: "./lib/c-ctype.h", directory: "/src", checksumkind: CSK_MD5, checksum: "ae3bc10b98afd74391aea9e3c38adcb1")
!1045 = !DISubroutineType(types: !1046)
!1046 = !{!30, !38}
!1047 = !{!1042}
!1048 = !DILocation(line: 0, scope: !1043, inlinedAt: !1049)
!1049 = distinct !DILocation(line: 168, column: 18, scope: !1041, inlinedAt: !1036)
!1050 = !DILocation(line: 302, column: 3, scope: !1043, inlinedAt: !1049)
!1051 = !DILocation(line: 168, column: 34, scope: !1041, inlinedAt: !1036)
!1052 = !DILocation(line: 168, column: 3, scope: !1041, inlinedAt: !1036)
!1053 = distinct !{!1053, !1054, !1055, !611}
!1054 = !DILocation(line: 168, column: 3, scope: !1038, inlinedAt: !1036)
!1055 = !DILocation(line: 169, column: 5, scope: !1038, inlinedAt: !1036)
!1056 = !DILocation(line: 177, column: 22, scope: !1026, inlinedAt: !1036)
!1057 = !DILocation(line: 0, scope: !1043, inlinedAt: !1058)
!1058 = distinct !DILocation(line: 177, column: 11, scope: !1026, inlinedAt: !1036)
!1059 = !DILocation(line: 302, column: 3, scope: !1043, inlinedAt: !1058)
!1060 = !DILocation(line: 179, column: 7, scope: !1061, inlinedAt: !1036)
!1061 = distinct !DILexicalBlock(scope: !1026, file: !3, line: 178, column: 5)
!1062 = !DILocation(line: 177, column: 3, scope: !1026, inlinedAt: !1036)
!1063 = distinct !{!1063, !1062, !1064, !611}
!1064 = !DILocation(line: 180, column: 5, scope: !1026, inlinedAt: !1036)
!1065 = !DILocation(line: 182, column: 42, scope: !1026, inlinedAt: !1036)
!1066 = !DILocation(line: 182, column: 14, scope: !1026, inlinedAt: !1036)
!1067 = !DILocation(line: 183, column: 7, scope: !1068, inlinedAt: !1036)
!1068 = distinct !DILexicalBlock(scope: !1026, file: !3, line: 183, column: 7)
!1069 = !DILocation(line: 183, column: 11, scope: !1068, inlinedAt: !1036)
!1070 = !DILocation(line: 183, column: 7, scope: !1026, inlinedAt: !1036)
!1071 = !DILocation(line: 188, column: 7, scope: !1072, inlinedAt: !1036)
!1072 = distinct !DILexicalBlock(scope: !1026, file: !3, line: 187, column: 5)
!1073 = !DILocation(line: 190, column: 21, scope: !1026, inlinedAt: !1036)
!1074 = !DILocation(line: 0, scope: !1043, inlinedAt: !1075)
!1075 = distinct !DILocation(line: 190, column: 10, scope: !1026, inlinedAt: !1036)
!1076 = !DILocation(line: 302, column: 3, scope: !1043, inlinedAt: !1075)
!1077 = distinct !{!1077, !1078, !1079, !611}
!1078 = !DILocation(line: 186, column: 3, scope: !1026, inlinedAt: !1036)
!1079 = !DILocation(line: 190, column: 24, scope: !1026, inlinedAt: !1036)
!1080 = !DILocation(line: 197, column: 10, scope: !1026, inlinedAt: !1036)
!1081 = !DILocation(line: 197, column: 21, scope: !1026, inlinedAt: !1036)
!1082 = !DILocation(line: 200, column: 3, scope: !1083, inlinedAt: !1036)
!1083 = distinct !DILexicalBlock(scope: !1026, file: !3, line: 200, column: 3)
!1084 = !DILocation(line: 198, column: 5, scope: !1026, inlinedAt: !1036)
!1085 = !DILocation(line: 197, column: 3, scope: !1026, inlinedAt: !1036)
!1086 = distinct !{!1086, !1085, !1087, !611}
!1087 = !DILocation(line: 198, column: 7, scope: !1026, inlinedAt: !1036)
!1088 = !DILocation(line: 0, scope: !1083, inlinedAt: !1036)
!1089 = !DILocation(line: 200, column: 24, scope: !1090, inlinedAt: !1036)
!1090 = distinct !DILexicalBlock(scope: !1083, file: !3, line: 200, column: 3)
!1091 = !DILocation(line: 0, scope: !1043, inlinedAt: !1092)
!1092 = distinct !DILocation(line: 200, column: 13, scope: !1090, inlinedAt: !1036)
!1093 = !DILocation(line: 302, column: 3, scope: !1043, inlinedAt: !1092)
!1094 = distinct !{!1094, !1082, !1095, !611}
!1095 = !DILocation(line: 201, column: 5, scope: !1083, inlinedAt: !1036)
!1096 = !DILocation(line: 0, scope: !112)
!1097 = !DILocation(line: 338, column: 11, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !1099, file: !3, line: 337, column: 9)
!1099 = distinct !DILexicalBlock(scope: !112, file: !3, line: 336, column: 11)
!1100 = !DILocation(line: 342, column: 11, scope: !1098)
!1101 = distinct !{!1101, !974, !1102}
!1102 = !DILocation(line: 401, column: 5, scope: !27)
!1103 = !DILocation(line: 204, column: 34, scope: !1026, inlinedAt: !1036)
!1104 = !DILocation(line: 204, column: 10, scope: !1026, inlinedAt: !1036)
!1105 = !DILocation(line: 346, column: 11, scope: !124)
!1106 = !DILocation(line: 346, column: 40, scope: !124)
!1107 = !DILocation(line: 346, column: 11, scope: !112)
!1108 = !DILocation(line: 348, column: 21, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !1110, file: !3, line: 348, column: 15)
!1110 = distinct !DILexicalBlock(scope: !124, file: !3, line: 347, column: 9)
!1111 = !DILocation(line: 348, column: 15, scope: !1110)
!1112 = !DILocation(line: 349, column: 21, scope: !1109)
!1113 = !DILocation(line: 349, column: 44, scope: !1109)
!1114 = !DILocation(line: 349, column: 13, scope: !1109)
!1115 = !DILocation(line: 351, column: 16, scope: !123)
!1116 = !DILocation(line: 351, column: 50, scope: !123)
!1117 = !DILocation(line: 0, scope: !123)
!1118 = !DILocation(line: 351, column: 16, scope: !124)
!1119 = !DILocation(line: 353, column: 15, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !123, file: !3, line: 352, column: 9)
!1121 = !DILocation(line: 354, column: 21, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !1120, file: !3, line: 353, column: 15)
!1123 = !DILocation(line: 354, column: 49, scope: !1122)
!1124 = !DILocation(line: 354, column: 13, scope: !1122)
!1125 = !DILocation(line: 358, column: 15, scope: !122)
!1126 = !DILocation(line: 361, column: 21, scope: !121)
!1127 = !DILocation(line: 361, column: 15, scope: !122)
!1128 = !DILocation(line: 363, column: 19, scope: !119)
!1129 = !DILocation(line: 363, column: 19, scope: !120)
!1130 = !DILocation(line: 364, column: 17, scope: !119)
!1131 = !DILocation(line: 366, column: 17, scope: !118)
!1132 = !DILocation(line: 367, column: 24, scope: !117)
!1133 = !DILocation(line: 367, column: 56, scope: !117)
!1134 = !DILocation(line: 368, column: 24, scope: !117)
!1135 = !DILocation(line: 368, column: 27, scope: !117)
!1136 = !DILocation(line: 368, column: 57, scope: !117)
!1137 = !DILocation(line: 369, column: 24, scope: !117)
!1138 = !DILocation(line: 369, column: 27, scope: !117)
!1139 = !DILocation(line: 369, column: 60, scope: !117)
!1140 = !DILocation(line: 367, column: 24, scope: !118)
!1141 = !DILocation(line: 0, scope: !116)
!1142 = !DILocation(line: 377, column: 31, scope: !1143)
!1143 = distinct !DILexicalBlock(scope: !1144, file: !3, line: 377, column: 19)
!1144 = distinct !DILexicalBlock(scope: !116, file: !3, line: 377, column: 19)
!1145 = !DILocation(line: 378, column: 25, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1143, file: !3, line: 378, column: 25)
!1147 = !DILocation(line: 378, column: 62, scope: !1146)
!1148 = !DILocation(line: 378, column: 25, scope: !1143)
!1149 = !DILocation(line: 377, column: 55, scope: !1143)
!1150 = !DILocation(line: 377, column: 46, scope: !1143)
!1151 = !DILocation(line: 377, column: 19, scope: !1144)
!1152 = distinct !{!1152, !1151, !1153, !611}
!1153 = !DILocation(line: 379, column: 23, scope: !1144)
!1154 = !DILocation(line: 382, column: 38, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !116, file: !3, line: 381, column: 23)
!1156 = !DILocation(line: 382, column: 21, scope: !1155)
!1157 = !DILocation(line: 391, column: 24, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !112, file: !3, line: 391, column: 11)
!1159 = !DILocation(line: 393, column: 11, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1158, file: !3, line: 392, column: 9)
!1161 = !DILocation(line: 397, column: 9, scope: !1160)
!1162 = !DILocation(line: 399, column: 7, scope: !112)
!1163 = !DILocation(line: 404, column: 1, scope: !27)
!1164 = !DILocation(line: 403, column: 3, scope: !27)
!1165 = !DISubprogram(name: "fnmatch", scope: !1166, file: !1166, line: 56, type: !1167, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !637)
!1166 = !DIFile(filename: "/usr/include/fnmatch.h", directory: "", checksumkind: CSK_MD5, checksum: "78cf7a81a1368221bdf9e99a720bc0a5")
!1167 = !DISubroutineType(types: !1168)
!1168 = !{!38, !94, !94, !38}
!1169 = distinct !DISubprogram(name: "append_entry", scope: !3, file: !3, line: 252, type: !1170, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1172)
!1170 = !DISubroutineType(types: !1171)
!1171 = !{null, !41, !94, !94}
!1172 = !{!1173, !1174, !1175, !1176, !1180, !1183, !1186, !1189, !1191, !1194, !1196}
!1173 = !DILocalVariable(name: "prefix", arg: 1, scope: !1169, file: !3, line: 252, type: !41)
!1174 = !DILocalVariable(name: "item", arg: 2, scope: !1169, file: !3, line: 252, type: !94)
!1175 = !DILocalVariable(name: "arg", arg: 3, scope: !1169, file: !3, line: 252, type: !94)
!1176 = !DILocalVariable(name: "__o", scope: !1177, file: !3, line: 258, type: !790)
!1177 = distinct !DILexicalBlock(scope: !1178, file: !3, line: 258, column: 7)
!1178 = distinct !DILexicalBlock(scope: !1179, file: !3, line: 255, column: 5)
!1179 = distinct !DILexicalBlock(scope: !1169, file: !3, line: 254, column: 7)
!1180 = !DILocalVariable(name: "__o1", scope: !1181, file: !3, line: 258, type: !785)
!1181 = distinct !DILexicalBlock(scope: !1182, file: !3, line: 258, column: 7)
!1182 = distinct !DILexicalBlock(scope: !1177, file: !3, line: 258, column: 7)
!1183 = !DILocalVariable(name: "__o", scope: !1184, file: !3, line: 261, type: !790)
!1184 = distinct !DILexicalBlock(scope: !1185, file: !3, line: 261, column: 5)
!1185 = distinct !DILexicalBlock(scope: !1169, file: !3, line: 260, column: 7)
!1186 = !DILocalVariable(name: "__o1", scope: !1187, file: !3, line: 261, type: !785)
!1187 = distinct !DILexicalBlock(scope: !1188, file: !3, line: 261, column: 5)
!1188 = distinct !DILexicalBlock(scope: !1184, file: !3, line: 261, column: 5)
!1189 = !DILocalVariable(name: "__o", scope: !1190, file: !3, line: 263, type: !790)
!1190 = distinct !DILexicalBlock(scope: !1169, file: !3, line: 263, column: 3)
!1191 = !DILocalVariable(name: "__o1", scope: !1192, file: !3, line: 263, type: !785)
!1192 = distinct !DILexicalBlock(scope: !1193, file: !3, line: 263, column: 3)
!1193 = distinct !DILexicalBlock(scope: !1190, file: !3, line: 263, column: 3)
!1194 = !DILocalVariable(name: "__o", scope: !1195, file: !3, line: 267, type: !790)
!1195 = distinct !DILexicalBlock(scope: !1169, file: !3, line: 267, column: 3)
!1196 = !DILocalVariable(name: "__o1", scope: !1197, file: !3, line: 267, type: !785)
!1197 = distinct !DILexicalBlock(scope: !1198, file: !3, line: 267, column: 3)
!1198 = distinct !DILexicalBlock(scope: !1195, file: !3, line: 267, column: 3)
!1199 = !DILocation(line: 0, scope: !1169)
!1200 = !DILocation(line: 254, column: 7, scope: !1179)
!1201 = !DILocation(line: 254, column: 7, scope: !1169)
!1202 = !DILocation(line: 256, column: 7, scope: !1178)
!1203 = !DILocation(line: 257, column: 7, scope: !1178)
!1204 = !DILocation(line: 0, scope: !1177)
!1205 = !DILocation(line: 0, scope: !1181)
!1206 = !DILocation(line: 258, column: 7, scope: !1181)
!1207 = !{!919, !555, i64 32}
!1208 = !DILocation(line: 258, column: 7, scope: !1182)
!1209 = !DILocation(line: 258, column: 7, scope: !1177)
!1210 = !DILocation(line: 259, column: 5, scope: !1178)
!1211 = !DILocation(line: 260, column: 7, scope: !1185)
!1212 = !DILocation(line: 260, column: 7, scope: !1169)
!1213 = !DILocation(line: 0, scope: !1184)
!1214 = !DILocation(line: 0, scope: !1187)
!1215 = !DILocation(line: 261, column: 5, scope: !1187)
!1216 = !DILocation(line: 261, column: 5, scope: !1188)
!1217 = !DILocation(line: 261, column: 5, scope: !1184)
!1218 = !DILocation(line: 261, column: 5, scope: !1185)
!1219 = !DILocation(line: 262, column: 3, scope: !1169)
!1220 = !DILocation(line: 0, scope: !1190)
!1221 = !DILocation(line: 0, scope: !1192)
!1222 = !DILocation(line: 263, column: 3, scope: !1192)
!1223 = !DILocation(line: 263, column: 3, scope: !1193)
!1224 = !DILocation(line: 263, column: 3, scope: !1190)
!1225 = !DILocation(line: 264, column: 3, scope: !1169)
!1226 = !DILocation(line: 265, column: 7, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1169, file: !3, line: 265, column: 7)
!1228 = !DILocation(line: 265, column: 7, scope: !1169)
!1229 = !DILocation(line: 266, column: 5, scope: !1227)
!1230 = !DILocation(line: 0, scope: !1195)
!1231 = !DILocation(line: 0, scope: !1197)
!1232 = !DILocation(line: 267, column: 3, scope: !1197)
!1233 = !DILocation(line: 267, column: 3, scope: !1198)
!1234 = !DILocation(line: 267, column: 3, scope: !1195)
!1235 = !DILocation(line: 268, column: 1, scope: !1169)
!1236 = distinct !DISubprogram(name: "append_quoted", scope: !3, file: !3, line: 211, type: !570, scopeLine: 212, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1237)
!1237 = !{!1238, !1239, !1240, !1245, !1248, !1250, !1253, !1255, !1258, !1261, !1264, !1266}
!1238 = !DILocalVariable(name: "str", arg: 1, scope: !1236, file: !3, line: 211, type: !94)
!1239 = !DILocalVariable(name: "need_backslash", scope: !1236, file: !3, line: 213, type: !30)
!1240 = !DILocalVariable(name: "__o", scope: !1241, file: !3, line: 221, type: !790)
!1241 = distinct !DILexicalBlock(scope: !1242, file: !3, line: 221, column: 13)
!1242 = distinct !DILexicalBlock(scope: !1243, file: !3, line: 219, column: 11)
!1243 = distinct !DILexicalBlock(scope: !1244, file: !3, line: 217, column: 11)
!1244 = distinct !DILexicalBlock(scope: !1236, file: !3, line: 216, column: 5)
!1245 = !DILocalVariable(name: "__o1", scope: !1246, file: !3, line: 221, type: !785)
!1246 = distinct !DILexicalBlock(scope: !1247, file: !3, line: 221, column: 13)
!1247 = distinct !DILexicalBlock(scope: !1241, file: !3, line: 221, column: 13)
!1248 = !DILocalVariable(name: "__o", scope: !1249, file: !3, line: 222, type: !790)
!1249 = distinct !DILexicalBlock(scope: !1242, file: !3, line: 222, column: 13)
!1250 = !DILocalVariable(name: "__o1", scope: !1251, file: !3, line: 222, type: !785)
!1251 = distinct !DILexicalBlock(scope: !1252, file: !3, line: 222, column: 13)
!1252 = distinct !DILexicalBlock(scope: !1249, file: !3, line: 222, column: 13)
!1253 = !DILocalVariable(name: "__o", scope: !1254, file: !3, line: 223, type: !790)
!1254 = distinct !DILexicalBlock(scope: !1242, file: !3, line: 223, column: 13)
!1255 = !DILocalVariable(name: "__o1", scope: !1256, file: !3, line: 223, type: !785)
!1256 = distinct !DILexicalBlock(scope: !1257, file: !3, line: 223, column: 13)
!1257 = distinct !DILexicalBlock(scope: !1254, file: !3, line: 223, column: 13)
!1258 = !DILocalVariable(name: "__o", scope: !1259, file: !3, line: 235, type: !790)
!1259 = distinct !DILexicalBlock(scope: !1260, file: !3, line: 235, column: 15)
!1260 = distinct !DILexicalBlock(scope: !1242, file: !3, line: 234, column: 17)
!1261 = !DILocalVariable(name: "__o1", scope: !1262, file: !3, line: 235, type: !785)
!1262 = distinct !DILexicalBlock(scope: !1263, file: !3, line: 235, column: 15)
!1263 = distinct !DILexicalBlock(scope: !1259, file: !3, line: 235, column: 15)
!1264 = !DILocalVariable(name: "__o", scope: !1265, file: !3, line: 243, type: !790)
!1265 = distinct !DILexicalBlock(scope: !1244, file: !3, line: 243, column: 7)
!1266 = !DILocalVariable(name: "__o1", scope: !1267, file: !3, line: 243, type: !785)
!1267 = distinct !DILexicalBlock(scope: !1268, file: !3, line: 243, column: 7)
!1268 = distinct !DILexicalBlock(scope: !1265, file: !3, line: 243, column: 7)
!1269 = !DILocation(line: 0, scope: !1236)
!1270 = !DILocation(line: 215, column: 10, scope: !1236)
!1271 = !DILocation(line: 215, column: 15, scope: !1236)
!1272 = !DILocation(line: 215, column: 3, scope: !1236)
!1273 = !DILocation(line: 217, column: 13, scope: !1243)
!1274 = !DILocation(line: 217, column: 11, scope: !1244)
!1275 = !DILocation(line: 218, column: 9, scope: !1243)
!1276 = !DILocation(line: 0, scope: !1241)
!1277 = !DILocation(line: 0, scope: !1246)
!1278 = !DILocation(line: 221, column: 13, scope: !1246)
!1279 = !DILocation(line: 221, column: 13, scope: !1247)
!1280 = !DILocation(line: 221, column: 13, scope: !1241)
!1281 = !DILocation(line: 0, scope: !1249)
!1282 = !DILocation(line: 0, scope: !1251)
!1283 = !DILocation(line: 222, column: 13, scope: !1251)
!1284 = !DILocation(line: 222, column: 13, scope: !1252)
!1285 = !DILocation(line: 222, column: 13, scope: !1249)
!1286 = !DILocation(line: 0, scope: !1254)
!1287 = !DILocation(line: 0, scope: !1256)
!1288 = !DILocation(line: 223, column: 13, scope: !1256)
!1289 = !DILocation(line: 223, column: 13, scope: !1257)
!1290 = !DILocation(line: 223, column: 13, scope: !1254)
!1291 = !DILocation(line: 225, column: 13, scope: !1242)
!1292 = !DILocation(line: 229, column: 30, scope: !1242)
!1293 = !DILocation(line: 230, column: 13, scope: !1242)
!1294 = !DILocation(line: 234, column: 17, scope: !1242)
!1295 = !DILocation(line: 0, scope: !1259)
!1296 = !DILocation(line: 0, scope: !1262)
!1297 = !DILocation(line: 235, column: 15, scope: !1262)
!1298 = !DILocation(line: 235, column: 15, scope: !1263)
!1299 = !DILocation(line: 235, column: 15, scope: !1259)
!1300 = !DILocation(line: 235, column: 15, scope: !1260)
!1301 = !DILocation(line: 0, scope: !1265)
!1302 = !DILocation(line: 0, scope: !1267)
!1303 = !DILocation(line: 243, column: 7, scope: !1267)
!1304 = !DILocation(line: 243, column: 7, scope: !1268)
!1305 = !DILocation(line: 243, column: 7, scope: !1265)
!1306 = !DILocation(line: 244, column: 7, scope: !1244)
!1307 = distinct !{!1307, !1272, !1308, !611}
!1308 = !DILocation(line: 245, column: 5, scope: !1236)
!1309 = !DILocation(line: 246, column: 1, scope: !1236)
!1310 = distinct !DISubprogram(name: "last_component", scope: !464, file: !464, line: 29, type: !757, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !1311)
!1311 = !{!1312, !1313, !1314, !1315}
!1312 = !DILocalVariable(name: "name", arg: 1, scope: !1310, file: !464, line: 29, type: !94)
!1313 = !DILocalVariable(name: "base", scope: !1310, file: !464, line: 31, type: !94)
!1314 = !DILocalVariable(name: "last_was_slash", scope: !1310, file: !464, line: 35, type: !30)
!1315 = !DILocalVariable(name: "p", scope: !1316, file: !464, line: 36, type: !94)
!1316 = distinct !DILexicalBlock(scope: !1310, file: !464, line: 36, column: 3)
!1317 = !DILocation(line: 0, scope: !1310)
!1318 = !DILocation(line: 32, column: 3, scope: !1310)
!1319 = !DILocation(line: 32, column: 10, scope: !1310)
!1320 = !DILocation(line: 33, column: 9, scope: !1310)
!1321 = distinct !{!1321, !1318, !1320, !611}
!1322 = !DILocation(line: 36, column: 30, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1316, file: !464, line: 36, column: 3)
!1324 = !DILocation(line: 31, column: 15, scope: !1310)
!1325 = !DILocation(line: 0, scope: !1316)
!1326 = !DILocation(line: 36, column: 3, scope: !1316)
!1327 = !DILocation(line: 47, column: 3, scope: !1310)
!1328 = !DILocation(line: 40, column: 16, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1330, file: !464, line: 38, column: 11)
!1330 = distinct !DILexicalBlock(scope: !1323, file: !464, line: 37, column: 5)
!1331 = !DILocation(line: 36, column: 35, scope: !1323)
!1332 = !DILocation(line: 36, column: 3, scope: !1323)
!1333 = distinct !{!1333, !1326, !1334, !611}
!1334 = !DILocation(line: 45, column: 5, scope: !1316)
!1335 = distinct !DISubprogram(name: "base_len", scope: !464, file: !464, line: 51, type: !1336, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !1338)
!1336 = !DISubroutineType(types: !1337)
!1337 = !{!86, !94}
!1338 = !{!1339, !1340, !1341}
!1339 = !DILocalVariable(name: "name", arg: 1, scope: !1335, file: !464, line: 51, type: !94)
!1340 = !DILocalVariable(name: "len", scope: !1335, file: !464, line: 53, type: !86)
!1341 = !DILocalVariable(name: "prefix_len", scope: !1335, file: !464, line: 61, type: !86)
!1342 = !DILocation(line: 0, scope: !1335)
!1343 = !DILocation(line: 54, column: 14, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !1335, file: !464, line: 54, column: 3)
!1345 = !DILocation(line: 54, column: 8, scope: !1344)
!1346 = !DILocation(line: 0, scope: !1344)
!1347 = !DILocation(line: 54, column: 32, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !1344, file: !464, line: 54, column: 3)
!1349 = !DILocation(line: 54, column: 38, scope: !1348)
!1350 = !DILocation(line: 54, column: 41, scope: !1348)
!1351 = !DILocation(line: 54, column: 3, scope: !1344)
!1352 = distinct !{!1352, !1351, !1353, !611}
!1353 = !DILocation(line: 55, column: 5, scope: !1344)
!1354 = !DILocation(line: 66, column: 3, scope: !1335)
!1355 = distinct !DISubprogram(name: "c_strcasecmp", scope: !466, file: !466, line: 27, type: !1356, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !1358)
!1356 = !DISubroutineType(types: !1357)
!1357 = !{!38, !94, !94}
!1358 = !{!1359, !1360, !1361, !1362, !1363, !1367}
!1359 = !DILocalVariable(name: "s1", arg: 1, scope: !1355, file: !466, line: 27, type: !94)
!1360 = !DILocalVariable(name: "s2", arg: 2, scope: !1355, file: !466, line: 27, type: !94)
!1361 = !DILocalVariable(name: "p1", scope: !1355, file: !466, line: 29, type: !468)
!1362 = !DILocalVariable(name: "p2", scope: !1355, file: !466, line: 30, type: !468)
!1363 = !DILocalVariable(name: "c1", scope: !1364, file: !466, line: 37, type: !145)
!1364 = distinct !DILexicalBlock(scope: !1365, file: !466, line: 36, column: 5)
!1365 = distinct !DILexicalBlock(scope: !1366, file: !466, line: 35, column: 3)
!1366 = distinct !DILexicalBlock(scope: !1355, file: !466, line: 35, column: 3)
!1367 = !DILocalVariable(name: "c2", scope: !1364, file: !466, line: 38, type: !145)
!1368 = !DILocation(line: 0, scope: !1355)
!1369 = !DILocation(line: 32, column: 10, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1355, file: !466, line: 32, column: 7)
!1371 = !DILocation(line: 32, column: 7, scope: !1355)
!1372 = !DILocation(line: 37, column: 37, scope: !1364)
!1373 = !DILocalVariable(name: "c", arg: 1, scope: !1374, file: !1044, line: 337, type: !38)
!1374 = distinct !DISubprogram(name: "c_tolower", scope: !1044, file: !1044, line: 337, type: !1375, scopeLine: 338, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !1377)
!1375 = !DISubroutineType(types: !1376)
!1376 = !{!38, !38}
!1377 = !{!1373}
!1378 = !DILocation(line: 0, scope: !1374, inlinedAt: !1379)
!1379 = distinct !DILocation(line: 37, column: 26, scope: !1364)
!1380 = !DILocation(line: 339, column: 3, scope: !1374, inlinedAt: !1379)
!1381 = !DILocation(line: 0, scope: !1364)
!1382 = !DILocation(line: 38, column: 37, scope: !1364)
!1383 = !DILocation(line: 0, scope: !1374, inlinedAt: !1384)
!1384 = distinct !DILocation(line: 38, column: 26, scope: !1364)
!1385 = !DILocation(line: 339, column: 3, scope: !1374, inlinedAt: !1384)
!1386 = !DILocation(line: 40, column: 11, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !1364, file: !466, line: 40, column: 11)
!1388 = !DILocation(line: 40, column: 14, scope: !1387)
!1389 = !DILocation(line: 40, column: 22, scope: !1387)
!1390 = !DILocation(line: 43, column: 23, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1392, file: !466, line: 42, column: 15)
!1392 = distinct !DILexicalBlock(scope: !1387, file: !466, line: 41, column: 9)
!1393 = !DILocation(line: 35, column: 13, scope: !1365)
!1394 = !DILocation(line: 35, column: 19, scope: !1365)
!1395 = distinct !{!1395, !1396, !1397}
!1396 = !DILocation(line: 35, column: 3, scope: !1366)
!1397 = !DILocation(line: 50, column: 5, scope: !1366)
!1398 = !DILocation(line: 51, column: 1, scope: !1355)
!1399 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !266, file: !266, line: 50, type: !570, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !265, retainedNodes: !1400)
!1400 = !{!1401}
!1401 = !DILocalVariable(name: "file", arg: 1, scope: !1399, file: !266, line: 50, type: !94)
!1402 = !DILocation(line: 0, scope: !1399)
!1403 = !DILocation(line: 52, column: 13, scope: !1399)
!1404 = !DILocation(line: 53, column: 1, scope: !1399)
!1405 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !266, file: !266, line: 87, type: !1406, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !265, retainedNodes: !1408)
!1406 = !DISubroutineType(types: !1407)
!1407 = !{null, !30}
!1408 = !{!1409}
!1409 = !DILocalVariable(name: "ignore", arg: 1, scope: !1405, file: !266, line: 87, type: !30)
!1410 = !DILocation(line: 0, scope: !1405)
!1411 = !DILocation(line: 89, column: 16, scope: !1405)
!1412 = !{!1413, !1413, i64 0}
!1413 = !{!"_Bool", !556, i64 0}
!1414 = !DILocation(line: 90, column: 1, scope: !1405)
!1415 = distinct !DISubprogram(name: "close_stdout", scope: !266, file: !266, line: 116, type: !309, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !265, retainedNodes: !1416)
!1416 = !{!1417}
!1417 = !DILocalVariable(name: "write_error", scope: !1418, file: !266, line: 121, type: !94)
!1418 = distinct !DILexicalBlock(scope: !1419, file: !266, line: 120, column: 5)
!1419 = distinct !DILexicalBlock(scope: !1415, file: !266, line: 118, column: 7)
!1420 = !DILocation(line: 118, column: 21, scope: !1419)
!1421 = !DILocation(line: 118, column: 7, scope: !1419)
!1422 = !DILocation(line: 118, column: 29, scope: !1419)
!1423 = !DILocation(line: 119, column: 7, scope: !1419)
!1424 = !DILocation(line: 119, column: 12, scope: !1419)
!1425 = !{i8 0, i8 2}
!1426 = !DILocation(line: 119, column: 25, scope: !1419)
!1427 = !DILocation(line: 119, column: 28, scope: !1419)
!1428 = !DILocation(line: 119, column: 34, scope: !1419)
!1429 = !DILocation(line: 118, column: 7, scope: !1415)
!1430 = !DILocation(line: 121, column: 33, scope: !1418)
!1431 = !DILocation(line: 0, scope: !1418)
!1432 = !DILocation(line: 122, column: 11, scope: !1433)
!1433 = distinct !DILexicalBlock(scope: !1418, file: !266, line: 122, column: 11)
!1434 = !DILocation(line: 0, scope: !1433)
!1435 = !DILocation(line: 122, column: 11, scope: !1418)
!1436 = !DILocation(line: 123, column: 9, scope: !1433)
!1437 = !DILocation(line: 126, column: 9, scope: !1433)
!1438 = !DILocation(line: 128, column: 14, scope: !1418)
!1439 = !DILocation(line: 128, column: 7, scope: !1418)
!1440 = !DILocation(line: 133, column: 42, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !1415, file: !266, line: 133, column: 7)
!1442 = !DILocation(line: 133, column: 28, scope: !1441)
!1443 = !DILocation(line: 133, column: 50, scope: !1441)
!1444 = !DILocation(line: 133, column: 7, scope: !1415)
!1445 = !DILocation(line: 134, column: 12, scope: !1441)
!1446 = !DILocation(line: 134, column: 5, scope: !1441)
!1447 = !DILocation(line: 135, column: 1, scope: !1415)
!1448 = distinct !DISubprogram(name: "verror", scope: !273, file: !273, line: 251, type: !1449, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !1451)
!1449 = !DISubroutineType(types: !1450)
!1450 = !{null, !38, !38, !94, !281}
!1451 = !{!1452, !1453, !1454, !1455}
!1452 = !DILocalVariable(name: "status", arg: 1, scope: !1448, file: !273, line: 251, type: !38)
!1453 = !DILocalVariable(name: "errnum", arg: 2, scope: !1448, file: !273, line: 251, type: !38)
!1454 = !DILocalVariable(name: "message", arg: 3, scope: !1448, file: !273, line: 251, type: !94)
!1455 = !DILocalVariable(name: "args", arg: 4, scope: !1448, file: !273, line: 251, type: !281)
!1456 = !DILocation(line: 0, scope: !1448)
!1457 = !DILocation(line: 251, column: 1, scope: !1448)
!1458 = !DILocation(line: 261, column: 3, scope: !1448)
!1459 = !DILocation(line: 265, column: 7, scope: !1460)
!1460 = distinct !DILexicalBlock(scope: !1448, file: !273, line: 265, column: 7)
!1461 = !DILocation(line: 265, column: 7, scope: !1448)
!1462 = !DILocation(line: 266, column: 5, scope: !1460)
!1463 = !DILocation(line: 272, column: 7, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !1460, file: !273, line: 268, column: 5)
!1465 = !DILocation(line: 276, column: 3, scope: !1448)
!1466 = !{i64 0, i64 8, !554, i64 8, i64 8, !554, i64 16, i64 8, !554, i64 24, i64 4, !645, i64 28, i64 4, !645}
!1467 = !DILocation(line: 282, column: 1, scope: !1448)
!1468 = distinct !DISubprogram(name: "flush_stdout", scope: !273, file: !273, line: 163, type: !309, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !1469)
!1469 = !{!1470}
!1470 = !DILocalVariable(name: "stdout_fd", scope: !1468, file: !273, line: 166, type: !38)
!1471 = !DILocation(line: 0, scope: !1468)
!1472 = !DILocalVariable(name: "fd", arg: 1, scope: !1473, file: !273, line: 145, type: !38)
!1473 = distinct !DISubprogram(name: "is_open", scope: !273, file: !273, line: 145, type: !1375, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !1474)
!1474 = !{!1472}
!1475 = !DILocation(line: 0, scope: !1473, inlinedAt: !1476)
!1476 = distinct !DILocation(line: 182, column: 25, scope: !1477)
!1477 = distinct !DILexicalBlock(scope: !1468, file: !273, line: 182, column: 7)
!1478 = !DILocation(line: 157, column: 15, scope: !1473, inlinedAt: !1476)
!1479 = !DILocation(line: 182, column: 25, scope: !1477)
!1480 = !DILocation(line: 182, column: 7, scope: !1468)
!1481 = !DILocation(line: 184, column: 5, scope: !1477)
!1482 = !DILocation(line: 185, column: 1, scope: !1468)
!1483 = distinct !DISubprogram(name: "error_tail", scope: !273, file: !273, line: 219, type: !1449, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !1484)
!1484 = !{!1485, !1486, !1487, !1488}
!1485 = !DILocalVariable(name: "status", arg: 1, scope: !1483, file: !273, line: 219, type: !38)
!1486 = !DILocalVariable(name: "errnum", arg: 2, scope: !1483, file: !273, line: 219, type: !38)
!1487 = !DILocalVariable(name: "message", arg: 3, scope: !1483, file: !273, line: 219, type: !94)
!1488 = !DILocalVariable(name: "args", arg: 4, scope: !1483, file: !273, line: 219, type: !281)
!1489 = !DILocation(line: 0, scope: !1483)
!1490 = !DILocation(line: 219, column: 1, scope: !1483)
!1491 = !DILocation(line: 229, column: 13, scope: !1483)
!1492 = !DILocation(line: 229, column: 3, scope: !1483)
!1493 = !DILocalVariable(name: "__stream", arg: 1, scope: !1494, file: !1495, line: 132, type: !1498)
!1494 = distinct !DISubprogram(name: "vfprintf", scope: !1495, file: !1495, line: 132, type: !1496, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !1533)
!1495 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!1496 = !DISubroutineType(types: !1497)
!1497 = !{!38, !1498, !641, !283}
!1498 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1499)
!1499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1500, size: 64)
!1500 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !33, line: 7, baseType: !1501)
!1501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !35, line: 49, size: 1728, elements: !1502)
!1502 = !{!1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1501, file: !35, line: 51, baseType: !38, size: 32)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1501, file: !35, line: 54, baseType: !40, size: 64, offset: 64)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1501, file: !35, line: 55, baseType: !40, size: 64, offset: 128)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1501, file: !35, line: 56, baseType: !40, size: 64, offset: 192)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1501, file: !35, line: 57, baseType: !40, size: 64, offset: 256)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1501, file: !35, line: 58, baseType: !40, size: 64, offset: 320)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1501, file: !35, line: 59, baseType: !40, size: 64, offset: 384)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1501, file: !35, line: 60, baseType: !40, size: 64, offset: 448)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1501, file: !35, line: 61, baseType: !40, size: 64, offset: 512)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1501, file: !35, line: 64, baseType: !40, size: 64, offset: 576)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1501, file: !35, line: 65, baseType: !40, size: 64, offset: 640)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1501, file: !35, line: 66, baseType: !40, size: 64, offset: 704)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1501, file: !35, line: 68, baseType: !53, size: 64, offset: 768)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1501, file: !35, line: 70, baseType: !1517, size: 64, offset: 832)
!1517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1501, size: 64)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1501, file: !35, line: 72, baseType: !38, size: 32, offset: 896)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1501, file: !35, line: 73, baseType: !38, size: 32, offset: 928)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1501, file: !35, line: 74, baseType: !60, size: 64, offset: 960)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1501, file: !35, line: 77, baseType: !64, size: 16, offset: 1024)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1501, file: !35, line: 78, baseType: !66, size: 8, offset: 1040)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1501, file: !35, line: 79, baseType: !68, size: 8, offset: 1048)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1501, file: !35, line: 81, baseType: !72, size: 64, offset: 1088)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1501, file: !35, line: 89, baseType: !75, size: 64, offset: 1152)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1501, file: !35, line: 91, baseType: !77, size: 64, offset: 1216)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1501, file: !35, line: 92, baseType: !80, size: 64, offset: 1280)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1501, file: !35, line: 93, baseType: !1517, size: 64, offset: 1344)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1501, file: !35, line: 94, baseType: !84, size: 64, offset: 1408)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1501, file: !35, line: 95, baseType: !86, size: 64, offset: 1472)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1501, file: !35, line: 96, baseType: !38, size: 32, offset: 1536)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1501, file: !35, line: 98, baseType: !91, size: 160, offset: 1568)
!1533 = !{!1493, !1534, !1535}
!1534 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1494, file: !1495, line: 133, type: !641)
!1535 = !DILocalVariable(name: "__ap", arg: 3, scope: !1494, file: !1495, line: 133, type: !283)
!1536 = !DILocation(line: 0, scope: !1494, inlinedAt: !1537)
!1537 = distinct !DILocation(line: 229, column: 3, scope: !1483)
!1538 = !DILocation(line: 135, column: 10, scope: !1494, inlinedAt: !1537)
!1539 = !{!1540, !1542}
!1540 = distinct !{!1540, !1541, !"vfprintf.inline: argument 0"}
!1541 = distinct !{!1541, !"vfprintf.inline"}
!1542 = distinct !{!1542, !1541, !"vfprintf.inline: argument 1"}
!1543 = !DILocation(line: 232, column: 3, scope: !1483)
!1544 = !DILocation(line: 233, column: 7, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !1483, file: !273, line: 233, column: 7)
!1546 = !DILocation(line: 233, column: 7, scope: !1483)
!1547 = !DILocalVariable(name: "errnum", arg: 1, scope: !1548, file: !273, line: 188, type: !38)
!1548 = distinct !DISubprogram(name: "print_errno_message", scope: !273, file: !273, line: 188, type: !544, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !1549)
!1549 = !{!1547, !1550, !1551}
!1550 = !DILocalVariable(name: "s", scope: !1548, file: !273, line: 190, type: !94)
!1551 = !DILocalVariable(name: "errbuf", scope: !1548, file: !273, line: 193, type: !1552)
!1552 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 8192, elements: !1553)
!1553 = !{!1554}
!1554 = !DISubrange(count: 1024)
!1555 = !DILocation(line: 0, scope: !1548, inlinedAt: !1556)
!1556 = distinct !DILocation(line: 234, column: 5, scope: !1545)
!1557 = !DILocation(line: 193, column: 3, scope: !1548, inlinedAt: !1556)
!1558 = !DILocation(line: 193, column: 8, scope: !1548, inlinedAt: !1556)
!1559 = !DILocation(line: 195, column: 7, scope: !1548, inlinedAt: !1556)
!1560 = !DILocation(line: 207, column: 9, scope: !1561, inlinedAt: !1556)
!1561 = distinct !DILexicalBlock(scope: !1548, file: !273, line: 207, column: 7)
!1562 = !DILocation(line: 207, column: 7, scope: !1548, inlinedAt: !1556)
!1563 = !DILocation(line: 208, column: 9, scope: !1561, inlinedAt: !1556)
!1564 = !DILocation(line: 208, column: 5, scope: !1561, inlinedAt: !1556)
!1565 = !DILocation(line: 214, column: 3, scope: !1548, inlinedAt: !1556)
!1566 = !DILocation(line: 216, column: 1, scope: !1548, inlinedAt: !1556)
!1567 = !DILocation(line: 234, column: 5, scope: !1545)
!1568 = !DILocation(line: 238, column: 3, scope: !1483)
!1569 = !DILocalVariable(name: "__c", arg: 1, scope: !1570, file: !980, line: 101, type: !38)
!1570 = distinct !DISubprogram(name: "putc_unlocked", scope: !980, file: !980, line: 101, type: !1571, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !1573)
!1571 = !DISubroutineType(types: !1572)
!1572 = !{!38, !38, !1499}
!1573 = !{!1569, !1574}
!1574 = !DILocalVariable(name: "__stream", arg: 2, scope: !1570, file: !980, line: 101, type: !1499)
!1575 = !DILocation(line: 0, scope: !1570, inlinedAt: !1576)
!1576 = distinct !DILocation(line: 238, column: 3, scope: !1483)
!1577 = !DILocation(line: 103, column: 10, scope: !1570, inlinedAt: !1576)
!1578 = !{!1006, !555, i64 40}
!1579 = !{!1006, !555, i64 48}
!1580 = !{!"branch_weights", i32 2000, i32 1}
!1581 = !DILocation(line: 240, column: 3, scope: !1483)
!1582 = !DILocation(line: 241, column: 7, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1483, file: !273, line: 241, column: 7)
!1584 = !DILocation(line: 241, column: 7, scope: !1483)
!1585 = !DILocation(line: 242, column: 5, scope: !1583)
!1586 = !DILocation(line: 243, column: 1, scope: !1483)
!1587 = !DISubprogram(name: "strerror_r", scope: !1588, file: !1588, line: 444, type: !1589, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !637)
!1588 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1589 = !DISubroutineType(types: !1590)
!1590 = !{!40, !38, !40, !86}
!1591 = !DISubprogram(name: "fflush_unlocked", scope: !282, file: !282, line: 239, type: !1592, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !637)
!1592 = !DISubroutineType(types: !1593)
!1593 = !{!38, !1499}
!1594 = !DISubprogram(name: "fcntl", scope: !1595, file: !1595, line: 149, type: !1596, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !637)
!1595 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1596 = !DISubroutineType(types: !1597)
!1597 = !{!38, !38, !38, null}
!1598 = distinct !DISubprogram(name: "error", scope: !273, file: !273, line: 285, type: !1599, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !1601)
!1599 = !DISubroutineType(types: !1600)
!1600 = !{null, !38, !38, !94, null}
!1601 = !{!1602, !1603, !1604, !1605}
!1602 = !DILocalVariable(name: "status", arg: 1, scope: !1598, file: !273, line: 285, type: !38)
!1603 = !DILocalVariable(name: "errnum", arg: 2, scope: !1598, file: !273, line: 285, type: !38)
!1604 = !DILocalVariable(name: "message", arg: 3, scope: !1598, file: !273, line: 285, type: !94)
!1605 = !DILocalVariable(name: "ap", scope: !1598, file: !273, line: 287, type: !281)
!1606 = !DILocation(line: 0, scope: !1598)
!1607 = !DILocation(line: 287, column: 3, scope: !1598)
!1608 = !DILocation(line: 287, column: 11, scope: !1598)
!1609 = !DILocation(line: 288, column: 3, scope: !1598)
!1610 = !DILocation(line: 289, column: 3, scope: !1598)
!1611 = !DILocation(line: 290, column: 3, scope: !1598)
!1612 = !DILocation(line: 291, column: 1, scope: !1598)
!1613 = !DILocation(line: 0, scope: !278)
!1614 = !DILocation(line: 298, column: 1, scope: !278)
!1615 = !DILocation(line: 302, column: 7, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !278, file: !273, line: 302, column: 7)
!1617 = !DILocation(line: 302, column: 7, scope: !278)
!1618 = !DILocation(line: 307, column: 11, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !1620, file: !273, line: 307, column: 11)
!1620 = distinct !DILexicalBlock(scope: !1616, file: !273, line: 303, column: 5)
!1621 = !DILocation(line: 307, column: 27, scope: !1619)
!1622 = !DILocation(line: 308, column: 11, scope: !1619)
!1623 = !DILocation(line: 308, column: 28, scope: !1619)
!1624 = !DILocation(line: 308, column: 25, scope: !1619)
!1625 = !DILocation(line: 309, column: 15, scope: !1619)
!1626 = !DILocation(line: 309, column: 33, scope: !1619)
!1627 = !DILocation(line: 310, column: 19, scope: !1619)
!1628 = !DILocation(line: 311, column: 22, scope: !1619)
!1629 = !DILocation(line: 311, column: 56, scope: !1619)
!1630 = !DILocation(line: 307, column: 11, scope: !1620)
!1631 = !DILocation(line: 316, column: 21, scope: !1620)
!1632 = !DILocation(line: 317, column: 23, scope: !1620)
!1633 = !DILocation(line: 318, column: 5, scope: !1620)
!1634 = !DILocation(line: 327, column: 3, scope: !278)
!1635 = !DILocation(line: 331, column: 7, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !278, file: !273, line: 331, column: 7)
!1637 = !DILocation(line: 331, column: 7, scope: !278)
!1638 = !DILocation(line: 332, column: 5, scope: !1636)
!1639 = !DILocation(line: 338, column: 7, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1636, file: !273, line: 334, column: 5)
!1641 = !DILocation(line: 346, column: 3, scope: !278)
!1642 = !DILocation(line: 350, column: 3, scope: !278)
!1643 = !DILocation(line: 356, column: 1, scope: !278)
!1644 = distinct !DISubprogram(name: "error_at_line", scope: !273, file: !273, line: 359, type: !1645, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !1647)
!1645 = !DISubroutineType(types: !1646)
!1646 = !{null, !38, !38, !94, !6, !94, null}
!1647 = !{!1648, !1649, !1650, !1651, !1652, !1653}
!1648 = !DILocalVariable(name: "status", arg: 1, scope: !1644, file: !273, line: 359, type: !38)
!1649 = !DILocalVariable(name: "errnum", arg: 2, scope: !1644, file: !273, line: 359, type: !38)
!1650 = !DILocalVariable(name: "file_name", arg: 3, scope: !1644, file: !273, line: 359, type: !94)
!1651 = !DILocalVariable(name: "line_number", arg: 4, scope: !1644, file: !273, line: 360, type: !6)
!1652 = !DILocalVariable(name: "message", arg: 5, scope: !1644, file: !273, line: 360, type: !94)
!1653 = !DILocalVariable(name: "ap", scope: !1644, file: !273, line: 362, type: !281)
!1654 = !DILocation(line: 0, scope: !1644)
!1655 = !DILocation(line: 362, column: 3, scope: !1644)
!1656 = !DILocation(line: 362, column: 11, scope: !1644)
!1657 = !DILocation(line: 363, column: 3, scope: !1644)
!1658 = !DILocation(line: 364, column: 3, scope: !1644)
!1659 = !DILocation(line: 366, column: 3, scope: !1644)
!1660 = !DILocation(line: 367, column: 1, scope: !1644)
!1661 = distinct !DISubprogram(name: "rpl_fclose", scope: !471, file: !471, line: 58, type: !1662, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !1698)
!1662 = !DISubroutineType(types: !1663)
!1663 = !{!38, !1664}
!1664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1665, size: 64)
!1665 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !33, line: 7, baseType: !1666)
!1666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !35, line: 49, size: 1728, elements: !1667)
!1667 = !{!1668, !1669, !1670, !1671, !1672, !1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1683, !1684, !1685, !1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697}
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1666, file: !35, line: 51, baseType: !38, size: 32)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1666, file: !35, line: 54, baseType: !40, size: 64, offset: 64)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1666, file: !35, line: 55, baseType: !40, size: 64, offset: 128)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1666, file: !35, line: 56, baseType: !40, size: 64, offset: 192)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1666, file: !35, line: 57, baseType: !40, size: 64, offset: 256)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1666, file: !35, line: 58, baseType: !40, size: 64, offset: 320)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1666, file: !35, line: 59, baseType: !40, size: 64, offset: 384)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1666, file: !35, line: 60, baseType: !40, size: 64, offset: 448)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1666, file: !35, line: 61, baseType: !40, size: 64, offset: 512)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1666, file: !35, line: 64, baseType: !40, size: 64, offset: 576)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1666, file: !35, line: 65, baseType: !40, size: 64, offset: 640)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1666, file: !35, line: 66, baseType: !40, size: 64, offset: 704)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1666, file: !35, line: 68, baseType: !53, size: 64, offset: 768)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1666, file: !35, line: 70, baseType: !1682, size: 64, offset: 832)
!1682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1666, size: 64)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1666, file: !35, line: 72, baseType: !38, size: 32, offset: 896)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1666, file: !35, line: 73, baseType: !38, size: 32, offset: 928)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1666, file: !35, line: 74, baseType: !60, size: 64, offset: 960)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1666, file: !35, line: 77, baseType: !64, size: 16, offset: 1024)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1666, file: !35, line: 78, baseType: !66, size: 8, offset: 1040)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1666, file: !35, line: 79, baseType: !68, size: 8, offset: 1048)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1666, file: !35, line: 81, baseType: !72, size: 64, offset: 1088)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1666, file: !35, line: 89, baseType: !75, size: 64, offset: 1152)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1666, file: !35, line: 91, baseType: !77, size: 64, offset: 1216)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1666, file: !35, line: 92, baseType: !80, size: 64, offset: 1280)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1666, file: !35, line: 93, baseType: !1682, size: 64, offset: 1344)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1666, file: !35, line: 94, baseType: !84, size: 64, offset: 1408)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1666, file: !35, line: 95, baseType: !86, size: 64, offset: 1472)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1666, file: !35, line: 96, baseType: !38, size: 32, offset: 1536)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1666, file: !35, line: 98, baseType: !91, size: 160, offset: 1568)
!1698 = !{!1699, !1700, !1701, !1702}
!1699 = !DILocalVariable(name: "fp", arg: 1, scope: !1661, file: !471, line: 58, type: !1664)
!1700 = !DILocalVariable(name: "saved_errno", scope: !1661, file: !471, line: 60, type: !38)
!1701 = !DILocalVariable(name: "fd", scope: !1661, file: !471, line: 63, type: !38)
!1702 = !DILocalVariable(name: "result", scope: !1661, file: !471, line: 74, type: !38)
!1703 = !DILocation(line: 0, scope: !1661)
!1704 = !DILocation(line: 63, column: 12, scope: !1661)
!1705 = !DILocation(line: 64, column: 10, scope: !1706)
!1706 = distinct !DILexicalBlock(scope: !1661, file: !471, line: 64, column: 7)
!1707 = !DILocation(line: 64, column: 7, scope: !1661)
!1708 = !DILocation(line: 65, column: 12, scope: !1706)
!1709 = !DILocation(line: 65, column: 5, scope: !1706)
!1710 = !DILocation(line: 70, column: 9, scope: !1711)
!1711 = distinct !DILexicalBlock(scope: !1661, file: !471, line: 70, column: 7)
!1712 = !DILocation(line: 70, column: 23, scope: !1711)
!1713 = !DILocation(line: 70, column: 33, scope: !1711)
!1714 = !DILocation(line: 70, column: 26, scope: !1711)
!1715 = !DILocation(line: 70, column: 59, scope: !1711)
!1716 = !DILocation(line: 71, column: 7, scope: !1711)
!1717 = !DILocation(line: 71, column: 10, scope: !1711)
!1718 = !DILocation(line: 70, column: 7, scope: !1661)
!1719 = !DILocation(line: 100, column: 12, scope: !1661)
!1720 = !DILocation(line: 105, column: 7, scope: !1661)
!1721 = !DILocation(line: 72, column: 19, scope: !1711)
!1722 = !DILocation(line: 105, column: 19, scope: !1723)
!1723 = distinct !DILexicalBlock(scope: !1661, file: !471, line: 105, column: 7)
!1724 = !DILocation(line: 107, column: 13, scope: !1725)
!1725 = distinct !DILexicalBlock(scope: !1723, file: !471, line: 106, column: 5)
!1726 = !DILocation(line: 109, column: 5, scope: !1725)
!1727 = !DILocation(line: 112, column: 1, scope: !1661)
!1728 = !DISubprogram(name: "fileno", scope: !282, file: !282, line: 809, type: !1662, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !637)
!1729 = !DISubprogram(name: "fclose", scope: !282, file: !282, line: 178, type: !1662, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !637)
!1730 = !DISubprogram(name: "lseek", scope: !1731, file: !1731, line: 339, type: !1732, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !637)
!1731 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1732 = !DISubroutineType(types: !1733)
!1733 = !{!60, !38, !60, !38}
!1734 = distinct !DISubprogram(name: "rpl_fflush", scope: !473, file: !473, line: 130, type: !1735, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !1771)
!1735 = !DISubroutineType(types: !1736)
!1736 = !{!38, !1737}
!1737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1738, size: 64)
!1738 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !33, line: 7, baseType: !1739)
!1739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !35, line: 49, size: 1728, elements: !1740)
!1740 = !{!1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1768, !1769, !1770}
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1739, file: !35, line: 51, baseType: !38, size: 32)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1739, file: !35, line: 54, baseType: !40, size: 64, offset: 64)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1739, file: !35, line: 55, baseType: !40, size: 64, offset: 128)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1739, file: !35, line: 56, baseType: !40, size: 64, offset: 192)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1739, file: !35, line: 57, baseType: !40, size: 64, offset: 256)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1739, file: !35, line: 58, baseType: !40, size: 64, offset: 320)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1739, file: !35, line: 59, baseType: !40, size: 64, offset: 384)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1739, file: !35, line: 60, baseType: !40, size: 64, offset: 448)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1739, file: !35, line: 61, baseType: !40, size: 64, offset: 512)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1739, file: !35, line: 64, baseType: !40, size: 64, offset: 576)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1739, file: !35, line: 65, baseType: !40, size: 64, offset: 640)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1739, file: !35, line: 66, baseType: !40, size: 64, offset: 704)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1739, file: !35, line: 68, baseType: !53, size: 64, offset: 768)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1739, file: !35, line: 70, baseType: !1755, size: 64, offset: 832)
!1755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1739, size: 64)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1739, file: !35, line: 72, baseType: !38, size: 32, offset: 896)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1739, file: !35, line: 73, baseType: !38, size: 32, offset: 928)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1739, file: !35, line: 74, baseType: !60, size: 64, offset: 960)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1739, file: !35, line: 77, baseType: !64, size: 16, offset: 1024)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1739, file: !35, line: 78, baseType: !66, size: 8, offset: 1040)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1739, file: !35, line: 79, baseType: !68, size: 8, offset: 1048)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1739, file: !35, line: 81, baseType: !72, size: 64, offset: 1088)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1739, file: !35, line: 89, baseType: !75, size: 64, offset: 1152)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1739, file: !35, line: 91, baseType: !77, size: 64, offset: 1216)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1739, file: !35, line: 92, baseType: !80, size: 64, offset: 1280)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1739, file: !35, line: 93, baseType: !1755, size: 64, offset: 1344)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1739, file: !35, line: 94, baseType: !84, size: 64, offset: 1408)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1739, file: !35, line: 95, baseType: !86, size: 64, offset: 1472)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1739, file: !35, line: 96, baseType: !38, size: 32, offset: 1536)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1739, file: !35, line: 98, baseType: !91, size: 160, offset: 1568)
!1771 = !{!1772}
!1772 = !DILocalVariable(name: "stream", arg: 1, scope: !1734, file: !473, line: 130, type: !1737)
!1773 = !DILocation(line: 0, scope: !1734)
!1774 = !DILocation(line: 151, column: 14, scope: !1775)
!1775 = distinct !DILexicalBlock(scope: !1734, file: !473, line: 151, column: 7)
!1776 = !DILocation(line: 151, column: 22, scope: !1775)
!1777 = !DILocation(line: 151, column: 27, scope: !1775)
!1778 = !DILocation(line: 151, column: 7, scope: !1734)
!1779 = !DILocation(line: 152, column: 12, scope: !1775)
!1780 = !DILocation(line: 152, column: 5, scope: !1775)
!1781 = !DILocalVariable(name: "fp", arg: 1, scope: !1782, file: !473, line: 42, type: !1737)
!1782 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !473, file: !473, line: 42, type: !1783, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !472, retainedNodes: !1785)
!1783 = !DISubroutineType(types: !1784)
!1784 = !{null, !1737}
!1785 = !{!1781}
!1786 = !DILocation(line: 0, scope: !1782, inlinedAt: !1787)
!1787 = distinct !DILocation(line: 157, column: 3, scope: !1734)
!1788 = !DILocation(line: 44, column: 12, scope: !1789, inlinedAt: !1787)
!1789 = distinct !DILexicalBlock(scope: !1782, file: !473, line: 44, column: 7)
!1790 = !DILocation(line: 44, column: 19, scope: !1789, inlinedAt: !1787)
!1791 = !DILocation(line: 44, column: 7, scope: !1782, inlinedAt: !1787)
!1792 = !DILocation(line: 46, column: 5, scope: !1789, inlinedAt: !1787)
!1793 = !DILocation(line: 159, column: 10, scope: !1734)
!1794 = !DILocation(line: 159, column: 3, scope: !1734)
!1795 = !DILocation(line: 236, column: 1, scope: !1734)
!1796 = !DISubprogram(name: "fflush", scope: !282, file: !282, line: 230, type: !1735, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !637)
!1797 = distinct !DISubprogram(name: "freopen_safer", scope: !476, file: !476, line: 60, type: !1798, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !1834)
!1798 = !DISubroutineType(types: !1799)
!1799 = !{!1800, !94, !94, !1800}
!1800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1801, size: 64)
!1801 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !33, line: 7, baseType: !1802)
!1802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !35, line: 49, size: 1728, elements: !1803)
!1803 = !{!1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833}
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1802, file: !35, line: 51, baseType: !38, size: 32)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1802, file: !35, line: 54, baseType: !40, size: 64, offset: 64)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1802, file: !35, line: 55, baseType: !40, size: 64, offset: 128)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1802, file: !35, line: 56, baseType: !40, size: 64, offset: 192)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1802, file: !35, line: 57, baseType: !40, size: 64, offset: 256)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1802, file: !35, line: 58, baseType: !40, size: 64, offset: 320)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1802, file: !35, line: 59, baseType: !40, size: 64, offset: 384)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1802, file: !35, line: 60, baseType: !40, size: 64, offset: 448)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1802, file: !35, line: 61, baseType: !40, size: 64, offset: 512)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1802, file: !35, line: 64, baseType: !40, size: 64, offset: 576)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1802, file: !35, line: 65, baseType: !40, size: 64, offset: 640)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1802, file: !35, line: 66, baseType: !40, size: 64, offset: 704)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1802, file: !35, line: 68, baseType: !53, size: 64, offset: 768)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1802, file: !35, line: 70, baseType: !1818, size: 64, offset: 832)
!1818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1802, size: 64)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1802, file: !35, line: 72, baseType: !38, size: 32, offset: 896)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1802, file: !35, line: 73, baseType: !38, size: 32, offset: 928)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1802, file: !35, line: 74, baseType: !60, size: 64, offset: 960)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1802, file: !35, line: 77, baseType: !64, size: 16, offset: 1024)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1802, file: !35, line: 78, baseType: !66, size: 8, offset: 1040)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1802, file: !35, line: 79, baseType: !68, size: 8, offset: 1048)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1802, file: !35, line: 81, baseType: !72, size: 64, offset: 1088)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1802, file: !35, line: 89, baseType: !75, size: 64, offset: 1152)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1802, file: !35, line: 91, baseType: !77, size: 64, offset: 1216)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1802, file: !35, line: 92, baseType: !80, size: 64, offset: 1280)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1802, file: !35, line: 93, baseType: !1818, size: 64, offset: 1344)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1802, file: !35, line: 94, baseType: !84, size: 64, offset: 1408)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1802, file: !35, line: 95, baseType: !86, size: 64, offset: 1472)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1802, file: !35, line: 96, baseType: !38, size: 32, offset: 1536)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1802, file: !35, line: 98, baseType: !91, size: 160, offset: 1568)
!1834 = !{!1835, !1836, !1837, !1838, !1839, !1840, !1841}
!1835 = !DILocalVariable(name: "name", arg: 1, scope: !1797, file: !476, line: 60, type: !94)
!1836 = !DILocalVariable(name: "mode", arg: 2, scope: !1797, file: !476, line: 60, type: !94)
!1837 = !DILocalVariable(name: "f", arg: 3, scope: !1797, file: !476, line: 60, type: !1800)
!1838 = !DILocalVariable(name: "protect_in", scope: !1797, file: !476, line: 68, type: !30)
!1839 = !DILocalVariable(name: "protect_out", scope: !1797, file: !476, line: 69, type: !30)
!1840 = !DILocalVariable(name: "protect_err", scope: !1797, file: !476, line: 70, type: !30)
!1841 = !DILocalVariable(name: "saved_errno", scope: !1797, file: !476, line: 98, type: !38)
!1842 = !DILocation(line: 0, scope: !1797)
!1843 = !DILocation(line: 72, column: 11, scope: !1797)
!1844 = !DILocation(line: 72, column: 3, scope: !1797)
!1845 = !DILocation(line: 75, column: 11, scope: !1846)
!1846 = distinct !DILexicalBlock(scope: !1847, file: !476, line: 75, column: 11)
!1847 = distinct !DILexicalBlock(scope: !1797, file: !476, line: 73, column: 5)
!1848 = !DILocation(line: 75, column: 47, scope: !1846)
!1849 = !DILocation(line: 75, column: 11, scope: !1847)
!1850 = !DILocation(line: 79, column: 11, scope: !1851)
!1851 = distinct !DILexicalBlock(scope: !1847, file: !476, line: 79, column: 11)
!1852 = !DILocation(line: 79, column: 47, scope: !1851)
!1853 = !DILocation(line: 83, column: 11, scope: !1854)
!1854 = distinct !DILexicalBlock(scope: !1847, file: !476, line: 83, column: 11)
!1855 = !DILocation(line: 83, column: 45, scope: !1854)
!1856 = !DILocation(line: 83, column: 11, scope: !1847)
!1857 = !DILocation(line: 92, column: 24, scope: !1858)
!1858 = distinct !DILexicalBlock(scope: !1859, file: !476, line: 92, column: 12)
!1859 = distinct !DILexicalBlock(scope: !1797, file: !476, line: 90, column: 7)
!1860 = !DILocalVariable(name: "fd", arg: 1, scope: !1861, file: !476, line: 38, type: !38)
!1861 = distinct !DISubprogram(name: "protect_fd", scope: !476, file: !476, line: 38, type: !1045, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !1862)
!1862 = !{!1860, !1863}
!1863 = !DILocalVariable(name: "value", scope: !1861, file: !476, line: 40, type: !38)
!1864 = !DILocation(line: 0, scope: !1861, inlinedAt: !1865)
!1865 = distinct !DILocation(line: 90, column: 22, scope: !1859)
!1866 = !DILocation(line: 40, column: 15, scope: !1861, inlinedAt: !1865)
!1867 = !DILocation(line: 41, column: 13, scope: !1868, inlinedAt: !1865)
!1868 = distinct !DILexicalBlock(scope: !1861, file: !476, line: 41, column: 7)
!1869 = !DILocation(line: 41, column: 7, scope: !1861, inlinedAt: !1865)
!1870 = !DILocation(line: 45, column: 11, scope: !1871, inlinedAt: !1865)
!1871 = distinct !DILexicalBlock(scope: !1872, file: !476, line: 44, column: 9)
!1872 = distinct !DILexicalBlock(scope: !1873, file: !476, line: 43, column: 11)
!1873 = distinct !DILexicalBlock(scope: !1868, file: !476, line: 42, column: 5)
!1874 = !DILocation(line: 46, column: 11, scope: !1871, inlinedAt: !1865)
!1875 = !DILocation(line: 46, column: 17, scope: !1871, inlinedAt: !1865)
!1876 = !DILocation(line: 47, column: 9, scope: !1871, inlinedAt: !1865)
!1877 = !DILocation(line: 90, column: 7, scope: !1797)
!1878 = !DILocation(line: 0, scope: !1861, inlinedAt: !1879)
!1879 = distinct !DILocation(line: 92, column: 28, scope: !1858)
!1880 = !DILocation(line: 40, column: 15, scope: !1861, inlinedAt: !1879)
!1881 = !DILocation(line: 41, column: 13, scope: !1868, inlinedAt: !1879)
!1882 = !DILocation(line: 41, column: 7, scope: !1861, inlinedAt: !1879)
!1883 = !DILocation(line: 45, column: 11, scope: !1871, inlinedAt: !1879)
!1884 = !DILocation(line: 46, column: 11, scope: !1871, inlinedAt: !1879)
!1885 = !DILocation(line: 46, column: 17, scope: !1871, inlinedAt: !1879)
!1886 = !DILocation(line: 47, column: 9, scope: !1871, inlinedAt: !1879)
!1887 = !DILocation(line: 92, column: 12, scope: !1859)
!1888 = !DILocation(line: 94, column: 24, scope: !1889)
!1889 = distinct !DILexicalBlock(scope: !1858, file: !476, line: 94, column: 12)
!1890 = !DILocation(line: 0, scope: !1861, inlinedAt: !1891)
!1891 = distinct !DILocation(line: 94, column: 28, scope: !1889)
!1892 = !DILocation(line: 40, column: 15, scope: !1861, inlinedAt: !1891)
!1893 = !DILocation(line: 41, column: 13, scope: !1868, inlinedAt: !1891)
!1894 = !DILocation(line: 41, column: 7, scope: !1861, inlinedAt: !1891)
!1895 = !DILocation(line: 45, column: 11, scope: !1871, inlinedAt: !1891)
!1896 = !DILocation(line: 46, column: 11, scope: !1871, inlinedAt: !1891)
!1897 = !DILocation(line: 46, column: 17, scope: !1871, inlinedAt: !1891)
!1898 = !DILocation(line: 47, column: 9, scope: !1871, inlinedAt: !1891)
!1899 = !DILocation(line: 94, column: 12, scope: !1858)
!1900 = !DILocation(line: 98, column: 21, scope: !1797)
!1901 = !DILocation(line: 100, column: 5, scope: !1902)
!1902 = distinct !DILexicalBlock(scope: !1797, file: !476, line: 99, column: 7)
!1903 = !DILocation(line: 101, column: 7, scope: !1797)
!1904 = !DILocation(line: 97, column: 9, scope: !1889)
!1905 = !DILocation(line: 99, column: 7, scope: !1797)
!1906 = !DILocation(line: 102, column: 5, scope: !1907)
!1907 = distinct !DILexicalBlock(scope: !1797, file: !476, line: 101, column: 7)
!1908 = !DILocation(line: 103, column: 7, scope: !1797)
!1909 = !DILocation(line: 104, column: 5, scope: !1910)
!1910 = distinct !DILexicalBlock(scope: !1797, file: !476, line: 103, column: 7)
!1911 = !DILocation(line: 105, column: 8, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1797, file: !476, line: 105, column: 7)
!1913 = !DILocation(line: 105, column: 7, scope: !1797)
!1914 = !DILocation(line: 106, column: 11, scope: !1912)
!1915 = !DILocation(line: 106, column: 5, scope: !1912)
!1916 = !DILocation(line: 107, column: 3, scope: !1797)
!1917 = !DISubprogram(name: "dup2", scope: !1731, file: !1731, line: 555, type: !1918, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !637)
!1918 = !DISubroutineType(types: !1919)
!1919 = !{!38, !38, !38}
!1920 = !DISubprogram(name: "open", scope: !1595, file: !1595, line: 181, type: !1921, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !637)
!1921 = !DISubroutineType(types: !1922)
!1922 = !{!38, !94, !38, null}
!1923 = !DISubprogram(name: "close", scope: !1731, file: !1731, line: 358, type: !1375, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !637)
!1924 = !DISubprogram(name: "freopen", scope: !282, file: !282, line: 265, type: !1925, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !637)
!1925 = !DISubroutineType(types: !1926)
!1926 = !{!1800, !641, !641, !1927}
!1927 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1800)
!1928 = distinct !DISubprogram(name: "rpl_fseeko", scope: !478, file: !478, line: 28, type: !1929, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !1966)
!1929 = !DISubroutineType(types: !1930)
!1930 = !{!38, !1931, !1965, !38}
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1932, size: 64)
!1932 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !33, line: 7, baseType: !1933)
!1933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !35, line: 49, size: 1728, elements: !1934)
!1934 = !{!1935, !1936, !1937, !1938, !1939, !1940, !1941, !1942, !1943, !1944, !1945, !1946, !1947, !1948, !1950, !1951, !1952, !1953, !1954, !1955, !1956, !1957, !1958, !1959, !1960, !1961, !1962, !1963, !1964}
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1933, file: !35, line: 51, baseType: !38, size: 32)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1933, file: !35, line: 54, baseType: !40, size: 64, offset: 64)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1933, file: !35, line: 55, baseType: !40, size: 64, offset: 128)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1933, file: !35, line: 56, baseType: !40, size: 64, offset: 192)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1933, file: !35, line: 57, baseType: !40, size: 64, offset: 256)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1933, file: !35, line: 58, baseType: !40, size: 64, offset: 320)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1933, file: !35, line: 59, baseType: !40, size: 64, offset: 384)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1933, file: !35, line: 60, baseType: !40, size: 64, offset: 448)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1933, file: !35, line: 61, baseType: !40, size: 64, offset: 512)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1933, file: !35, line: 64, baseType: !40, size: 64, offset: 576)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1933, file: !35, line: 65, baseType: !40, size: 64, offset: 640)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1933, file: !35, line: 66, baseType: !40, size: 64, offset: 704)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1933, file: !35, line: 68, baseType: !53, size: 64, offset: 768)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1933, file: !35, line: 70, baseType: !1949, size: 64, offset: 832)
!1949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1933, size: 64)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1933, file: !35, line: 72, baseType: !38, size: 32, offset: 896)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1933, file: !35, line: 73, baseType: !38, size: 32, offset: 928)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1933, file: !35, line: 74, baseType: !60, size: 64, offset: 960)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1933, file: !35, line: 77, baseType: !64, size: 16, offset: 1024)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1933, file: !35, line: 78, baseType: !66, size: 8, offset: 1040)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1933, file: !35, line: 79, baseType: !68, size: 8, offset: 1048)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1933, file: !35, line: 81, baseType: !72, size: 64, offset: 1088)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1933, file: !35, line: 89, baseType: !75, size: 64, offset: 1152)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1933, file: !35, line: 91, baseType: !77, size: 64, offset: 1216)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1933, file: !35, line: 92, baseType: !80, size: 64, offset: 1280)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1933, file: !35, line: 93, baseType: !1949, size: 64, offset: 1344)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1933, file: !35, line: 94, baseType: !84, size: 64, offset: 1408)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1933, file: !35, line: 95, baseType: !86, size: 64, offset: 1472)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1933, file: !35, line: 96, baseType: !38, size: 32, offset: 1536)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1933, file: !35, line: 98, baseType: !91, size: 160, offset: 1568)
!1965 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !282, line: 63, baseType: !60)
!1966 = !{!1967, !1968, !1969, !1970}
!1967 = !DILocalVariable(name: "fp", arg: 1, scope: !1928, file: !478, line: 28, type: !1931)
!1968 = !DILocalVariable(name: "offset", arg: 2, scope: !1928, file: !478, line: 28, type: !1965)
!1969 = !DILocalVariable(name: "whence", arg: 3, scope: !1928, file: !478, line: 28, type: !38)
!1970 = !DILocalVariable(name: "pos", scope: !1971, file: !478, line: 123, type: !1965)
!1971 = distinct !DILexicalBlock(scope: !1972, file: !478, line: 119, column: 5)
!1972 = distinct !DILexicalBlock(scope: !1928, file: !478, line: 55, column: 7)
!1973 = !DILocation(line: 0, scope: !1928)
!1974 = !DILocation(line: 55, column: 12, scope: !1972)
!1975 = !{!1006, !555, i64 16}
!1976 = !DILocation(line: 55, column: 33, scope: !1972)
!1977 = !{!1006, !555, i64 8}
!1978 = !DILocation(line: 55, column: 25, scope: !1972)
!1979 = !DILocation(line: 56, column: 7, scope: !1972)
!1980 = !DILocation(line: 56, column: 15, scope: !1972)
!1981 = !DILocation(line: 56, column: 37, scope: !1972)
!1982 = !{!1006, !555, i64 32}
!1983 = !DILocation(line: 56, column: 29, scope: !1972)
!1984 = !DILocation(line: 57, column: 7, scope: !1972)
!1985 = !DILocation(line: 57, column: 15, scope: !1972)
!1986 = !{!1006, !555, i64 72}
!1987 = !DILocation(line: 57, column: 29, scope: !1972)
!1988 = !DILocation(line: 55, column: 7, scope: !1928)
!1989 = !DILocation(line: 123, column: 26, scope: !1971)
!1990 = !DILocation(line: 123, column: 19, scope: !1971)
!1991 = !DILocation(line: 0, scope: !1971)
!1992 = !DILocation(line: 124, column: 15, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !1971, file: !478, line: 124, column: 11)
!1994 = !DILocation(line: 124, column: 11, scope: !1971)
!1995 = !DILocation(line: 135, column: 12, scope: !1971)
!1996 = !DILocation(line: 135, column: 19, scope: !1971)
!1997 = !DILocation(line: 136, column: 12, scope: !1971)
!1998 = !DILocation(line: 136, column: 20, scope: !1971)
!1999 = !{!1006, !920, i64 144}
!2000 = !DILocation(line: 167, column: 7, scope: !1971)
!2001 = !DILocation(line: 169, column: 10, scope: !1928)
!2002 = !DILocation(line: 169, column: 3, scope: !1928)
!2003 = !DILocation(line: 170, column: 1, scope: !1928)
!2004 = !DISubprogram(name: "fseeko", scope: !282, file: !282, line: 736, type: !2005, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !637)
!2005 = !DISubroutineType(types: !2006)
!2006 = !{!38, !1931, !60, !38}
!2007 = distinct !DISubprogram(name: "getprogname", scope: !480, file: !480, line: 54, type: !2008, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !479, retainedNodes: !637)
!2008 = !DISubroutineType(types: !2009)
!2009 = !{!94}
!2010 = !DILocation(line: 58, column: 10, scope: !2007)
!2011 = !DILocation(line: 58, column: 3, scope: !2007)
!2012 = distinct !DISubprogram(name: "print_and_abort", scope: !314, file: !314, line: 343, type: !309, scopeLine: 344, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !313, retainedNodes: !637)
!2013 = !DILocation(line: 353, column: 3, scope: !2012)
!2014 = !DILocation(line: 355, column: 9, scope: !2012)
!2015 = !DILocation(line: 355, column: 3, scope: !2012)
!2016 = distinct !DISubprogram(name: "rpl_obstack_begin", scope: !314, file: !314, line: 161, type: !2017, scopeLine: 165, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !313, retainedNodes: !2053)
!2017 = !DISubroutineType(types: !2018)
!2018 = !{!38, !2019, !86, !86, !176, !187}
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2020, size: 64)
!2020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !150, line: 210, size: 704, elements: !2021)
!2021 = !{!2022, !2023, !2030, !2031, !2032, !2033, !2038, !2039, !2044, !2049, !2050, !2051, !2052}
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !2020, file: !150, line: 212, baseType: !86, size: 64)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !2020, file: !150, line: 213, baseType: !2024, size: 64, offset: 64)
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !150, line: 203, size: 128, elements: !2026)
!2026 = !{!2027, !2028, !2029}
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !2025, file: !150, line: 205, baseType: !40, size: 64)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !2025, file: !150, line: 206, baseType: !2024, size: 64, offset: 64)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !2025, file: !150, line: 207, baseType: !160, offset: 128)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !2020, file: !150, line: 214, baseType: !40, size: 64, offset: 128)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !2020, file: !150, line: 215, baseType: !40, size: 64, offset: 192)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !2020, file: !150, line: 216, baseType: !40, size: 64, offset: 256)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !2020, file: !150, line: 221, baseType: !2034, size: 64, offset: 320)
!2034 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2020, file: !150, line: 217, size: 64, elements: !2035)
!2035 = !{!2036, !2037}
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "tempint", scope: !2034, file: !150, line: 219, baseType: !86, size: 64)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "tempptr", scope: !2034, file: !150, line: 220, baseType: !84, size: 64)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !2020, file: !150, line: 222, baseType: !86, size: 64, offset: 384)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !2020, file: !150, line: 229, baseType: !2040, size: 64, offset: 448)
!2040 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2020, file: !150, line: 225, size: 64, elements: !2041)
!2041 = !{!2042, !2043}
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "plain", scope: !2040, file: !150, line: 227, baseType: !176, size: 64)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !2040, file: !150, line: 228, baseType: !180, size: 64)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !2020, file: !150, line: 234, baseType: !2045, size: 64, offset: 512)
!2045 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2020, file: !150, line: 230, size: 64, elements: !2046)
!2046 = !{!2047, !2048}
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "plain", scope: !2045, file: !150, line: 232, baseType: !187, size: 64)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !2045, file: !150, line: 233, baseType: !191, size: 64)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !2020, file: !150, line: 236, baseType: !84, size: 64, offset: 576)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !2020, file: !150, line: 237, baseType: !6, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !2020, file: !150, line: 238, baseType: !6, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !2020, file: !150, line: 242, baseType: !6, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!2053 = !{!2054, !2055, !2056, !2057, !2058}
!2054 = !DILocalVariable(name: "h", arg: 1, scope: !2016, file: !314, line: 161, type: !2019)
!2055 = !DILocalVariable(name: "size", arg: 2, scope: !2016, file: !314, line: 162, type: !86)
!2056 = !DILocalVariable(name: "alignment", arg: 3, scope: !2016, file: !314, line: 162, type: !86)
!2057 = !DILocalVariable(name: "chunkfun", arg: 4, scope: !2016, file: !314, line: 163, type: !176)
!2058 = !DILocalVariable(name: "freefun", arg: 5, scope: !2016, file: !314, line: 164, type: !187)
!2059 = !DILocation(line: 0, scope: !2016)
!2060 = !DILocation(line: 166, column: 15, scope: !2016)
!2061 = !DILocation(line: 166, column: 21, scope: !2016)
!2062 = !DILocation(line: 167, column: 14, scope: !2016)
!2063 = !DILocation(line: 167, column: 20, scope: !2016)
!2064 = !DILocation(line: 168, column: 6, scope: !2016)
!2065 = !DILocation(line: 168, column: 20, scope: !2016)
!2066 = !DILocalVariable(name: "h", arg: 1, scope: !2067, file: !314, line: 114, type: !2019)
!2067 = distinct !DISubprogram(name: "_obstack_begin_worker", scope: !314, file: !314, line: 114, type: !2068, scopeLine: 116, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !313, retainedNodes: !2070)
!2068 = !DISubroutineType(types: !2069)
!2069 = !{!38, !2019, !86, !86}
!2070 = !{!2066, !2071, !2072, !2073, !2074, !2075, !2076, !2077}
!2071 = !DILocalVariable(name: "chunk_size", arg: 2, scope: !2067, file: !314, line: 115, type: !86)
!2072 = !DILocalVariable(name: "alignment", arg: 3, scope: !2067, file: !314, line: 115, type: !86)
!2073 = !DILocalVariable(name: "chunk", scope: !2067, file: !314, line: 117, type: !2024)
!2074 = !DILocalVariable(name: "aligned_prefix_size", scope: !2067, file: !314, line: 127, type: !86)
!2075 = !DILocalVariable(name: "v", scope: !2067, file: !314, line: 128, type: !30)
!2076 = !DILocalVariable(name: "size", scope: !2067, file: !314, line: 131, type: !86)
!2077 = !DILocalVariable(name: "good_size", scope: !2078, file: !314, line: 137, type: !38)
!2078 = distinct !DILexicalBlock(scope: !2079, file: !314, line: 133, column: 5)
!2079 = distinct !DILexicalBlock(scope: !2067, file: !314, line: 132, column: 7)
!2080 = !DILocation(line: 0, scope: !2067, inlinedAt: !2081)
!2081 = distinct !DILocation(line: 169, column: 10, scope: !2016)
!2082 = !DILocation(line: 119, column: 17, scope: !2083, inlinedAt: !2081)
!2083 = distinct !DILexicalBlock(scope: !2067, file: !314, line: 119, column: 7)
!2084 = !DILocation(line: 128, column: 65, scope: !2067, inlinedAt: !2081)
!2085 = !DILocalVariable(name: "r", arg: 1, scope: !2086, file: !314, line: 78, type: !494)
!2086 = distinct !DISubprogram(name: "align_chunk_size_up", scope: !314, file: !314, line: 78, type: !2087, scopeLine: 80, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !313, retainedNodes: !2089)
!2087 = !DISubroutineType(types: !2088)
!2088 = !{!30, !494, !86, !86}
!2089 = !{!2085, !2090, !2091}
!2090 = !DILocalVariable(name: "mask", arg: 2, scope: !2086, file: !314, line: 78, type: !86)
!2091 = !DILocalVariable(name: "size", arg: 3, scope: !2086, file: !314, line: 79, type: !86)
!2092 = !DILocation(line: 0, scope: !2086, inlinedAt: !2093)
!2093 = distinct !DILocation(line: 128, column: 12, scope: !2067, inlinedAt: !2081)
!2094 = !DILocation(line: 81, column: 10, scope: !2086, inlinedAt: !2093)
!2095 = !DILocation(line: 132, column: 12, scope: !2079, inlinedAt: !2081)
!2096 = !DILocation(line: 132, column: 7, scope: !2067, inlinedAt: !2081)
!2097 = !DILocation(line: 142, column: 6, scope: !2067, inlinedAt: !2081)
!2098 = !DILocation(line: 142, column: 17, scope: !2067, inlinedAt: !2081)
!2099 = !{!919, !920, i64 0}
!2100 = !DILocation(line: 143, column: 6, scope: !2067, inlinedAt: !2081)
!2101 = !DILocation(line: 143, column: 21, scope: !2067, inlinedAt: !2081)
!2102 = !DILocation(line: 145, column: 22, scope: !2067, inlinedAt: !2081)
!2103 = !DILocation(line: 145, column: 14, scope: !2067, inlinedAt: !2081)
!2104 = !DILocation(line: 145, column: 20, scope: !2067, inlinedAt: !2081)
!2105 = !{!919, !555, i64 8}
!2106 = !DILocation(line: 146, column: 7, scope: !2067, inlinedAt: !2081)
!2107 = !DILocalVariable(name: "h", arg: 1, scope: !2108, file: !314, line: 89, type: !2019)
!2108 = distinct !DISubprogram(name: "call_chunkfun", scope: !314, file: !314, line: 89, type: !2109, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !313, retainedNodes: !2111)
!2109 = !DISubroutineType(types: !2110)
!2110 = !{!84, !2019, !86}
!2111 = !{!2107, !2112}
!2112 = !DILocalVariable(name: "size", arg: 2, scope: !2108, file: !314, line: 89, type: !86)
!2113 = !DILocation(line: 0, scope: !2108, inlinedAt: !2114)
!2114 = distinct !DILocation(line: 145, column: 33, scope: !2067, inlinedAt: !2081)
!2115 = !DILocation(line: 94, column: 12, scope: !2116, inlinedAt: !2114)
!2116 = distinct !DILexicalBlock(scope: !2108, file: !314, line: 91, column: 7)
!2117 = !DILocation(line: 146, column: 8, scope: !2118, inlinedAt: !2081)
!2118 = distinct !DILexicalBlock(scope: !2067, file: !314, line: 146, column: 7)
!2119 = !DILocation(line: 147, column: 7, scope: !2118, inlinedAt: !2081)
!2120 = !DILocation(line: 147, column: 5, scope: !2118, inlinedAt: !2081)
!2121 = !DILocation(line: 148, column: 35, scope: !2067, inlinedAt: !2081)
!2122 = !DILocation(line: 148, column: 21, scope: !2067, inlinedAt: !2081)
!2123 = !DILocation(line: 148, column: 33, scope: !2067, inlinedAt: !2081)
!2124 = !DILocation(line: 148, column: 6, scope: !2067, inlinedAt: !2081)
!2125 = !DILocation(line: 148, column: 16, scope: !2067, inlinedAt: !2081)
!2126 = !DILocation(line: 151, column: 5, scope: !2067, inlinedAt: !2081)
!2127 = !DILocation(line: 150, column: 27, scope: !2067, inlinedAt: !2081)
!2128 = !DILocation(line: 150, column: 33, scope: !2067, inlinedAt: !2081)
!2129 = !DILocation(line: 150, column: 6, scope: !2067, inlinedAt: !2081)
!2130 = !DILocation(line: 150, column: 18, scope: !2067, inlinedAt: !2081)
!2131 = !DILocation(line: 153, column: 10, scope: !2067, inlinedAt: !2081)
!2132 = !DILocation(line: 153, column: 15, scope: !2067, inlinedAt: !2081)
!2133 = !DILocation(line: 155, column: 25, scope: !2067, inlinedAt: !2081)
!2134 = !DILocation(line: 156, column: 19, scope: !2067, inlinedAt: !2081)
!2135 = !DILocation(line: 169, column: 3, scope: !2016)
!2136 = distinct !DISubprogram(name: "rpl_obstack_begin_1", scope: !314, file: !314, line: 173, type: !2137, scopeLine: 178, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !313, retainedNodes: !2139)
!2137 = !DISubroutineType(types: !2138)
!2138 = !{!38, !2019, !86, !86, !180, !191, !84}
!2139 = !{!2140, !2141, !2142, !2143, !2144, !2145}
!2140 = !DILocalVariable(name: "h", arg: 1, scope: !2136, file: !314, line: 173, type: !2019)
!2141 = !DILocalVariable(name: "size", arg: 2, scope: !2136, file: !314, line: 174, type: !86)
!2142 = !DILocalVariable(name: "alignment", arg: 3, scope: !2136, file: !314, line: 174, type: !86)
!2143 = !DILocalVariable(name: "chunkfun", arg: 4, scope: !2136, file: !314, line: 175, type: !180)
!2144 = !DILocalVariable(name: "freefun", arg: 5, scope: !2136, file: !314, line: 176, type: !191)
!2145 = !DILocalVariable(name: "arg", arg: 6, scope: !2136, file: !314, line: 177, type: !84)
!2146 = !DILocation(line: 0, scope: !2136)
!2147 = !DILocation(line: 179, column: 6, scope: !2136)
!2148 = !DILocation(line: 179, column: 15, scope: !2136)
!2149 = !DILocation(line: 179, column: 21, scope: !2136)
!2150 = !DILocation(line: 180, column: 6, scope: !2136)
!2151 = !DILocation(line: 180, column: 14, scope: !2136)
!2152 = !DILocation(line: 180, column: 20, scope: !2136)
!2153 = !DILocation(line: 181, column: 6, scope: !2136)
!2154 = !DILocation(line: 181, column: 16, scope: !2136)
!2155 = !{!919, !555, i64 72}
!2156 = !DILocation(line: 182, column: 6, scope: !2136)
!2157 = !DILocation(line: 182, column: 20, scope: !2136)
!2158 = !DILocation(line: 0, scope: !2067, inlinedAt: !2159)
!2159 = distinct !DILocation(line: 183, column: 10, scope: !2136)
!2160 = !DILocation(line: 119, column: 17, scope: !2083, inlinedAt: !2159)
!2161 = !DILocation(line: 128, column: 65, scope: !2067, inlinedAt: !2159)
!2162 = !DILocation(line: 0, scope: !2086, inlinedAt: !2163)
!2163 = distinct !DILocation(line: 128, column: 12, scope: !2067, inlinedAt: !2159)
!2164 = !DILocation(line: 81, column: 10, scope: !2086, inlinedAt: !2163)
!2165 = !DILocation(line: 132, column: 12, scope: !2079, inlinedAt: !2159)
!2166 = !DILocation(line: 132, column: 7, scope: !2067, inlinedAt: !2159)
!2167 = !DILocation(line: 142, column: 6, scope: !2067, inlinedAt: !2159)
!2168 = !DILocation(line: 142, column: 17, scope: !2067, inlinedAt: !2159)
!2169 = !DILocation(line: 143, column: 6, scope: !2067, inlinedAt: !2159)
!2170 = !DILocation(line: 143, column: 21, scope: !2067, inlinedAt: !2159)
!2171 = !DILocation(line: 145, column: 22, scope: !2067, inlinedAt: !2159)
!2172 = !DILocation(line: 145, column: 14, scope: !2067, inlinedAt: !2159)
!2173 = !DILocation(line: 145, column: 20, scope: !2067, inlinedAt: !2159)
!2174 = !DILocation(line: 146, column: 7, scope: !2067, inlinedAt: !2159)
!2175 = !DILocation(line: 0, scope: !2108, inlinedAt: !2176)
!2176 = distinct !DILocation(line: 145, column: 33, scope: !2067, inlinedAt: !2159)
!2177 = !DILocation(line: 92, column: 12, scope: !2116, inlinedAt: !2176)
!2178 = !DILocation(line: 146, column: 8, scope: !2118, inlinedAt: !2159)
!2179 = !DILocation(line: 147, column: 7, scope: !2118, inlinedAt: !2159)
!2180 = !DILocation(line: 147, column: 5, scope: !2118, inlinedAt: !2159)
!2181 = !DILocation(line: 148, column: 35, scope: !2067, inlinedAt: !2159)
!2182 = !DILocation(line: 148, column: 21, scope: !2067, inlinedAt: !2159)
!2183 = !DILocation(line: 148, column: 33, scope: !2067, inlinedAt: !2159)
!2184 = !DILocation(line: 148, column: 6, scope: !2067, inlinedAt: !2159)
!2185 = !DILocation(line: 148, column: 16, scope: !2067, inlinedAt: !2159)
!2186 = !DILocation(line: 151, column: 5, scope: !2067, inlinedAt: !2159)
!2187 = !DILocation(line: 150, column: 27, scope: !2067, inlinedAt: !2159)
!2188 = !DILocation(line: 150, column: 33, scope: !2067, inlinedAt: !2159)
!2189 = !DILocation(line: 150, column: 6, scope: !2067, inlinedAt: !2159)
!2190 = !DILocation(line: 150, column: 18, scope: !2067, inlinedAt: !2159)
!2191 = !DILocation(line: 153, column: 10, scope: !2067, inlinedAt: !2159)
!2192 = !DILocation(line: 153, column: 15, scope: !2067, inlinedAt: !2159)
!2193 = !DILocation(line: 155, column: 25, scope: !2067, inlinedAt: !2159)
!2194 = !DILocation(line: 156, column: 19, scope: !2067, inlinedAt: !2159)
!2195 = !DILocation(line: 183, column: 3, scope: !2136)
!2196 = distinct !DISubprogram(name: "rpl_obstack_newchunk", scope: !314, file: !314, line: 194, type: !2197, scopeLine: 195, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !313, retainedNodes: !2199)
!2197 = !DISubroutineType(types: !2198)
!2198 = !{null, !2019, !86}
!2199 = !{!2200, !2201, !2202, !2203, !2204, !2205, !2206, !2207, !2208}
!2200 = !DILocalVariable(name: "h", arg: 1, scope: !2196, file: !314, line: 194, type: !2019)
!2201 = !DILocalVariable(name: "length", arg: 2, scope: !2196, file: !314, line: 194, type: !86)
!2202 = !DILocalVariable(name: "old_chunk", scope: !2196, file: !314, line: 196, type: !2024)
!2203 = !DILocalVariable(name: "obj_size", scope: !2196, file: !314, line: 197, type: !86)
!2204 = !DILocalVariable(name: "s", scope: !2196, file: !314, line: 200, type: !86)
!2205 = !DILocalVariable(name: "new_size", scope: !2196, file: !314, line: 200, type: !86)
!2206 = !DILocalVariable(name: "v", scope: !2196, file: !314, line: 201, type: !30)
!2207 = !DILocalVariable(name: "new_chunk", scope: !2196, file: !314, line: 213, type: !2024)
!2208 = !DILocalVariable(name: "object_base", scope: !2196, file: !314, line: 225, type: !40)
!2209 = !DILocation(line: 0, scope: !2196)
!2210 = !DILocation(line: 196, column: 41, scope: !2196)
!2211 = !DILocation(line: 197, column: 24, scope: !2196)
!2212 = !DILocation(line: 197, column: 39, scope: !2196)
!2213 = !DILocation(line: 197, column: 34, scope: !2196)
!2214 = !DILocation(line: 202, column: 8, scope: !2196)
!2215 = !DILocation(line: 203, column: 36, scope: !2196)
!2216 = !DILocation(line: 0, scope: !2086, inlinedAt: !2217)
!2217 = distinct !DILocation(line: 203, column: 8, scope: !2196)
!2218 = !DILocation(line: 81, column: 10, scope: !2086, inlinedAt: !2217)
!2219 = !DILocation(line: 203, column: 5, scope: !2196)
!2220 = !DILocation(line: 204, column: 8, scope: !2196)
!2221 = !DILocation(line: 204, column: 5, scope: !2196)
!2222 = !DILocation(line: 207, column: 7, scope: !2223)
!2223 = distinct !DILexicalBlock(scope: !2196, file: !314, line: 207, column: 7)
!2224 = !DILocation(line: 207, column: 7, scope: !2196)
!2225 = !DILocation(line: 209, column: 21, scope: !2226)
!2226 = distinct !DILexicalBlock(scope: !2196, file: !314, line: 209, column: 7)
!2227 = !DILocation(line: 209, column: 16, scope: !2226)
!2228 = !DILocation(line: 209, column: 7, scope: !2196)
!2229 = !DILocation(line: 214, column: 5, scope: !2196)
!2230 = !DILocation(line: 0, scope: !2108, inlinedAt: !2231)
!2231 = distinct !DILocation(line: 214, column: 16, scope: !2196)
!2232 = !DILocation(line: 91, column: 10, scope: !2116, inlinedAt: !2231)
!2233 = !DILocation(line: 91, column: 7, scope: !2116, inlinedAt: !2231)
!2234 = !DILocation(line: 91, column: 7, scope: !2108, inlinedAt: !2231)
!2235 = !DILocation(line: 92, column: 15, scope: !2116, inlinedAt: !2231)
!2236 = !DILocation(line: 92, column: 24, scope: !2116, inlinedAt: !2231)
!2237 = !DILocation(line: 92, column: 34, scope: !2116, inlinedAt: !2231)
!2238 = !DILocation(line: 92, column: 12, scope: !2116, inlinedAt: !2231)
!2239 = !DILocation(line: 92, column: 5, scope: !2116, inlinedAt: !2231)
!2240 = !DILocation(line: 94, column: 24, scope: !2116, inlinedAt: !2231)
!2241 = !DILocation(line: 94, column: 12, scope: !2116, inlinedAt: !2231)
!2242 = !DILocation(line: 94, column: 5, scope: !2116, inlinedAt: !2231)
!2243 = !DILocation(line: 215, column: 8, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !2196, file: !314, line: 215, column: 7)
!2245 = !DILocation(line: 215, column: 7, scope: !2196)
!2246 = !DILocation(line: 216, column: 7, scope: !2244)
!2247 = !DILocation(line: 216, column: 5, scope: !2244)
!2248 = !DILocation(line: 217, column: 12, scope: !2196)
!2249 = !DILocation(line: 218, column: 14, scope: !2196)
!2250 = !DILocation(line: 218, column: 19, scope: !2196)
!2251 = !DILocation(line: 220, column: 5, scope: !2196)
!2252 = !DILocation(line: 219, column: 25, scope: !2196)
!2253 = !DILocation(line: 219, column: 37, scope: !2196)
!2254 = !DILocation(line: 219, column: 14, scope: !2196)
!2255 = !DILocation(line: 219, column: 20, scope: !2196)
!2256 = !DILocation(line: 226, column: 5, scope: !2196)
!2257 = !DILocation(line: 229, column: 27, scope: !2196)
!2258 = !DILocalVariable(name: "__dest", arg: 1, scope: !2259, file: !2260, line: 26, type: !2263)
!2259 = distinct !DISubprogram(name: "memcpy", scope: !2260, file: !2260, line: 26, type: !2261, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !313, retainedNodes: !2264)
!2260 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!2261 = !DISubroutineType(types: !2262)
!2262 = !{!84, !2263, !762, !86}
!2263 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !84)
!2264 = !{!2258, !2265, !2266}
!2265 = !DILocalVariable(name: "__src", arg: 2, scope: !2259, file: !2260, line: 26, type: !762)
!2266 = !DILocalVariable(name: "__len", arg: 3, scope: !2259, file: !2260, line: 26, type: !86)
!2267 = !DILocation(line: 0, scope: !2259, inlinedAt: !2268)
!2268 = distinct !DILocation(line: 229, column: 3, scope: !2196)
!2269 = !DILocation(line: 29, column: 10, scope: !2259, inlinedAt: !2268)
!2270 = !DILocation(line: 234, column: 11, scope: !2271)
!2271 = distinct !DILexicalBlock(scope: !2196, file: !314, line: 234, column: 7)
!2272 = !DILocation(line: 234, column: 8, scope: !2271)
!2273 = !DILocation(line: 235, column: 7, scope: !2271)
!2274 = !DILocation(line: 235, column: 14, scope: !2271)
!2275 = !DILocation(line: 236, column: 14, scope: !2271)
!2276 = !DILocation(line: 236, column: 11, scope: !2271)
!2277 = !DILocation(line: 234, column: 7, scope: !2196)
!2278 = !DILocation(line: 239, column: 36, scope: !2279)
!2279 = distinct !DILexicalBlock(scope: !2271, file: !314, line: 238, column: 5)
!2280 = !DILocation(line: 239, column: 23, scope: !2279)
!2281 = !DILocation(line: 240, column: 24, scope: !2279)
!2282 = !DILocalVariable(name: "h", arg: 1, scope: !2283, file: !314, line: 98, type: !2019)
!2283 = distinct !DISubprogram(name: "call_freefun", scope: !314, file: !314, line: 98, type: !2284, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !313, retainedNodes: !2286)
!2284 = !DISubroutineType(types: !2285)
!2285 = !{null, !2019, !84}
!2286 = !{!2282, !2287}
!2287 = !DILocalVariable(name: "old_chunk", arg: 2, scope: !2283, file: !314, line: 98, type: !84)
!2288 = !DILocation(line: 0, scope: !2283, inlinedAt: !2289)
!2289 = distinct !DILocation(line: 240, column: 7, scope: !2279)
!2290 = !DILocation(line: 100, column: 10, scope: !2291, inlinedAt: !2289)
!2291 = distinct !DILexicalBlock(scope: !2283, file: !314, line: 100, column: 7)
!2292 = !DILocation(line: 100, column: 7, scope: !2291, inlinedAt: !2289)
!2293 = !DILocation(line: 100, column: 7, scope: !2283, inlinedAt: !2289)
!2294 = !DILocation(line: 101, column: 8, scope: !2291, inlinedAt: !2289)
!2295 = !DILocation(line: 101, column: 16, scope: !2291, inlinedAt: !2289)
!2296 = !DILocation(line: 101, column: 26, scope: !2291, inlinedAt: !2289)
!2297 = !DILocation(line: 101, column: 5, scope: !2291, inlinedAt: !2289)
!2298 = !DILocation(line: 103, column: 16, scope: !2291, inlinedAt: !2289)
!2299 = !DILocation(line: 103, column: 5, scope: !2291, inlinedAt: !2289)
!2300 = !DILocation(line: 243, column: 18, scope: !2196)
!2301 = !DILocation(line: 244, column: 33, scope: !2196)
!2302 = !DILocation(line: 244, column: 16, scope: !2196)
!2303 = !DILocation(line: 246, column: 25, scope: !2196)
!2304 = !DILocation(line: 247, column: 1, scope: !2196)
!2305 = distinct !DISubprogram(name: "rpl_obstack_allocated_p", scope: !314, file: !314, line: 259, type: !2306, scopeLine: 260, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !313, retainedNodes: !2308)
!2306 = !DISubroutineType(types: !2307)
!2307 = !{!38, !2019, !84}
!2308 = !{!2309, !2310, !2311, !2312}
!2309 = !DILocalVariable(name: "h", arg: 1, scope: !2305, file: !314, line: 259, type: !2019)
!2310 = !DILocalVariable(name: "obj", arg: 2, scope: !2305, file: !314, line: 259, type: !84)
!2311 = !DILocalVariable(name: "lp", scope: !2305, file: !314, line: 261, type: !2024)
!2312 = !DILocalVariable(name: "plp", scope: !2313, file: !314, line: 268, type: !2024)
!2313 = distinct !DILexicalBlock(scope: !2305, file: !314, line: 267, column: 5)
!2314 = !DILocation(line: 0, scope: !2305)
!2315 = !DILocation(line: 262, column: 8, scope: !2305)
!2316 = !DILocation(line: 266, column: 13, scope: !2305)
!2317 = !DILocation(line: 266, column: 21, scope: !2305)
!2318 = !DILocation(line: 266, column: 25, scope: !2305)
!2319 = !DILocation(line: 266, column: 37, scope: !2305)
!2320 = !DILocation(line: 266, column: 44, scope: !2305)
!2321 = !DILocation(line: 266, column: 62, scope: !2305)
!2322 = !DILocation(line: 266, column: 68, scope: !2305)
!2323 = !DILocation(line: 266, column: 3, scope: !2305)
!2324 = !DILocation(line: 268, column: 40, scope: !2313)
!2325 = !DILocation(line: 0, scope: !2313)
!2326 = distinct !{!2326, !2323, !2327, !611}
!2327 = !DILocation(line: 270, column: 5, scope: !2305)
!2328 = !DILocation(line: 271, column: 3, scope: !2305)
!2329 = distinct !DISubprogram(name: "rpl_obstack_free", scope: !314, file: !314, line: 278, type: !2284, scopeLine: 279, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !313, retainedNodes: !2330)
!2330 = !{!2331, !2332, !2333, !2334}
!2331 = !DILocalVariable(name: "h", arg: 1, scope: !2329, file: !314, line: 278, type: !2019)
!2332 = !DILocalVariable(name: "obj", arg: 2, scope: !2329, file: !314, line: 278, type: !84)
!2333 = !DILocalVariable(name: "lp", scope: !2329, file: !314, line: 280, type: !2024)
!2334 = !DILocalVariable(name: "plp", scope: !2335, file: !314, line: 287, type: !2024)
!2335 = distinct !DILexicalBlock(scope: !2329, file: !314, line: 286, column: 5)
!2336 = !DILocation(line: 0, scope: !2329)
!2337 = !DILocation(line: 281, column: 8, scope: !2329)
!2338 = !DILocation(line: 285, column: 13, scope: !2329)
!2339 = !DILocation(line: 285, column: 21, scope: !2329)
!2340 = !DILocation(line: 285, column: 25, scope: !2329)
!2341 = !DILocation(line: 285, column: 37, scope: !2329)
!2342 = !DILocation(line: 285, column: 44, scope: !2329)
!2343 = !DILocation(line: 285, column: 62, scope: !2329)
!2344 = !DILocation(line: 285, column: 68, scope: !2329)
!2345 = !DILocation(line: 285, column: 3, scope: !2329)
!2346 = !DILocation(line: 287, column: 40, scope: !2335)
!2347 = !DILocation(line: 0, scope: !2335)
!2348 = !DILocation(line: 0, scope: !2283, inlinedAt: !2349)
!2349 = distinct !DILocation(line: 288, column: 7, scope: !2335)
!2350 = !DILocation(line: 100, column: 10, scope: !2291, inlinedAt: !2349)
!2351 = !DILocation(line: 100, column: 7, scope: !2291, inlinedAt: !2349)
!2352 = !DILocation(line: 100, column: 7, scope: !2283, inlinedAt: !2349)
!2353 = !DILocation(line: 101, column: 16, scope: !2291, inlinedAt: !2349)
!2354 = !DILocation(line: 101, column: 26, scope: !2291, inlinedAt: !2349)
!2355 = !DILocation(line: 101, column: 5, scope: !2291, inlinedAt: !2349)
!2356 = !DILocation(line: 103, column: 16, scope: !2291, inlinedAt: !2349)
!2357 = !DILocation(line: 103, column: 5, scope: !2291, inlinedAt: !2349)
!2358 = !DILocation(line: 292, column: 29, scope: !2335)
!2359 = distinct !{!2359, !2345, !2360, !611}
!2360 = !DILocation(line: 293, column: 5, scope: !2329)
!2361 = !DILocation(line: 296, column: 27, scope: !2362)
!2362 = distinct !DILexicalBlock(scope: !2363, file: !314, line: 295, column: 5)
!2363 = distinct !DILexicalBlock(scope: !2329, file: !314, line: 294, column: 7)
!2364 = !DILocation(line: 296, column: 37, scope: !2362)
!2365 = !DILocation(line: 296, column: 10, scope: !2362)
!2366 = !DILocation(line: 296, column: 22, scope: !2362)
!2367 = !DILocation(line: 297, column: 28, scope: !2362)
!2368 = !DILocation(line: 297, column: 10, scope: !2362)
!2369 = !DILocation(line: 297, column: 22, scope: !2362)
!2370 = !DILocation(line: 298, column: 16, scope: !2362)
!2371 = !DILocation(line: 299, column: 5, scope: !2362)
!2372 = !DILocation(line: 300, column: 16, scope: !2373)
!2373 = distinct !DILexicalBlock(scope: !2363, file: !314, line: 300, column: 12)
!2374 = !DILocation(line: 300, column: 12, scope: !2363)
!2375 = !DILocation(line: 302, column: 5, scope: !2373)
!2376 = !DILocation(line: 303, column: 1, scope: !2329)
!2377 = distinct !DISubprogram(name: "rpl_obstack_memory_used", scope: !314, file: !314, line: 311, type: !2378, scopeLine: 312, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !313, retainedNodes: !2380)
!2378 = !DISubroutineType(types: !2379)
!2379 = !{!86, !2019}
!2380 = !{!2381, !2382, !2383}
!2381 = !DILocalVariable(name: "h", arg: 1, scope: !2377, file: !314, line: 311, type: !2019)
!2382 = !DILocalVariable(name: "nbytes", scope: !2377, file: !314, line: 313, type: !86)
!2383 = !DILocalVariable(name: "lp", scope: !2384, file: !314, line: 315, type: !2024)
!2384 = distinct !DILexicalBlock(scope: !2377, file: !314, line: 315, column: 3)
!2385 = !DILocation(line: 0, scope: !2377)
!2386 = !DILocation(line: 315, column: 39, scope: !2384)
!2387 = !DILocation(line: 0, scope: !2384)
!2388 = !DILocation(line: 315, column: 49, scope: !2389)
!2389 = distinct !DILexicalBlock(scope: !2384, file: !314, line: 315, column: 3)
!2390 = !DILocation(line: 315, column: 3, scope: !2384)
!2391 = !DILocation(line: 319, column: 3, scope: !2377)
!2392 = !DILocation(line: 317, column: 21, scope: !2393)
!2393 = distinct !DILexicalBlock(scope: !2389, file: !314, line: 316, column: 5)
!2394 = !DILocation(line: 317, column: 27, scope: !2393)
!2395 = !DILocation(line: 317, column: 14, scope: !2393)
!2396 = !DILocation(line: 315, column: 67, scope: !2389)
!2397 = distinct !{!2397, !2390, !2398, !611}
!2398 = !DILocation(line: 318, column: 5, scope: !2384)
!2399 = distinct !DISubprogram(name: "set_program_name", scope: !320, file: !320, line: 37, type: !570, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !319, retainedNodes: !2400)
!2400 = !{!2401, !2402, !2403}
!2401 = !DILocalVariable(name: "argv0", arg: 1, scope: !2399, file: !320, line: 37, type: !94)
!2402 = !DILocalVariable(name: "slash", scope: !2399, file: !320, line: 44, type: !94)
!2403 = !DILocalVariable(name: "base", scope: !2399, file: !320, line: 45, type: !94)
!2404 = !DILocation(line: 0, scope: !2399)
!2405 = !DILocation(line: 44, column: 23, scope: !2399)
!2406 = !DILocation(line: 45, column: 22, scope: !2399)
!2407 = !DILocation(line: 46, column: 17, scope: !2408)
!2408 = distinct !DILexicalBlock(scope: !2399, file: !320, line: 46, column: 7)
!2409 = !DILocation(line: 46, column: 9, scope: !2408)
!2410 = !DILocation(line: 46, column: 25, scope: !2408)
!2411 = !DILocation(line: 46, column: 40, scope: !2408)
!2412 = !DILocalVariable(name: "__s1", arg: 1, scope: !2413, file: !595, line: 974, type: !763)
!2413 = distinct !DISubprogram(name: "memeq", scope: !595, file: !595, line: 974, type: !2414, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !319, retainedNodes: !2416)
!2414 = !DISubroutineType(types: !2415)
!2415 = !{!30, !763, !763, !86}
!2416 = !{!2412, !2417, !2418}
!2417 = !DILocalVariable(name: "__s2", arg: 2, scope: !2413, file: !595, line: 974, type: !763)
!2418 = !DILocalVariable(name: "__n", arg: 3, scope: !2413, file: !595, line: 974, type: !86)
!2419 = !DILocation(line: 0, scope: !2413, inlinedAt: !2420)
!2420 = distinct !DILocation(line: 46, column: 28, scope: !2408)
!2421 = !DILocation(line: 976, column: 11, scope: !2413, inlinedAt: !2420)
!2422 = !DILocation(line: 976, column: 10, scope: !2413, inlinedAt: !2420)
!2423 = !DILocation(line: 46, column: 7, scope: !2399)
!2424 = !DILocation(line: 49, column: 11, scope: !2425)
!2425 = distinct !DILexicalBlock(scope: !2426, file: !320, line: 49, column: 11)
!2426 = distinct !DILexicalBlock(scope: !2408, file: !320, line: 47, column: 5)
!2427 = !DILocation(line: 49, column: 36, scope: !2425)
!2428 = !DILocation(line: 49, column: 11, scope: !2426)
!2429 = !DILocation(line: 65, column: 16, scope: !2399)
!2430 = !DILocation(line: 71, column: 27, scope: !2399)
!2431 = !DILocation(line: 74, column: 33, scope: !2399)
!2432 = !DILocation(line: 76, column: 1, scope: !2399)
!2433 = !DILocation(line: 0, scope: !325)
!2434 = !DILocation(line: 40, column: 29, scope: !325)
!2435 = !DILocation(line: 41, column: 19, scope: !2436)
!2436 = distinct !DILexicalBlock(scope: !325, file: !326, line: 41, column: 7)
!2437 = !DILocation(line: 41, column: 7, scope: !325)
!2438 = !DILocation(line: 47, column: 3, scope: !325)
!2439 = !DILocation(line: 48, column: 3, scope: !325)
!2440 = !DILocation(line: 48, column: 13, scope: !325)
!2441 = !DILocalVariable(name: "ps", arg: 1, scope: !2442, file: !2443, line: 1135, type: !2446)
!2442 = distinct !DISubprogram(name: "mbszero", scope: !2443, file: !2443, line: 1135, type: !2444, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !329, retainedNodes: !2447)
!2443 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!2444 = !DISubroutineType(types: !2445)
!2445 = !{null, !2446}
!2446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!2447 = !{!2441}
!2448 = !DILocation(line: 0, scope: !2442, inlinedAt: !2449)
!2449 = distinct !DILocation(line: 48, column: 18, scope: !325)
!2450 = !DILocalVariable(name: "__dest", arg: 1, scope: !2451, file: !2260, line: 57, type: !84)
!2451 = distinct !DISubprogram(name: "memset", scope: !2260, file: !2260, line: 57, type: !2452, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !329, retainedNodes: !2454)
!2452 = !DISubroutineType(types: !2453)
!2453 = !{!84, !84, !38, !86}
!2454 = !{!2450, !2455, !2456}
!2455 = !DILocalVariable(name: "__ch", arg: 2, scope: !2451, file: !2260, line: 57, type: !38)
!2456 = !DILocalVariable(name: "__len", arg: 3, scope: !2451, file: !2260, line: 57, type: !86)
!2457 = !DILocation(line: 0, scope: !2451, inlinedAt: !2458)
!2458 = distinct !DILocation(line: 1137, column: 3, scope: !2442, inlinedAt: !2449)
!2459 = !DILocation(line: 59, column: 10, scope: !2451, inlinedAt: !2458)
!2460 = !DILocation(line: 49, column: 7, scope: !2461)
!2461 = distinct !DILexicalBlock(scope: !325, file: !326, line: 49, column: 7)
!2462 = !DILocation(line: 49, column: 39, scope: !2461)
!2463 = !DILocation(line: 49, column: 44, scope: !2461)
!2464 = !DILocation(line: 54, column: 1, scope: !325)
!2465 = !DISubprogram(name: "mbrtoc32", scope: !337, file: !337, line: 57, type: !2466, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !637)
!2466 = !DISubroutineType(types: !2467)
!2467 = !{!86, !2468, !641, !86, !2470}
!2468 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2469)
!2469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!2470 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2446)
!2471 = distinct !DISubprogram(name: "clone_quoting_options", scope: !362, file: !362, line: 113, type: !2472, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !2475)
!2472 = !DISubroutineType(types: !2473)
!2473 = !{!2474, !2474}
!2474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!2475 = !{!2476, !2477, !2478}
!2476 = !DILocalVariable(name: "o", arg: 1, scope: !2471, file: !362, line: 113, type: !2474)
!2477 = !DILocalVariable(name: "saved_errno", scope: !2471, file: !362, line: 115, type: !38)
!2478 = !DILocalVariable(name: "p", scope: !2471, file: !362, line: 116, type: !2474)
!2479 = !DILocation(line: 0, scope: !2471)
!2480 = !DILocation(line: 115, column: 21, scope: !2471)
!2481 = !DILocation(line: 116, column: 40, scope: !2471)
!2482 = !DILocation(line: 116, column: 31, scope: !2471)
!2483 = !DILocation(line: 118, column: 9, scope: !2471)
!2484 = !DILocation(line: 119, column: 3, scope: !2471)
!2485 = distinct !DISubprogram(name: "get_quoting_style", scope: !362, file: !362, line: 124, type: !2486, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !2490)
!2486 = !DISubroutineType(types: !2487)
!2487 = !{!130, !2488}
!2488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2489, size: 64)
!2489 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !379)
!2490 = !{!2491}
!2491 = !DILocalVariable(name: "o", arg: 1, scope: !2485, file: !362, line: 124, type: !2488)
!2492 = !DILocation(line: 0, scope: !2485)
!2493 = !DILocation(line: 126, column: 11, scope: !2485)
!2494 = !DILocation(line: 126, column: 46, scope: !2485)
!2495 = !{!2496, !556, i64 0}
!2496 = !{!"quoting_options", !556, i64 0, !646, i64 4, !556, i64 8, !555, i64 40, !555, i64 48}
!2497 = !DILocation(line: 126, column: 3, scope: !2485)
!2498 = distinct !DISubprogram(name: "set_quoting_style", scope: !362, file: !362, line: 132, type: !2499, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !2501)
!2499 = !DISubroutineType(types: !2500)
!2500 = !{null, !2474, !130}
!2501 = !{!2502, !2503}
!2502 = !DILocalVariable(name: "o", arg: 1, scope: !2498, file: !362, line: 132, type: !2474)
!2503 = !DILocalVariable(name: "s", arg: 2, scope: !2498, file: !362, line: 132, type: !130)
!2504 = !DILocation(line: 0, scope: !2498)
!2505 = !DILocation(line: 134, column: 4, scope: !2498)
!2506 = !DILocation(line: 134, column: 39, scope: !2498)
!2507 = !DILocation(line: 134, column: 45, scope: !2498)
!2508 = !DILocation(line: 135, column: 1, scope: !2498)
!2509 = distinct !DISubprogram(name: "set_char_quoting", scope: !362, file: !362, line: 143, type: !2510, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !2512)
!2510 = !DISubroutineType(types: !2511)
!2511 = !{!38, !2474, !41, !38}
!2512 = !{!2513, !2514, !2515, !2516, !2517, !2519, !2520}
!2513 = !DILocalVariable(name: "o", arg: 1, scope: !2509, file: !362, line: 143, type: !2474)
!2514 = !DILocalVariable(name: "c", arg: 2, scope: !2509, file: !362, line: 143, type: !41)
!2515 = !DILocalVariable(name: "i", arg: 3, scope: !2509, file: !362, line: 143, type: !38)
!2516 = !DILocalVariable(name: "uc", scope: !2509, file: !362, line: 145, type: !145)
!2517 = !DILocalVariable(name: "p", scope: !2509, file: !362, line: 146, type: !2518)
!2518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!2519 = !DILocalVariable(name: "shift", scope: !2509, file: !362, line: 148, type: !38)
!2520 = !DILocalVariable(name: "r", scope: !2509, file: !362, line: 149, type: !6)
!2521 = !DILocation(line: 0, scope: !2509)
!2522 = !DILocation(line: 147, column: 6, scope: !2509)
!2523 = !DILocation(line: 147, column: 62, scope: !2509)
!2524 = !DILocation(line: 147, column: 57, scope: !2509)
!2525 = !DILocation(line: 148, column: 15, scope: !2509)
!2526 = !DILocation(line: 149, column: 21, scope: !2509)
!2527 = !DILocation(line: 149, column: 24, scope: !2509)
!2528 = !DILocation(line: 149, column: 34, scope: !2509)
!2529 = !DILocation(line: 150, column: 13, scope: !2509)
!2530 = !DILocation(line: 150, column: 19, scope: !2509)
!2531 = !DILocation(line: 150, column: 24, scope: !2509)
!2532 = !DILocation(line: 150, column: 6, scope: !2509)
!2533 = !DILocation(line: 151, column: 3, scope: !2509)
!2534 = distinct !DISubprogram(name: "set_quoting_flags", scope: !362, file: !362, line: 159, type: !2535, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !2537)
!2535 = !DISubroutineType(types: !2536)
!2536 = !{!38, !2474, !38}
!2537 = !{!2538, !2539, !2540}
!2538 = !DILocalVariable(name: "o", arg: 1, scope: !2534, file: !362, line: 159, type: !2474)
!2539 = !DILocalVariable(name: "i", arg: 2, scope: !2534, file: !362, line: 159, type: !38)
!2540 = !DILocalVariable(name: "r", scope: !2534, file: !362, line: 163, type: !38)
!2541 = !DILocation(line: 0, scope: !2534)
!2542 = !DILocation(line: 161, column: 8, scope: !2543)
!2543 = distinct !DILexicalBlock(scope: !2534, file: !362, line: 161, column: 7)
!2544 = !DILocation(line: 161, column: 7, scope: !2534)
!2545 = !DILocation(line: 163, column: 14, scope: !2534)
!2546 = !{!2496, !646, i64 4}
!2547 = !DILocation(line: 164, column: 12, scope: !2534)
!2548 = !DILocation(line: 165, column: 3, scope: !2534)
!2549 = distinct !DISubprogram(name: "set_custom_quoting", scope: !362, file: !362, line: 169, type: !2550, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !2552)
!2550 = !DISubroutineType(types: !2551)
!2551 = !{null, !2474, !94, !94}
!2552 = !{!2553, !2554, !2555}
!2553 = !DILocalVariable(name: "o", arg: 1, scope: !2549, file: !362, line: 169, type: !2474)
!2554 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2549, file: !362, line: 170, type: !94)
!2555 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2549, file: !362, line: 170, type: !94)
!2556 = !DILocation(line: 0, scope: !2549)
!2557 = !DILocation(line: 172, column: 8, scope: !2558)
!2558 = distinct !DILexicalBlock(scope: !2549, file: !362, line: 172, column: 7)
!2559 = !DILocation(line: 172, column: 7, scope: !2549)
!2560 = !DILocation(line: 174, column: 6, scope: !2549)
!2561 = !DILocation(line: 174, column: 12, scope: !2549)
!2562 = !DILocation(line: 175, column: 8, scope: !2563)
!2563 = distinct !DILexicalBlock(scope: !2549, file: !362, line: 175, column: 7)
!2564 = !DILocation(line: 175, column: 19, scope: !2563)
!2565 = !DILocation(line: 176, column: 5, scope: !2563)
!2566 = !DILocation(line: 177, column: 6, scope: !2549)
!2567 = !DILocation(line: 177, column: 17, scope: !2549)
!2568 = !{!2496, !555, i64 40}
!2569 = !DILocation(line: 178, column: 6, scope: !2549)
!2570 = !DILocation(line: 178, column: 18, scope: !2549)
!2571 = !{!2496, !555, i64 48}
!2572 = !DILocation(line: 179, column: 1, scope: !2549)
!2573 = distinct !DISubprogram(name: "quotearg_buffer", scope: !362, file: !362, line: 774, type: !2574, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !2576)
!2574 = !DISubroutineType(types: !2575)
!2575 = !{!86, !40, !86, !94, !86, !2488}
!2576 = !{!2577, !2578, !2579, !2580, !2581, !2582, !2583, !2584}
!2577 = !DILocalVariable(name: "buffer", arg: 1, scope: !2573, file: !362, line: 774, type: !40)
!2578 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2573, file: !362, line: 774, type: !86)
!2579 = !DILocalVariable(name: "arg", arg: 3, scope: !2573, file: !362, line: 775, type: !94)
!2580 = !DILocalVariable(name: "argsize", arg: 4, scope: !2573, file: !362, line: 775, type: !86)
!2581 = !DILocalVariable(name: "o", arg: 5, scope: !2573, file: !362, line: 776, type: !2488)
!2582 = !DILocalVariable(name: "p", scope: !2573, file: !362, line: 778, type: !2488)
!2583 = !DILocalVariable(name: "saved_errno", scope: !2573, file: !362, line: 779, type: !38)
!2584 = !DILocalVariable(name: "r", scope: !2573, file: !362, line: 780, type: !86)
!2585 = !DILocation(line: 0, scope: !2573)
!2586 = !DILocation(line: 778, column: 37, scope: !2573)
!2587 = !DILocation(line: 779, column: 21, scope: !2573)
!2588 = !DILocation(line: 781, column: 43, scope: !2573)
!2589 = !DILocation(line: 781, column: 53, scope: !2573)
!2590 = !DILocation(line: 781, column: 60, scope: !2573)
!2591 = !DILocation(line: 782, column: 43, scope: !2573)
!2592 = !DILocation(line: 782, column: 58, scope: !2573)
!2593 = !DILocation(line: 780, column: 14, scope: !2573)
!2594 = !DILocation(line: 783, column: 9, scope: !2573)
!2595 = !DILocation(line: 784, column: 3, scope: !2573)
!2596 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !362, file: !362, line: 251, type: !2597, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !2601)
!2597 = !DISubroutineType(types: !2598)
!2598 = !{!86, !40, !86, !94, !86, !130, !38, !2599, !94, !94}
!2599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2600, size: 64)
!2600 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!2601 = !{!2602, !2603, !2604, !2605, !2606, !2607, !2608, !2609, !2610, !2611, !2612, !2613, !2614, !2615, !2616, !2617, !2618, !2619, !2620, !2621, !2626, !2628, !2631, !2632, !2633, !2634, !2637, !2638, !2641, !2645, !2646, !2654, !2657, !2658, !2660, !2661, !2662, !2663}
!2602 = !DILocalVariable(name: "buffer", arg: 1, scope: !2596, file: !362, line: 251, type: !40)
!2603 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2596, file: !362, line: 251, type: !86)
!2604 = !DILocalVariable(name: "arg", arg: 3, scope: !2596, file: !362, line: 252, type: !94)
!2605 = !DILocalVariable(name: "argsize", arg: 4, scope: !2596, file: !362, line: 252, type: !86)
!2606 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2596, file: !362, line: 253, type: !130)
!2607 = !DILocalVariable(name: "flags", arg: 6, scope: !2596, file: !362, line: 253, type: !38)
!2608 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2596, file: !362, line: 254, type: !2599)
!2609 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2596, file: !362, line: 255, type: !94)
!2610 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2596, file: !362, line: 256, type: !94)
!2611 = !DILocalVariable(name: "unibyte_locale", scope: !2596, file: !362, line: 258, type: !30)
!2612 = !DILocalVariable(name: "len", scope: !2596, file: !362, line: 260, type: !86)
!2613 = !DILocalVariable(name: "orig_buffersize", scope: !2596, file: !362, line: 261, type: !86)
!2614 = !DILocalVariable(name: "quote_string", scope: !2596, file: !362, line: 262, type: !94)
!2615 = !DILocalVariable(name: "quote_string_len", scope: !2596, file: !362, line: 263, type: !86)
!2616 = !DILocalVariable(name: "backslash_escapes", scope: !2596, file: !362, line: 264, type: !30)
!2617 = !DILocalVariable(name: "elide_outer_quotes", scope: !2596, file: !362, line: 265, type: !30)
!2618 = !DILocalVariable(name: "encountered_single_quote", scope: !2596, file: !362, line: 266, type: !30)
!2619 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2596, file: !362, line: 267, type: !30)
!2620 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2596, file: !362, line: 309, type: !30)
!2621 = !DILocalVariable(name: "lq", scope: !2622, file: !362, line: 361, type: !94)
!2622 = distinct !DILexicalBlock(scope: !2623, file: !362, line: 361, column: 11)
!2623 = distinct !DILexicalBlock(scope: !2624, file: !362, line: 360, column: 13)
!2624 = distinct !DILexicalBlock(scope: !2625, file: !362, line: 333, column: 7)
!2625 = distinct !DILexicalBlock(scope: !2596, file: !362, line: 312, column: 5)
!2626 = !DILocalVariable(name: "i", scope: !2627, file: !362, line: 395, type: !86)
!2627 = distinct !DILexicalBlock(scope: !2596, file: !362, line: 395, column: 3)
!2628 = !DILocalVariable(name: "is_right_quote", scope: !2629, file: !362, line: 397, type: !30)
!2629 = distinct !DILexicalBlock(scope: !2630, file: !362, line: 396, column: 5)
!2630 = distinct !DILexicalBlock(scope: !2627, file: !362, line: 395, column: 3)
!2631 = !DILocalVariable(name: "escaping", scope: !2629, file: !362, line: 398, type: !30)
!2632 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2629, file: !362, line: 399, type: !30)
!2633 = !DILocalVariable(name: "c", scope: !2629, file: !362, line: 417, type: !145)
!2634 = !DILocalVariable(name: "m", scope: !2635, file: !362, line: 598, type: !86)
!2635 = distinct !DILexicalBlock(scope: !2636, file: !362, line: 596, column: 11)
!2636 = distinct !DILexicalBlock(scope: !2629, file: !362, line: 419, column: 9)
!2637 = !DILocalVariable(name: "printable", scope: !2635, file: !362, line: 600, type: !30)
!2638 = !DILocalVariable(name: "mbs", scope: !2639, file: !362, line: 609, type: !407)
!2639 = distinct !DILexicalBlock(scope: !2640, file: !362, line: 608, column: 15)
!2640 = distinct !DILexicalBlock(scope: !2635, file: !362, line: 602, column: 17)
!2641 = !DILocalVariable(name: "w", scope: !2642, file: !362, line: 618, type: !336)
!2642 = distinct !DILexicalBlock(scope: !2643, file: !362, line: 617, column: 19)
!2643 = distinct !DILexicalBlock(scope: !2644, file: !362, line: 616, column: 17)
!2644 = distinct !DILexicalBlock(scope: !2639, file: !362, line: 616, column: 17)
!2645 = !DILocalVariable(name: "bytes", scope: !2642, file: !362, line: 619, type: !86)
!2646 = !DILocalVariable(name: "j", scope: !2647, file: !362, line: 648, type: !86)
!2647 = distinct !DILexicalBlock(scope: !2648, file: !362, line: 648, column: 29)
!2648 = distinct !DILexicalBlock(scope: !2649, file: !362, line: 647, column: 27)
!2649 = distinct !DILexicalBlock(scope: !2650, file: !362, line: 645, column: 29)
!2650 = distinct !DILexicalBlock(scope: !2651, file: !362, line: 636, column: 23)
!2651 = distinct !DILexicalBlock(scope: !2652, file: !362, line: 628, column: 30)
!2652 = distinct !DILexicalBlock(scope: !2653, file: !362, line: 623, column: 30)
!2653 = distinct !DILexicalBlock(scope: !2642, file: !362, line: 621, column: 25)
!2654 = !DILocalVariable(name: "ilim", scope: !2655, file: !362, line: 674, type: !86)
!2655 = distinct !DILexicalBlock(scope: !2656, file: !362, line: 671, column: 15)
!2656 = distinct !DILexicalBlock(scope: !2635, file: !362, line: 670, column: 17)
!2657 = !DILabel(scope: !2596, name: "process_input", file: !362, line: 308)
!2658 = !DILabel(scope: !2659, name: "c_and_shell_escape", file: !362, line: 502)
!2659 = distinct !DILexicalBlock(scope: !2636, file: !362, line: 478, column: 9)
!2660 = !DILabel(scope: !2659, name: "c_escape", file: !362, line: 507)
!2661 = !DILabel(scope: !2629, name: "store_escape", file: !362, line: 709)
!2662 = !DILabel(scope: !2629, name: "store_c", file: !362, line: 712)
!2663 = !DILabel(scope: !2596, name: "force_outer_quoting_style", file: !362, line: 753)
!2664 = !DILocation(line: 0, scope: !2596)
!2665 = !DILocation(line: 258, column: 25, scope: !2596)
!2666 = !DILocation(line: 258, column: 36, scope: !2596)
!2667 = !DILocation(line: 267, column: 3, scope: !2596)
!2668 = !DILocation(line: 261, column: 10, scope: !2596)
!2669 = !DILocation(line: 262, column: 15, scope: !2596)
!2670 = !DILocation(line: 263, column: 10, scope: !2596)
!2671 = !DILocation(line: 308, column: 2, scope: !2596)
!2672 = !DILocation(line: 311, column: 3, scope: !2596)
!2673 = !DILocation(line: 318, column: 11, scope: !2625)
!2674 = !DILocation(line: 319, column: 9, scope: !2675)
!2675 = distinct !DILexicalBlock(scope: !2676, file: !362, line: 319, column: 9)
!2676 = distinct !DILexicalBlock(scope: !2677, file: !362, line: 319, column: 9)
!2677 = distinct !DILexicalBlock(scope: !2625, file: !362, line: 318, column: 11)
!2678 = !DILocation(line: 319, column: 9, scope: !2676)
!2679 = !DILocation(line: 0, scope: !398, inlinedAt: !2680)
!2680 = distinct !DILocation(line: 357, column: 26, scope: !2681)
!2681 = distinct !DILexicalBlock(scope: !2682, file: !362, line: 335, column: 11)
!2682 = distinct !DILexicalBlock(scope: !2624, file: !362, line: 334, column: 13)
!2683 = !DILocation(line: 199, column: 29, scope: !398, inlinedAt: !2680)
!2684 = !DILocation(line: 201, column: 19, scope: !2685, inlinedAt: !2680)
!2685 = distinct !DILexicalBlock(scope: !398, file: !362, line: 201, column: 7)
!2686 = !DILocation(line: 201, column: 7, scope: !398, inlinedAt: !2680)
!2687 = !DILocation(line: 229, column: 3, scope: !398, inlinedAt: !2680)
!2688 = !DILocation(line: 230, column: 3, scope: !398, inlinedAt: !2680)
!2689 = !DILocation(line: 230, column: 13, scope: !398, inlinedAt: !2680)
!2690 = !DILocalVariable(name: "ps", arg: 1, scope: !2691, file: !2443, line: 1135, type: !2694)
!2691 = distinct !DISubprogram(name: "mbszero", scope: !2443, file: !2443, line: 1135, type: !2692, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !2695)
!2692 = !DISubroutineType(types: !2693)
!2693 = !{null, !2694}
!2694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!2695 = !{!2690}
!2696 = !DILocation(line: 0, scope: !2691, inlinedAt: !2697)
!2697 = distinct !DILocation(line: 230, column: 18, scope: !398, inlinedAt: !2680)
!2698 = !DILocalVariable(name: "__dest", arg: 1, scope: !2699, file: !2260, line: 57, type: !84)
!2699 = distinct !DISubprogram(name: "memset", scope: !2260, file: !2260, line: 57, type: !2452, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !2700)
!2700 = !{!2698, !2701, !2702}
!2701 = !DILocalVariable(name: "__ch", arg: 2, scope: !2699, file: !2260, line: 57, type: !38)
!2702 = !DILocalVariable(name: "__len", arg: 3, scope: !2699, file: !2260, line: 57, type: !86)
!2703 = !DILocation(line: 0, scope: !2699, inlinedAt: !2704)
!2704 = distinct !DILocation(line: 1137, column: 3, scope: !2691, inlinedAt: !2697)
!2705 = !DILocation(line: 59, column: 10, scope: !2699, inlinedAt: !2704)
!2706 = !DILocation(line: 231, column: 7, scope: !2707, inlinedAt: !2680)
!2707 = distinct !DILexicalBlock(scope: !398, file: !362, line: 231, column: 7)
!2708 = !DILocation(line: 231, column: 40, scope: !2707, inlinedAt: !2680)
!2709 = !DILocation(line: 231, column: 45, scope: !2707, inlinedAt: !2680)
!2710 = !DILocation(line: 235, column: 1, scope: !398, inlinedAt: !2680)
!2711 = !DILocation(line: 0, scope: !398, inlinedAt: !2712)
!2712 = distinct !DILocation(line: 358, column: 27, scope: !2681)
!2713 = !DILocation(line: 199, column: 29, scope: !398, inlinedAt: !2712)
!2714 = !DILocation(line: 201, column: 19, scope: !2685, inlinedAt: !2712)
!2715 = !DILocation(line: 201, column: 7, scope: !398, inlinedAt: !2712)
!2716 = !DILocation(line: 229, column: 3, scope: !398, inlinedAt: !2712)
!2717 = !DILocation(line: 230, column: 3, scope: !398, inlinedAt: !2712)
!2718 = !DILocation(line: 230, column: 13, scope: !398, inlinedAt: !2712)
!2719 = !DILocation(line: 0, scope: !2691, inlinedAt: !2720)
!2720 = distinct !DILocation(line: 230, column: 18, scope: !398, inlinedAt: !2712)
!2721 = !DILocation(line: 0, scope: !2699, inlinedAt: !2722)
!2722 = distinct !DILocation(line: 1137, column: 3, scope: !2691, inlinedAt: !2720)
!2723 = !DILocation(line: 59, column: 10, scope: !2699, inlinedAt: !2722)
!2724 = !DILocation(line: 231, column: 7, scope: !2707, inlinedAt: !2712)
!2725 = !DILocation(line: 231, column: 40, scope: !2707, inlinedAt: !2712)
!2726 = !DILocation(line: 231, column: 45, scope: !2707, inlinedAt: !2712)
!2727 = !DILocation(line: 235, column: 1, scope: !398, inlinedAt: !2712)
!2728 = !DILocation(line: 360, column: 13, scope: !2624)
!2729 = !DILocation(line: 0, scope: !2622)
!2730 = !DILocation(line: 361, column: 45, scope: !2731)
!2731 = distinct !DILexicalBlock(scope: !2622, file: !362, line: 361, column: 11)
!2732 = !DILocation(line: 361, column: 11, scope: !2622)
!2733 = !DILocation(line: 362, column: 13, scope: !2734)
!2734 = distinct !DILexicalBlock(scope: !2735, file: !362, line: 362, column: 13)
!2735 = distinct !DILexicalBlock(scope: !2731, file: !362, line: 362, column: 13)
!2736 = !DILocation(line: 362, column: 13, scope: !2735)
!2737 = !DILocation(line: 361, column: 52, scope: !2731)
!2738 = distinct !{!2738, !2732, !2739, !611}
!2739 = !DILocation(line: 362, column: 13, scope: !2622)
!2740 = !DILocation(line: 260, column: 10, scope: !2596)
!2741 = !DILocation(line: 365, column: 28, scope: !2624)
!2742 = !DILocation(line: 367, column: 7, scope: !2625)
!2743 = !DILocation(line: 370, column: 7, scope: !2625)
!2744 = !DILocation(line: 376, column: 11, scope: !2625)
!2745 = !DILocation(line: 381, column: 11, scope: !2625)
!2746 = !DILocation(line: 382, column: 9, scope: !2747)
!2747 = distinct !DILexicalBlock(scope: !2748, file: !362, line: 382, column: 9)
!2748 = distinct !DILexicalBlock(scope: !2749, file: !362, line: 382, column: 9)
!2749 = distinct !DILexicalBlock(scope: !2625, file: !362, line: 381, column: 11)
!2750 = !DILocation(line: 382, column: 9, scope: !2748)
!2751 = !DILocation(line: 389, column: 7, scope: !2625)
!2752 = !DILocation(line: 392, column: 7, scope: !2625)
!2753 = !DILocation(line: 0, scope: !2627)
!2754 = !DILocation(line: 395, column: 8, scope: !2627)
!2755 = !DILocation(line: 395, column: 34, scope: !2630)
!2756 = !DILocation(line: 395, column: 26, scope: !2630)
!2757 = !DILocation(line: 395, column: 48, scope: !2630)
!2758 = !DILocation(line: 395, column: 55, scope: !2630)
!2759 = !DILocation(line: 395, column: 3, scope: !2627)
!2760 = !DILocation(line: 395, column: 67, scope: !2630)
!2761 = !DILocation(line: 0, scope: !2629)
!2762 = !DILocation(line: 402, column: 11, scope: !2763)
!2763 = distinct !DILexicalBlock(scope: !2629, file: !362, line: 401, column: 11)
!2764 = !DILocation(line: 404, column: 17, scope: !2763)
!2765 = !DILocation(line: 405, column: 39, scope: !2763)
!2766 = !DILocation(line: 409, column: 32, scope: !2763)
!2767 = !DILocation(line: 405, column: 19, scope: !2763)
!2768 = !DILocation(line: 405, column: 15, scope: !2763)
!2769 = !DILocation(line: 410, column: 11, scope: !2763)
!2770 = !DILocation(line: 410, column: 25, scope: !2763)
!2771 = !DILocalVariable(name: "__s1", arg: 1, scope: !2772, file: !595, line: 974, type: !763)
!2772 = distinct !DISubprogram(name: "memeq", scope: !595, file: !595, line: 974, type: !2414, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !2773)
!2773 = !{!2771, !2774, !2775}
!2774 = !DILocalVariable(name: "__s2", arg: 2, scope: !2772, file: !595, line: 974, type: !763)
!2775 = !DILocalVariable(name: "__n", arg: 3, scope: !2772, file: !595, line: 974, type: !86)
!2776 = !DILocation(line: 0, scope: !2772, inlinedAt: !2777)
!2777 = distinct !DILocation(line: 410, column: 14, scope: !2763)
!2778 = !DILocation(line: 976, column: 11, scope: !2772, inlinedAt: !2777)
!2779 = !DILocation(line: 976, column: 10, scope: !2772, inlinedAt: !2777)
!2780 = !DILocation(line: 401, column: 11, scope: !2629)
!2781 = !DILocation(line: 417, column: 25, scope: !2629)
!2782 = !DILocation(line: 418, column: 7, scope: !2629)
!2783 = !DILocation(line: 421, column: 15, scope: !2636)
!2784 = !DILocation(line: 423, column: 15, scope: !2785)
!2785 = distinct !DILexicalBlock(scope: !2786, file: !362, line: 423, column: 15)
!2786 = distinct !DILexicalBlock(scope: !2787, file: !362, line: 422, column: 13)
!2787 = distinct !DILexicalBlock(scope: !2636, file: !362, line: 421, column: 15)
!2788 = !DILocation(line: 423, column: 15, scope: !2789)
!2789 = distinct !DILexicalBlock(scope: !2785, file: !362, line: 423, column: 15)
!2790 = !DILocation(line: 423, column: 15, scope: !2791)
!2791 = distinct !DILexicalBlock(scope: !2792, file: !362, line: 423, column: 15)
!2792 = distinct !DILexicalBlock(scope: !2793, file: !362, line: 423, column: 15)
!2793 = distinct !DILexicalBlock(scope: !2789, file: !362, line: 423, column: 15)
!2794 = !DILocation(line: 423, column: 15, scope: !2792)
!2795 = !DILocation(line: 423, column: 15, scope: !2796)
!2796 = distinct !DILexicalBlock(scope: !2797, file: !362, line: 423, column: 15)
!2797 = distinct !DILexicalBlock(scope: !2793, file: !362, line: 423, column: 15)
!2798 = !DILocation(line: 423, column: 15, scope: !2797)
!2799 = !DILocation(line: 423, column: 15, scope: !2800)
!2800 = distinct !DILexicalBlock(scope: !2801, file: !362, line: 423, column: 15)
!2801 = distinct !DILexicalBlock(scope: !2793, file: !362, line: 423, column: 15)
!2802 = !DILocation(line: 423, column: 15, scope: !2801)
!2803 = !DILocation(line: 423, column: 15, scope: !2793)
!2804 = !DILocation(line: 423, column: 15, scope: !2805)
!2805 = distinct !DILexicalBlock(scope: !2806, file: !362, line: 423, column: 15)
!2806 = distinct !DILexicalBlock(scope: !2785, file: !362, line: 423, column: 15)
!2807 = !DILocation(line: 423, column: 15, scope: !2806)
!2808 = !DILocation(line: 431, column: 19, scope: !2809)
!2809 = distinct !DILexicalBlock(scope: !2786, file: !362, line: 430, column: 19)
!2810 = !DILocation(line: 431, column: 24, scope: !2809)
!2811 = !DILocation(line: 431, column: 28, scope: !2809)
!2812 = !DILocation(line: 431, column: 38, scope: !2809)
!2813 = !DILocation(line: 431, column: 48, scope: !2809)
!2814 = !DILocation(line: 431, column: 59, scope: !2809)
!2815 = !DILocation(line: 433, column: 19, scope: !2816)
!2816 = distinct !DILexicalBlock(scope: !2817, file: !362, line: 433, column: 19)
!2817 = distinct !DILexicalBlock(scope: !2818, file: !362, line: 433, column: 19)
!2818 = distinct !DILexicalBlock(scope: !2809, file: !362, line: 432, column: 17)
!2819 = !DILocation(line: 433, column: 19, scope: !2817)
!2820 = !DILocation(line: 434, column: 19, scope: !2821)
!2821 = distinct !DILexicalBlock(scope: !2822, file: !362, line: 434, column: 19)
!2822 = distinct !DILexicalBlock(scope: !2818, file: !362, line: 434, column: 19)
!2823 = !DILocation(line: 434, column: 19, scope: !2822)
!2824 = !DILocation(line: 435, column: 17, scope: !2818)
!2825 = !DILocation(line: 442, column: 20, scope: !2787)
!2826 = !DILocation(line: 447, column: 11, scope: !2636)
!2827 = !DILocation(line: 450, column: 19, scope: !2828)
!2828 = distinct !DILexicalBlock(scope: !2636, file: !362, line: 448, column: 13)
!2829 = !DILocation(line: 456, column: 19, scope: !2830)
!2830 = distinct !DILexicalBlock(scope: !2828, file: !362, line: 455, column: 19)
!2831 = !DILocation(line: 456, column: 24, scope: !2830)
!2832 = !DILocation(line: 456, column: 28, scope: !2830)
!2833 = !DILocation(line: 456, column: 38, scope: !2830)
!2834 = !DILocation(line: 456, column: 47, scope: !2830)
!2835 = !DILocation(line: 456, column: 41, scope: !2830)
!2836 = !DILocation(line: 456, column: 52, scope: !2830)
!2837 = !DILocation(line: 455, column: 19, scope: !2828)
!2838 = !DILocation(line: 457, column: 25, scope: !2830)
!2839 = !DILocation(line: 457, column: 17, scope: !2830)
!2840 = !DILocation(line: 464, column: 25, scope: !2841)
!2841 = distinct !DILexicalBlock(scope: !2830, file: !362, line: 458, column: 19)
!2842 = !DILocation(line: 468, column: 21, scope: !2843)
!2843 = distinct !DILexicalBlock(scope: !2844, file: !362, line: 468, column: 21)
!2844 = distinct !DILexicalBlock(scope: !2841, file: !362, line: 468, column: 21)
!2845 = !DILocation(line: 468, column: 21, scope: !2844)
!2846 = !DILocation(line: 469, column: 21, scope: !2847)
!2847 = distinct !DILexicalBlock(scope: !2848, file: !362, line: 469, column: 21)
!2848 = distinct !DILexicalBlock(scope: !2841, file: !362, line: 469, column: 21)
!2849 = !DILocation(line: 469, column: 21, scope: !2848)
!2850 = !DILocation(line: 470, column: 21, scope: !2851)
!2851 = distinct !DILexicalBlock(scope: !2852, file: !362, line: 470, column: 21)
!2852 = distinct !DILexicalBlock(scope: !2841, file: !362, line: 470, column: 21)
!2853 = !DILocation(line: 470, column: 21, scope: !2852)
!2854 = !DILocation(line: 471, column: 21, scope: !2855)
!2855 = distinct !DILexicalBlock(scope: !2856, file: !362, line: 471, column: 21)
!2856 = distinct !DILexicalBlock(scope: !2841, file: !362, line: 471, column: 21)
!2857 = !DILocation(line: 471, column: 21, scope: !2856)
!2858 = !DILocation(line: 472, column: 21, scope: !2841)
!2859 = !DILocation(line: 482, column: 33, scope: !2659)
!2860 = !DILocation(line: 483, column: 33, scope: !2659)
!2861 = !DILocation(line: 485, column: 33, scope: !2659)
!2862 = !DILocation(line: 486, column: 33, scope: !2659)
!2863 = !DILocation(line: 487, column: 33, scope: !2659)
!2864 = !DILocation(line: 490, column: 17, scope: !2659)
!2865 = !DILocation(line: 492, column: 21, scope: !2866)
!2866 = distinct !DILexicalBlock(scope: !2867, file: !362, line: 491, column: 15)
!2867 = distinct !DILexicalBlock(scope: !2659, file: !362, line: 490, column: 17)
!2868 = !DILocation(line: 499, column: 35, scope: !2869)
!2869 = distinct !DILexicalBlock(scope: !2659, file: !362, line: 499, column: 17)
!2870 = !DILocation(line: 499, column: 57, scope: !2869)
!2871 = !DILocation(line: 0, scope: !2659)
!2872 = !DILocation(line: 502, column: 11, scope: !2659)
!2873 = !DILocation(line: 504, column: 17, scope: !2874)
!2874 = distinct !DILexicalBlock(scope: !2659, file: !362, line: 503, column: 17)
!2875 = !DILocation(line: 507, column: 11, scope: !2659)
!2876 = !DILocation(line: 508, column: 17, scope: !2659)
!2877 = !DILocation(line: 517, column: 15, scope: !2636)
!2878 = !DILocation(line: 517, column: 40, scope: !2879)
!2879 = distinct !DILexicalBlock(scope: !2636, file: !362, line: 517, column: 15)
!2880 = !DILocation(line: 517, column: 47, scope: !2879)
!2881 = !DILocation(line: 517, column: 18, scope: !2879)
!2882 = !DILocation(line: 521, column: 17, scope: !2883)
!2883 = distinct !DILexicalBlock(scope: !2636, file: !362, line: 521, column: 15)
!2884 = !DILocation(line: 521, column: 15, scope: !2636)
!2885 = !DILocation(line: 525, column: 11, scope: !2636)
!2886 = !DILocation(line: 537, column: 15, scope: !2887)
!2887 = distinct !DILexicalBlock(scope: !2636, file: !362, line: 536, column: 15)
!2888 = !DILocation(line: 536, column: 15, scope: !2636)
!2889 = !DILocation(line: 544, column: 15, scope: !2636)
!2890 = !DILocation(line: 546, column: 19, scope: !2891)
!2891 = distinct !DILexicalBlock(scope: !2892, file: !362, line: 545, column: 13)
!2892 = distinct !DILexicalBlock(scope: !2636, file: !362, line: 544, column: 15)
!2893 = !DILocation(line: 549, column: 19, scope: !2894)
!2894 = distinct !DILexicalBlock(scope: !2891, file: !362, line: 549, column: 19)
!2895 = !DILocation(line: 549, column: 30, scope: !2894)
!2896 = !DILocation(line: 558, column: 15, scope: !2897)
!2897 = distinct !DILexicalBlock(scope: !2898, file: !362, line: 558, column: 15)
!2898 = distinct !DILexicalBlock(scope: !2891, file: !362, line: 558, column: 15)
!2899 = !DILocation(line: 558, column: 15, scope: !2898)
!2900 = !DILocation(line: 559, column: 15, scope: !2901)
!2901 = distinct !DILexicalBlock(scope: !2902, file: !362, line: 559, column: 15)
!2902 = distinct !DILexicalBlock(scope: !2891, file: !362, line: 559, column: 15)
!2903 = !DILocation(line: 559, column: 15, scope: !2902)
!2904 = !DILocation(line: 560, column: 15, scope: !2905)
!2905 = distinct !DILexicalBlock(scope: !2906, file: !362, line: 560, column: 15)
!2906 = distinct !DILexicalBlock(scope: !2891, file: !362, line: 560, column: 15)
!2907 = !DILocation(line: 560, column: 15, scope: !2906)
!2908 = !DILocation(line: 562, column: 13, scope: !2891)
!2909 = !DILocation(line: 602, column: 17, scope: !2635)
!2910 = !DILocation(line: 0, scope: !2635)
!2911 = !DILocation(line: 605, column: 29, scope: !2912)
!2912 = distinct !DILexicalBlock(scope: !2640, file: !362, line: 603, column: 15)
!2913 = !DILocation(line: 605, column: 41, scope: !2912)
!2914 = !DILocation(line: 670, column: 23, scope: !2656)
!2915 = !DILocation(line: 609, column: 17, scope: !2639)
!2916 = !DILocation(line: 609, column: 27, scope: !2639)
!2917 = !DILocation(line: 0, scope: !2691, inlinedAt: !2918)
!2918 = distinct !DILocation(line: 609, column: 32, scope: !2639)
!2919 = !DILocation(line: 0, scope: !2699, inlinedAt: !2920)
!2920 = distinct !DILocation(line: 1137, column: 3, scope: !2691, inlinedAt: !2918)
!2921 = !DILocation(line: 59, column: 10, scope: !2699, inlinedAt: !2920)
!2922 = !DILocation(line: 613, column: 29, scope: !2923)
!2923 = distinct !DILexicalBlock(scope: !2639, file: !362, line: 613, column: 21)
!2924 = !DILocation(line: 613, column: 21, scope: !2639)
!2925 = !DILocation(line: 614, column: 29, scope: !2923)
!2926 = !DILocation(line: 614, column: 19, scope: !2923)
!2927 = !DILocation(line: 618, column: 21, scope: !2642)
!2928 = !DILocation(line: 620, column: 54, scope: !2642)
!2929 = !DILocation(line: 0, scope: !2642)
!2930 = !DILocation(line: 619, column: 36, scope: !2642)
!2931 = !DILocation(line: 621, column: 25, scope: !2642)
!2932 = !DILocation(line: 631, column: 38, scope: !2933)
!2933 = distinct !DILexicalBlock(scope: !2651, file: !362, line: 629, column: 23)
!2934 = !DILocation(line: 631, column: 48, scope: !2933)
!2935 = !DILocation(line: 665, column: 19, scope: !2643)
!2936 = !DILocation(line: 666, column: 15, scope: !2640)
!2937 = !DILocation(line: 626, column: 25, scope: !2938)
!2938 = distinct !DILexicalBlock(scope: !2652, file: !362, line: 624, column: 23)
!2939 = !DILocation(line: 631, column: 51, scope: !2933)
!2940 = !DILocation(line: 631, column: 25, scope: !2933)
!2941 = !DILocation(line: 632, column: 28, scope: !2933)
!2942 = !DILocation(line: 631, column: 34, scope: !2933)
!2943 = distinct !{!2943, !2940, !2941, !611}
!2944 = !DILocation(line: 646, column: 29, scope: !2649)
!2945 = !DILocation(line: 0, scope: !2647)
!2946 = !DILocation(line: 649, column: 49, scope: !2947)
!2947 = distinct !DILexicalBlock(scope: !2647, file: !362, line: 648, column: 29)
!2948 = !DILocation(line: 649, column: 39, scope: !2947)
!2949 = !DILocation(line: 649, column: 31, scope: !2947)
!2950 = !DILocation(line: 648, column: 60, scope: !2947)
!2951 = !DILocation(line: 648, column: 50, scope: !2947)
!2952 = !DILocation(line: 648, column: 29, scope: !2647)
!2953 = distinct !{!2953, !2952, !2954, !611}
!2954 = !DILocation(line: 654, column: 33, scope: !2647)
!2955 = !DILocation(line: 657, column: 43, scope: !2956)
!2956 = distinct !DILexicalBlock(scope: !2650, file: !362, line: 657, column: 29)
!2957 = !DILocalVariable(name: "wc", arg: 1, scope: !2958, file: !2959, line: 865, type: !2962)
!2958 = distinct !DISubprogram(name: "c32isprint", scope: !2959, file: !2959, line: 865, type: !2960, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !2964)
!2959 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2960 = !DISubroutineType(types: !2961)
!2961 = !{!38, !2962}
!2962 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2963, line: 20, baseType: !6)
!2963 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!2964 = !{!2957}
!2965 = !DILocation(line: 0, scope: !2958, inlinedAt: !2966)
!2966 = distinct !DILocation(line: 657, column: 31, scope: !2956)
!2967 = !DILocation(line: 871, column: 10, scope: !2958, inlinedAt: !2966)
!2968 = !DILocation(line: 657, column: 31, scope: !2956)
!2969 = !DILocation(line: 664, column: 23, scope: !2642)
!2970 = !DILocation(line: 753, column: 2, scope: !2596)
!2971 = !DILocation(line: 756, column: 51, scope: !2972)
!2972 = distinct !DILexicalBlock(scope: !2596, file: !362, line: 756, column: 7)
!2973 = !DILocation(line: 670, column: 19, scope: !2656)
!2974 = !DILocation(line: 670, column: 45, scope: !2656)
!2975 = !DILocation(line: 674, column: 33, scope: !2655)
!2976 = !DILocation(line: 0, scope: !2655)
!2977 = !DILocation(line: 676, column: 17, scope: !2655)
!2978 = !DILocation(line: 398, column: 12, scope: !2629)
!2979 = !DILocation(line: 678, column: 43, scope: !2980)
!2980 = distinct !DILexicalBlock(scope: !2981, file: !362, line: 678, column: 25)
!2981 = distinct !DILexicalBlock(scope: !2982, file: !362, line: 677, column: 19)
!2982 = distinct !DILexicalBlock(scope: !2983, file: !362, line: 676, column: 17)
!2983 = distinct !DILexicalBlock(scope: !2655, file: !362, line: 676, column: 17)
!2984 = !DILocation(line: 680, column: 25, scope: !2985)
!2985 = distinct !DILexicalBlock(scope: !2986, file: !362, line: 680, column: 25)
!2986 = distinct !DILexicalBlock(scope: !2980, file: !362, line: 679, column: 23)
!2987 = !DILocation(line: 680, column: 25, scope: !2988)
!2988 = distinct !DILexicalBlock(scope: !2985, file: !362, line: 680, column: 25)
!2989 = !DILocation(line: 680, column: 25, scope: !2990)
!2990 = distinct !DILexicalBlock(scope: !2991, file: !362, line: 680, column: 25)
!2991 = distinct !DILexicalBlock(scope: !2992, file: !362, line: 680, column: 25)
!2992 = distinct !DILexicalBlock(scope: !2988, file: !362, line: 680, column: 25)
!2993 = !DILocation(line: 680, column: 25, scope: !2991)
!2994 = !DILocation(line: 680, column: 25, scope: !2995)
!2995 = distinct !DILexicalBlock(scope: !2996, file: !362, line: 680, column: 25)
!2996 = distinct !DILexicalBlock(scope: !2992, file: !362, line: 680, column: 25)
!2997 = !DILocation(line: 680, column: 25, scope: !2996)
!2998 = !DILocation(line: 680, column: 25, scope: !2999)
!2999 = distinct !DILexicalBlock(scope: !3000, file: !362, line: 680, column: 25)
!3000 = distinct !DILexicalBlock(scope: !2992, file: !362, line: 680, column: 25)
!3001 = !DILocation(line: 680, column: 25, scope: !3000)
!3002 = !DILocation(line: 680, column: 25, scope: !2992)
!3003 = !DILocation(line: 680, column: 25, scope: !3004)
!3004 = distinct !DILexicalBlock(scope: !3005, file: !362, line: 680, column: 25)
!3005 = distinct !DILexicalBlock(scope: !2985, file: !362, line: 680, column: 25)
!3006 = !DILocation(line: 680, column: 25, scope: !3005)
!3007 = !DILocation(line: 681, column: 25, scope: !3008)
!3008 = distinct !DILexicalBlock(scope: !3009, file: !362, line: 681, column: 25)
!3009 = distinct !DILexicalBlock(scope: !2986, file: !362, line: 681, column: 25)
!3010 = !DILocation(line: 681, column: 25, scope: !3009)
!3011 = !DILocation(line: 682, column: 25, scope: !3012)
!3012 = distinct !DILexicalBlock(scope: !3013, file: !362, line: 682, column: 25)
!3013 = distinct !DILexicalBlock(scope: !2986, file: !362, line: 682, column: 25)
!3014 = !DILocation(line: 682, column: 25, scope: !3013)
!3015 = !DILocation(line: 683, column: 38, scope: !2986)
!3016 = !DILocation(line: 683, column: 33, scope: !2986)
!3017 = !DILocation(line: 684, column: 23, scope: !2986)
!3018 = !DILocation(line: 685, column: 30, scope: !2980)
!3019 = !DILocation(line: 687, column: 25, scope: !3020)
!3020 = distinct !DILexicalBlock(scope: !3021, file: !362, line: 687, column: 25)
!3021 = distinct !DILexicalBlock(scope: !3022, file: !362, line: 687, column: 25)
!3022 = distinct !DILexicalBlock(scope: !3023, file: !362, line: 686, column: 23)
!3023 = distinct !DILexicalBlock(scope: !2980, file: !362, line: 685, column: 30)
!3024 = !DILocation(line: 687, column: 25, scope: !3021)
!3025 = !DILocation(line: 689, column: 23, scope: !3022)
!3026 = !DILocation(line: 690, column: 35, scope: !3027)
!3027 = distinct !DILexicalBlock(scope: !2981, file: !362, line: 690, column: 25)
!3028 = !DILocation(line: 690, column: 30, scope: !3027)
!3029 = !DILocation(line: 690, column: 25, scope: !2981)
!3030 = !DILocation(line: 692, column: 21, scope: !3031)
!3031 = distinct !DILexicalBlock(scope: !3032, file: !362, line: 692, column: 21)
!3032 = distinct !DILexicalBlock(scope: !2981, file: !362, line: 692, column: 21)
!3033 = !DILocation(line: 692, column: 21, scope: !3034)
!3034 = distinct !DILexicalBlock(scope: !3035, file: !362, line: 692, column: 21)
!3035 = distinct !DILexicalBlock(scope: !3036, file: !362, line: 692, column: 21)
!3036 = distinct !DILexicalBlock(scope: !3031, file: !362, line: 692, column: 21)
!3037 = !DILocation(line: 692, column: 21, scope: !3035)
!3038 = !DILocation(line: 692, column: 21, scope: !3039)
!3039 = distinct !DILexicalBlock(scope: !3040, file: !362, line: 692, column: 21)
!3040 = distinct !DILexicalBlock(scope: !3036, file: !362, line: 692, column: 21)
!3041 = !DILocation(line: 692, column: 21, scope: !3040)
!3042 = !DILocation(line: 692, column: 21, scope: !3036)
!3043 = !DILocation(line: 0, scope: !2981)
!3044 = !DILocation(line: 693, column: 21, scope: !3045)
!3045 = distinct !DILexicalBlock(scope: !3046, file: !362, line: 693, column: 21)
!3046 = distinct !DILexicalBlock(scope: !2981, file: !362, line: 693, column: 21)
!3047 = !DILocation(line: 693, column: 21, scope: !3046)
!3048 = !DILocation(line: 694, column: 25, scope: !2981)
!3049 = !DILocation(line: 676, column: 17, scope: !2982)
!3050 = distinct !{!3050, !3051, !3052}
!3051 = !DILocation(line: 676, column: 17, scope: !2983)
!3052 = !DILocation(line: 695, column: 19, scope: !2983)
!3053 = !DILocation(line: 409, column: 30, scope: !2763)
!3054 = !DILocation(line: 702, column: 34, scope: !3055)
!3055 = distinct !DILexicalBlock(scope: !2629, file: !362, line: 702, column: 11)
!3056 = !DILocation(line: 704, column: 14, scope: !3055)
!3057 = !DILocation(line: 705, column: 14, scope: !3055)
!3058 = !DILocation(line: 705, column: 35, scope: !3055)
!3059 = !DILocation(line: 705, column: 17, scope: !3055)
!3060 = !DILocation(line: 705, column: 47, scope: !3055)
!3061 = !DILocation(line: 705, column: 65, scope: !3055)
!3062 = !DILocation(line: 706, column: 11, scope: !3055)
!3063 = !DILocation(line: 702, column: 11, scope: !2629)
!3064 = !DILocation(line: 395, column: 15, scope: !2627)
!3065 = !DILocation(line: 709, column: 5, scope: !2629)
!3066 = !DILocation(line: 710, column: 7, scope: !3067)
!3067 = distinct !DILexicalBlock(scope: !2629, file: !362, line: 710, column: 7)
!3068 = !DILocation(line: 710, column: 7, scope: !3069)
!3069 = distinct !DILexicalBlock(scope: !3067, file: !362, line: 710, column: 7)
!3070 = !DILocation(line: 710, column: 7, scope: !3071)
!3071 = distinct !DILexicalBlock(scope: !3072, file: !362, line: 710, column: 7)
!3072 = distinct !DILexicalBlock(scope: !3073, file: !362, line: 710, column: 7)
!3073 = distinct !DILexicalBlock(scope: !3069, file: !362, line: 710, column: 7)
!3074 = !DILocation(line: 710, column: 7, scope: !3072)
!3075 = !DILocation(line: 710, column: 7, scope: !3076)
!3076 = distinct !DILexicalBlock(scope: !3077, file: !362, line: 710, column: 7)
!3077 = distinct !DILexicalBlock(scope: !3073, file: !362, line: 710, column: 7)
!3078 = !DILocation(line: 710, column: 7, scope: !3077)
!3079 = !DILocation(line: 710, column: 7, scope: !3080)
!3080 = distinct !DILexicalBlock(scope: !3081, file: !362, line: 710, column: 7)
!3081 = distinct !DILexicalBlock(scope: !3073, file: !362, line: 710, column: 7)
!3082 = !DILocation(line: 710, column: 7, scope: !3081)
!3083 = !DILocation(line: 710, column: 7, scope: !3073)
!3084 = !DILocation(line: 710, column: 7, scope: !3085)
!3085 = distinct !DILexicalBlock(scope: !3086, file: !362, line: 710, column: 7)
!3086 = distinct !DILexicalBlock(scope: !3067, file: !362, line: 710, column: 7)
!3087 = !DILocation(line: 710, column: 7, scope: !3086)
!3088 = !DILocation(line: 712, column: 5, scope: !2629)
!3089 = !DILocation(line: 713, column: 7, scope: !3090)
!3090 = distinct !DILexicalBlock(scope: !3091, file: !362, line: 713, column: 7)
!3091 = distinct !DILexicalBlock(scope: !2629, file: !362, line: 713, column: 7)
!3092 = !DILocation(line: 417, column: 21, scope: !2629)
!3093 = !DILocation(line: 713, column: 7, scope: !3094)
!3094 = distinct !DILexicalBlock(scope: !3095, file: !362, line: 713, column: 7)
!3095 = distinct !DILexicalBlock(scope: !3096, file: !362, line: 713, column: 7)
!3096 = distinct !DILexicalBlock(scope: !3090, file: !362, line: 713, column: 7)
!3097 = !DILocation(line: 713, column: 7, scope: !3095)
!3098 = !DILocation(line: 713, column: 7, scope: !3099)
!3099 = distinct !DILexicalBlock(scope: !3100, file: !362, line: 713, column: 7)
!3100 = distinct !DILexicalBlock(scope: !3096, file: !362, line: 713, column: 7)
!3101 = !DILocation(line: 713, column: 7, scope: !3100)
!3102 = !DILocation(line: 713, column: 7, scope: !3096)
!3103 = !DILocation(line: 714, column: 7, scope: !3104)
!3104 = distinct !DILexicalBlock(scope: !3105, file: !362, line: 714, column: 7)
!3105 = distinct !DILexicalBlock(scope: !2629, file: !362, line: 714, column: 7)
!3106 = !DILocation(line: 714, column: 7, scope: !3105)
!3107 = !DILocation(line: 716, column: 11, scope: !2629)
!3108 = !DILocation(line: 718, column: 5, scope: !2630)
!3109 = !DILocation(line: 395, column: 82, scope: !2630)
!3110 = !DILocation(line: 395, column: 3, scope: !2630)
!3111 = distinct !{!3111, !2759, !3112, !611}
!3112 = !DILocation(line: 718, column: 5, scope: !2627)
!3113 = !DILocation(line: 720, column: 11, scope: !3114)
!3114 = distinct !DILexicalBlock(scope: !2596, file: !362, line: 720, column: 7)
!3115 = !DILocation(line: 720, column: 16, scope: !3114)
!3116 = !DILocation(line: 728, column: 51, scope: !3117)
!3117 = distinct !DILexicalBlock(scope: !2596, file: !362, line: 728, column: 7)
!3118 = !DILocation(line: 731, column: 11, scope: !3119)
!3119 = distinct !DILexicalBlock(scope: !3117, file: !362, line: 730, column: 5)
!3120 = !DILocation(line: 732, column: 16, scope: !3121)
!3121 = distinct !DILexicalBlock(scope: !3119, file: !362, line: 731, column: 11)
!3122 = !DILocation(line: 732, column: 9, scope: !3121)
!3123 = !DILocation(line: 736, column: 18, scope: !3124)
!3124 = distinct !DILexicalBlock(scope: !3121, file: !362, line: 736, column: 16)
!3125 = !DILocation(line: 736, column: 29, scope: !3124)
!3126 = !DILocation(line: 745, column: 7, scope: !3127)
!3127 = distinct !DILexicalBlock(scope: !2596, file: !362, line: 745, column: 7)
!3128 = !DILocation(line: 745, column: 20, scope: !3127)
!3129 = !DILocation(line: 746, column: 12, scope: !3130)
!3130 = distinct !DILexicalBlock(scope: !3131, file: !362, line: 746, column: 5)
!3131 = distinct !DILexicalBlock(scope: !3127, file: !362, line: 746, column: 5)
!3132 = !DILocation(line: 746, column: 5, scope: !3131)
!3133 = !DILocation(line: 747, column: 7, scope: !3134)
!3134 = distinct !DILexicalBlock(scope: !3135, file: !362, line: 747, column: 7)
!3135 = distinct !DILexicalBlock(scope: !3130, file: !362, line: 747, column: 7)
!3136 = !DILocation(line: 747, column: 7, scope: !3135)
!3137 = !DILocation(line: 746, column: 39, scope: !3130)
!3138 = distinct !{!3138, !3132, !3139, !611}
!3139 = !DILocation(line: 747, column: 7, scope: !3131)
!3140 = !DILocation(line: 749, column: 11, scope: !3141)
!3141 = distinct !DILexicalBlock(scope: !2596, file: !362, line: 749, column: 7)
!3142 = !DILocation(line: 749, column: 7, scope: !2596)
!3143 = !DILocation(line: 750, column: 5, scope: !3141)
!3144 = !DILocation(line: 750, column: 17, scope: !3141)
!3145 = !DILocation(line: 756, column: 21, scope: !2972)
!3146 = !DILocation(line: 760, column: 42, scope: !2596)
!3147 = !DILocation(line: 758, column: 10, scope: !2596)
!3148 = !DILocation(line: 758, column: 3, scope: !2596)
!3149 = !DILocation(line: 762, column: 1, scope: !2596)
!3150 = !DISubprogram(name: "iswprint", scope: !3151, file: !3151, line: 120, type: !2960, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !637)
!3151 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!3152 = distinct !DISubprogram(name: "quotearg_alloc", scope: !362, file: !362, line: 788, type: !3153, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !3155)
!3153 = !DISubroutineType(types: !3154)
!3154 = !{!40, !94, !86, !2488}
!3155 = !{!3156, !3157, !3158}
!3156 = !DILocalVariable(name: "arg", arg: 1, scope: !3152, file: !362, line: 788, type: !94)
!3157 = !DILocalVariable(name: "argsize", arg: 2, scope: !3152, file: !362, line: 788, type: !86)
!3158 = !DILocalVariable(name: "o", arg: 3, scope: !3152, file: !362, line: 789, type: !2488)
!3159 = !DILocation(line: 0, scope: !3152)
!3160 = !DILocalVariable(name: "arg", arg: 1, scope: !3161, file: !362, line: 801, type: !94)
!3161 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !362, file: !362, line: 801, type: !3162, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !3164)
!3162 = !DISubroutineType(types: !3163)
!3163 = !{!40, !94, !86, !494, !2488}
!3164 = !{!3160, !3165, !3166, !3167, !3168, !3169, !3170, !3171, !3172}
!3165 = !DILocalVariable(name: "argsize", arg: 2, scope: !3161, file: !362, line: 801, type: !86)
!3166 = !DILocalVariable(name: "size", arg: 3, scope: !3161, file: !362, line: 801, type: !494)
!3167 = !DILocalVariable(name: "o", arg: 4, scope: !3161, file: !362, line: 802, type: !2488)
!3168 = !DILocalVariable(name: "p", scope: !3161, file: !362, line: 804, type: !2488)
!3169 = !DILocalVariable(name: "saved_errno", scope: !3161, file: !362, line: 805, type: !38)
!3170 = !DILocalVariable(name: "flags", scope: !3161, file: !362, line: 807, type: !38)
!3171 = !DILocalVariable(name: "bufsize", scope: !3161, file: !362, line: 808, type: !86)
!3172 = !DILocalVariable(name: "buf", scope: !3161, file: !362, line: 812, type: !40)
!3173 = !DILocation(line: 0, scope: !3161, inlinedAt: !3174)
!3174 = distinct !DILocation(line: 791, column: 10, scope: !3152)
!3175 = !DILocation(line: 804, column: 37, scope: !3161, inlinedAt: !3174)
!3176 = !DILocation(line: 805, column: 21, scope: !3161, inlinedAt: !3174)
!3177 = !DILocation(line: 807, column: 18, scope: !3161, inlinedAt: !3174)
!3178 = !DILocation(line: 807, column: 24, scope: !3161, inlinedAt: !3174)
!3179 = !DILocation(line: 808, column: 72, scope: !3161, inlinedAt: !3174)
!3180 = !DILocation(line: 809, column: 53, scope: !3161, inlinedAt: !3174)
!3181 = !DILocation(line: 810, column: 49, scope: !3161, inlinedAt: !3174)
!3182 = !DILocation(line: 811, column: 49, scope: !3161, inlinedAt: !3174)
!3183 = !DILocation(line: 808, column: 20, scope: !3161, inlinedAt: !3174)
!3184 = !DILocation(line: 811, column: 62, scope: !3161, inlinedAt: !3174)
!3185 = !DILocation(line: 812, column: 15, scope: !3161, inlinedAt: !3174)
!3186 = !DILocation(line: 813, column: 60, scope: !3161, inlinedAt: !3174)
!3187 = !DILocation(line: 815, column: 32, scope: !3161, inlinedAt: !3174)
!3188 = !DILocation(line: 815, column: 47, scope: !3161, inlinedAt: !3174)
!3189 = !DILocation(line: 813, column: 3, scope: !3161, inlinedAt: !3174)
!3190 = !DILocation(line: 816, column: 9, scope: !3161, inlinedAt: !3174)
!3191 = !DILocation(line: 791, column: 3, scope: !3152)
!3192 = !DILocation(line: 0, scope: !3161)
!3193 = !DILocation(line: 804, column: 37, scope: !3161)
!3194 = !DILocation(line: 805, column: 21, scope: !3161)
!3195 = !DILocation(line: 807, column: 18, scope: !3161)
!3196 = !DILocation(line: 807, column: 27, scope: !3161)
!3197 = !DILocation(line: 807, column: 24, scope: !3161)
!3198 = !DILocation(line: 808, column: 72, scope: !3161)
!3199 = !DILocation(line: 809, column: 53, scope: !3161)
!3200 = !DILocation(line: 810, column: 49, scope: !3161)
!3201 = !DILocation(line: 811, column: 49, scope: !3161)
!3202 = !DILocation(line: 808, column: 20, scope: !3161)
!3203 = !DILocation(line: 811, column: 62, scope: !3161)
!3204 = !DILocation(line: 812, column: 15, scope: !3161)
!3205 = !DILocation(line: 813, column: 60, scope: !3161)
!3206 = !DILocation(line: 815, column: 32, scope: !3161)
!3207 = !DILocation(line: 815, column: 47, scope: !3161)
!3208 = !DILocation(line: 813, column: 3, scope: !3161)
!3209 = !DILocation(line: 816, column: 9, scope: !3161)
!3210 = !DILocation(line: 817, column: 7, scope: !3161)
!3211 = !DILocation(line: 818, column: 11, scope: !3212)
!3212 = distinct !DILexicalBlock(scope: !3161, file: !362, line: 817, column: 7)
!3213 = !DILocation(line: 818, column: 5, scope: !3212)
!3214 = !DILocation(line: 819, column: 3, scope: !3161)
!3215 = distinct !DISubprogram(name: "quotearg_free", scope: !362, file: !362, line: 837, type: !309, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !3216)
!3216 = !{!3217, !3218}
!3217 = !DILocalVariable(name: "sv", scope: !3215, file: !362, line: 839, type: !421)
!3218 = !DILocalVariable(name: "i", scope: !3219, file: !362, line: 840, type: !38)
!3219 = distinct !DILexicalBlock(scope: !3215, file: !362, line: 840, column: 3)
!3220 = !DILocation(line: 839, column: 24, scope: !3215)
!3221 = !DILocation(line: 0, scope: !3215)
!3222 = !DILocation(line: 0, scope: !3219)
!3223 = !DILocation(line: 840, column: 21, scope: !3224)
!3224 = distinct !DILexicalBlock(scope: !3219, file: !362, line: 840, column: 3)
!3225 = !DILocation(line: 840, column: 3, scope: !3219)
!3226 = !DILocation(line: 842, column: 13, scope: !3227)
!3227 = distinct !DILexicalBlock(scope: !3215, file: !362, line: 842, column: 7)
!3228 = !{!3229, !555, i64 8}
!3229 = !{!"slotvec", !920, i64 0, !555, i64 8}
!3230 = !DILocation(line: 842, column: 17, scope: !3227)
!3231 = !DILocation(line: 842, column: 7, scope: !3215)
!3232 = !DILocation(line: 841, column: 17, scope: !3224)
!3233 = !DILocation(line: 841, column: 5, scope: !3224)
!3234 = !DILocation(line: 840, column: 32, scope: !3224)
!3235 = distinct !{!3235, !3225, !3236, !611}
!3236 = !DILocation(line: 841, column: 20, scope: !3219)
!3237 = !DILocation(line: 844, column: 7, scope: !3238)
!3238 = distinct !DILexicalBlock(scope: !3227, file: !362, line: 843, column: 5)
!3239 = !DILocation(line: 845, column: 21, scope: !3238)
!3240 = !{!3229, !920, i64 0}
!3241 = !DILocation(line: 846, column: 20, scope: !3238)
!3242 = !DILocation(line: 847, column: 5, scope: !3238)
!3243 = !DILocation(line: 848, column: 10, scope: !3244)
!3244 = distinct !DILexicalBlock(scope: !3215, file: !362, line: 848, column: 7)
!3245 = !DILocation(line: 848, column: 7, scope: !3215)
!3246 = !DILocation(line: 850, column: 13, scope: !3247)
!3247 = distinct !DILexicalBlock(scope: !3244, file: !362, line: 849, column: 5)
!3248 = !DILocation(line: 850, column: 7, scope: !3247)
!3249 = !DILocation(line: 851, column: 15, scope: !3247)
!3250 = !DILocation(line: 852, column: 5, scope: !3247)
!3251 = !DILocation(line: 853, column: 10, scope: !3215)
!3252 = !DILocation(line: 854, column: 1, scope: !3215)
!3253 = distinct !DISubprogram(name: "quotearg_n", scope: !362, file: !362, line: 919, type: !753, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !3254)
!3254 = !{!3255, !3256}
!3255 = !DILocalVariable(name: "n", arg: 1, scope: !3253, file: !362, line: 919, type: !38)
!3256 = !DILocalVariable(name: "arg", arg: 2, scope: !3253, file: !362, line: 919, type: !94)
!3257 = !DILocation(line: 0, scope: !3253)
!3258 = !DILocation(line: 921, column: 10, scope: !3253)
!3259 = !DILocation(line: 921, column: 3, scope: !3253)
!3260 = distinct !DISubprogram(name: "quotearg_n_options", scope: !362, file: !362, line: 866, type: !3261, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !3263)
!3261 = !DISubroutineType(types: !3262)
!3262 = !{!40, !38, !94, !86, !2488}
!3263 = !{!3264, !3265, !3266, !3267, !3268, !3269, !3270, !3271, !3274, !3275, !3277, !3278, !3279}
!3264 = !DILocalVariable(name: "n", arg: 1, scope: !3260, file: !362, line: 866, type: !38)
!3265 = !DILocalVariable(name: "arg", arg: 2, scope: !3260, file: !362, line: 866, type: !94)
!3266 = !DILocalVariable(name: "argsize", arg: 3, scope: !3260, file: !362, line: 866, type: !86)
!3267 = !DILocalVariable(name: "options", arg: 4, scope: !3260, file: !362, line: 867, type: !2488)
!3268 = !DILocalVariable(name: "saved_errno", scope: !3260, file: !362, line: 869, type: !38)
!3269 = !DILocalVariable(name: "sv", scope: !3260, file: !362, line: 871, type: !421)
!3270 = !DILocalVariable(name: "nslots_max", scope: !3260, file: !362, line: 873, type: !38)
!3271 = !DILocalVariable(name: "preallocated", scope: !3272, file: !362, line: 879, type: !30)
!3272 = distinct !DILexicalBlock(scope: !3273, file: !362, line: 878, column: 5)
!3273 = distinct !DILexicalBlock(scope: !3260, file: !362, line: 877, column: 7)
!3274 = !DILocalVariable(name: "new_nslots", scope: !3272, file: !362, line: 880, type: !100)
!3275 = !DILocalVariable(name: "size", scope: !3276, file: !362, line: 891, type: !86)
!3276 = distinct !DILexicalBlock(scope: !3260, file: !362, line: 890, column: 3)
!3277 = !DILocalVariable(name: "val", scope: !3276, file: !362, line: 892, type: !40)
!3278 = !DILocalVariable(name: "flags", scope: !3276, file: !362, line: 894, type: !38)
!3279 = !DILocalVariable(name: "qsize", scope: !3276, file: !362, line: 895, type: !86)
!3280 = !DILocation(line: 0, scope: !3260)
!3281 = !DILocation(line: 869, column: 21, scope: !3260)
!3282 = !DILocation(line: 871, column: 24, scope: !3260)
!3283 = !DILocation(line: 874, column: 17, scope: !3284)
!3284 = distinct !DILexicalBlock(scope: !3260, file: !362, line: 874, column: 7)
!3285 = !DILocation(line: 875, column: 5, scope: !3284)
!3286 = !DILocation(line: 877, column: 7, scope: !3273)
!3287 = !DILocation(line: 877, column: 14, scope: !3273)
!3288 = !DILocation(line: 877, column: 7, scope: !3260)
!3289 = !DILocation(line: 879, column: 31, scope: !3272)
!3290 = !DILocation(line: 0, scope: !3272)
!3291 = !DILocation(line: 880, column: 7, scope: !3272)
!3292 = !DILocation(line: 880, column: 26, scope: !3272)
!3293 = !DILocation(line: 880, column: 13, scope: !3272)
!3294 = !DILocation(line: 882, column: 31, scope: !3272)
!3295 = !DILocation(line: 883, column: 33, scope: !3272)
!3296 = !DILocation(line: 883, column: 42, scope: !3272)
!3297 = !DILocation(line: 883, column: 31, scope: !3272)
!3298 = !DILocation(line: 882, column: 22, scope: !3272)
!3299 = !DILocation(line: 882, column: 15, scope: !3272)
!3300 = !DILocation(line: 884, column: 11, scope: !3272)
!3301 = !DILocation(line: 885, column: 15, scope: !3302)
!3302 = distinct !DILexicalBlock(scope: !3272, file: !362, line: 884, column: 11)
!3303 = !{i64 0, i64 8, !961, i64 8, i64 8, !554}
!3304 = !DILocation(line: 885, column: 9, scope: !3302)
!3305 = !DILocation(line: 886, column: 20, scope: !3272)
!3306 = !DILocation(line: 886, column: 18, scope: !3272)
!3307 = !DILocation(line: 886, column: 15, scope: !3272)
!3308 = !DILocation(line: 886, column: 32, scope: !3272)
!3309 = !DILocation(line: 886, column: 43, scope: !3272)
!3310 = !DILocation(line: 886, column: 53, scope: !3272)
!3311 = !DILocation(line: 0, scope: !2699, inlinedAt: !3312)
!3312 = distinct !DILocation(line: 886, column: 7, scope: !3272)
!3313 = !DILocation(line: 59, column: 10, scope: !2699, inlinedAt: !3312)
!3314 = !DILocation(line: 887, column: 16, scope: !3272)
!3315 = !DILocation(line: 887, column: 14, scope: !3272)
!3316 = !DILocation(line: 888, column: 5, scope: !3273)
!3317 = !DILocation(line: 888, column: 5, scope: !3272)
!3318 = !DILocation(line: 891, column: 19, scope: !3276)
!3319 = !DILocation(line: 891, column: 25, scope: !3276)
!3320 = !DILocation(line: 0, scope: !3276)
!3321 = !DILocation(line: 892, column: 23, scope: !3276)
!3322 = !DILocation(line: 894, column: 26, scope: !3276)
!3323 = !DILocation(line: 894, column: 32, scope: !3276)
!3324 = !DILocation(line: 896, column: 55, scope: !3276)
!3325 = !DILocation(line: 897, column: 46, scope: !3276)
!3326 = !DILocation(line: 898, column: 55, scope: !3276)
!3327 = !DILocation(line: 899, column: 55, scope: !3276)
!3328 = !DILocation(line: 895, column: 20, scope: !3276)
!3329 = !DILocation(line: 901, column: 14, scope: !3330)
!3330 = distinct !DILexicalBlock(scope: !3276, file: !362, line: 901, column: 9)
!3331 = !DILocation(line: 901, column: 9, scope: !3276)
!3332 = !DILocation(line: 903, column: 35, scope: !3333)
!3333 = distinct !DILexicalBlock(scope: !3330, file: !362, line: 902, column: 7)
!3334 = !DILocation(line: 903, column: 20, scope: !3333)
!3335 = !DILocation(line: 904, column: 17, scope: !3336)
!3336 = distinct !DILexicalBlock(scope: !3333, file: !362, line: 904, column: 13)
!3337 = !DILocation(line: 904, column: 13, scope: !3333)
!3338 = !DILocation(line: 905, column: 11, scope: !3336)
!3339 = !DILocation(line: 906, column: 27, scope: !3333)
!3340 = !DILocation(line: 906, column: 19, scope: !3333)
!3341 = !DILocation(line: 907, column: 69, scope: !3333)
!3342 = !DILocation(line: 909, column: 44, scope: !3333)
!3343 = !DILocation(line: 910, column: 44, scope: !3333)
!3344 = !DILocation(line: 907, column: 9, scope: !3333)
!3345 = !DILocation(line: 911, column: 7, scope: !3333)
!3346 = !DILocation(line: 913, column: 11, scope: !3276)
!3347 = !DILocation(line: 914, column: 5, scope: !3276)
!3348 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !362, file: !362, line: 925, type: !3349, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !3351)
!3349 = !DISubroutineType(types: !3350)
!3350 = !{!40, !38, !94, !86}
!3351 = !{!3352, !3353, !3354}
!3352 = !DILocalVariable(name: "n", arg: 1, scope: !3348, file: !362, line: 925, type: !38)
!3353 = !DILocalVariable(name: "arg", arg: 2, scope: !3348, file: !362, line: 925, type: !94)
!3354 = !DILocalVariable(name: "argsize", arg: 3, scope: !3348, file: !362, line: 925, type: !86)
!3355 = !DILocation(line: 0, scope: !3348)
!3356 = !DILocation(line: 927, column: 10, scope: !3348)
!3357 = !DILocation(line: 927, column: 3, scope: !3348)
!3358 = distinct !DISubprogram(name: "quotearg", scope: !362, file: !362, line: 931, type: !757, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !3359)
!3359 = !{!3360}
!3360 = !DILocalVariable(name: "arg", arg: 1, scope: !3358, file: !362, line: 931, type: !94)
!3361 = !DILocation(line: 0, scope: !3358)
!3362 = !DILocation(line: 0, scope: !3253, inlinedAt: !3363)
!3363 = distinct !DILocation(line: 933, column: 10, scope: !3358)
!3364 = !DILocation(line: 921, column: 10, scope: !3253, inlinedAt: !3363)
!3365 = !DILocation(line: 933, column: 3, scope: !3358)
!3366 = distinct !DISubprogram(name: "quotearg_mem", scope: !362, file: !362, line: 937, type: !3367, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !3369)
!3367 = !DISubroutineType(types: !3368)
!3368 = !{!40, !94, !86}
!3369 = !{!3370, !3371}
!3370 = !DILocalVariable(name: "arg", arg: 1, scope: !3366, file: !362, line: 937, type: !94)
!3371 = !DILocalVariable(name: "argsize", arg: 2, scope: !3366, file: !362, line: 937, type: !86)
!3372 = !DILocation(line: 0, scope: !3366)
!3373 = !DILocation(line: 0, scope: !3348, inlinedAt: !3374)
!3374 = distinct !DILocation(line: 939, column: 10, scope: !3366)
!3375 = !DILocation(line: 927, column: 10, scope: !3348, inlinedAt: !3374)
!3376 = !DILocation(line: 939, column: 3, scope: !3366)
!3377 = distinct !DISubprogram(name: "quotearg_n_style", scope: !362, file: !362, line: 943, type: !3378, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !3380)
!3378 = !DISubroutineType(types: !3379)
!3379 = !{!40, !38, !130, !94}
!3380 = !{!3381, !3382, !3383, !3384}
!3381 = !DILocalVariable(name: "n", arg: 1, scope: !3377, file: !362, line: 943, type: !38)
!3382 = !DILocalVariable(name: "s", arg: 2, scope: !3377, file: !362, line: 943, type: !130)
!3383 = !DILocalVariable(name: "arg", arg: 3, scope: !3377, file: !362, line: 943, type: !94)
!3384 = !DILocalVariable(name: "o", scope: !3377, file: !362, line: 945, type: !2489)
!3385 = !DILocation(line: 0, scope: !3377)
!3386 = !DILocation(line: 945, column: 3, scope: !3377)
!3387 = !DILocation(line: 945, column: 32, scope: !3377)
!3388 = !{!3389}
!3389 = distinct !{!3389, !3390, !"quoting_options_from_style: argument 0"}
!3390 = distinct !{!3390, !"quoting_options_from_style"}
!3391 = !DILocation(line: 945, column: 36, scope: !3377)
!3392 = !DILocalVariable(name: "style", arg: 1, scope: !3393, file: !362, line: 183, type: !130)
!3393 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !362, file: !362, line: 183, type: !3394, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !3396)
!3394 = !DISubroutineType(types: !3395)
!3395 = !{!379, !130}
!3396 = !{!3392, !3397}
!3397 = !DILocalVariable(name: "o", scope: !3393, file: !362, line: 185, type: !379)
!3398 = !DILocation(line: 0, scope: !3393, inlinedAt: !3399)
!3399 = distinct !DILocation(line: 945, column: 36, scope: !3377)
!3400 = !DILocation(line: 185, column: 26, scope: !3393, inlinedAt: !3399)
!3401 = !DILocation(line: 186, column: 13, scope: !3402, inlinedAt: !3399)
!3402 = distinct !DILexicalBlock(scope: !3393, file: !362, line: 186, column: 7)
!3403 = !DILocation(line: 186, column: 7, scope: !3393, inlinedAt: !3399)
!3404 = !DILocation(line: 187, column: 5, scope: !3402, inlinedAt: !3399)
!3405 = !DILocation(line: 188, column: 5, scope: !3393, inlinedAt: !3399)
!3406 = !DILocation(line: 188, column: 11, scope: !3393, inlinedAt: !3399)
!3407 = !DILocation(line: 946, column: 10, scope: !3377)
!3408 = !DILocation(line: 947, column: 1, scope: !3377)
!3409 = !DILocation(line: 946, column: 3, scope: !3377)
!3410 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !362, file: !362, line: 950, type: !3411, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !3413)
!3411 = !DISubroutineType(types: !3412)
!3412 = !{!40, !38, !130, !94, !86}
!3413 = !{!3414, !3415, !3416, !3417, !3418}
!3414 = !DILocalVariable(name: "n", arg: 1, scope: !3410, file: !362, line: 950, type: !38)
!3415 = !DILocalVariable(name: "s", arg: 2, scope: !3410, file: !362, line: 950, type: !130)
!3416 = !DILocalVariable(name: "arg", arg: 3, scope: !3410, file: !362, line: 951, type: !94)
!3417 = !DILocalVariable(name: "argsize", arg: 4, scope: !3410, file: !362, line: 951, type: !86)
!3418 = !DILocalVariable(name: "o", scope: !3410, file: !362, line: 953, type: !2489)
!3419 = !DILocation(line: 0, scope: !3410)
!3420 = !DILocation(line: 953, column: 3, scope: !3410)
!3421 = !DILocation(line: 953, column: 32, scope: !3410)
!3422 = !{!3423}
!3423 = distinct !{!3423, !3424, !"quoting_options_from_style: argument 0"}
!3424 = distinct !{!3424, !"quoting_options_from_style"}
!3425 = !DILocation(line: 953, column: 36, scope: !3410)
!3426 = !DILocation(line: 0, scope: !3393, inlinedAt: !3427)
!3427 = distinct !DILocation(line: 953, column: 36, scope: !3410)
!3428 = !DILocation(line: 185, column: 26, scope: !3393, inlinedAt: !3427)
!3429 = !DILocation(line: 186, column: 13, scope: !3402, inlinedAt: !3427)
!3430 = !DILocation(line: 186, column: 7, scope: !3393, inlinedAt: !3427)
!3431 = !DILocation(line: 187, column: 5, scope: !3402, inlinedAt: !3427)
!3432 = !DILocation(line: 188, column: 5, scope: !3393, inlinedAt: !3427)
!3433 = !DILocation(line: 188, column: 11, scope: !3393, inlinedAt: !3427)
!3434 = !DILocation(line: 954, column: 10, scope: !3410)
!3435 = !DILocation(line: 955, column: 1, scope: !3410)
!3436 = !DILocation(line: 954, column: 3, scope: !3410)
!3437 = distinct !DISubprogram(name: "quotearg_style", scope: !362, file: !362, line: 958, type: !3438, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !3440)
!3438 = !DISubroutineType(types: !3439)
!3439 = !{!40, !130, !94}
!3440 = !{!3441, !3442}
!3441 = !DILocalVariable(name: "s", arg: 1, scope: !3437, file: !362, line: 958, type: !130)
!3442 = !DILocalVariable(name: "arg", arg: 2, scope: !3437, file: !362, line: 958, type: !94)
!3443 = !DILocation(line: 0, scope: !3437)
!3444 = !DILocation(line: 0, scope: !3377, inlinedAt: !3445)
!3445 = distinct !DILocation(line: 960, column: 10, scope: !3437)
!3446 = !DILocation(line: 945, column: 3, scope: !3377, inlinedAt: !3445)
!3447 = !DILocation(line: 945, column: 32, scope: !3377, inlinedAt: !3445)
!3448 = !{!3449}
!3449 = distinct !{!3449, !3450, !"quoting_options_from_style: argument 0"}
!3450 = distinct !{!3450, !"quoting_options_from_style"}
!3451 = !DILocation(line: 945, column: 36, scope: !3377, inlinedAt: !3445)
!3452 = !DILocation(line: 0, scope: !3393, inlinedAt: !3453)
!3453 = distinct !DILocation(line: 945, column: 36, scope: !3377, inlinedAt: !3445)
!3454 = !DILocation(line: 185, column: 26, scope: !3393, inlinedAt: !3453)
!3455 = !DILocation(line: 186, column: 13, scope: !3402, inlinedAt: !3453)
!3456 = !DILocation(line: 186, column: 7, scope: !3393, inlinedAt: !3453)
!3457 = !DILocation(line: 187, column: 5, scope: !3402, inlinedAt: !3453)
!3458 = !DILocation(line: 188, column: 5, scope: !3393, inlinedAt: !3453)
!3459 = !DILocation(line: 188, column: 11, scope: !3393, inlinedAt: !3453)
!3460 = !DILocation(line: 946, column: 10, scope: !3377, inlinedAt: !3445)
!3461 = !DILocation(line: 947, column: 1, scope: !3377, inlinedAt: !3445)
!3462 = !DILocation(line: 960, column: 3, scope: !3437)
!3463 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !362, file: !362, line: 964, type: !3464, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !3466)
!3464 = !DISubroutineType(types: !3465)
!3465 = !{!40, !130, !94, !86}
!3466 = !{!3467, !3468, !3469}
!3467 = !DILocalVariable(name: "s", arg: 1, scope: !3463, file: !362, line: 964, type: !130)
!3468 = !DILocalVariable(name: "arg", arg: 2, scope: !3463, file: !362, line: 964, type: !94)
!3469 = !DILocalVariable(name: "argsize", arg: 3, scope: !3463, file: !362, line: 964, type: !86)
!3470 = !DILocation(line: 0, scope: !3463)
!3471 = !DILocation(line: 0, scope: !3410, inlinedAt: !3472)
!3472 = distinct !DILocation(line: 966, column: 10, scope: !3463)
!3473 = !DILocation(line: 953, column: 3, scope: !3410, inlinedAt: !3472)
!3474 = !DILocation(line: 953, column: 32, scope: !3410, inlinedAt: !3472)
!3475 = !{!3476}
!3476 = distinct !{!3476, !3477, !"quoting_options_from_style: argument 0"}
!3477 = distinct !{!3477, !"quoting_options_from_style"}
!3478 = !DILocation(line: 953, column: 36, scope: !3410, inlinedAt: !3472)
!3479 = !DILocation(line: 0, scope: !3393, inlinedAt: !3480)
!3480 = distinct !DILocation(line: 953, column: 36, scope: !3410, inlinedAt: !3472)
!3481 = !DILocation(line: 185, column: 26, scope: !3393, inlinedAt: !3480)
!3482 = !DILocation(line: 186, column: 13, scope: !3402, inlinedAt: !3480)
!3483 = !DILocation(line: 186, column: 7, scope: !3393, inlinedAt: !3480)
!3484 = !DILocation(line: 187, column: 5, scope: !3402, inlinedAt: !3480)
!3485 = !DILocation(line: 188, column: 5, scope: !3393, inlinedAt: !3480)
!3486 = !DILocation(line: 188, column: 11, scope: !3393, inlinedAt: !3480)
!3487 = !DILocation(line: 954, column: 10, scope: !3410, inlinedAt: !3472)
!3488 = !DILocation(line: 955, column: 1, scope: !3410, inlinedAt: !3472)
!3489 = !DILocation(line: 966, column: 3, scope: !3463)
!3490 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !362, file: !362, line: 970, type: !3491, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !3493)
!3491 = !DISubroutineType(types: !3492)
!3492 = !{!40, !94, !86, !41}
!3493 = !{!3494, !3495, !3496, !3497}
!3494 = !DILocalVariable(name: "arg", arg: 1, scope: !3490, file: !362, line: 970, type: !94)
!3495 = !DILocalVariable(name: "argsize", arg: 2, scope: !3490, file: !362, line: 970, type: !86)
!3496 = !DILocalVariable(name: "ch", arg: 3, scope: !3490, file: !362, line: 970, type: !41)
!3497 = !DILocalVariable(name: "options", scope: !3490, file: !362, line: 972, type: !379)
!3498 = !DILocation(line: 0, scope: !3490)
!3499 = !DILocation(line: 972, column: 3, scope: !3490)
!3500 = !DILocation(line: 972, column: 26, scope: !3490)
!3501 = !DILocation(line: 973, column: 13, scope: !3490)
!3502 = !{i64 0, i64 4, !654, i64 4, i64 4, !645, i64 8, i64 32, !654, i64 40, i64 8, !554, i64 48, i64 8, !554}
!3503 = !DILocation(line: 0, scope: !2509, inlinedAt: !3504)
!3504 = distinct !DILocation(line: 974, column: 3, scope: !3490)
!3505 = !DILocation(line: 147, column: 62, scope: !2509, inlinedAt: !3504)
!3506 = !DILocation(line: 147, column: 57, scope: !2509, inlinedAt: !3504)
!3507 = !DILocation(line: 148, column: 15, scope: !2509, inlinedAt: !3504)
!3508 = !DILocation(line: 149, column: 21, scope: !2509, inlinedAt: !3504)
!3509 = !DILocation(line: 149, column: 24, scope: !2509, inlinedAt: !3504)
!3510 = !DILocation(line: 149, column: 34, scope: !2509, inlinedAt: !3504)
!3511 = !DILocation(line: 150, column: 19, scope: !2509, inlinedAt: !3504)
!3512 = !DILocation(line: 150, column: 24, scope: !2509, inlinedAt: !3504)
!3513 = !DILocation(line: 150, column: 6, scope: !2509, inlinedAt: !3504)
!3514 = !DILocation(line: 975, column: 10, scope: !3490)
!3515 = !DILocation(line: 976, column: 1, scope: !3490)
!3516 = !DILocation(line: 975, column: 3, scope: !3490)
!3517 = distinct !DISubprogram(name: "quotearg_char", scope: !362, file: !362, line: 979, type: !3518, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !3520)
!3518 = !DISubroutineType(types: !3519)
!3519 = !{!40, !94, !41}
!3520 = !{!3521, !3522}
!3521 = !DILocalVariable(name: "arg", arg: 1, scope: !3517, file: !362, line: 979, type: !94)
!3522 = !DILocalVariable(name: "ch", arg: 2, scope: !3517, file: !362, line: 979, type: !41)
!3523 = !DILocation(line: 0, scope: !3517)
!3524 = !DILocation(line: 0, scope: !3490, inlinedAt: !3525)
!3525 = distinct !DILocation(line: 981, column: 10, scope: !3517)
!3526 = !DILocation(line: 972, column: 3, scope: !3490, inlinedAt: !3525)
!3527 = !DILocation(line: 972, column: 26, scope: !3490, inlinedAt: !3525)
!3528 = !DILocation(line: 973, column: 13, scope: !3490, inlinedAt: !3525)
!3529 = !DILocation(line: 0, scope: !2509, inlinedAt: !3530)
!3530 = distinct !DILocation(line: 974, column: 3, scope: !3490, inlinedAt: !3525)
!3531 = !DILocation(line: 147, column: 62, scope: !2509, inlinedAt: !3530)
!3532 = !DILocation(line: 147, column: 57, scope: !2509, inlinedAt: !3530)
!3533 = !DILocation(line: 148, column: 15, scope: !2509, inlinedAt: !3530)
!3534 = !DILocation(line: 149, column: 21, scope: !2509, inlinedAt: !3530)
!3535 = !DILocation(line: 149, column: 24, scope: !2509, inlinedAt: !3530)
!3536 = !DILocation(line: 149, column: 34, scope: !2509, inlinedAt: !3530)
!3537 = !DILocation(line: 150, column: 19, scope: !2509, inlinedAt: !3530)
!3538 = !DILocation(line: 150, column: 24, scope: !2509, inlinedAt: !3530)
!3539 = !DILocation(line: 150, column: 6, scope: !2509, inlinedAt: !3530)
!3540 = !DILocation(line: 975, column: 10, scope: !3490, inlinedAt: !3525)
!3541 = !DILocation(line: 976, column: 1, scope: !3490, inlinedAt: !3525)
!3542 = !DILocation(line: 981, column: 3, scope: !3517)
!3543 = distinct !DISubprogram(name: "quotearg_colon", scope: !362, file: !362, line: 985, type: !757, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !3544)
!3544 = !{!3545}
!3545 = !DILocalVariable(name: "arg", arg: 1, scope: !3543, file: !362, line: 985, type: !94)
!3546 = !DILocation(line: 0, scope: !3543)
!3547 = !DILocation(line: 0, scope: !3517, inlinedAt: !3548)
!3548 = distinct !DILocation(line: 987, column: 10, scope: !3543)
!3549 = !DILocation(line: 0, scope: !3490, inlinedAt: !3550)
!3550 = distinct !DILocation(line: 981, column: 10, scope: !3517, inlinedAt: !3548)
!3551 = !DILocation(line: 972, column: 3, scope: !3490, inlinedAt: !3550)
!3552 = !DILocation(line: 972, column: 26, scope: !3490, inlinedAt: !3550)
!3553 = !DILocation(line: 973, column: 13, scope: !3490, inlinedAt: !3550)
!3554 = !DILocation(line: 0, scope: !2509, inlinedAt: !3555)
!3555 = distinct !DILocation(line: 974, column: 3, scope: !3490, inlinedAt: !3550)
!3556 = !DILocation(line: 147, column: 57, scope: !2509, inlinedAt: !3555)
!3557 = !DILocation(line: 149, column: 21, scope: !2509, inlinedAt: !3555)
!3558 = !DILocation(line: 150, column: 6, scope: !2509, inlinedAt: !3555)
!3559 = !DILocation(line: 975, column: 10, scope: !3490, inlinedAt: !3550)
!3560 = !DILocation(line: 976, column: 1, scope: !3490, inlinedAt: !3550)
!3561 = !DILocation(line: 987, column: 3, scope: !3543)
!3562 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !362, file: !362, line: 991, type: !3367, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !3563)
!3563 = !{!3564, !3565}
!3564 = !DILocalVariable(name: "arg", arg: 1, scope: !3562, file: !362, line: 991, type: !94)
!3565 = !DILocalVariable(name: "argsize", arg: 2, scope: !3562, file: !362, line: 991, type: !86)
!3566 = !DILocation(line: 0, scope: !3562)
!3567 = !DILocation(line: 0, scope: !3490, inlinedAt: !3568)
!3568 = distinct !DILocation(line: 993, column: 10, scope: !3562)
!3569 = !DILocation(line: 972, column: 3, scope: !3490, inlinedAt: !3568)
!3570 = !DILocation(line: 972, column: 26, scope: !3490, inlinedAt: !3568)
!3571 = !DILocation(line: 973, column: 13, scope: !3490, inlinedAt: !3568)
!3572 = !DILocation(line: 0, scope: !2509, inlinedAt: !3573)
!3573 = distinct !DILocation(line: 974, column: 3, scope: !3490, inlinedAt: !3568)
!3574 = !DILocation(line: 147, column: 57, scope: !2509, inlinedAt: !3573)
!3575 = !DILocation(line: 149, column: 21, scope: !2509, inlinedAt: !3573)
!3576 = !DILocation(line: 150, column: 6, scope: !2509, inlinedAt: !3573)
!3577 = !DILocation(line: 975, column: 10, scope: !3490, inlinedAt: !3568)
!3578 = !DILocation(line: 976, column: 1, scope: !3490, inlinedAt: !3568)
!3579 = !DILocation(line: 993, column: 3, scope: !3562)
!3580 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !362, file: !362, line: 997, type: !3378, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !3581)
!3581 = !{!3582, !3583, !3584, !3585}
!3582 = !DILocalVariable(name: "n", arg: 1, scope: !3580, file: !362, line: 997, type: !38)
!3583 = !DILocalVariable(name: "s", arg: 2, scope: !3580, file: !362, line: 997, type: !130)
!3584 = !DILocalVariable(name: "arg", arg: 3, scope: !3580, file: !362, line: 997, type: !94)
!3585 = !DILocalVariable(name: "options", scope: !3580, file: !362, line: 999, type: !379)
!3586 = !DILocation(line: 0, scope: !3580)
!3587 = !DILocation(line: 999, column: 3, scope: !3580)
!3588 = !DILocation(line: 999, column: 26, scope: !3580)
!3589 = !DILocation(line: 0, scope: !3393, inlinedAt: !3590)
!3590 = distinct !DILocation(line: 1000, column: 13, scope: !3580)
!3591 = !DILocation(line: 186, column: 13, scope: !3402, inlinedAt: !3590)
!3592 = !DILocation(line: 186, column: 7, scope: !3393, inlinedAt: !3590)
!3593 = !DILocation(line: 187, column: 5, scope: !3402, inlinedAt: !3590)
!3594 = !{!3595}
!3595 = distinct !{!3595, !3596, !"quoting_options_from_style: argument 0"}
!3596 = distinct !{!3596, !"quoting_options_from_style"}
!3597 = !DILocation(line: 1000, column: 13, scope: !3580)
!3598 = !DILocation(line: 0, scope: !2509, inlinedAt: !3599)
!3599 = distinct !DILocation(line: 1001, column: 3, scope: !3580)
!3600 = !DILocation(line: 147, column: 57, scope: !2509, inlinedAt: !3599)
!3601 = !DILocation(line: 149, column: 21, scope: !2509, inlinedAt: !3599)
!3602 = !DILocation(line: 150, column: 6, scope: !2509, inlinedAt: !3599)
!3603 = !DILocation(line: 1002, column: 10, scope: !3580)
!3604 = !DILocation(line: 1003, column: 1, scope: !3580)
!3605 = !DILocation(line: 1002, column: 3, scope: !3580)
!3606 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !362, file: !362, line: 1006, type: !3607, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !3609)
!3607 = !DISubroutineType(types: !3608)
!3608 = !{!40, !38, !94, !94, !94}
!3609 = !{!3610, !3611, !3612, !3613}
!3610 = !DILocalVariable(name: "n", arg: 1, scope: !3606, file: !362, line: 1006, type: !38)
!3611 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3606, file: !362, line: 1006, type: !94)
!3612 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3606, file: !362, line: 1007, type: !94)
!3613 = !DILocalVariable(name: "arg", arg: 4, scope: !3606, file: !362, line: 1007, type: !94)
!3614 = !DILocation(line: 0, scope: !3606)
!3615 = !DILocalVariable(name: "n", arg: 1, scope: !3616, file: !362, line: 1014, type: !38)
!3616 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !362, file: !362, line: 1014, type: !3617, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !3619)
!3617 = !DISubroutineType(types: !3618)
!3618 = !{!40, !38, !94, !94, !94, !86}
!3619 = !{!3615, !3620, !3621, !3622, !3623, !3624}
!3620 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3616, file: !362, line: 1014, type: !94)
!3621 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3616, file: !362, line: 1015, type: !94)
!3622 = !DILocalVariable(name: "arg", arg: 4, scope: !3616, file: !362, line: 1016, type: !94)
!3623 = !DILocalVariable(name: "argsize", arg: 5, scope: !3616, file: !362, line: 1016, type: !86)
!3624 = !DILocalVariable(name: "o", scope: !3616, file: !362, line: 1018, type: !379)
!3625 = !DILocation(line: 0, scope: !3616, inlinedAt: !3626)
!3626 = distinct !DILocation(line: 1009, column: 10, scope: !3606)
!3627 = !DILocation(line: 1018, column: 3, scope: !3616, inlinedAt: !3626)
!3628 = !DILocation(line: 1018, column: 26, scope: !3616, inlinedAt: !3626)
!3629 = !DILocation(line: 1018, column: 30, scope: !3616, inlinedAt: !3626)
!3630 = !DILocation(line: 0, scope: !2549, inlinedAt: !3631)
!3631 = distinct !DILocation(line: 1019, column: 3, scope: !3616, inlinedAt: !3626)
!3632 = !DILocation(line: 174, column: 6, scope: !2549, inlinedAt: !3631)
!3633 = !DILocation(line: 174, column: 12, scope: !2549, inlinedAt: !3631)
!3634 = !DILocation(line: 175, column: 8, scope: !2563, inlinedAt: !3631)
!3635 = !DILocation(line: 175, column: 19, scope: !2563, inlinedAt: !3631)
!3636 = !DILocation(line: 176, column: 5, scope: !2563, inlinedAt: !3631)
!3637 = !DILocation(line: 177, column: 6, scope: !2549, inlinedAt: !3631)
!3638 = !DILocation(line: 177, column: 17, scope: !2549, inlinedAt: !3631)
!3639 = !DILocation(line: 178, column: 6, scope: !2549, inlinedAt: !3631)
!3640 = !DILocation(line: 178, column: 18, scope: !2549, inlinedAt: !3631)
!3641 = !DILocation(line: 1020, column: 10, scope: !3616, inlinedAt: !3626)
!3642 = !DILocation(line: 1021, column: 1, scope: !3616, inlinedAt: !3626)
!3643 = !DILocation(line: 1009, column: 3, scope: !3606)
!3644 = !DILocation(line: 0, scope: !3616)
!3645 = !DILocation(line: 1018, column: 3, scope: !3616)
!3646 = !DILocation(line: 1018, column: 26, scope: !3616)
!3647 = !DILocation(line: 1018, column: 30, scope: !3616)
!3648 = !DILocation(line: 0, scope: !2549, inlinedAt: !3649)
!3649 = distinct !DILocation(line: 1019, column: 3, scope: !3616)
!3650 = !DILocation(line: 174, column: 6, scope: !2549, inlinedAt: !3649)
!3651 = !DILocation(line: 174, column: 12, scope: !2549, inlinedAt: !3649)
!3652 = !DILocation(line: 175, column: 8, scope: !2563, inlinedAt: !3649)
!3653 = !DILocation(line: 175, column: 19, scope: !2563, inlinedAt: !3649)
!3654 = !DILocation(line: 176, column: 5, scope: !2563, inlinedAt: !3649)
!3655 = !DILocation(line: 177, column: 6, scope: !2549, inlinedAt: !3649)
!3656 = !DILocation(line: 177, column: 17, scope: !2549, inlinedAt: !3649)
!3657 = !DILocation(line: 178, column: 6, scope: !2549, inlinedAt: !3649)
!3658 = !DILocation(line: 178, column: 18, scope: !2549, inlinedAt: !3649)
!3659 = !DILocation(line: 1020, column: 10, scope: !3616)
!3660 = !DILocation(line: 1021, column: 1, scope: !3616)
!3661 = !DILocation(line: 1020, column: 3, scope: !3616)
!3662 = distinct !DISubprogram(name: "quotearg_custom", scope: !362, file: !362, line: 1024, type: !3663, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !3665)
!3663 = !DISubroutineType(types: !3664)
!3664 = !{!40, !94, !94, !94}
!3665 = !{!3666, !3667, !3668}
!3666 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3662, file: !362, line: 1024, type: !94)
!3667 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3662, file: !362, line: 1024, type: !94)
!3668 = !DILocalVariable(name: "arg", arg: 3, scope: !3662, file: !362, line: 1025, type: !94)
!3669 = !DILocation(line: 0, scope: !3662)
!3670 = !DILocation(line: 0, scope: !3606, inlinedAt: !3671)
!3671 = distinct !DILocation(line: 1027, column: 10, scope: !3662)
!3672 = !DILocation(line: 0, scope: !3616, inlinedAt: !3673)
!3673 = distinct !DILocation(line: 1009, column: 10, scope: !3606, inlinedAt: !3671)
!3674 = !DILocation(line: 1018, column: 3, scope: !3616, inlinedAt: !3673)
!3675 = !DILocation(line: 1018, column: 26, scope: !3616, inlinedAt: !3673)
!3676 = !DILocation(line: 1018, column: 30, scope: !3616, inlinedAt: !3673)
!3677 = !DILocation(line: 0, scope: !2549, inlinedAt: !3678)
!3678 = distinct !DILocation(line: 1019, column: 3, scope: !3616, inlinedAt: !3673)
!3679 = !DILocation(line: 174, column: 6, scope: !2549, inlinedAt: !3678)
!3680 = !DILocation(line: 174, column: 12, scope: !2549, inlinedAt: !3678)
!3681 = !DILocation(line: 175, column: 8, scope: !2563, inlinedAt: !3678)
!3682 = !DILocation(line: 175, column: 19, scope: !2563, inlinedAt: !3678)
!3683 = !DILocation(line: 176, column: 5, scope: !2563, inlinedAt: !3678)
!3684 = !DILocation(line: 177, column: 6, scope: !2549, inlinedAt: !3678)
!3685 = !DILocation(line: 177, column: 17, scope: !2549, inlinedAt: !3678)
!3686 = !DILocation(line: 178, column: 6, scope: !2549, inlinedAt: !3678)
!3687 = !DILocation(line: 178, column: 18, scope: !2549, inlinedAt: !3678)
!3688 = !DILocation(line: 1020, column: 10, scope: !3616, inlinedAt: !3673)
!3689 = !DILocation(line: 1021, column: 1, scope: !3616, inlinedAt: !3673)
!3690 = !DILocation(line: 1027, column: 3, scope: !3662)
!3691 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !362, file: !362, line: 1031, type: !3692, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !3694)
!3692 = !DISubroutineType(types: !3693)
!3693 = !{!40, !94, !94, !94, !86}
!3694 = !{!3695, !3696, !3697, !3698}
!3695 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3691, file: !362, line: 1031, type: !94)
!3696 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3691, file: !362, line: 1031, type: !94)
!3697 = !DILocalVariable(name: "arg", arg: 3, scope: !3691, file: !362, line: 1032, type: !94)
!3698 = !DILocalVariable(name: "argsize", arg: 4, scope: !3691, file: !362, line: 1032, type: !86)
!3699 = !DILocation(line: 0, scope: !3691)
!3700 = !DILocation(line: 0, scope: !3616, inlinedAt: !3701)
!3701 = distinct !DILocation(line: 1034, column: 10, scope: !3691)
!3702 = !DILocation(line: 1018, column: 3, scope: !3616, inlinedAt: !3701)
!3703 = !DILocation(line: 1018, column: 26, scope: !3616, inlinedAt: !3701)
!3704 = !DILocation(line: 1018, column: 30, scope: !3616, inlinedAt: !3701)
!3705 = !DILocation(line: 0, scope: !2549, inlinedAt: !3706)
!3706 = distinct !DILocation(line: 1019, column: 3, scope: !3616, inlinedAt: !3701)
!3707 = !DILocation(line: 174, column: 6, scope: !2549, inlinedAt: !3706)
!3708 = !DILocation(line: 174, column: 12, scope: !2549, inlinedAt: !3706)
!3709 = !DILocation(line: 175, column: 8, scope: !2563, inlinedAt: !3706)
!3710 = !DILocation(line: 175, column: 19, scope: !2563, inlinedAt: !3706)
!3711 = !DILocation(line: 176, column: 5, scope: !2563, inlinedAt: !3706)
!3712 = !DILocation(line: 177, column: 6, scope: !2549, inlinedAt: !3706)
!3713 = !DILocation(line: 177, column: 17, scope: !2549, inlinedAt: !3706)
!3714 = !DILocation(line: 178, column: 6, scope: !2549, inlinedAt: !3706)
!3715 = !DILocation(line: 178, column: 18, scope: !2549, inlinedAt: !3706)
!3716 = !DILocation(line: 1020, column: 10, scope: !3616, inlinedAt: !3701)
!3717 = !DILocation(line: 1021, column: 1, scope: !3616, inlinedAt: !3701)
!3718 = !DILocation(line: 1034, column: 3, scope: !3691)
!3719 = distinct !DISubprogram(name: "quote_n_mem", scope: !362, file: !362, line: 1049, type: !3720, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !3722)
!3720 = !DISubroutineType(types: !3721)
!3721 = !{!94, !38, !94, !86}
!3722 = !{!3723, !3724, !3725}
!3723 = !DILocalVariable(name: "n", arg: 1, scope: !3719, file: !362, line: 1049, type: !38)
!3724 = !DILocalVariable(name: "arg", arg: 2, scope: !3719, file: !362, line: 1049, type: !94)
!3725 = !DILocalVariable(name: "argsize", arg: 3, scope: !3719, file: !362, line: 1049, type: !86)
!3726 = !DILocation(line: 0, scope: !3719)
!3727 = !DILocation(line: 1051, column: 10, scope: !3719)
!3728 = !DILocation(line: 1051, column: 3, scope: !3719)
!3729 = distinct !DISubprogram(name: "quote_mem", scope: !362, file: !362, line: 1055, type: !3730, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !3732)
!3730 = !DISubroutineType(types: !3731)
!3731 = !{!94, !94, !86}
!3732 = !{!3733, !3734}
!3733 = !DILocalVariable(name: "arg", arg: 1, scope: !3729, file: !362, line: 1055, type: !94)
!3734 = !DILocalVariable(name: "argsize", arg: 2, scope: !3729, file: !362, line: 1055, type: !86)
!3735 = !DILocation(line: 0, scope: !3729)
!3736 = !DILocation(line: 0, scope: !3719, inlinedAt: !3737)
!3737 = distinct !DILocation(line: 1057, column: 10, scope: !3729)
!3738 = !DILocation(line: 1051, column: 10, scope: !3719, inlinedAt: !3737)
!3739 = !DILocation(line: 1057, column: 3, scope: !3729)
!3740 = distinct !DISubprogram(name: "quote_n", scope: !362, file: !362, line: 1061, type: !3741, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !3743)
!3741 = !DISubroutineType(types: !3742)
!3742 = !{!94, !38, !94}
!3743 = !{!3744, !3745}
!3744 = !DILocalVariable(name: "n", arg: 1, scope: !3740, file: !362, line: 1061, type: !38)
!3745 = !DILocalVariable(name: "arg", arg: 2, scope: !3740, file: !362, line: 1061, type: !94)
!3746 = !DILocation(line: 0, scope: !3740)
!3747 = !DILocation(line: 0, scope: !3719, inlinedAt: !3748)
!3748 = distinct !DILocation(line: 1063, column: 10, scope: !3740)
!3749 = !DILocation(line: 1051, column: 10, scope: !3719, inlinedAt: !3748)
!3750 = !DILocation(line: 1063, column: 3, scope: !3740)
!3751 = distinct !DISubprogram(name: "quote", scope: !362, file: !362, line: 1067, type: !3752, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !3754)
!3752 = !DISubroutineType(types: !3753)
!3753 = !{!94, !94}
!3754 = !{!3755}
!3755 = !DILocalVariable(name: "arg", arg: 1, scope: !3751, file: !362, line: 1067, type: !94)
!3756 = !DILocation(line: 0, scope: !3751)
!3757 = !DILocation(line: 0, scope: !3740, inlinedAt: !3758)
!3758 = distinct !DILocation(line: 1069, column: 10, scope: !3751)
!3759 = !DILocation(line: 0, scope: !3719, inlinedAt: !3760)
!3760 = distinct !DILocation(line: 1063, column: 10, scope: !3740, inlinedAt: !3758)
!3761 = !DILocation(line: 1051, column: 10, scope: !3719, inlinedAt: !3760)
!3762 = !DILocation(line: 1069, column: 3, scope: !3751)
!3763 = distinct !DISubprogram(name: "version_etc_arn", scope: !482, file: !482, line: 61, type: !3764, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !481, retainedNodes: !3801)
!3764 = !DISubroutineType(types: !3765)
!3765 = !{null, !3766, !94, !94, !94, !3800, !86}
!3766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3767, size: 64)
!3767 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !33, line: 7, baseType: !3768)
!3768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !35, line: 49, size: 1728, elements: !3769)
!3769 = !{!3770, !3771, !3772, !3773, !3774, !3775, !3776, !3777, !3778, !3779, !3780, !3781, !3782, !3783, !3785, !3786, !3787, !3788, !3789, !3790, !3791, !3792, !3793, !3794, !3795, !3796, !3797, !3798, !3799}
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3768, file: !35, line: 51, baseType: !38, size: 32)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3768, file: !35, line: 54, baseType: !40, size: 64, offset: 64)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3768, file: !35, line: 55, baseType: !40, size: 64, offset: 128)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3768, file: !35, line: 56, baseType: !40, size: 64, offset: 192)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3768, file: !35, line: 57, baseType: !40, size: 64, offset: 256)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3768, file: !35, line: 58, baseType: !40, size: 64, offset: 320)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3768, file: !35, line: 59, baseType: !40, size: 64, offset: 384)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3768, file: !35, line: 60, baseType: !40, size: 64, offset: 448)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3768, file: !35, line: 61, baseType: !40, size: 64, offset: 512)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3768, file: !35, line: 64, baseType: !40, size: 64, offset: 576)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3768, file: !35, line: 65, baseType: !40, size: 64, offset: 640)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3768, file: !35, line: 66, baseType: !40, size: 64, offset: 704)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3768, file: !35, line: 68, baseType: !53, size: 64, offset: 768)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3768, file: !35, line: 70, baseType: !3784, size: 64, offset: 832)
!3784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3768, size: 64)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3768, file: !35, line: 72, baseType: !38, size: 32, offset: 896)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3768, file: !35, line: 73, baseType: !38, size: 32, offset: 928)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3768, file: !35, line: 74, baseType: !60, size: 64, offset: 960)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3768, file: !35, line: 77, baseType: !64, size: 16, offset: 1024)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3768, file: !35, line: 78, baseType: !66, size: 8, offset: 1040)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3768, file: !35, line: 79, baseType: !68, size: 8, offset: 1048)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3768, file: !35, line: 81, baseType: !72, size: 64, offset: 1088)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3768, file: !35, line: 89, baseType: !75, size: 64, offset: 1152)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3768, file: !35, line: 91, baseType: !77, size: 64, offset: 1216)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3768, file: !35, line: 92, baseType: !80, size: 64, offset: 1280)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3768, file: !35, line: 93, baseType: !3784, size: 64, offset: 1344)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3768, file: !35, line: 94, baseType: !84, size: 64, offset: 1408)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3768, file: !35, line: 95, baseType: !86, size: 64, offset: 1472)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3768, file: !35, line: 96, baseType: !38, size: 32, offset: 1536)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3768, file: !35, line: 98, baseType: !91, size: 160, offset: 1568)
!3800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!3801 = !{!3802, !3803, !3804, !3805, !3806, !3807}
!3802 = !DILocalVariable(name: "stream", arg: 1, scope: !3763, file: !482, line: 61, type: !3766)
!3803 = !DILocalVariable(name: "command_name", arg: 2, scope: !3763, file: !482, line: 62, type: !94)
!3804 = !DILocalVariable(name: "package", arg: 3, scope: !3763, file: !482, line: 62, type: !94)
!3805 = !DILocalVariable(name: "version", arg: 4, scope: !3763, file: !482, line: 63, type: !94)
!3806 = !DILocalVariable(name: "authors", arg: 5, scope: !3763, file: !482, line: 64, type: !3800)
!3807 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3763, file: !482, line: 64, type: !86)
!3808 = !DILocation(line: 0, scope: !3763)
!3809 = !DILocation(line: 66, column: 7, scope: !3810)
!3810 = distinct !DILexicalBlock(scope: !3763, file: !482, line: 66, column: 7)
!3811 = !DILocation(line: 66, column: 7, scope: !3763)
!3812 = !DILocation(line: 67, column: 5, scope: !3810)
!3813 = !DILocation(line: 69, column: 5, scope: !3810)
!3814 = !DILocation(line: 83, column: 3, scope: !3763)
!3815 = !DILocation(line: 85, column: 3, scope: !3763)
!3816 = !DILocation(line: 88, column: 3, scope: !3763)
!3817 = !DILocation(line: 95, column: 3, scope: !3763)
!3818 = !DILocation(line: 97, column: 3, scope: !3763)
!3819 = !DILocation(line: 105, column: 7, scope: !3820)
!3820 = distinct !DILexicalBlock(scope: !3763, file: !482, line: 98, column: 5)
!3821 = !DILocation(line: 106, column: 7, scope: !3820)
!3822 = !DILocation(line: 109, column: 7, scope: !3820)
!3823 = !DILocation(line: 110, column: 7, scope: !3820)
!3824 = !DILocation(line: 113, column: 7, scope: !3820)
!3825 = !DILocation(line: 115, column: 7, scope: !3820)
!3826 = !DILocation(line: 120, column: 7, scope: !3820)
!3827 = !DILocation(line: 122, column: 7, scope: !3820)
!3828 = !DILocation(line: 127, column: 7, scope: !3820)
!3829 = !DILocation(line: 129, column: 7, scope: !3820)
!3830 = !DILocation(line: 134, column: 7, scope: !3820)
!3831 = !DILocation(line: 137, column: 7, scope: !3820)
!3832 = !DILocation(line: 142, column: 7, scope: !3820)
!3833 = !DILocation(line: 145, column: 7, scope: !3820)
!3834 = !DILocation(line: 150, column: 7, scope: !3820)
!3835 = !DILocation(line: 154, column: 7, scope: !3820)
!3836 = !DILocation(line: 159, column: 7, scope: !3820)
!3837 = !DILocation(line: 163, column: 7, scope: !3820)
!3838 = !DILocation(line: 170, column: 7, scope: !3820)
!3839 = !DILocation(line: 174, column: 7, scope: !3820)
!3840 = !DILocation(line: 176, column: 1, scope: !3763)
!3841 = distinct !DISubprogram(name: "version_etc_ar", scope: !482, file: !482, line: 183, type: !3842, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !481, retainedNodes: !3844)
!3842 = !DISubroutineType(types: !3843)
!3843 = !{null, !3766, !94, !94, !94, !3800}
!3844 = !{!3845, !3846, !3847, !3848, !3849, !3850}
!3845 = !DILocalVariable(name: "stream", arg: 1, scope: !3841, file: !482, line: 183, type: !3766)
!3846 = !DILocalVariable(name: "command_name", arg: 2, scope: !3841, file: !482, line: 184, type: !94)
!3847 = !DILocalVariable(name: "package", arg: 3, scope: !3841, file: !482, line: 184, type: !94)
!3848 = !DILocalVariable(name: "version", arg: 4, scope: !3841, file: !482, line: 185, type: !94)
!3849 = !DILocalVariable(name: "authors", arg: 5, scope: !3841, file: !482, line: 185, type: !3800)
!3850 = !DILocalVariable(name: "n_authors", scope: !3841, file: !482, line: 187, type: !86)
!3851 = !DILocation(line: 0, scope: !3841)
!3852 = !DILocation(line: 189, column: 8, scope: !3853)
!3853 = distinct !DILexicalBlock(scope: !3841, file: !482, line: 189, column: 3)
!3854 = !DILocation(line: 0, scope: !3853)
!3855 = !DILocation(line: 189, column: 23, scope: !3856)
!3856 = distinct !DILexicalBlock(scope: !3853, file: !482, line: 189, column: 3)
!3857 = !DILocation(line: 189, column: 3, scope: !3853)
!3858 = !DILocation(line: 189, column: 52, scope: !3856)
!3859 = distinct !{!3859, !3857, !3860, !611}
!3860 = !DILocation(line: 190, column: 5, scope: !3853)
!3861 = !DILocation(line: 191, column: 3, scope: !3841)
!3862 = !DILocation(line: 192, column: 1, scope: !3841)
!3863 = distinct !DISubprogram(name: "version_etc_va", scope: !482, file: !482, line: 199, type: !3864, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !481, retainedNodes: !3877)
!3864 = !DISubroutineType(types: !3865)
!3865 = !{null, !3766, !94, !94, !94, !3866}
!3866 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !282, line: 52, baseType: !3867)
!3867 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !284, line: 32, baseType: !3868)
!3868 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3869, baseType: !3870)
!3869 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!3870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !288, size: 256, elements: !3871)
!3871 = !{!3872, !3873, !3874, !3875, !3876}
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !3870, file: !3869, line: 192, baseType: !84, size: 64)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !3870, file: !3869, line: 192, baseType: !84, size: 64, offset: 64)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !3870, file: !3869, line: 192, baseType: !84, size: 64, offset: 128)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !3870, file: !3869, line: 192, baseType: !38, size: 32, offset: 192)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !3870, file: !3869, line: 192, baseType: !38, size: 32, offset: 224)
!3877 = !{!3878, !3879, !3880, !3881, !3882, !3883, !3884}
!3878 = !DILocalVariable(name: "stream", arg: 1, scope: !3863, file: !482, line: 199, type: !3766)
!3879 = !DILocalVariable(name: "command_name", arg: 2, scope: !3863, file: !482, line: 200, type: !94)
!3880 = !DILocalVariable(name: "package", arg: 3, scope: !3863, file: !482, line: 200, type: !94)
!3881 = !DILocalVariable(name: "version", arg: 4, scope: !3863, file: !482, line: 201, type: !94)
!3882 = !DILocalVariable(name: "authors", arg: 5, scope: !3863, file: !482, line: 201, type: !3866)
!3883 = !DILocalVariable(name: "n_authors", scope: !3863, file: !482, line: 203, type: !86)
!3884 = !DILocalVariable(name: "authtab", scope: !3863, file: !482, line: 204, type: !3885)
!3885 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 640, elements: !375)
!3886 = !DILocation(line: 0, scope: !3863)
!3887 = !DILocation(line: 201, column: 46, scope: !3863)
!3888 = !DILocation(line: 204, column: 3, scope: !3863)
!3889 = !DILocation(line: 204, column: 15, scope: !3863)
!3890 = !DILocation(line: 208, column: 35, scope: !3891)
!3891 = distinct !DILexicalBlock(scope: !3892, file: !482, line: 206, column: 3)
!3892 = distinct !DILexicalBlock(scope: !3863, file: !482, line: 206, column: 3)
!3893 = !DILocation(line: 208, column: 14, scope: !3891)
!3894 = !DILocation(line: 208, column: 33, scope: !3891)
!3895 = !DILocation(line: 208, column: 67, scope: !3891)
!3896 = !DILocation(line: 206, column: 3, scope: !3892)
!3897 = !DILocation(line: 0, scope: !3892)
!3898 = !DILocation(line: 211, column: 3, scope: !3863)
!3899 = !DILocation(line: 213, column: 1, scope: !3863)
!3900 = distinct !DISubprogram(name: "version_etc", scope: !482, file: !482, line: 230, type: !3901, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !481, retainedNodes: !3903)
!3901 = !DISubroutineType(types: !3902)
!3902 = !{null, !3766, !94, !94, !94, null}
!3903 = !{!3904, !3905, !3906, !3907, !3908}
!3904 = !DILocalVariable(name: "stream", arg: 1, scope: !3900, file: !482, line: 230, type: !3766)
!3905 = !DILocalVariable(name: "command_name", arg: 2, scope: !3900, file: !482, line: 231, type: !94)
!3906 = !DILocalVariable(name: "package", arg: 3, scope: !3900, file: !482, line: 231, type: !94)
!3907 = !DILocalVariable(name: "version", arg: 4, scope: !3900, file: !482, line: 232, type: !94)
!3908 = !DILocalVariable(name: "authors", scope: !3900, file: !482, line: 234, type: !3866)
!3909 = !DILocation(line: 0, scope: !3900)
!3910 = !DILocation(line: 234, column: 3, scope: !3900)
!3911 = !DILocation(line: 234, column: 11, scope: !3900)
!3912 = !DILocation(line: 235, column: 3, scope: !3900)
!3913 = !DILocation(line: 236, column: 3, scope: !3900)
!3914 = !DILocation(line: 237, column: 3, scope: !3900)
!3915 = !DILocation(line: 238, column: 1, scope: !3900)
!3916 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !482, file: !482, line: 241, type: !309, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !481, retainedNodes: !637)
!3917 = !DILocation(line: 243, column: 3, scope: !3916)
!3918 = !DILocation(line: 248, column: 3, scope: !3916)
!3919 = !DILocation(line: 254, column: 3, scope: !3916)
!3920 = !DILocation(line: 259, column: 3, scope: !3916)
!3921 = !DILocation(line: 261, column: 1, scope: !3916)
!3922 = distinct !DISubprogram(name: "xnrealloc", scope: !3923, file: !3923, line: 147, type: !3924, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !3926)
!3923 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3924 = !DISubroutineType(types: !3925)
!3925 = !{!84, !84, !86, !86}
!3926 = !{!3927, !3928, !3929}
!3927 = !DILocalVariable(name: "p", arg: 1, scope: !3922, file: !3923, line: 147, type: !84)
!3928 = !DILocalVariable(name: "n", arg: 2, scope: !3922, file: !3923, line: 147, type: !86)
!3929 = !DILocalVariable(name: "s", arg: 3, scope: !3922, file: !3923, line: 147, type: !86)
!3930 = !DILocation(line: 0, scope: !3922)
!3931 = !DILocalVariable(name: "p", arg: 1, scope: !3932, file: !488, line: 83, type: !84)
!3932 = distinct !DISubprogram(name: "xreallocarray", scope: !488, file: !488, line: 83, type: !3924, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !3933)
!3933 = !{!3931, !3934, !3935}
!3934 = !DILocalVariable(name: "n", arg: 2, scope: !3932, file: !488, line: 83, type: !86)
!3935 = !DILocalVariable(name: "s", arg: 3, scope: !3932, file: !488, line: 83, type: !86)
!3936 = !DILocation(line: 0, scope: !3932, inlinedAt: !3937)
!3937 = distinct !DILocation(line: 149, column: 10, scope: !3922)
!3938 = !DILocation(line: 85, column: 25, scope: !3932, inlinedAt: !3937)
!3939 = !DILocalVariable(name: "p", arg: 1, scope: !3940, file: !488, line: 37, type: !84)
!3940 = distinct !DISubprogram(name: "check_nonnull", scope: !488, file: !488, line: 37, type: !3941, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !3943)
!3941 = !DISubroutineType(types: !3942)
!3942 = !{!84, !84}
!3943 = !{!3939}
!3944 = !DILocation(line: 0, scope: !3940, inlinedAt: !3945)
!3945 = distinct !DILocation(line: 85, column: 10, scope: !3932, inlinedAt: !3937)
!3946 = !DILocation(line: 39, column: 8, scope: !3947, inlinedAt: !3945)
!3947 = distinct !DILexicalBlock(scope: !3940, file: !488, line: 39, column: 7)
!3948 = !DILocation(line: 39, column: 7, scope: !3940, inlinedAt: !3945)
!3949 = !DILocation(line: 40, column: 5, scope: !3947, inlinedAt: !3945)
!3950 = !DILocation(line: 149, column: 3, scope: !3922)
!3951 = !DILocation(line: 0, scope: !3932)
!3952 = !DILocation(line: 85, column: 25, scope: !3932)
!3953 = !DILocation(line: 0, scope: !3940, inlinedAt: !3954)
!3954 = distinct !DILocation(line: 85, column: 10, scope: !3932)
!3955 = !DILocation(line: 39, column: 8, scope: !3947, inlinedAt: !3954)
!3956 = !DILocation(line: 39, column: 7, scope: !3940, inlinedAt: !3954)
!3957 = !DILocation(line: 40, column: 5, scope: !3947, inlinedAt: !3954)
!3958 = !DILocation(line: 85, column: 3, scope: !3932)
!3959 = distinct !DISubprogram(name: "xmalloc", scope: !488, file: !488, line: 47, type: !177, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !3960)
!3960 = !{!3961}
!3961 = !DILocalVariable(name: "s", arg: 1, scope: !3959, file: !488, line: 47, type: !86)
!3962 = !DILocation(line: 0, scope: !3959)
!3963 = !DILocation(line: 49, column: 25, scope: !3959)
!3964 = !DILocation(line: 0, scope: !3940, inlinedAt: !3965)
!3965 = distinct !DILocation(line: 49, column: 10, scope: !3959)
!3966 = !DILocation(line: 39, column: 8, scope: !3947, inlinedAt: !3965)
!3967 = !DILocation(line: 39, column: 7, scope: !3940, inlinedAt: !3965)
!3968 = !DILocation(line: 40, column: 5, scope: !3947, inlinedAt: !3965)
!3969 = !DILocation(line: 49, column: 3, scope: !3959)
!3970 = distinct !DISubprogram(name: "ximalloc", scope: !488, file: !488, line: 53, type: !3971, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !3973)
!3971 = !DISubroutineType(types: !3972)
!3972 = !{!84, !100}
!3973 = !{!3974}
!3974 = !DILocalVariable(name: "s", arg: 1, scope: !3970, file: !488, line: 53, type: !100)
!3975 = !DILocation(line: 0, scope: !3970)
!3976 = !DILocalVariable(name: "s", arg: 1, scope: !3977, file: !3978, line: 55, type: !100)
!3977 = distinct !DISubprogram(name: "imalloc", scope: !3978, file: !3978, line: 55, type: !3971, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !3979)
!3978 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3979 = !{!3976}
!3980 = !DILocation(line: 0, scope: !3977, inlinedAt: !3981)
!3981 = distinct !DILocation(line: 55, column: 25, scope: !3970)
!3982 = !DILocation(line: 57, column: 26, scope: !3977, inlinedAt: !3981)
!3983 = !DILocation(line: 0, scope: !3940, inlinedAt: !3984)
!3984 = distinct !DILocation(line: 55, column: 10, scope: !3970)
!3985 = !DILocation(line: 39, column: 8, scope: !3947, inlinedAt: !3984)
!3986 = !DILocation(line: 39, column: 7, scope: !3940, inlinedAt: !3984)
!3987 = !DILocation(line: 40, column: 5, scope: !3947, inlinedAt: !3984)
!3988 = !DILocation(line: 55, column: 3, scope: !3970)
!3989 = distinct !DISubprogram(name: "xcharalloc", scope: !488, file: !488, line: 59, type: !3990, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !3992)
!3990 = !DISubroutineType(types: !3991)
!3991 = !{!40, !86}
!3992 = !{!3993}
!3993 = !DILocalVariable(name: "n", arg: 1, scope: !3989, file: !488, line: 59, type: !86)
!3994 = !DILocation(line: 0, scope: !3989)
!3995 = !DILocation(line: 0, scope: !3959, inlinedAt: !3996)
!3996 = distinct !DILocation(line: 61, column: 10, scope: !3989)
!3997 = !DILocation(line: 49, column: 25, scope: !3959, inlinedAt: !3996)
!3998 = !DILocation(line: 0, scope: !3940, inlinedAt: !3999)
!3999 = distinct !DILocation(line: 49, column: 10, scope: !3959, inlinedAt: !3996)
!4000 = !DILocation(line: 39, column: 8, scope: !3947, inlinedAt: !3999)
!4001 = !DILocation(line: 39, column: 7, scope: !3940, inlinedAt: !3999)
!4002 = !DILocation(line: 40, column: 5, scope: !3947, inlinedAt: !3999)
!4003 = !DILocation(line: 61, column: 3, scope: !3989)
!4004 = distinct !DISubprogram(name: "xrealloc", scope: !488, file: !488, line: 68, type: !181, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !4005)
!4005 = !{!4006, !4007}
!4006 = !DILocalVariable(name: "p", arg: 1, scope: !4004, file: !488, line: 68, type: !84)
!4007 = !DILocalVariable(name: "s", arg: 2, scope: !4004, file: !488, line: 68, type: !86)
!4008 = !DILocation(line: 0, scope: !4004)
!4009 = !DILocalVariable(name: "ptr", arg: 1, scope: !4010, file: !4011, line: 2057, type: !84)
!4010 = distinct !DISubprogram(name: "rpl_realloc", scope: !4011, file: !4011, line: 2057, type: !181, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !4012)
!4011 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!4012 = !{!4009, !4013}
!4013 = !DILocalVariable(name: "size", arg: 2, scope: !4010, file: !4011, line: 2057, type: !86)
!4014 = !DILocation(line: 0, scope: !4010, inlinedAt: !4015)
!4015 = distinct !DILocation(line: 70, column: 25, scope: !4004)
!4016 = !DILocation(line: 2059, column: 24, scope: !4010, inlinedAt: !4015)
!4017 = !DILocation(line: 2059, column: 10, scope: !4010, inlinedAt: !4015)
!4018 = !DILocation(line: 0, scope: !3940, inlinedAt: !4019)
!4019 = distinct !DILocation(line: 70, column: 10, scope: !4004)
!4020 = !DILocation(line: 39, column: 8, scope: !3947, inlinedAt: !4019)
!4021 = !DILocation(line: 39, column: 7, scope: !3940, inlinedAt: !4019)
!4022 = !DILocation(line: 40, column: 5, scope: !3947, inlinedAt: !4019)
!4023 = !DILocation(line: 70, column: 3, scope: !4004)
!4024 = distinct !DISubprogram(name: "xirealloc", scope: !488, file: !488, line: 74, type: !4025, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !4027)
!4025 = !DISubroutineType(types: !4026)
!4026 = !{!84, !84, !100}
!4027 = !{!4028, !4029}
!4028 = !DILocalVariable(name: "p", arg: 1, scope: !4024, file: !488, line: 74, type: !84)
!4029 = !DILocalVariable(name: "s", arg: 2, scope: !4024, file: !488, line: 74, type: !100)
!4030 = !DILocation(line: 0, scope: !4024)
!4031 = !DILocalVariable(name: "p", arg: 1, scope: !4032, file: !3978, line: 66, type: !84)
!4032 = distinct !DISubprogram(name: "irealloc", scope: !3978, file: !3978, line: 66, type: !4025, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !4033)
!4033 = !{!4031, !4034}
!4034 = !DILocalVariable(name: "s", arg: 2, scope: !4032, file: !3978, line: 66, type: !100)
!4035 = !DILocation(line: 0, scope: !4032, inlinedAt: !4036)
!4036 = distinct !DILocation(line: 76, column: 25, scope: !4024)
!4037 = !DILocation(line: 0, scope: !4010, inlinedAt: !4038)
!4038 = distinct !DILocation(line: 68, column: 26, scope: !4032, inlinedAt: !4036)
!4039 = !DILocation(line: 2059, column: 24, scope: !4010, inlinedAt: !4038)
!4040 = !DILocation(line: 2059, column: 10, scope: !4010, inlinedAt: !4038)
!4041 = !DILocation(line: 0, scope: !3940, inlinedAt: !4042)
!4042 = distinct !DILocation(line: 76, column: 10, scope: !4024)
!4043 = !DILocation(line: 39, column: 8, scope: !3947, inlinedAt: !4042)
!4044 = !DILocation(line: 39, column: 7, scope: !3940, inlinedAt: !4042)
!4045 = !DILocation(line: 40, column: 5, scope: !3947, inlinedAt: !4042)
!4046 = !DILocation(line: 76, column: 3, scope: !4024)
!4047 = distinct !DISubprogram(name: "xireallocarray", scope: !488, file: !488, line: 89, type: !4048, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !4050)
!4048 = !DISubroutineType(types: !4049)
!4049 = !{!84, !84, !100, !100}
!4050 = !{!4051, !4052, !4053}
!4051 = !DILocalVariable(name: "p", arg: 1, scope: !4047, file: !488, line: 89, type: !84)
!4052 = !DILocalVariable(name: "n", arg: 2, scope: !4047, file: !488, line: 89, type: !100)
!4053 = !DILocalVariable(name: "s", arg: 3, scope: !4047, file: !488, line: 89, type: !100)
!4054 = !DILocation(line: 0, scope: !4047)
!4055 = !DILocalVariable(name: "p", arg: 1, scope: !4056, file: !3978, line: 98, type: !84)
!4056 = distinct !DISubprogram(name: "ireallocarray", scope: !3978, file: !3978, line: 98, type: !4048, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !4057)
!4057 = !{!4055, !4058, !4059}
!4058 = !DILocalVariable(name: "n", arg: 2, scope: !4056, file: !3978, line: 98, type: !100)
!4059 = !DILocalVariable(name: "s", arg: 3, scope: !4056, file: !3978, line: 98, type: !100)
!4060 = !DILocation(line: 0, scope: !4056, inlinedAt: !4061)
!4061 = distinct !DILocation(line: 91, column: 25, scope: !4047)
!4062 = !DILocation(line: 101, column: 13, scope: !4056, inlinedAt: !4061)
!4063 = !DILocation(line: 0, scope: !3940, inlinedAt: !4064)
!4064 = distinct !DILocation(line: 91, column: 10, scope: !4047)
!4065 = !DILocation(line: 39, column: 8, scope: !3947, inlinedAt: !4064)
!4066 = !DILocation(line: 39, column: 7, scope: !3940, inlinedAt: !4064)
!4067 = !DILocation(line: 40, column: 5, scope: !3947, inlinedAt: !4064)
!4068 = !DILocation(line: 91, column: 3, scope: !4047)
!4069 = distinct !DISubprogram(name: "xnmalloc", scope: !488, file: !488, line: 98, type: !4070, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !4072)
!4070 = !DISubroutineType(types: !4071)
!4071 = !{!84, !86, !86}
!4072 = !{!4073, !4074}
!4073 = !DILocalVariable(name: "n", arg: 1, scope: !4069, file: !488, line: 98, type: !86)
!4074 = !DILocalVariable(name: "s", arg: 2, scope: !4069, file: !488, line: 98, type: !86)
!4075 = !DILocation(line: 0, scope: !4069)
!4076 = !DILocation(line: 0, scope: !3932, inlinedAt: !4077)
!4077 = distinct !DILocation(line: 100, column: 10, scope: !4069)
!4078 = !DILocation(line: 85, column: 25, scope: !3932, inlinedAt: !4077)
!4079 = !DILocation(line: 0, scope: !3940, inlinedAt: !4080)
!4080 = distinct !DILocation(line: 85, column: 10, scope: !3932, inlinedAt: !4077)
!4081 = !DILocation(line: 39, column: 8, scope: !3947, inlinedAt: !4080)
!4082 = !DILocation(line: 39, column: 7, scope: !3940, inlinedAt: !4080)
!4083 = !DILocation(line: 40, column: 5, scope: !3947, inlinedAt: !4080)
!4084 = !DILocation(line: 100, column: 3, scope: !4069)
!4085 = distinct !DISubprogram(name: "xinmalloc", scope: !488, file: !488, line: 104, type: !4086, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !4088)
!4086 = !DISubroutineType(types: !4087)
!4087 = !{!84, !100, !100}
!4088 = !{!4089, !4090}
!4089 = !DILocalVariable(name: "n", arg: 1, scope: !4085, file: !488, line: 104, type: !100)
!4090 = !DILocalVariable(name: "s", arg: 2, scope: !4085, file: !488, line: 104, type: !100)
!4091 = !DILocation(line: 0, scope: !4085)
!4092 = !DILocation(line: 0, scope: !4047, inlinedAt: !4093)
!4093 = distinct !DILocation(line: 106, column: 10, scope: !4085)
!4094 = !DILocation(line: 0, scope: !4056, inlinedAt: !4095)
!4095 = distinct !DILocation(line: 91, column: 25, scope: !4047, inlinedAt: !4093)
!4096 = !DILocation(line: 101, column: 13, scope: !4056, inlinedAt: !4095)
!4097 = !DILocation(line: 0, scope: !3940, inlinedAt: !4098)
!4098 = distinct !DILocation(line: 91, column: 10, scope: !4047, inlinedAt: !4093)
!4099 = !DILocation(line: 39, column: 8, scope: !3947, inlinedAt: !4098)
!4100 = !DILocation(line: 39, column: 7, scope: !3940, inlinedAt: !4098)
!4101 = !DILocation(line: 40, column: 5, scope: !3947, inlinedAt: !4098)
!4102 = !DILocation(line: 106, column: 3, scope: !4085)
!4103 = distinct !DISubprogram(name: "x2realloc", scope: !488, file: !488, line: 116, type: !4104, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !4106)
!4104 = !DISubroutineType(types: !4105)
!4105 = !{!84, !84, !494}
!4106 = !{!4107, !4108}
!4107 = !DILocalVariable(name: "p", arg: 1, scope: !4103, file: !488, line: 116, type: !84)
!4108 = !DILocalVariable(name: "ps", arg: 2, scope: !4103, file: !488, line: 116, type: !494)
!4109 = !DILocation(line: 0, scope: !4103)
!4110 = !DILocation(line: 0, scope: !491, inlinedAt: !4111)
!4111 = distinct !DILocation(line: 118, column: 10, scope: !4103)
!4112 = !DILocation(line: 178, column: 14, scope: !491, inlinedAt: !4111)
!4113 = !DILocation(line: 180, column: 9, scope: !4114, inlinedAt: !4111)
!4114 = distinct !DILexicalBlock(scope: !491, file: !488, line: 180, column: 7)
!4115 = !DILocation(line: 180, column: 7, scope: !491, inlinedAt: !4111)
!4116 = !DILocation(line: 182, column: 13, scope: !4117, inlinedAt: !4111)
!4117 = distinct !DILexicalBlock(scope: !4118, file: !488, line: 182, column: 11)
!4118 = distinct !DILexicalBlock(scope: !4114, file: !488, line: 181, column: 5)
!4119 = !DILocation(line: 182, column: 11, scope: !4118, inlinedAt: !4111)
!4120 = !DILocation(line: 197, column: 11, scope: !4121, inlinedAt: !4111)
!4121 = distinct !DILexicalBlock(scope: !4122, file: !488, line: 197, column: 11)
!4122 = distinct !DILexicalBlock(scope: !4114, file: !488, line: 195, column: 5)
!4123 = !DILocation(line: 197, column: 11, scope: !4122, inlinedAt: !4111)
!4124 = !DILocation(line: 198, column: 9, scope: !4121, inlinedAt: !4111)
!4125 = !DILocation(line: 0, scope: !3932, inlinedAt: !4126)
!4126 = distinct !DILocation(line: 201, column: 7, scope: !491, inlinedAt: !4111)
!4127 = !DILocation(line: 85, column: 25, scope: !3932, inlinedAt: !4126)
!4128 = !DILocation(line: 0, scope: !3940, inlinedAt: !4129)
!4129 = distinct !DILocation(line: 85, column: 10, scope: !3932, inlinedAt: !4126)
!4130 = !DILocation(line: 39, column: 8, scope: !3947, inlinedAt: !4129)
!4131 = !DILocation(line: 39, column: 7, scope: !3940, inlinedAt: !4129)
!4132 = !DILocation(line: 40, column: 5, scope: !3947, inlinedAt: !4129)
!4133 = !DILocation(line: 202, column: 7, scope: !491, inlinedAt: !4111)
!4134 = !DILocation(line: 118, column: 3, scope: !4103)
!4135 = !DILocation(line: 0, scope: !491)
!4136 = !DILocation(line: 178, column: 14, scope: !491)
!4137 = !DILocation(line: 180, column: 9, scope: !4114)
!4138 = !DILocation(line: 180, column: 7, scope: !491)
!4139 = !DILocation(line: 182, column: 13, scope: !4117)
!4140 = !DILocation(line: 182, column: 11, scope: !4118)
!4141 = !DILocation(line: 190, column: 30, scope: !4142)
!4142 = distinct !DILexicalBlock(scope: !4117, file: !488, line: 183, column: 9)
!4143 = !DILocation(line: 191, column: 16, scope: !4142)
!4144 = !DILocation(line: 191, column: 13, scope: !4142)
!4145 = !DILocation(line: 192, column: 9, scope: !4142)
!4146 = !DILocation(line: 197, column: 11, scope: !4121)
!4147 = !DILocation(line: 197, column: 11, scope: !4122)
!4148 = !DILocation(line: 198, column: 9, scope: !4121)
!4149 = !DILocation(line: 0, scope: !3932, inlinedAt: !4150)
!4150 = distinct !DILocation(line: 201, column: 7, scope: !491)
!4151 = !DILocation(line: 85, column: 25, scope: !3932, inlinedAt: !4150)
!4152 = !DILocation(line: 0, scope: !3940, inlinedAt: !4153)
!4153 = distinct !DILocation(line: 85, column: 10, scope: !3932, inlinedAt: !4150)
!4154 = !DILocation(line: 39, column: 8, scope: !3947, inlinedAt: !4153)
!4155 = !DILocation(line: 39, column: 7, scope: !3940, inlinedAt: !4153)
!4156 = !DILocation(line: 40, column: 5, scope: !3947, inlinedAt: !4153)
!4157 = !DILocation(line: 202, column: 7, scope: !491)
!4158 = !DILocation(line: 203, column: 3, scope: !491)
!4159 = !DILocation(line: 0, scope: !503)
!4160 = !DILocation(line: 230, column: 14, scope: !503)
!4161 = !DILocation(line: 238, column: 7, scope: !4162)
!4162 = distinct !DILexicalBlock(scope: !503, file: !488, line: 238, column: 7)
!4163 = !DILocation(line: 238, column: 7, scope: !503)
!4164 = !DILocation(line: 240, column: 9, scope: !4165)
!4165 = distinct !DILexicalBlock(scope: !503, file: !488, line: 240, column: 7)
!4166 = !DILocation(line: 240, column: 18, scope: !4165)
!4167 = !DILocation(line: 253, column: 8, scope: !503)
!4168 = !DILocation(line: 258, column: 27, scope: !4169)
!4169 = distinct !DILexicalBlock(scope: !4170, file: !488, line: 257, column: 5)
!4170 = distinct !DILexicalBlock(scope: !503, file: !488, line: 256, column: 7)
!4171 = !DILocation(line: 259, column: 32, scope: !4169)
!4172 = !DILocation(line: 260, column: 5, scope: !4169)
!4173 = !DILocation(line: 262, column: 9, scope: !4174)
!4174 = distinct !DILexicalBlock(scope: !503, file: !488, line: 262, column: 7)
!4175 = !DILocation(line: 262, column: 7, scope: !503)
!4176 = !DILocation(line: 263, column: 9, scope: !4174)
!4177 = !DILocation(line: 263, column: 5, scope: !4174)
!4178 = !DILocation(line: 264, column: 9, scope: !4179)
!4179 = distinct !DILexicalBlock(scope: !503, file: !488, line: 264, column: 7)
!4180 = !DILocation(line: 264, column: 14, scope: !4179)
!4181 = !DILocation(line: 265, column: 7, scope: !4179)
!4182 = !DILocation(line: 265, column: 11, scope: !4179)
!4183 = !DILocation(line: 266, column: 11, scope: !4179)
!4184 = !DILocation(line: 266, column: 26, scope: !4179)
!4185 = !DILocation(line: 267, column: 14, scope: !4179)
!4186 = !DILocation(line: 264, column: 7, scope: !503)
!4187 = !DILocation(line: 268, column: 5, scope: !4179)
!4188 = !DILocation(line: 0, scope: !4004, inlinedAt: !4189)
!4189 = distinct !DILocation(line: 269, column: 8, scope: !503)
!4190 = !DILocation(line: 0, scope: !4010, inlinedAt: !4191)
!4191 = distinct !DILocation(line: 70, column: 25, scope: !4004, inlinedAt: !4189)
!4192 = !DILocation(line: 2059, column: 24, scope: !4010, inlinedAt: !4191)
!4193 = !DILocation(line: 2059, column: 10, scope: !4010, inlinedAt: !4191)
!4194 = !DILocation(line: 0, scope: !3940, inlinedAt: !4195)
!4195 = distinct !DILocation(line: 70, column: 10, scope: !4004, inlinedAt: !4189)
!4196 = !DILocation(line: 39, column: 8, scope: !3947, inlinedAt: !4195)
!4197 = !DILocation(line: 39, column: 7, scope: !3940, inlinedAt: !4195)
!4198 = !DILocation(line: 40, column: 5, scope: !3947, inlinedAt: !4195)
!4199 = !DILocation(line: 270, column: 7, scope: !503)
!4200 = !DILocation(line: 271, column: 3, scope: !503)
!4201 = distinct !DISubprogram(name: "xzalloc", scope: !488, file: !488, line: 279, type: !177, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !4202)
!4202 = !{!4203}
!4203 = !DILocalVariable(name: "s", arg: 1, scope: !4201, file: !488, line: 279, type: !86)
!4204 = !DILocation(line: 0, scope: !4201)
!4205 = !DILocalVariable(name: "n", arg: 1, scope: !4206, file: !488, line: 294, type: !86)
!4206 = distinct !DISubprogram(name: "xcalloc", scope: !488, file: !488, line: 294, type: !4070, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !4207)
!4207 = !{!4205, !4208}
!4208 = !DILocalVariable(name: "s", arg: 2, scope: !4206, file: !488, line: 294, type: !86)
!4209 = !DILocation(line: 0, scope: !4206, inlinedAt: !4210)
!4210 = distinct !DILocation(line: 281, column: 10, scope: !4201)
!4211 = !DILocation(line: 296, column: 25, scope: !4206, inlinedAt: !4210)
!4212 = !DILocation(line: 0, scope: !3940, inlinedAt: !4213)
!4213 = distinct !DILocation(line: 296, column: 10, scope: !4206, inlinedAt: !4210)
!4214 = !DILocation(line: 39, column: 8, scope: !3947, inlinedAt: !4213)
!4215 = !DILocation(line: 39, column: 7, scope: !3940, inlinedAt: !4213)
!4216 = !DILocation(line: 40, column: 5, scope: !3947, inlinedAt: !4213)
!4217 = !DILocation(line: 281, column: 3, scope: !4201)
!4218 = !DILocation(line: 0, scope: !4206)
!4219 = !DILocation(line: 296, column: 25, scope: !4206)
!4220 = !DILocation(line: 0, scope: !3940, inlinedAt: !4221)
!4221 = distinct !DILocation(line: 296, column: 10, scope: !4206)
!4222 = !DILocation(line: 39, column: 8, scope: !3947, inlinedAt: !4221)
!4223 = !DILocation(line: 39, column: 7, scope: !3940, inlinedAt: !4221)
!4224 = !DILocation(line: 40, column: 5, scope: !3947, inlinedAt: !4221)
!4225 = !DILocation(line: 296, column: 3, scope: !4206)
!4226 = distinct !DISubprogram(name: "xizalloc", scope: !488, file: !488, line: 285, type: !3971, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !4227)
!4227 = !{!4228}
!4228 = !DILocalVariable(name: "s", arg: 1, scope: !4226, file: !488, line: 285, type: !100)
!4229 = !DILocation(line: 0, scope: !4226)
!4230 = !DILocalVariable(name: "n", arg: 1, scope: !4231, file: !488, line: 300, type: !100)
!4231 = distinct !DISubprogram(name: "xicalloc", scope: !488, file: !488, line: 300, type: !4086, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !4232)
!4232 = !{!4230, !4233}
!4233 = !DILocalVariable(name: "s", arg: 2, scope: !4231, file: !488, line: 300, type: !100)
!4234 = !DILocation(line: 0, scope: !4231, inlinedAt: !4235)
!4235 = distinct !DILocation(line: 287, column: 10, scope: !4226)
!4236 = !DILocalVariable(name: "n", arg: 1, scope: !4237, file: !3978, line: 77, type: !100)
!4237 = distinct !DISubprogram(name: "icalloc", scope: !3978, file: !3978, line: 77, type: !4086, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !4238)
!4238 = !{!4236, !4239}
!4239 = !DILocalVariable(name: "s", arg: 2, scope: !4237, file: !3978, line: 77, type: !100)
!4240 = !DILocation(line: 0, scope: !4237, inlinedAt: !4241)
!4241 = distinct !DILocation(line: 302, column: 25, scope: !4231, inlinedAt: !4235)
!4242 = !DILocation(line: 91, column: 10, scope: !4237, inlinedAt: !4241)
!4243 = !DILocation(line: 0, scope: !3940, inlinedAt: !4244)
!4244 = distinct !DILocation(line: 302, column: 10, scope: !4231, inlinedAt: !4235)
!4245 = !DILocation(line: 39, column: 8, scope: !3947, inlinedAt: !4244)
!4246 = !DILocation(line: 39, column: 7, scope: !3940, inlinedAt: !4244)
!4247 = !DILocation(line: 40, column: 5, scope: !3947, inlinedAt: !4244)
!4248 = !DILocation(line: 287, column: 3, scope: !4226)
!4249 = !DILocation(line: 0, scope: !4231)
!4250 = !DILocation(line: 0, scope: !4237, inlinedAt: !4251)
!4251 = distinct !DILocation(line: 302, column: 25, scope: !4231)
!4252 = !DILocation(line: 91, column: 10, scope: !4237, inlinedAt: !4251)
!4253 = !DILocation(line: 0, scope: !3940, inlinedAt: !4254)
!4254 = distinct !DILocation(line: 302, column: 10, scope: !4231)
!4255 = !DILocation(line: 39, column: 8, scope: !3947, inlinedAt: !4254)
!4256 = !DILocation(line: 39, column: 7, scope: !3940, inlinedAt: !4254)
!4257 = !DILocation(line: 40, column: 5, scope: !3947, inlinedAt: !4254)
!4258 = !DILocation(line: 302, column: 3, scope: !4231)
!4259 = distinct !DISubprogram(name: "xmemdup", scope: !488, file: !488, line: 310, type: !4260, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !4262)
!4260 = !DISubroutineType(types: !4261)
!4261 = !{!84, !763, !86}
!4262 = !{!4263, !4264}
!4263 = !DILocalVariable(name: "p", arg: 1, scope: !4259, file: !488, line: 310, type: !763)
!4264 = !DILocalVariable(name: "s", arg: 2, scope: !4259, file: !488, line: 310, type: !86)
!4265 = !DILocation(line: 0, scope: !4259)
!4266 = !DILocation(line: 0, scope: !3959, inlinedAt: !4267)
!4267 = distinct !DILocation(line: 312, column: 18, scope: !4259)
!4268 = !DILocation(line: 49, column: 25, scope: !3959, inlinedAt: !4267)
!4269 = !DILocation(line: 0, scope: !3940, inlinedAt: !4270)
!4270 = distinct !DILocation(line: 49, column: 10, scope: !3959, inlinedAt: !4267)
!4271 = !DILocation(line: 39, column: 8, scope: !3947, inlinedAt: !4270)
!4272 = !DILocation(line: 39, column: 7, scope: !3940, inlinedAt: !4270)
!4273 = !DILocation(line: 40, column: 5, scope: !3947, inlinedAt: !4270)
!4274 = !DILocalVariable(name: "__dest", arg: 1, scope: !4275, file: !2260, line: 26, type: !2263)
!4275 = distinct !DISubprogram(name: "memcpy", scope: !2260, file: !2260, line: 26, type: !2261, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !4276)
!4276 = !{!4274, !4277, !4278}
!4277 = !DILocalVariable(name: "__src", arg: 2, scope: !4275, file: !2260, line: 26, type: !762)
!4278 = !DILocalVariable(name: "__len", arg: 3, scope: !4275, file: !2260, line: 26, type: !86)
!4279 = !DILocation(line: 0, scope: !4275, inlinedAt: !4280)
!4280 = distinct !DILocation(line: 312, column: 10, scope: !4259)
!4281 = !DILocation(line: 29, column: 10, scope: !4275, inlinedAt: !4280)
!4282 = !DILocation(line: 312, column: 3, scope: !4259)
!4283 = distinct !DISubprogram(name: "ximemdup", scope: !488, file: !488, line: 316, type: !4284, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !4286)
!4284 = !DISubroutineType(types: !4285)
!4285 = !{!84, !763, !100}
!4286 = !{!4287, !4288}
!4287 = !DILocalVariable(name: "p", arg: 1, scope: !4283, file: !488, line: 316, type: !763)
!4288 = !DILocalVariable(name: "s", arg: 2, scope: !4283, file: !488, line: 316, type: !100)
!4289 = !DILocation(line: 0, scope: !4283)
!4290 = !DILocation(line: 0, scope: !3970, inlinedAt: !4291)
!4291 = distinct !DILocation(line: 318, column: 18, scope: !4283)
!4292 = !DILocation(line: 0, scope: !3977, inlinedAt: !4293)
!4293 = distinct !DILocation(line: 55, column: 25, scope: !3970, inlinedAt: !4291)
!4294 = !DILocation(line: 57, column: 26, scope: !3977, inlinedAt: !4293)
!4295 = !DILocation(line: 0, scope: !3940, inlinedAt: !4296)
!4296 = distinct !DILocation(line: 55, column: 10, scope: !3970, inlinedAt: !4291)
!4297 = !DILocation(line: 39, column: 8, scope: !3947, inlinedAt: !4296)
!4298 = !DILocation(line: 39, column: 7, scope: !3940, inlinedAt: !4296)
!4299 = !DILocation(line: 40, column: 5, scope: !3947, inlinedAt: !4296)
!4300 = !DILocation(line: 0, scope: !4275, inlinedAt: !4301)
!4301 = distinct !DILocation(line: 318, column: 10, scope: !4283)
!4302 = !DILocation(line: 29, column: 10, scope: !4275, inlinedAt: !4301)
!4303 = !DILocation(line: 318, column: 3, scope: !4283)
!4304 = distinct !DISubprogram(name: "ximemdup0", scope: !488, file: !488, line: 325, type: !4305, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !4307)
!4305 = !DISubroutineType(types: !4306)
!4306 = !{!40, !763, !100}
!4307 = !{!4308, !4309, !4310}
!4308 = !DILocalVariable(name: "p", arg: 1, scope: !4304, file: !488, line: 325, type: !763)
!4309 = !DILocalVariable(name: "s", arg: 2, scope: !4304, file: !488, line: 325, type: !100)
!4310 = !DILocalVariable(name: "result", scope: !4304, file: !488, line: 327, type: !40)
!4311 = !DILocation(line: 0, scope: !4304)
!4312 = !DILocation(line: 327, column: 30, scope: !4304)
!4313 = !DILocation(line: 0, scope: !3970, inlinedAt: !4314)
!4314 = distinct !DILocation(line: 327, column: 18, scope: !4304)
!4315 = !DILocation(line: 0, scope: !3977, inlinedAt: !4316)
!4316 = distinct !DILocation(line: 55, column: 25, scope: !3970, inlinedAt: !4314)
!4317 = !DILocation(line: 57, column: 26, scope: !3977, inlinedAt: !4316)
!4318 = !DILocation(line: 0, scope: !3940, inlinedAt: !4319)
!4319 = distinct !DILocation(line: 55, column: 10, scope: !3970, inlinedAt: !4314)
!4320 = !DILocation(line: 39, column: 8, scope: !3947, inlinedAt: !4319)
!4321 = !DILocation(line: 39, column: 7, scope: !3940, inlinedAt: !4319)
!4322 = !DILocation(line: 40, column: 5, scope: !3947, inlinedAt: !4319)
!4323 = !DILocation(line: 328, column: 3, scope: !4304)
!4324 = !DILocation(line: 328, column: 13, scope: !4304)
!4325 = !DILocation(line: 0, scope: !4275, inlinedAt: !4326)
!4326 = distinct !DILocation(line: 329, column: 10, scope: !4304)
!4327 = !DILocation(line: 29, column: 10, scope: !4275, inlinedAt: !4326)
!4328 = !DILocation(line: 329, column: 3, scope: !4304)
!4329 = distinct !DISubprogram(name: "xstrdup", scope: !488, file: !488, line: 335, type: !757, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !487, retainedNodes: !4330)
!4330 = !{!4331}
!4331 = !DILocalVariable(name: "string", arg: 1, scope: !4329, file: !488, line: 335, type: !94)
!4332 = !DILocation(line: 0, scope: !4329)
!4333 = !DILocation(line: 337, column: 27, scope: !4329)
!4334 = !DILocation(line: 337, column: 43, scope: !4329)
!4335 = !DILocation(line: 0, scope: !4259, inlinedAt: !4336)
!4336 = distinct !DILocation(line: 337, column: 10, scope: !4329)
!4337 = !DILocation(line: 0, scope: !3959, inlinedAt: !4338)
!4338 = distinct !DILocation(line: 312, column: 18, scope: !4259, inlinedAt: !4336)
!4339 = !DILocation(line: 49, column: 25, scope: !3959, inlinedAt: !4338)
!4340 = !DILocation(line: 0, scope: !3940, inlinedAt: !4341)
!4341 = distinct !DILocation(line: 49, column: 10, scope: !3959, inlinedAt: !4338)
!4342 = !DILocation(line: 39, column: 8, scope: !3947, inlinedAt: !4341)
!4343 = !DILocation(line: 39, column: 7, scope: !3940, inlinedAt: !4341)
!4344 = !DILocation(line: 40, column: 5, scope: !3947, inlinedAt: !4341)
!4345 = !DILocation(line: 0, scope: !4275, inlinedAt: !4346)
!4346 = distinct !DILocation(line: 312, column: 10, scope: !4259, inlinedAt: !4336)
!4347 = !DILocation(line: 29, column: 10, scope: !4275, inlinedAt: !4346)
!4348 = !DILocation(line: 337, column: 3, scope: !4329)
!4349 = distinct !DISubprogram(name: "xalloc_die", scope: !519, file: !519, line: 32, type: !309, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !518, retainedNodes: !4350)
!4350 = !{!4351}
!4351 = !DILocalVariable(name: "__errstatus", scope: !4352, file: !519, line: 34, type: !4353)
!4352 = distinct !DILexicalBlock(scope: !4349, file: !519, line: 34, column: 3)
!4353 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!4354 = !DILocation(line: 34, column: 3, scope: !4352)
!4355 = !DILocation(line: 0, scope: !4352)
!4356 = !DILocation(line: 40, column: 3, scope: !4349)
!4357 = distinct !DISubprogram(name: "close_stream", scope: !521, file: !521, line: 55, type: !4358, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !520, retainedNodes: !4394)
!4358 = !DISubroutineType(types: !4359)
!4359 = !{!38, !4360}
!4360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4361, size: 64)
!4361 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !33, line: 7, baseType: !4362)
!4362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !35, line: 49, size: 1728, elements: !4363)
!4363 = !{!4364, !4365, !4366, !4367, !4368, !4369, !4370, !4371, !4372, !4373, !4374, !4375, !4376, !4377, !4379, !4380, !4381, !4382, !4383, !4384, !4385, !4386, !4387, !4388, !4389, !4390, !4391, !4392, !4393}
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4362, file: !35, line: 51, baseType: !38, size: 32)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4362, file: !35, line: 54, baseType: !40, size: 64, offset: 64)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4362, file: !35, line: 55, baseType: !40, size: 64, offset: 128)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4362, file: !35, line: 56, baseType: !40, size: 64, offset: 192)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4362, file: !35, line: 57, baseType: !40, size: 64, offset: 256)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4362, file: !35, line: 58, baseType: !40, size: 64, offset: 320)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4362, file: !35, line: 59, baseType: !40, size: 64, offset: 384)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4362, file: !35, line: 60, baseType: !40, size: 64, offset: 448)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4362, file: !35, line: 61, baseType: !40, size: 64, offset: 512)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4362, file: !35, line: 64, baseType: !40, size: 64, offset: 576)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4362, file: !35, line: 65, baseType: !40, size: 64, offset: 640)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4362, file: !35, line: 66, baseType: !40, size: 64, offset: 704)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4362, file: !35, line: 68, baseType: !53, size: 64, offset: 768)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4362, file: !35, line: 70, baseType: !4378, size: 64, offset: 832)
!4378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4362, size: 64)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4362, file: !35, line: 72, baseType: !38, size: 32, offset: 896)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4362, file: !35, line: 73, baseType: !38, size: 32, offset: 928)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4362, file: !35, line: 74, baseType: !60, size: 64, offset: 960)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4362, file: !35, line: 77, baseType: !64, size: 16, offset: 1024)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4362, file: !35, line: 78, baseType: !66, size: 8, offset: 1040)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4362, file: !35, line: 79, baseType: !68, size: 8, offset: 1048)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4362, file: !35, line: 81, baseType: !72, size: 64, offset: 1088)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4362, file: !35, line: 89, baseType: !75, size: 64, offset: 1152)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4362, file: !35, line: 91, baseType: !77, size: 64, offset: 1216)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4362, file: !35, line: 92, baseType: !80, size: 64, offset: 1280)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4362, file: !35, line: 93, baseType: !4378, size: 64, offset: 1344)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4362, file: !35, line: 94, baseType: !84, size: 64, offset: 1408)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4362, file: !35, line: 95, baseType: !86, size: 64, offset: 1472)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4362, file: !35, line: 96, baseType: !38, size: 32, offset: 1536)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4362, file: !35, line: 98, baseType: !91, size: 160, offset: 1568)
!4394 = !{!4395, !4396, !4398, !4399}
!4395 = !DILocalVariable(name: "stream", arg: 1, scope: !4357, file: !521, line: 55, type: !4360)
!4396 = !DILocalVariable(name: "some_pending", scope: !4357, file: !521, line: 57, type: !4397)
!4397 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!4398 = !DILocalVariable(name: "prev_fail", scope: !4357, file: !521, line: 58, type: !4397)
!4399 = !DILocalVariable(name: "fclose_fail", scope: !4357, file: !521, line: 59, type: !4397)
!4400 = !DILocation(line: 0, scope: !4357)
!4401 = !DILocation(line: 57, column: 30, scope: !4357)
!4402 = !DILocalVariable(name: "__stream", arg: 1, scope: !4403, file: !980, line: 135, type: !4360)
!4403 = distinct !DISubprogram(name: "ferror_unlocked", scope: !980, file: !980, line: 135, type: !4358, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !520, retainedNodes: !4404)
!4404 = !{!4402}
!4405 = !DILocation(line: 0, scope: !4403, inlinedAt: !4406)
!4406 = distinct !DILocation(line: 58, column: 27, scope: !4357)
!4407 = !DILocation(line: 137, column: 10, scope: !4403, inlinedAt: !4406)
!4408 = !DILocation(line: 58, column: 43, scope: !4357)
!4409 = !DILocation(line: 59, column: 29, scope: !4357)
!4410 = !DILocation(line: 59, column: 45, scope: !4357)
!4411 = !DILocation(line: 69, column: 17, scope: !4412)
!4412 = distinct !DILexicalBlock(scope: !4357, file: !521, line: 69, column: 7)
!4413 = !DILocation(line: 57, column: 50, scope: !4357)
!4414 = !DILocation(line: 69, column: 33, scope: !4412)
!4415 = !DILocation(line: 69, column: 53, scope: !4412)
!4416 = !DILocation(line: 69, column: 59, scope: !4412)
!4417 = !DILocation(line: 69, column: 7, scope: !4357)
!4418 = !DILocation(line: 71, column: 11, scope: !4419)
!4419 = distinct !DILexicalBlock(scope: !4412, file: !521, line: 70, column: 5)
!4420 = !DILocation(line: 72, column: 9, scope: !4421)
!4421 = distinct !DILexicalBlock(scope: !4419, file: !521, line: 71, column: 11)
!4422 = !DILocation(line: 72, column: 15, scope: !4421)
!4423 = !DILocation(line: 77, column: 1, scope: !4357)
!4424 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !450, file: !450, line: 100, type: !4425, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !449, retainedNodes: !4428)
!4425 = !DISubroutineType(types: !4426)
!4426 = !{!86, !2469, !94, !86, !4427}
!4427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!4428 = !{!4429, !4430, !4431, !4432, !4433}
!4429 = !DILocalVariable(name: "pwc", arg: 1, scope: !4424, file: !450, line: 100, type: !2469)
!4430 = !DILocalVariable(name: "s", arg: 2, scope: !4424, file: !450, line: 100, type: !94)
!4431 = !DILocalVariable(name: "n", arg: 3, scope: !4424, file: !450, line: 100, type: !86)
!4432 = !DILocalVariable(name: "ps", arg: 4, scope: !4424, file: !450, line: 100, type: !4427)
!4433 = !DILocalVariable(name: "ret", scope: !4424, file: !450, line: 130, type: !86)
!4434 = !DILocation(line: 0, scope: !4424)
!4435 = !DILocation(line: 105, column: 9, scope: !4436)
!4436 = distinct !DILexicalBlock(scope: !4424, file: !450, line: 105, column: 7)
!4437 = !DILocation(line: 105, column: 7, scope: !4424)
!4438 = !DILocation(line: 117, column: 10, scope: !4439)
!4439 = distinct !DILexicalBlock(scope: !4424, file: !450, line: 117, column: 7)
!4440 = !DILocation(line: 117, column: 7, scope: !4424)
!4441 = !DILocation(line: 130, column: 16, scope: !4424)
!4442 = !DILocation(line: 135, column: 11, scope: !4443)
!4443 = distinct !DILexicalBlock(scope: !4424, file: !450, line: 135, column: 7)
!4444 = !DILocation(line: 135, column: 25, scope: !4443)
!4445 = !DILocation(line: 135, column: 30, scope: !4443)
!4446 = !DILocation(line: 135, column: 7, scope: !4424)
!4447 = !DILocalVariable(name: "ps", arg: 1, scope: !4448, file: !2443, line: 1135, type: !4427)
!4448 = distinct !DISubprogram(name: "mbszero", scope: !2443, file: !2443, line: 1135, type: !4449, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !449, retainedNodes: !4451)
!4449 = !DISubroutineType(types: !4450)
!4450 = !{null, !4427}
!4451 = !{!4447}
!4452 = !DILocation(line: 0, scope: !4448, inlinedAt: !4453)
!4453 = distinct !DILocation(line: 137, column: 5, scope: !4443)
!4454 = !DILocalVariable(name: "__dest", arg: 1, scope: !4455, file: !2260, line: 57, type: !84)
!4455 = distinct !DISubprogram(name: "memset", scope: !2260, file: !2260, line: 57, type: !2452, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !449, retainedNodes: !4456)
!4456 = !{!4454, !4457, !4458}
!4457 = !DILocalVariable(name: "__ch", arg: 2, scope: !4455, file: !2260, line: 57, type: !38)
!4458 = !DILocalVariable(name: "__len", arg: 3, scope: !4455, file: !2260, line: 57, type: !86)
!4459 = !DILocation(line: 0, scope: !4455, inlinedAt: !4460)
!4460 = distinct !DILocation(line: 1137, column: 3, scope: !4448, inlinedAt: !4453)
!4461 = !DILocation(line: 59, column: 10, scope: !4455, inlinedAt: !4460)
!4462 = !DILocation(line: 137, column: 5, scope: !4443)
!4463 = !DILocation(line: 138, column: 11, scope: !4464)
!4464 = distinct !DILexicalBlock(scope: !4424, file: !450, line: 138, column: 7)
!4465 = !DILocation(line: 138, column: 7, scope: !4424)
!4466 = !DILocation(line: 139, column: 5, scope: !4464)
!4467 = !DILocation(line: 143, column: 26, scope: !4468)
!4468 = distinct !DILexicalBlock(scope: !4424, file: !450, line: 143, column: 7)
!4469 = !DILocation(line: 143, column: 41, scope: !4468)
!4470 = !DILocation(line: 143, column: 7, scope: !4424)
!4471 = !DILocation(line: 145, column: 15, scope: !4472)
!4472 = distinct !DILexicalBlock(scope: !4473, file: !450, line: 145, column: 11)
!4473 = distinct !DILexicalBlock(scope: !4468, file: !450, line: 144, column: 5)
!4474 = !DILocation(line: 145, column: 11, scope: !4473)
!4475 = !DILocation(line: 146, column: 32, scope: !4472)
!4476 = !DILocation(line: 146, column: 16, scope: !4472)
!4477 = !DILocation(line: 146, column: 14, scope: !4472)
!4478 = !DILocation(line: 146, column: 9, scope: !4472)
!4479 = !DILocation(line: 286, column: 1, scope: !4424)
!4480 = !DISubprogram(name: "mbsinit", scope: !4481, file: !4481, line: 293, type: !4482, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !637)
!4481 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!4482 = !DISubroutineType(types: !4483)
!4483 = !{!38, !4484}
!4484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4485, size: 64)
!4485 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !453)
!4486 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !523, file: !523, line: 27, type: !3924, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !4487)
!4487 = !{!4488, !4489, !4490, !4491}
!4488 = !DILocalVariable(name: "ptr", arg: 1, scope: !4486, file: !523, line: 27, type: !84)
!4489 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4486, file: !523, line: 27, type: !86)
!4490 = !DILocalVariable(name: "size", arg: 3, scope: !4486, file: !523, line: 27, type: !86)
!4491 = !DILocalVariable(name: "nbytes", scope: !4486, file: !523, line: 29, type: !86)
!4492 = !DILocation(line: 0, scope: !4486)
!4493 = !DILocation(line: 30, column: 7, scope: !4494)
!4494 = distinct !DILexicalBlock(scope: !4486, file: !523, line: 30, column: 7)
!4495 = !DILocalVariable(name: "ptr", arg: 1, scope: !4496, file: !4011, line: 2057, type: !84)
!4496 = distinct !DISubprogram(name: "rpl_realloc", scope: !4011, file: !4011, line: 2057, type: !181, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !4497)
!4497 = !{!4495, !4498}
!4498 = !DILocalVariable(name: "size", arg: 2, scope: !4496, file: !4011, line: 2057, type: !86)
!4499 = !DILocation(line: 0, scope: !4496, inlinedAt: !4500)
!4500 = distinct !DILocation(line: 37, column: 10, scope: !4486)
!4501 = !DILocation(line: 2059, column: 24, scope: !4496, inlinedAt: !4500)
!4502 = !DILocation(line: 2059, column: 10, scope: !4496, inlinedAt: !4500)
!4503 = !DILocation(line: 37, column: 3, scope: !4486)
!4504 = !DILocation(line: 32, column: 7, scope: !4505)
!4505 = distinct !DILexicalBlock(scope: !4494, file: !523, line: 31, column: 5)
!4506 = !DILocation(line: 32, column: 13, scope: !4505)
!4507 = !DILocation(line: 33, column: 7, scope: !4505)
!4508 = !DILocation(line: 38, column: 1, scope: !4486)
!4509 = distinct !DISubprogram(name: "hard_locale", scope: !526, file: !526, line: 28, type: !1045, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !525, retainedNodes: !4510)
!4510 = !{!4511, !4512}
!4511 = !DILocalVariable(name: "category", arg: 1, scope: !4509, file: !526, line: 28, type: !38)
!4512 = !DILocalVariable(name: "locale", scope: !4509, file: !526, line: 30, type: !4513)
!4513 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 2056, elements: !4514)
!4514 = !{!4515}
!4515 = !DISubrange(count: 257)
!4516 = !DILocation(line: 0, scope: !4509)
!4517 = !DILocation(line: 30, column: 3, scope: !4509)
!4518 = !DILocation(line: 30, column: 8, scope: !4509)
!4519 = !DILocation(line: 32, column: 7, scope: !4520)
!4520 = distinct !DILexicalBlock(scope: !4509, file: !526, line: 32, column: 7)
!4521 = !DILocation(line: 32, column: 7, scope: !4509)
!4522 = !DILocalVariable(name: "__s1", arg: 1, scope: !4523, file: !595, line: 1359, type: !94)
!4523 = distinct !DISubprogram(name: "streq", scope: !595, file: !595, line: 1359, type: !596, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !525, retainedNodes: !4524)
!4524 = !{!4522, !4525}
!4525 = !DILocalVariable(name: "__s2", arg: 2, scope: !4523, file: !595, line: 1359, type: !94)
!4526 = !DILocation(line: 0, scope: !4523, inlinedAt: !4527)
!4527 = distinct !DILocation(line: 35, column: 9, scope: !4528)
!4528 = distinct !DILexicalBlock(scope: !4509, file: !526, line: 35, column: 7)
!4529 = !DILocation(line: 1361, column: 11, scope: !4523, inlinedAt: !4527)
!4530 = !DILocation(line: 1361, column: 10, scope: !4523, inlinedAt: !4527)
!4531 = !DILocation(line: 35, column: 29, scope: !4528)
!4532 = !DILocation(line: 0, scope: !4523, inlinedAt: !4533)
!4533 = distinct !DILocation(line: 35, column: 32, scope: !4528)
!4534 = !DILocation(line: 1361, column: 11, scope: !4523, inlinedAt: !4533)
!4535 = !DILocation(line: 1361, column: 10, scope: !4523, inlinedAt: !4533)
!4536 = !DILocation(line: 35, column: 7, scope: !4509)
!4537 = !DILocation(line: 46, column: 3, scope: !4509)
!4538 = !DILocation(line: 47, column: 1, scope: !4509)
!4539 = distinct !DISubprogram(name: "setlocale_null_r", scope: !528, file: !528, line: 154, type: !4540, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !527, retainedNodes: !4542)
!4540 = !DISubroutineType(types: !4541)
!4541 = !{!38, !38, !40, !86}
!4542 = !{!4543, !4544, !4545}
!4543 = !DILocalVariable(name: "category", arg: 1, scope: !4539, file: !528, line: 154, type: !38)
!4544 = !DILocalVariable(name: "buf", arg: 2, scope: !4539, file: !528, line: 154, type: !40)
!4545 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4539, file: !528, line: 154, type: !86)
!4546 = !DILocation(line: 0, scope: !4539)
!4547 = !DILocation(line: 159, column: 10, scope: !4539)
!4548 = !DILocation(line: 159, column: 3, scope: !4539)
!4549 = distinct !DISubprogram(name: "setlocale_null", scope: !528, file: !528, line: 186, type: !4550, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !527, retainedNodes: !4552)
!4550 = !DISubroutineType(types: !4551)
!4551 = !{!94, !38}
!4552 = !{!4553}
!4553 = !DILocalVariable(name: "category", arg: 1, scope: !4549, file: !528, line: 186, type: !38)
!4554 = !DILocation(line: 0, scope: !4549)
!4555 = !DILocation(line: 189, column: 10, scope: !4549)
!4556 = !DILocation(line: 189, column: 3, scope: !4549)
!4557 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !530, file: !530, line: 35, type: !4550, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !529, retainedNodes: !4558)
!4558 = !{!4559, !4560}
!4559 = !DILocalVariable(name: "category", arg: 1, scope: !4557, file: !530, line: 35, type: !38)
!4560 = !DILocalVariable(name: "result", scope: !4557, file: !530, line: 37, type: !94)
!4561 = !DILocation(line: 0, scope: !4557)
!4562 = !DILocation(line: 37, column: 24, scope: !4557)
!4563 = !DILocation(line: 62, column: 3, scope: !4557)
!4564 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !530, file: !530, line: 66, type: !4540, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !529, retainedNodes: !4565)
!4565 = !{!4566, !4567, !4568, !4569, !4570}
!4566 = !DILocalVariable(name: "category", arg: 1, scope: !4564, file: !530, line: 66, type: !38)
!4567 = !DILocalVariable(name: "buf", arg: 2, scope: !4564, file: !530, line: 66, type: !40)
!4568 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4564, file: !530, line: 66, type: !86)
!4569 = !DILocalVariable(name: "result", scope: !4564, file: !530, line: 111, type: !94)
!4570 = !DILocalVariable(name: "length", scope: !4571, file: !530, line: 125, type: !86)
!4571 = distinct !DILexicalBlock(scope: !4572, file: !530, line: 124, column: 5)
!4572 = distinct !DILexicalBlock(scope: !4564, file: !530, line: 113, column: 7)
!4573 = !DILocation(line: 0, scope: !4564)
!4574 = !DILocation(line: 0, scope: !4557, inlinedAt: !4575)
!4575 = distinct !DILocation(line: 111, column: 24, scope: !4564)
!4576 = !DILocation(line: 37, column: 24, scope: !4557, inlinedAt: !4575)
!4577 = !DILocation(line: 113, column: 14, scope: !4572)
!4578 = !DILocation(line: 113, column: 7, scope: !4564)
!4579 = !DILocation(line: 116, column: 19, scope: !4580)
!4580 = distinct !DILexicalBlock(scope: !4581, file: !530, line: 116, column: 11)
!4581 = distinct !DILexicalBlock(scope: !4572, file: !530, line: 114, column: 5)
!4582 = !DILocation(line: 116, column: 11, scope: !4581)
!4583 = !DILocation(line: 120, column: 16, scope: !4580)
!4584 = !DILocation(line: 120, column: 9, scope: !4580)
!4585 = !DILocation(line: 125, column: 23, scope: !4571)
!4586 = !DILocation(line: 0, scope: !4571)
!4587 = !DILocation(line: 126, column: 18, scope: !4588)
!4588 = distinct !DILexicalBlock(scope: !4571, file: !530, line: 126, column: 11)
!4589 = !DILocation(line: 126, column: 11, scope: !4571)
!4590 = !DILocation(line: 128, column: 39, scope: !4591)
!4591 = distinct !DILexicalBlock(scope: !4588, file: !530, line: 127, column: 9)
!4592 = !DILocalVariable(name: "__dest", arg: 1, scope: !4593, file: !2260, line: 26, type: !2263)
!4593 = distinct !DISubprogram(name: "memcpy", scope: !2260, file: !2260, line: 26, type: !2261, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !529, retainedNodes: !4594)
!4594 = !{!4592, !4595, !4596}
!4595 = !DILocalVariable(name: "__src", arg: 2, scope: !4593, file: !2260, line: 26, type: !762)
!4596 = !DILocalVariable(name: "__len", arg: 3, scope: !4593, file: !2260, line: 26, type: !86)
!4597 = !DILocation(line: 0, scope: !4593, inlinedAt: !4598)
!4598 = distinct !DILocation(line: 128, column: 11, scope: !4591)
!4599 = !DILocation(line: 29, column: 10, scope: !4593, inlinedAt: !4598)
!4600 = !DILocation(line: 129, column: 11, scope: !4591)
!4601 = !DILocation(line: 133, column: 23, scope: !4602)
!4602 = distinct !DILexicalBlock(scope: !4603, file: !530, line: 133, column: 15)
!4603 = distinct !DILexicalBlock(scope: !4588, file: !530, line: 132, column: 9)
!4604 = !DILocation(line: 133, column: 15, scope: !4603)
!4605 = !DILocation(line: 138, column: 44, scope: !4606)
!4606 = distinct !DILexicalBlock(scope: !4602, file: !530, line: 134, column: 13)
!4607 = !DILocation(line: 0, scope: !4593, inlinedAt: !4608)
!4608 = distinct !DILocation(line: 138, column: 15, scope: !4606)
!4609 = !DILocation(line: 29, column: 10, scope: !4593, inlinedAt: !4608)
!4610 = !DILocation(line: 139, column: 15, scope: !4606)
!4611 = !DILocation(line: 139, column: 32, scope: !4606)
!4612 = !DILocation(line: 140, column: 13, scope: !4606)
!4613 = !DILocation(line: 0, scope: !4572)
!4614 = !DILocation(line: 145, column: 1, scope: !4564)
