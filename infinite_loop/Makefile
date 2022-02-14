executable: object
	ld -o bin/infinite bin/infinite.o
object: mkdir
	nasm -f elf64 -o bin/infinite.o infinite.asm
mkdir:
	# check if bin exists and mkdir if it doesn't
	ls bin &> /dev/null || mkdir bin
clean:
	rm -r bin
