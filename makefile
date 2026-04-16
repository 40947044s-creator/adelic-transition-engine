# Adelic Transition Engine - Build Proof
all: marilyn_fold.o

marilyn_fold.o: marilyn_fold.asm
	nasm -f elf64 marilyn_fold.asm -o marilyn_fold.o

clean:
	rm -f *.o
