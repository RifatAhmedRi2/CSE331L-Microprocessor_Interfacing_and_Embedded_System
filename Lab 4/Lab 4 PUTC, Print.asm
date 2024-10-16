include 'emu8086.inc'

.model small
.stack 100h
.data
.code 

main proc  
    putc 'a'
    gotoxy 2,3 
    putc 'b'
    
    printn ''  ;PrintN gives a
               ;Break after the line
    print 'Hello World'
    
    
    mov ah, 4ch
    int 21h
    
    main endp
end main