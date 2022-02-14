global _start

section .data
    question db "What's your first name?", 0ah
    len1 equ $ - question
    greeting db "Hello there, "
    len2 equ $ - greeting

; For uninitialised data
section .bss
    ; Reserve 20 bytes for name -> assuming a person's
    ; name would fit in 20 bytes
    name resb 20

section .text
_start:
    ; `call`s the subroutine
    ;
    ; `call` stores the return location in the stack and
    ; jumps to the specified label
    ; when it comes across the `ret` instruction, it jumps back
    ; to the return location which was stored
    call ask_for_name
    call read_name
    call print_greeting
    call print_name
    call exit

; subroutine to ask for the person's name
ask_for_name:
    mov rax, 1
    mov rdi, 1
    mov rsi, question
    mov rdx, len1
    syscall
    ; `ret` pops the return address off the stack
    ; and makes it possible to continue from where
    ; we left off when `call`ing it.
    ret

read_name:
    mov rax, 0 ; read syscall
    mov rdi, 0 ; stdin as file descriptor
    mov rsi, name ; read into `name` which we reserved earlier
    mov rdx, 20 ; length, 20 since we reserved 20 bytes earlier
    syscall
    ret

print_greeting:
    mov rax, 1
    mov rdi, 1
    mov rsi, greeting
    mov rdx, len2
    syscall
    ret

print_name:
    mov rax, 1
    mov rdi, 1
    mov rsi, name
    mov rdx, 20
    syscall
    ret

exit:
    mov rax, 03ch
    mov rdi, 0
    syscall
    ; technically don't need ret here since
    ; the program would exit after the syscall
    ret
