org 100h

mov [0200h], 000Bh
mov [0201h], 0004h
mov [0202h], 005Ch
mov [0203h], 0009h
mov [0204h], 0031h
mov [0205h], 000Dh
mov [0206h], 00A8h
mov [0207h], 004Ch
mov [0208h], 0021h
mov [0209h], 0002h
mov bx, 0200h
mov cl, 000Ah
step0:
    mov ax, 0000h
    mov al, [bx]
    mov dl, [bx+01]
    div dl
    mov [bx+10h],al
    mov al, ah
    mov ah, 00h
    mul cl
    div dl
    mov [bx+11h], al
    add bx, 02h
    cmp bx, 020Ah
    jnz step0    
ret
