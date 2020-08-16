org 100h

mov [0200h], 0038h
mov [0201h], 005Ah
mov [0202h], 0003h
mov [0203h], 0041h
mov [0204h], 0039h
mov [0205h], 0009h
mov [0206h], 0015h
mov [0207h], 0051h
mov [0208h], 0021h
mov [0209h], 0053h
mov [020Ah], 0076h
mov [020Bh], 001Ch
mov [020Ch], 00A2h
mov [020Dh], 00C4h
mov [020Eh], 0077h
mov [020Fh], 0042h
mov [0210h], 0069h
mov [0211h], 0062h
mov [0212h], 00B3h
mov [0213h], 00C5h
mov [0214h], 0018h


mov ch, 14h ; 20 decimal
mov bx, 0200h


begin:
    mov cl, 14h ; 20 decimal 
    mov dl, 00h
    mov al, [bx]
    push bx
    mov bx, 0200h
    jmp step1

step1:
    mov ah, [bx]
    cmp al, ah 
    jb Menor
    dec cl
    jz Comparar
    inc bx
    jnl step1
    
Menor:
    inc dl 
    inc bx
    dec cl
    jz Comparar
    jmp step1 
    
Comparar:
    cmp dl, 13h ; 19 decimal
    jz final:
    pop bx
    inc bx
    jmp begin
final:
    mov ch, 01h
    
ret