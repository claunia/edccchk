OBJS = edccchk.o
CC = gcc
DEBUG = -g
CFLAGS = -Wall -O0 -W -std=gnu99 -c $(DEBUG)
LFLAGS = -Wall $(DEBUG)
LIBS = 

edccchk : $(OBJS)
	$(CC) $(LFLAGS) $(LIBS) $(OBJS) -o edccchk

edccchk.o : edccchk.c common.h banner.h version.h
	$(CC) $(CFLAGS) edccchk.c

clean:
	\rm *.o edccchk

tar:
	tar Jcfv edccchk-src.txz banner.h common.h edccchk.c LICENSE Makefile README.md version.h

bindist : edccchk
	tar Jcvf edccchk-bin.txz edccchk LICENSE README.md
