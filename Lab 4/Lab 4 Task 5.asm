include 'emu8086.inc'

.model small
.stack 100h
.data 
    Array1 db 1, 2, 5, 4, 3 
    
.code 

main proc
    mov ax, @data
    mov ds, ax 
    
    lea si, Array1
	mov cx, 5
	
	Input:
    mov ah, 01h
    int 21h
    
    sub al, 48
    mov [si], al
    print ' '
    inc si    
    LOOP Input
    
    mov ah, 02h
    mov dl, 10  ; dl=10 == New Line
    int 21h
    mov dl, 13  ; Carriage Return
    int 21h
    
    
    lea si, Array1
	mov cx, 5
	
	mov bl, [si]
	
	Traverse:	
	cmp [si], bl
	jge Largest  ; to get Smallest we just
	             ; need to do JLE
	
	Compare:
	inc  si 
	
	LOOP Traverse
	
	add bl, 48
	mov dl, bl
	mov ah, 2
	int 21h
	jmp EXIT
	
	Largest:
	mov bl, [si]
	jmp Compare
    
    EXIT:
    mov ah, 04ch
    int 21h    
    
    main endp
end main