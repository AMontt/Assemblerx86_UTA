org 100h

    mov bx, 0250h
    
    mov [0250h], 0003h
    mov [0251h], 0008h
    mov [0252h], 000Bh
    mov [0253h], 0077h
    mov [0254h], 00A8h
    mov [0255h], 00B4h
    mov [0256h], 00E2h
    
    mov dh, 00h
    mov al, 00h
    mov ch, 07h      
    mov cl, 00h
    
origin:    
    mov ah, [bx]
    mov dl, 00h
                       
uni:
    add cl, dl
    begin:
    cmp ah,00h
    jz print
    
    dec ah
    inc cl
    
    sub cl, dl
    cmp cl, 000Ah
    jnz uni
        
    cmp cl, 000Ah
     
    jz dec1
    
    cmp ah, 00h
    jz print
    
dec1:
    add cl, dl
    sub cl, 0Ah 
    
    cmp cl,90h
    jz cen
    
    add cl,10h
    mov dl, cl
    
    cmp dl,00A0h
    jz cen
    
    cmp ah, 00h
    jz print
    
    cmp cl, cl
    jz begin
    
cen:

    add al, 01h
    
    cmp ah, 00h
    jz print
    
    mov cl, 00h
    mov dl, 00h
    cmp al,al
    jz uni
    
        
print:
    
    add bx, 100h
    
    add bl, dh
    
    mov ah,cl
    
    
    mov [bx], ax
    
    sub bx, 100h
    sub bl, dh
    
    inc bx
    
    inc dh
    
    dec ch
    
    cmp ch,00h
    mov cl,00h
    mov al,00h
    jnz origin    