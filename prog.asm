DEFAULT REL

section .data
msg:    db "hi mum", 10
len:    equ $ - msg

section .text
global _start

_start:
    mov rax, 1      ; write
    mov rdi, 1      ; stdout
    mov rsi, msg
    mov rdx, len
    syscall

    mov rax, 60     ; exit
    mov rdi, 0      ; exit code 0
    syscall

