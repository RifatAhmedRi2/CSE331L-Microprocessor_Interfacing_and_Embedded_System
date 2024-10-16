.model small
.stack 100h
.data

.code
     mov ax, @data
     mov ds, ax

     mov ah, 04ch
     int 21h