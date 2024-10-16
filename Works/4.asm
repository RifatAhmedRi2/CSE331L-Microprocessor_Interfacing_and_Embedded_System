.model small
.stack 200h
.data 

a equ 2h
b equ 3h
                   
.code

multiplication proc 
    mul bx;
    ret
    
multiplication endp


main proc  
    mov ax, @data
    mov ds, ax
    
    mov ax, a
    mov bx, b
    
    call multiplication

    mov ah, 4ch
    int 21h
    
    main endp

end main