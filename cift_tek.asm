.model small
.stack 32
.data
sayilar db 0,3,7,4,2,9,6,1
tek db 8 dup(?)
cift db 8 dup(?)
.code

.startup

lea si,sayilar
lea di,tek
lea bx,cift

mov cx,8

start:

test [si],00000001
jz ciftat
jmp tekat

ciftat:

mov al,[si]
mov [bx],al
inc si
inc bx
jmp atla

tekat:
mov al,[si]
mov [di],al
inc si
inc di

atla:

loop start
                    

.exit

end