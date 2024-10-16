.model small
.stack 100h
.data
.code

;Store a value in AX register
;If the value is Positive, store 1 in CX
;if the value is Negative, store -1 in CX
;If the value is Zero (0), store 0 in CX

     
main proc
    mov ax, -03h
    mov bx, 00h
    
    cmp ax,bx  ; or cmp ax, 0
    
    jg Positive
    jl Negative
    je Zero  
    
    Positive:
    mov cx, 01h
    jmp Terminate
    
    Negative:
    mov cx, -01h
    jmp Terminate
    
    Zero:
    mov cx, 00h
    jmp Terminate
    
    
    Terminate:
    mov ah, 4ch
    int 21h
    
    main endp
    end main