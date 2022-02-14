executable: object
	ld -o bin/files bin/files.o
object: mkdir
	nasm -f elf64 -o bin/files.o files.asm
mkdir:
	# check if bin exists and mkdir if it doesn't
	ls bin &> /dev/null || mkdir bin
clean:
	rm -r bin hello.txt
