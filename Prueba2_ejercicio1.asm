org 100h

mov [0200h], 0069h
mov [0201h], 005Fh
mov [0202h], 0018h
mov [0203h], 0069h
mov [0204h], 0012h
mov [0205h], 00A3h
mov [0206h], 005Bh
mov [0207h], 0069h
mov [0208h], 0072h
mov [0209h], 004Ch
mov [020Ah], 001Dh
mov [020Bh], 0069h
mov [020Ch], 00B8h
mov [020Dh], 0001h
mov [020Eh], 0002h
mov [020Fh], 0003h
mov [0210h], 0004h
mov [0211h], 0005h
mov [0212h], 0006h
mov [0213h], 0007h

;---------------------
mov [0214h], 0069h
;---------------------

;--Punto de Partida---

mov bx, 0200h
mov cl, 0000h
mov dx, 0220h

step0:
    mov al, [bx]
    cmp al, [0214h]
    jz step1
    inc bx
    inc cl
    cmp cl, 13h
    jng step0
    ret
step1:
    push dx
    push bx
    mov bx, dx
    pop dx
    mov [bx], dx
    mov bx, dx
    pop dx
    add dx, 0002h
    inc bx
    inc cl
    cmp cl, 13h
    jng step0

ret