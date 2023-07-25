.RECIPEPREFIX := >

.PHONY: all
all: main

main: prog.o
> ld $< -o $@

tiny_main: prog.o
> ld -z noseparate-code $< -o $@
> super-strip/sstrip $@

prog.o: prog.asm
> nasm -f elf64 $<


# Searching the tiniest executable
32main: 32prog.o
> ld -m elf_i386 -z noseparate-code $< -o $@
> super-strip/sstrip $@

32prog.o: 32prog.asm
> nasm -f elf32 $<


.PHONY: clean
clean:
> rm -f main tiny_main 32main $(wildcard *.o)
