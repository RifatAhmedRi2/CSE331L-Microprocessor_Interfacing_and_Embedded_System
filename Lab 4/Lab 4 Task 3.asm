include 'emu8086.inc'

.model small
.stack 100h
.data 
    arr db 5 dup(?)
    msg db "Enter 5 Nubers in the Array: $"

.code 

main proc
    mov ax, @data
    mov ds, ax
    
    lea dx, msg
    mov ah, 09h
    int 21h
    
    mov cx, 5
    lea si, arr
    
    Input:
    mov ah, 01h
    int 21h
    
    mov [si], al
    print ' '
    inc si    
    LOOP Input
    
    mov ah, 02h
    mov dl, 10  ; dl=10 == New Line
    int 21h
    mov dl, 13  ; Carriage Return
                ; sets the cursor to the
                ; beginning of the line
    int 21h
    
    print "The Numbers Are: "
    
    lea si, arr      
    mov cx, 5
    
    Traverse:
    mov ah, 02h
    mov dl, [si]
    int 21h
    mov dl,20h ; acsii for a space   
    int 21h
    inc si
    LOOP Traverse
    
    mov ah, 02h
    mov dl, 10  ; dl=10 == New Line
    int 21h
    mov dl, 13  ; Carriage Return
                ; sets the cursor to the
                ; beginning of the line
    int 21h
    
    print 'Look for: '
    mov ah, 01h  ;taking search value
    int 21h
    mov bl, al   ;bl = search item
    
    ;looking for the value
    
    lea si, arr      
    mov cx, 5
    
    LOOKUP:
    cmp bl, [si]
    jz Found
    inc si
    LOOP LOOKUP
    
    NotFound:
    mov ah, 02h
    mov dl, 10  ; dl=10 == New Line
    int 21h
    mov dl, 13  ; Carriage Return
                ; sets the cursor to the
                ; beginning of the line
    int 21h
    print "Value not Found"
    jmp EXIT
    
    Found:
    mov ah, 02h
    mov dl, 10  ; dl=10 == New Line
    int 21h
    mov dl, 13  ; Carriage Return
                ; sets the cursor to the
                ; beginning of the line
    int 21h
    print "Value Found"
    
    EXIT:
    mov ah, 04ch
    int 21h    
    
    main endp
end main