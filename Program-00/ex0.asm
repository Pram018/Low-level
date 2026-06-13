; global keyword is used to make an identifier accessible to the linker
global _start

; Identifier followed by a collen creates a label
; Labels are used to name locations in our code
_start:  
    mov eax, 1
    mov ebx, 42
    sub ebx, 12

    ; processor transfering control to interupt handler
    ; hex value 80 is the system-calls
    ; the system-call that it makes determined by the eax register
    ; value 1 determines we are making a exit-call, that will signal the end of our program
    ; the value in ebx register exit status for program can be any number.
    int 0x80    