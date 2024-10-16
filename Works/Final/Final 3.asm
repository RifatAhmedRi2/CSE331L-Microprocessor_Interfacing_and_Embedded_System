include 'emu8086.inc'

.model small
.stack 100h
.data 
    Array db 7 dup(?) 
    
.code 

main proc
    mov ax, @data
    mov ds, ax 
    
    lea si, Array
	mov cx, 7
	
	print 'Enter the Array Elements: '
	
	Input:
    mov ah, 01h
    int 21h
    
    sub al, 48
    mov [si], al
    print ' '
    inc si    
    LOOP Input
    
    mov ah, 02h
    mov dl, 10  ; New Line
    int 21h
    mov dl, 13  ; Carriage Return
    int 21h
    
    
    lea si, Array
	mov cx, 7
	
	mov bl, [si]
	
	print 'Smallest Number of the Array: '
	Traverse:	
	cmp [si], bl
	jle Smallest
	
	Compare:
	inc  si 
	
	LOOP Traverse
	
	add bl, 48
	mov dl, bl
	mov ah, 2
	int 21h
	jmp FindSmallest
	
	Smallest:
	mov bl, [si]
	jmp Compare
	
	FindSmallest:
	
	mov ah, 02h
    mov dl, 10  ; New Line
    int 21h
    mov dl, 13  ; Carriage Return
    int 21h
    
	lea si, Array
	mov cx, 7
	
	mov bl, [si]
	
	print 'Largest Number of the Array: '
	Traverse2:	
	cmp [si], bl
	jge Largest
	
	Compare2:
	inc  si 
	
	LOOP Traverse2
	
	add bl, 48
	mov dl, bl
	mov ah, 2
	int 21h
	jmp EXIT
	
	Largest:
	mov bl, [si]
	jmp Compare2
    
    EXIT:
    mov ah, 04ch
    int 21h    
    
    main endp
end main