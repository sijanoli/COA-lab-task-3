org 100h 
num1 dw 5678h 
num2 dw 1234h 
start: 
mov ax, num1 
sub ax, num2 
mov bx, ax 
mov ah, bh 
shr ah, 4 
add ah, 30h 
cmp ah, 39h 
jle print_first_digit_high 
add ah, 7 
print_first_digit_high: 
mov dl, ah 
mov ah, 02h 
int 21h 
mov ah, bh 
and ah, 0fh 
add ah, 30h 
cmp ah, 39h 
jle print_second_digit_high 
add ah, 7 
print_second_digit_high: 
mov dl, ah 
mov ah, 02h 
int 21h 
mov ah, bl 
shr ah, 4 
add ah, 30h 
cmp ah, 39h 
jle print_first_digit_low 
add ah, 7 
print_first_digit_low: 
mov dl, ah 
mov ah, 02h 
int 21h 
mov ah, bl 
and ah, 0fh 
add ah, 30h 
cmp ah, 39h 
jle print_second_digit_low 
add ah, 7 
print_second_digit_low: 
mov dl, ah 
mov ah, 02h 
int 21h 
mov ah, 4ch 
int 21h
