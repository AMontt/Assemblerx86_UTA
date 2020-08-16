org 100h

    mov bx, 0200h
    ;---Condiciones iniciales---
    mov al, 00h ;f0 = 0
    mov ah, 01h ;f1 = 1
    ;---Fin de Condiciones------
    mov cl, 10h

fibo:
    add al, ah ; AL = AL+AH
    mov dl, al ; Guardamos el valor de la suma en DL
    mov al, ah ; AL tomara el valor de AH para no perder AH
    mov ah, dl ; AH tomara el valor de la suma (DL)
    
    mov [bx],dl; La suma DL se guardara en 0200h
    
    inc bx     ; Incrementamos la direccion en 1h (0201h, 0202h, etc)
    dec cl     ; Decrementamos el contador en 1, cuando llegue a zero activara ZF
    jnz fibo   ; Mientras ZF no este activado, saltara a fibo, y seguira el ciclo
ret