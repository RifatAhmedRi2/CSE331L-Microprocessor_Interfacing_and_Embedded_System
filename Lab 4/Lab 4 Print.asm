include 'emu8086.inc'

.model small
.stack 100h
.data 
    msg db "Hello World$"

.code 

main proc 
    mov ax, @data
    mov ds, ax 
    
    lea dx, msg
    
    mov ah, 09h ;used for Printing String using LEA
    int 21h
    
    main endp
end main