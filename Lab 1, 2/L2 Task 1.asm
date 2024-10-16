.model small
.stack 200h
.data    

arr1 db 1,2,3,4,5
arr2 db 5 dup(?)

.code     

    mov ax, @data
    mov ds, ax

    lea si, arr1
    lea di, arr2 + 4 

    mov al, [si] ; al = 1  ; si = address, [si] = value
    mov [di], al ; di = 5  ; arr2 db -,-,-,-,1
    inc si
    dec di

    mov al, [si] ; al = 2
    mov [di], al ; di = 4  ; arr2 db -,-,-,2,1
    inc si
    dec di

    mov al, [si] ; al = 3
    mov [di], al ; di = 3  ; arr2 db -,-,3,2,1
    inc si
    dec di

    mov al, [si] ; al = 4
    mov [di], al ; di = 2  ; arr2 db -,4,3,2,1
    inc si
    dec di 
                  
    mov al, [si] ; al = 5
    mov [di], al ; di = 1  ; arr2 db 5,4,3,2,1
    inc si
    dec di
    
    mov ah, 4ch 
    int 21h
