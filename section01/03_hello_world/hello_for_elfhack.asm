section .text
    global _start
section .text
_start:
    call callee
    db 'Hello, World!', 0x0a ; 0xa: new line code
callee:
    mov rdx, 0xe             ; length of data to write
    pop rsi                  ; first address of data to write
                             ; pop the address of the next instruction of `call callee`
                             ; and store the poped address in rsi
    mov rdi, 0x1             ; file descriptor
    mov rax, 0x1             ; write syscall
    syscall                  ; calling syscall
    mov rdi, 0x0             ; exit status
    mov rax, 0x3c            ; exit syscall
    syscall                  ; calling syscall
