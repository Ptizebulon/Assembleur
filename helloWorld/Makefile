AS=nasm
ASFLAGS= -f elf64
CFLAGS= 
CC=gcc
CXX=g++
CXXFLAGS=
LD=ld
EXEC=helloWorld

helloWorld.o: helloWorld.asm
	$(AS) $(ASFLAGS) -o $@ $^

helloWorld: helloWorld.o
	$(CC) -o helloWorld helloWorld.o

all: $(EXEC)

#$(AS) $(ASFLAGS) -d ELF_TYPE asm_io.asm

clean :
	rm -rf *.o $(EXEC)
