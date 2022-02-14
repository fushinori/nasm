%include "constants.s"

global _start

section .data
filename db "hello.txt", 0       ; zero-terminated file name
msg db "Hi there.", 0ah
len equ $ - msg

section .text
_start:
    ; Open file
    ; `fd` will be stored in `rax` in case of success.
    mov rax, SYS_OPEN
    mov rdi, filename
    mov rsi, O_CREAT | O_WRONLY  ; bitwise OR the flags
    mov rdx, 0q0644              ; permissions in octal
                                 ; read = 4, write = 2, execute = 1
				 ; special perm, owner, group, other
				 ; 0, 4+2, 4, 4
    syscall

    ; write to file
    mov rdi, rax                 ; set `fd`
    mov rax, SYS_WRITE
    mov rsi, msg
    mov rdx, len
    syscall

    ; exit
    mov rax, 0x3c
    mov rdi, 0
    syscall
