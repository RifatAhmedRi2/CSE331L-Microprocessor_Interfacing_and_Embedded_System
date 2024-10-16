.model small
.stack 100h
.data
     
.code

main proc

; 1) ax = 0705, bx = 04 do 8-bit and 16-bit Multiplication

    mov ax, 0705h
    mov bx, 04h
        
    mul bx  ; 16bit multiplication (ax*bx)
    mul bl  ; 8bit multiplication (al*bl)
            
            
; 2) ax = 0705, bx = F0F do 8-bit and 16-bit Multiplication
    
    mov ax, 0705h
    mov bx, 0F0Fh  ; If we give F0F assembler confuses it for
                   ; a variable instead of a value.
                   ; Thus we always a 0 before Hex numbers
    
    mul bx  ; 16bit multiplication (ax*bx)
    mul bl  ; 8bit multiplication (al*bl)
    
    main endp
    
    mov ax, 4c00h ; exit to operating system
    int 21h    
