org 100h   
    mov cl, 05h
    
    mov bx, 0200h
    
    mov [0200h], 35h
    mov [0201h], 3Bh
    mov [0202h], 47h
    mov [0203h], 52h
    mov [0204h], 64h
ciclo:
    mov al, 09h
    mov ah, [bx]
    
    mov dl, ah
    mov dh, 05h

    add dl, 20h
    
    mul dl ; ax = al * dl
    
    div dh ; al = ax / dh 
    
    add bx,20h
    
    mov [bx], al
    
    sub bx,20h
    
    inc bx
    
    dec cl
    
    jnz ciclo
        
ret




