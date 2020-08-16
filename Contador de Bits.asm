


org 100h
    
    mov bx, 0200h
    mov [0200h], 00A6h ; 210 -> bx+10
    mov [0201h], 0069h ; 211
    mov [0202h], 0042h ; 212
    mov [0203h], 0002h ; 213
    
    mov dl, 00h
    mov ch, 04h
Begin:
    mov cl, 00h
    mov ah, 80h ;Representa los bits
    
step1:
    ;1000 0000 -> 80h
    ;0100 0000
    ;0010 0000
    ;0001 0000
    ;0000 1000
    ;0000 0100
    ;0000 0010
    ;0000 0001
    ;0000 0000 <-Cuando llegue aca, saltar a Guardar
    cmp ah, 00h ; ZF =1
    jz Guardar 
    
    mov al, [bx]
    
    test al, ah ; AL AND AH -> Solo afecta la bandera ZF
    ; 10100110
    ;    and
    ; 10000000
    
    ; 01000000 -> ZF = 1 ; hay un cero
    ;-----------
    ; 10000000 -> ZF=0 ; hay un bit para contar
    jnz Contador
    jz Corrimiento 
    
Contador:
                
    inc cl
    shr ah, 01h
    
    cmp dl,00h ;return obligatorio
    jz step1
        
Corrimiento:

    shr ah, 01h
    cmp dl,00h
    jz step1    

Guardar:
    push bx
    add bx, 10h
    mov [bx],cl
    pop bx
    inc bx
    dec ch
    jnz Begin
    
ret

