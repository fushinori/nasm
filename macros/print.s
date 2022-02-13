%include "macros.s"

global _start

section .data
msg1 db "Hello there!", 0ah, 0  ; end with 0, the null byte
msg2 db "Goodbye!", 0ah, 0

section .text
_start:
    print msg1
    print msg2
    exit 0
