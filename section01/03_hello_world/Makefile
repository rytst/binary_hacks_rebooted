all: hello_c hello_c_syscall hello_c_syscall_2 hello_syscall

hello_c: hello.c
	gcc -o hello_c hello.c

hello_c_syscall: hello_syscall.c
	gcc -o hello_c_syscall hello_syscall.c

hello_c_syscall_2: hello_syscall_2.c
	gcc -o hello_c_syscall_2 hello_syscall_2.c

hello_syscall: hello_syscall.asm
	nasm -f elf64 ./hello_syscall.asm
	ld -o hello_syscall ./hello_syscall.o

clean:
	rm hello_c hello_c_syscall hello_c_syscall_2 hello_syscall hello_syscall.o
	
