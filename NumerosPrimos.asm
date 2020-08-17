org 100h

mov cl, 01h
mov ch, 64h
mov ax, 0000h 
;div bl:
;cociente: al=ax/bl
;resto: ah = ax mod bl
begin:
    mov ax, cl
    div ch
    
    cmp ah, 00h
    jz begin
    jnz final
    
final:
    
    
ret