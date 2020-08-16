
org 100h

    mov [0200h], 03h
    mov [0201h], 2Eh
    mov [0202h], 24h
    mov [0203h], 0F3h
    mov [0204h], 87h
    mov [0205h], 0A9h
    mov [0206h], 18h
    mov [0207h], 0B0h
    mov [0208h], 4Ch
    mov [0209h], 99h
    
    mov bx,0200h
    mov cl,10h
    mov dl,0F0h
    
first:
    mov al, [bx]
    
    
    and al, dl
    
    mov [bx], al
    
    inc bx
    dec cl
    
    jnz first
    
ret




