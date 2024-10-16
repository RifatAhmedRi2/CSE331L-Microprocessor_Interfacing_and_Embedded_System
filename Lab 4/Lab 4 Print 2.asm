include 'emu8086.inc'

.model small
.stack 100h
.data 
.code 

main proc 
    mov ax, @data
    mov ds, ax 
    
    mov ah, 1
    int 21h
    
    mov dl, al ; dl assumes al is holding ascii
    mov ah, 2
    int 21h
    
    main endp
end main