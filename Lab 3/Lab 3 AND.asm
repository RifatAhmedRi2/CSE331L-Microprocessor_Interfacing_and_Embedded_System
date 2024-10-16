.model small
.stack 100h
.data
a db 5
b db ?
     
.code

main proc
    mov ax, @data
    mov ds, ax
    
       mov ah, 101011b ;2Bh
       mov al, 011010b ;1Ah
    and ah,al ;001010b ;0Ah is saved in AH
    
    main endp
    
    mov ax, 4c00h ; exit to operating system
    int 21h    
