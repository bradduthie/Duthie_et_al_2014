CC = gcc
CFLAGS= -ansi -Wall -pedantic -std=c99

RandCoex:	waspibm.o randnormINT.o SampleNoReplace.o DispVals.o Eix.o randunif.o as183.o
	$(CC) $(CFLAGS) -o waspibm waspibm.o randnormINT.o SampleNoReplace.o DispVals.o Eix.o randunif.o as183.o -lm

waspibm.o: waspibm.c
	$(CC) $(CFLAGS) -c waspibm.c

randnormINT.o: randnormINT.c
	$(CC) $(CFLAGS) -c randnormINT.c

SampleNoReplace.o: SampleNoReplace.c
	$(CC) $(CFLAGS) -c SampleNoReplace.c

DispVals.o: DispVals.c
	$(CC) $(CFLAGS) -c DispVals.c

Eix.o:	Eix.c
	$(CC) $(CFLAGS) -c Eix.c

randunif.o: randunif.c
	$(CC) $(CFLAGS) -c randunif.c

as183.o: as183.c
	$(CC) $(CFLAGS) -c as183.c

clean:
	rm -rf *.o daj
