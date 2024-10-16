include 'emu8086.inc'

.model small
.stack 100h
.data 
.code


proc main

    mov ax, 66 ;Number that we'll CHECK
    mov bx, 7
    div bx
    
    cmp dx, 0
    jz Divisible
    
    NotDivisible:
    print 'Not Divisible by 7'
    jmp EXIT
    
    Divisible:
    print 'Divisible by 7'
    
    EXIT:
    mov ah, 04ch
    int 21h    
    
    main endp
end main