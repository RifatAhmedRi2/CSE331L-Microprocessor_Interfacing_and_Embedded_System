.model small
.stack 100h
.data
.code 
 
rifat proc      ; We call PROCEDURE 
     add al, 1
     add al, 1
     add al, 1
     
     ret        ; thus we return     
     rifat endp

Sum macro a, b  ; We dont call MACRO
                ; thus we DONT return
    add al, 1
    add al, 1
    add al, 1
    
    Sum endm

main proc  
     
     call rifat
     Sum 2,6
     
     mov ax, 4c00h
     int 21h
          
     main endp

end main