; filepath: /workspaces/test/goat-joke-asm/src/goat_joke.asm
section .data
    joke db "Why do goats never get lost? Because they always follow the herd!", 0xA
    joke_len equ $ - joke

section .text
    global _start

_start:
    mov eax, 4          ; sys_write
    mov ebx, 1          ; stdout
    mov ecx, joke
    mov edx, joke_len
    int 0x80

    mov eax, 1          ; sys_exit
    xor ebx, ebx
    int 0x80