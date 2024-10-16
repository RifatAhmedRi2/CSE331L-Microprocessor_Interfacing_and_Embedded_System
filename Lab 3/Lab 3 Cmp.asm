.model small
.stack 100h
.data
a db 5
b db ?
     
.code

main proc
    mov ax, @data
    mov ds, ax

    mov al, a
    mov b, al  ; transferring value of 'a' into 'b'
               ; mov b, a DOES NOT work
               
    mov ah, 5
    mov al, 2
    ; sub ah, al and cmp ah, al does the same operation
    ; but sub saves the result in memory
    cmp ah, al ; cmp does not save the result in memory
               ; cmp is used to check conditions using the 0 flag
    
    main endp
    
    mov ax, 4c00h ; exit to operating system
    int 21h    
