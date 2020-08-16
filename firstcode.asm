
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov al, 01h
mov ah, 02h

add ah,al

push ax

mov al, 03h 
mov ah, 04h

add ah,al

push ax

mov ax, 0000h
pop dx
add ax,dx  
pop dx
add ax,dx

ret



                    
                   
