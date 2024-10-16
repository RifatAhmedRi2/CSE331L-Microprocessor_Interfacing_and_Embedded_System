.model small
.stack 200h
.data

array db 3, 4, 5, 6, 8
                    
.code

main proc  
    mov ax, @data
    mov ds, ax
    
    lea si, array
    mov cx,
     
    mov ax, [si]
    mov bx, 2
    
    div bx
    
    mov cx, 0 ;using to count Even
    mov di, 0 ;using to count Odd
    
    cmp dx, ax
    jg Even
    
    Even:
    inc cx
    
    Odd:
    inc di

    mov ah, 4ch
    int 21h
    
    main endp

end main