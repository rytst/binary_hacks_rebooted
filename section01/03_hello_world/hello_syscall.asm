section .text
    global _start                ; `global` directive in NASM specific
section .text
_start:
    mov rdx, 0xe                 ; length of writing data
    mov rsi, msg                 ; first address of writing data
    mov rdi, 0x1                 ; file descriptor
    mov rax, 0x1                 ; write syscall
    syscall                      ; calling syscall
    mov rdi, 0x0                 ; exit status
    mov rax, 0x3c                ; exit syscall
    syscall                      ; calling syscall
section .rodata
    msg: db "Hello, World!", 0xa ; 0xa: new line code
