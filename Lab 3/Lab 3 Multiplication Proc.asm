.model small
.stack 100h
.data
 
.code 
; Write a Procedure that can Multiply two numbers.
; Also, Call the Procedure from the Driving Porcedure
 
multiply proc
     mul bx
     ret
     
     multiply endp       

main proc
     mov ax, 03h
     mov bx, 02h
     call multiply ; ax = 03*02 = 06
     
     call multiply ; ax = 06*02 = 0C
     
     mov ax, 4c00h ; exit to operating system
     int 21h
     
     main endp

end main  