org 100h
   
   mov bx,0200h
   mov dl,01h
   mov dh,02h
   mov cl,14h
   mov ch,14h
   
impar:
   mov [bx], dl
   inc bx
   add dl, 02h
   dec cl
   jnz impar
   mov bx, 0220h;
   jz par:

par:
    
   mov [bx],dh
   inc bx
   add dh, 02h
   dec ch
   jnz par
       

ret