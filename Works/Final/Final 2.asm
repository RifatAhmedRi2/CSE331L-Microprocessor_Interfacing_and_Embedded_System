include 'emu8086.inc'

.model small
.stack 100h
.data
.code

macro Function a, b
    mov al, a
    mul al
    sub al, b
    add al, 3
    mov bl, al
    add bl, 48
    endm Function


proc main
    
    A_INPUT:
    print 'Enter value of a: '  ;a>=0
    
    mov ah, 1
    int 21h
    
    mov bl, al
    sub bl, 48
    cmp bl, 0 
    jl A_INVALID
    
    mov ah, 02h
    mov dl, 10  ; New Line
    int 21h
    mov dl, 13  ; Carriage Return
    int 21h
    
    B_INPUT:
    print 'Enter value of b: '  ;b<=9
    
    mov ah, 1
    int 21h
    
    mov cl, al
    sub cl, 48
    cmp cl, 9 
    jg B_INVALID
    
    mov ah, 02h
    mov dl, 10  ; New Line
    int 21h
    mov dl, 13  ; Carriage Return
    int 21h
    
    RESULT:
    print 'a^2 - b + 3 = '
    
    Function bl, cl
    mov ah, 2
    mov dl, bl
    int 21h
    
    jmp EXIT
    
    A_INVALID:
    mov ah, 02h
    mov dl, 10  ; New Line
    int 21h
    mov dl, 13  ; Carriage Return
    int 21h
    
    print 'Invalid Entry'
    
    mov ah, 02h
    mov dl, 10  ; New Line
    int 21h
    mov dl, 13  ; Carriage Return
    int 21h
    jmp A_INPUT
    
    B_INVALID:
    mov ah, 02h
    mov dl, 10  ; New Line
    int 21h
    mov dl, 13  ; Carriage Return
    int 21h
    
    print 'Invalid Entry'
    
    mov ah, 02h
    mov dl, 10  ; New Line
    int 21h
    mov dl, 13  ; Carriage Return
    int 21h
     
    jmp B_INPUT
    
    EXIT:
    mov ah, 04ch
    int 21h    
    
    main endp
end main