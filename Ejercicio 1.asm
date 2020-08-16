org 100h   
    mov cl, 05h
    
    mov bx, 0200h
    
    mov [0200h], 3Ah
    mov [0201h], 43h
    mov [0202h], 66h
    mov [0203h], 6Fh
    mov [0204h], 83h
ciclo:
    mov al, 05h
    mov ah, [bx]
    
    mov dl, ah
    mov dh, 09h

    sub dl, 20h
    
    mul dl ; ax = al * dl
    
    div dh ; al = ax / dh 
    
    add bx,20h
    
    mov [bx], al
    
    sub bx,20h
    
    inc bx
    
    dec cl
    
    jnz ciclo
        
ret




