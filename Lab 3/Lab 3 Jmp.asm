.model small
.stack 100h
.data
.code

main proc
    mov ax, @data
    mov ds, ax
    
    mov ax, 06h
    jmp label_1  ;unconditional jump
    mov bx, 03h
    label_1:
    mov cx, 01h
    ;hlt ;it's used to halt the emulator
    
    jmp terminate
    
    mov bx, 03h
    
    terminate:
    mov ah, 4ch
    int 21h
    
    main endp
    end main