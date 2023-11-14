all: hello_world

hello_world.o:  hello_world.asm
	nasm -f elf hello_world.asm

hello_world:   hello_world.o
	ld -m elf_i386 -o hello_world.elf hello_world.o
