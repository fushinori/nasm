global _start

section .data
hello db "Hi!", 0ah
len equ $ - hello

section .text
_start:
    ; write "Hi!\n" to stdout
    mov rax, 1
    mov rdi, 1
    mov rsi, hello
    mov rdx, len
    syscall

    ; Unconditionally jump to the _start label again
    jmp _start
