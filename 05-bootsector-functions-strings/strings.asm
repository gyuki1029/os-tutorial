mov ah, 0x0e ; tty mode
mov al, mystring
int 0x10

mystring:
    db 'Hello, World', 0

jmp $ ; jump to current address = infinite loop

; padding and magic number
times 510 - ($-$$) db 0
dw 0xaa55 
