#	$NetBSD: Makefile,v 1.3 2015/11/11 16:08:52 phx Exp $
#
TARGET	= loadbsd

sdkprefix = /opt/amiga/bin/m68k-amigaos-
CC	= $(sdkprefix)gcc
#CC	= gcc
CFLAGS	= -D_STANDALONE -DNO_MID_CHECK -I./include -Os -fomit-frame-pointer -msmall-code -m68020
LDFLAGS	= -mcrt=nix20
LDLIBS	=

OBJS	= loadbsd.o loadfile.o loadfile_aout.o loadfile_elf32.o #getopt.o

$(TARGET): $(OBJS)
	$(CC) $(LDFLAGS) -o $@ $(OBJS) $(LDLIBS)
