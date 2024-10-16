.model small
.stack 100h

.data

str1 db 'Hello World, '
len1 equ $-str1  ; length of str1

str2 db 'this is Assembly Language Programming'
len2 equ $-str2  ; length of str2

str3 db len1+len2 dup(?)


.code
    
main proc
    mov ax, @data
    mov ds, ax
    
    lea si, str1
    lea di, str3
    
    mov cl, 0
    
    TraverseStr1:
    cmp cl, len1
    jz NewLoop
    
    mov al, [si]
    mov [di], al
    
    inc cl
    inc si
    inc di
    
    jmp TraverseStr1
    
    NewLoop:
    lea si, str2
    mov cl, 0
    
    TraverseStr2:
    cmp cl, len2
    jz Exit
    
    mov al, [si]
    mov [di], al
    
    inc cl
    inc si
    inc di
    
    jmp TraverseStr2
    
        
    Exit:
    mov ah, 4ch
    int 21h
    
    main endp
    end main