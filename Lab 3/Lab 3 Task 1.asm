.model small
.stack 100h

.data

str db 'Cse, 331L$' ; $ means end of the string

.code

     
main proc
    mov ax, @data
    mov ds, ax
    
    lea si, str
    mov dl, 0  ;using to Count
    
    Count:
    cmp [si], '$'
    jz Exit
    inc dl
    inc si
    jnz Count
    
    Exit:
    mov ah, 4ch
    int 21h
    
    main endp
    end main