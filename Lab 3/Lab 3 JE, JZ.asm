.model small
.stack 100h
.data
.code

main proc
    mov ax, @data
    mov ds, ax
    
    mov ax, 06h
    mov bx, 03h
    
    cmp ax, bx  ; ax-bx
    jz JumpIfZero
    je JumpIfEqual  ; jz & je are same
                    ; al - bl == 0 means zf=1
                    
    jnz JumpIfNotZero
    jne JumpIfNotEqual  ; jnz & jne are same
                        ; al - bl != 0 means zf=1
    
    mov al, 001h
    jmp Terminate
    
    JumpIfEqual:
    mov ah, 001h
    
    JumpIfNotEqual:
    mov ah, 002h

    Terminate:
    mov ah, 4ch
    int 21h
    
    main endp
    end main