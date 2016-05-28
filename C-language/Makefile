OFILES = evolution.o read.o world-to-eps.o write.o xmalloc.o
TARGET = evolution
CC = gcc
CFLAGS = -Wall -pedantic -std=c99 -O2
$ (TARGET) : $(OFILES)
	$(CC) $(OFILES) -o $@
	
clean:
	rm -f $(OFILES) $(TARGET)
	
# below this is the output of "gcc -MM":

evolution.o: evolution.c evolution.h xmalloc.h array.h read.h write.h world-to-eps.h
read.o: read.c xmalloc.h read.h evolution.h
world-to-eps.o: world-to-eps.c world-to-eps.h evolution.h
write.o: write.c write.h evolution.h
xmalloc.o: xmalloc.c xmalloc.h
