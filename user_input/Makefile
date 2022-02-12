executable: object
	ld -o bin/user_input bin/user_input.o
object: mkdir
	nasm -f elf64 -o bin/user_input.o user_input.s
mkdir:
	# check if bin exists and mkdir if it doesn't
	ls bin &> /dev/null || mkdir bin
clean:
	rm -r bin
