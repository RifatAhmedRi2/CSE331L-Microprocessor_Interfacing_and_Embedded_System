                 .model small
.stack 100h
.data
.code

;From 80h to FF are Extended ascii code
;Store 2 Extended ascii code and compare them
;if the 1st one is below 2nd one store CX = 1 
;otherwise CX = 5

     
main proc
    mov ax, 88h
    mov bx, 81h
    
    cmp ax,bx
    
    jb AX_Below  ;JB=Jump Below  AX<BX  
    
    ja AX_Above  ;JA=Jump Above  AX>BX
    
    AX_Below:
    mov cx, 1
    jmp Terminate
     
    AX_Above:
    mov cx, -1
    jmp Terminate    
    
    mov cx, 05h
    hlt
    
    Terminate:
    mov ah, 4ch
    int 21h
    
    main endp
    end main