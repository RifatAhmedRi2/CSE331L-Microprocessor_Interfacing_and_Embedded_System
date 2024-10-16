.model small
.stack 100h
.data
.code

     
main proc
    mov ax, 03h
    mov bx, 01h
    
    cmp ax,bx
    jg JumpIfGreater ; JG=JNLE if not less or equal
       ; ax !< bx    ; jg/jnle ; zf=0 and sf=of
       
    jge Label2 ; JGE Jump If Greater or Equal
        ; =JNL Jump Not less  ; of & sf TRUE meaning equal
    
    ; jl or jle has of!=sf
                     
    mov cx, 01h
    
    JumpIfGreater:
    mov cx, 02h
    jmp Terminate
    
    Label2:
    mov cx, 06h
    jmp Terminate

    Terminate:
    mov ah, 4ch
    int 21h
    
    main endp
    end main