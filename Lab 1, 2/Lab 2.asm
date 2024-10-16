.model small
.stack 200h
.data

a db 06h ; always use 0 before a HEX value
         ; for 8 bit use db (DataByte) & for 16 bit dw (DataWord)

b equ 22h 

array db 1, 2, 3, 4, 5, 6 ; no need to declare Array Size
brray db 'Hello', 0  

c db 6 dup(2) ; duplicate 2 into c 6 times
d db 3 dup(1,2) ; 1,2,1,2,1,2
                    

.code   
    
    mov ax, @data ; @data accesses the whole .data segment
    mov ds, ax ; mov ds, @data doesn't work because directly
               ; moving to ds is not allowed so we first move
               ; data into ax then mov from ax to ds

    mov al, array[2]     

        ; we want to do something like c[d] where d=4 meaning c[4] 
        ; in that case we have to use memoru index registers BX,DI,SI,
                
        ; mov si, 4
        ; mov al, c[si]

    inc al ; increment
    dec al ; decrement
                  
        ; lea - Load Effective Address is like a Pointer


    mov ah,4ch ; used to return the Control to OS
    int 21h