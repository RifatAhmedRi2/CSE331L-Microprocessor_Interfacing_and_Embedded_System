include 'emu8086.inc'

.model small
.stack 100h
.data 
.code 

main proc 
    mov ax, @data
    mov ds, ax 
    
    print 'Enter the 1st value: '
    mov ah, 1
    int 21h
    mov bl, al
    sub bl, 48
    
    mov ah, 02h
    mov dl, 10 ;new line
    int 21h
    mov dl, 13 ;carriage
    int 21h
    
    print 'Enter the 2nd value: '
    
    mov ah, 1
    int 21h
    sub al, 48
    
    add bl, al
    
    mov ah, 02h
    mov dl, 10 ;new line
    int 21h
    mov dl, 13 ;carriage return
    int 21h
    
    ;print 'Summation of the two inputs: '
    
    mov al, bl
    add al, 48
    mov ah, 02h
    mov dl, al
    int 21h
    
    main endp
end main