; takes one argument, the pointer to the text
%macro print 1
    mov rax, %1       ; store pointer in rax
    mov rbx, 0        ; set length counter to 0

; %% for local labels
; unique label name for each time the macro is called
; prevents redefining errors
%%print:
    mov cl, [rax]     ; store first byte of the text in cl
                      ; cl is the lowest 8-bits of the rcx register
    cmp cl, 0         ; check whether it's 0, a.k.a the null byte
    je %%print_text   ; if it is null, print the string
    inc rax           ; otherwise, increment the pointer
    inc rbx           ; also increment the length
    jmp %%print       ; jump back to the start

; print the text
%%print_text:
    mov rax, 1
    mov rdi, 1
    mov rsi, %1       ; set the initial pointer of the text
    mov rdx, rbx      ; final length is in the rbx register
    syscall
%endmacro

; takes one argument, the exit code
%macro exit 1
    mov rax, 03ch
    mov rdi, %1
    syscall
%endmacro
