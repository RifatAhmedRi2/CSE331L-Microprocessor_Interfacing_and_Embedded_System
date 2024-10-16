.model small
.stack 200h
.data

str1 db 'Rifat'
len1 equ $-str1

str2 db 'Ahmed'
len2 equ $-str2

str3 db len1+len2 dup(?)
len3 equ $-str3
                    
.code

incre proc
    inc dx
    ret
incre endp
    
    
main proc
    mov ax, @data
    mov ds, ax
    
    lea si, str1
    lea di, str3
    
    mov cx, 0
    
    Traverse1:
    cmp cx, len1
    jz NewLoop
    
    mov ax, [si]
    mov [di], ax
    
    inc cx
    inc si
    inc di
    
    jmp Traverse1
    
    NewLoop:
    lea si, str2
    mov cx, 0
    
    Traverse2:
    cmp cx, len2
    jz SetupCount
    
    mov ax, [si]
    mov [di], ax
    
    inc cx
    inc si
    inc di
    
    jmp Traverse2
    
    SetupCount:
    mov dx, 0 ;using DX for Counting
    mov cx, 0
    lea si, str3
    lea di, str3
    mov bx, [di]
    
    Count:
    mov ax, [si]
    inc si
    
    cmp ax,bx
    jz CountIncrement
    
    CountIncrement:
    call incre
    cmp cx, len3
    jz Terminate
    inc cx
    jmp Count 

    Terminate:
    mov ah, 4ch
    int 21h
    
    main endp

end main