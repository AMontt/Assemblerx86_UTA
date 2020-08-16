org 100h

mov [0200h], 0016h
mov [0201h], 00B7h
mov [0202h], 00CCh
mov [0203h], 00AEh
mov [0204h], 008Fh
mov [0205h], 0042h


mov bx, 0200h
mov ch, 0006h

start:
    mov cl, 0005h
    mov dl, 00B0h
    mov dh, 0000h

begin:
    mov al, [bx]
    and al, dl
    dec cl
    jz final
    cmp al, dl
    jz contador 
    
    shr dl, 01h
    jmp begin
    
contador:
    shr dl,01h
    inc dh
    jmp begin 
    
final:
    push bx
    add bx, 0010h
    mov [bx],dh
    pop bx
    inc bx
    dec ch
    jnz start

ret