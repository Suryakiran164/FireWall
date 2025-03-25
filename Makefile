flags=-O2 -Wall -std=c2x
ldflags=-lbu

.PHONY: all clean

all: clean firewalld

firewalld: firewalld.o
        cc $(flags) $^ -o $@ $(ldflags)

firewalld.o: firewalld.c firewalld.h
        cc $(flags) -c $<

clean:
        rm -f *.o firewalld
