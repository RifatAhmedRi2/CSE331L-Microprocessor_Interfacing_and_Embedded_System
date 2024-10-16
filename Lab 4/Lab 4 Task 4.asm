include 'emu8086.inc'

.model small
.stack 100h
.data 
    String1 db "suius"
    len equ $-String1
    
    String2 db len dup(?)
    
.code 

main proc
    mov ax, @data
    mov ds, ax
    
    lea si, String1
	lea di, String2+4
	
	mov cx, len
	
	Traverse:	
	mov al, [si]
	mov [di], al
	
	inc si
	dec di
	LOOP Traverse
	
	lea si, String1
	lea di, String2
	mov al, 0 ;using for count
    mov cx, len
	
    Check:
    mov bl, [si]
    cmp bl, [di]
    jne NO
    inc si
    inc di
    LOOP Check
    
    YES:
    print "Palindrome"
    jmp EXIT
    
    NO:
    print "Not Palindrome"
    
    EXIT:
    mov ah, 04ch
    int 21h    
    
    main endp
end main