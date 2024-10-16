.model small
.stack 100h
.data
 
.code 
 
rifat proc
     mov ax, 04h
     ret
     
     rifat endp       

main proc
     call rifat
     
     main endp

end main    ;To end the driver function we need to end it again