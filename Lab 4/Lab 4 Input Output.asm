include 'emu8086.inc'

.model small
.stack 100h
.data
.code 

main proc  
    
    print "Enter a Value: "
    
    
    mov ah, 1 ;Takes Input
    ;(sets al to the ascii value)       
    int 21h
    
    mov ah, 1
    int 21h
    
    mov dl, 66h
    mov ah, 2 ;Gives Output
    int 21h
    
    main endp
end main