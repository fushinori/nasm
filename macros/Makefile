executable: object
	ld -o bin/print bin/print.o
object: mkdir
	nasm -f elf64 -o bin/print.o print.s
mkdir:
	# check if bin exists and mkdir if it doesn't
	ls bin &> /dev/null || mkdir bin
clean:
	rm -r bin
