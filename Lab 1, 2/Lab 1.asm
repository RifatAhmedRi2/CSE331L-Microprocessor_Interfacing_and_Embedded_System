.model small
.stack 100h
.data


.code 

mov ah,2
mov al,1

add al,ah
sub ah,al  
mov ah,al 

sub ah,al 

dec al   


mov ah,4ch
int 21h