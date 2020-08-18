org 100h

mov cl, 02h
mov ch, 02h
mov ax, 0000h
mov dl, 0000h
mov bx, 0200h
;div cl:
;cociente: al=ax/bl
;resto: ah = ax mod bl

step0:
    mov dl, 0000h
    mov ch, 02h
    mov al, cl
    push ax
    jmp step1    
step1:
    cmp cl, 64h
    jz stop
    cmp dl, 02h
    jz noprimo
    cmp ch, 65h
    jz final
    div ch
    cmp ah, 00h
    jz primo
    inc ch
    pop ax
    push ax
    jmp step1
    
primo:
    inc dl 
    inc ch
    pop ax
    push ax
    jmp step1
    

noprimo:
    inc cl
    mov dl, 0000h
    jmp step0
    

final:
    mov dl, 0000h
    mov [bx], cl
    inc bx
    inc cl
    cmp cl, 65h
    jnz step0    

stop:
    mov dx, 0000h
    mov ax, 0000h
    
mov bx, 0000h
mov cx, 0000h 
   
ret