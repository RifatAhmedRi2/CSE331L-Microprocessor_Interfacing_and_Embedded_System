.model small
.stack 100h
.data
 
.code 
 
addition proc
     pop dx ; popping the Location bacause call pushes the
            ; location into the stack
            
     pop ax ; 4
     pop bx ; 6
     add ax, bx ; 4+6 = 0A
     push dx ; push the return Location
     ret
     
     addition endp       

main proc

;Push & Pop supports only upto 16-bit
     
     push 6
     push 4
     call addition
     
     
     mov ax, 4c00h ; exit to operating system
     int 21h
     
     main endp

end main  