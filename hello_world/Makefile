executable: object
	ld -o bin/hello_world bin/hello_world.o
object: mkdir
	nasm -f elf64 -o bin/hello_world.o hello_world.s
mkdir:
	# check if bin exists and mkdir if it doesn't
	ls bin &> /dev/null || mkdir bin
clean:
	rm -r bin
