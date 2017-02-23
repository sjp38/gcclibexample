
all: libstatic.a main

libstatic.a: thestaticlib.c thestaticlib.h
	gcc -c thestaticlib.c -o thestaticlib.o
	ar rcs libstatic.a thestaticlib.o

main: main.c thestaticlib.h libstatic.a
	gcc main.c -o main -L. -lstatic

clean:
	echo "clean"
	rm -f *.o *.a main
