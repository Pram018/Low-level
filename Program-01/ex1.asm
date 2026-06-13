global _start

section .data
    msg db "Hello, World!", 0x0a   ; 0x0a new line character
    len equ $ - msg

section .text
_start:
    mov eax, 4   ; sys_write system_call
    mov ebx, 1   ; stdout file_descripter
    mov ecx, msg ; Bytes_to_write
    mov edx, len ; Number of bytes_to_write
    int 0x80     ; Performing system_call
    mov eax, 1   ; sys_exit system_call
    mov ebx, 0   ; exit status is 0
    int 0x80