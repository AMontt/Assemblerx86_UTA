org 100h
mov [0200h], 0000h
mov [0202h], 0001h
mov [0204h], 0015h ; ejemplo con 21
mov ax, [0200h]
mov bx, [0202h]
mov bp, [0204h]  
step1:
    cmp bp, 01h
    jz init1
    jnz fibo  
fibo:
    call fibonacci
    jmp stop    
init1:
    mov [0210h],0000h
    ret        
stop:    
    mov [0210h],cx    
    ret    
fibonacci proc
    add ax, bx
    mov cx, ax
    mov ax, bx
    mov bx, cx    
    dec bp
    cmp bp, 02h
    jng stop
    call fibonacci    
    ret
fibonacci endp