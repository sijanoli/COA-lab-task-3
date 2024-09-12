org 100h 
num1 db 25h 
num2 db 15h 
start: 
mov al, num1 
sub al, num2 
mov ah, al 
and ah, 0F0h 
shr ah, 4 
add ah, 30h 
cmp ah, 39h 
jle display_upper 
add ah, 7 
display_upper: 
mov dl, ah 
mov ah, 02h 
int 21h 
mov ah, al 
and ah, 0Fh 
add ah, 30h 
cmp ah, 39h 
jle display_lower 
add ah, 7 
display_lower: 
mov dl, ah 
mov ah, 02h 
int 21h 
mov ah, 4Ch
int 21h
