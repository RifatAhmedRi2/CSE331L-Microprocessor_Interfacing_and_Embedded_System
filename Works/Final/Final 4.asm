include 'emu8086.inc'

.model small
.stack 100h
.data    
.code 

main proc
	TakeInput:
	print 'Enter a Letter to Check: '
	
    mov ah, 01h
    int 21h
    mov bl, al
    
    mov ah, 02h
    mov dl, 10  ; New Line
    int 21h
    mov dl, 13  ; Carriage Return
    int 21h
    
	CHECK:	
	cmp bl, 41h ;A
	jz Vowel
	cmp bl, 61h ;a
	jz Vowel
	cmp bl, 45h ;E
	jz Vowel
	cmp bl, 65h ;e
	jz Vowel
	cmp bl, 49h ;I
	jz Vowel
	cmp bl, 69h ;i
	jz Vowel
	cmp bl, 4Fh ;O
	jz Vowel
	cmp bl, 6Fh ;o
	jz Vowel
	cmp bl, 55h ;U
	jz Vowel
	cmp bl, 75h ;u
	jz Vowel
	
	Others:
	cmp bl, 64
	jl InvalidEntry
	jg Consonent
	
	Vowel:
	printn "It's Vowel"
	jmp EXIT
	
	Consonent:
	cmp bl, 123
	jg InvalidEntry
	printn "It's Consonent"
	jmp EXIT
	
	InvalidEntry:
	printn "Invalid Entry"
	jmp TakeInput
    
    EXIT:
    mov ah, 04ch
    int 21h    
    
    main endp
end main