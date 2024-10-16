.model small
.stack 100h
.data
.code 

AddNum macro a, b
    mov ax, a
    mov bx, b
    add ax, bx
    AddNum endm

main proc  
    AddNum 2,6
    
    mov ax, 4c00h
    int 21h
    
    main endp
end main