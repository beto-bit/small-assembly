DEFAULT REL
BITS 32

section .data
msg:    db "hi mum", 10
len:    equ $ - msg

section .text
global _start

_start:
    mov eax, 4      ; write
    mov ebx, 1      ; stdout
    mov ecx, msg
    mov edx, len
    int 0x80        ; syscall

    mov eax, 1      ; exit
    mov ebx, 0      ; exit code 0
    int 0x80        ; syscall

