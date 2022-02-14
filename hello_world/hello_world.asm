global _start ; for linker

section .data ; to store constant data

; `db` declares initialised bytes
msg db "Hello, World!", 0xa ; 0xa = `\n`

; `equ` sets constants, can't be changed later
; `$` refers to current address
; `msg` refers to the address and not the value since square
; brackets are used for "dereferencing" in NASM.
; We store length of `msg` in `len` basically.
len equ $ - msg

section .text ; actual code
_start: ; start label
    mov rax, 1 ; write syscall
    mov rdi, 1 ; set file descriptor to stdout
    mov rsi, msg ; set text to print
    mov rdx, len ; set length of text
    syscall

    ; exit program
    mov rax, 0x3c ; exit syscall
    mov rdi, 0 ; set error code to 0
    syscall
