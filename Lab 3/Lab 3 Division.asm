.model small
.stack 100h
.data
     
.code

main proc

; 1) ax = 0705, bx = F0F do 8-bit and 16-bit Division

    mov ax, 0705h
    mov bx, 0F0Fh
    
    ; 8-bit Division -> Quotient = AL & Remainder = AH    
    div bl  ; 8-bit multiplication (al/bl) 
    
    ; 16-bit Division -> Quotient = AX & Remainder = DX
    div bx  ; 16-bit multiplication (ax/bx)
    
    main endp
    
    mov ax, 4c00h ; exit to operating system
    int 21h    
