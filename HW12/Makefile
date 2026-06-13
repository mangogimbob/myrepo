base: base.o binary.o
	gcc -o base base.o binary.o
base.o: base.c binary.h
	gcc -c base.c
binary.o: binary.c binary.h
	gcc -c binary.c
clean:
	rm -f base base.o binary.o
