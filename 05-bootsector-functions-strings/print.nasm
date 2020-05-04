mov bl, 'A'
call print

mov bl, 'B'
call print

mov bl, 'C'
call print

print:
    ; mov cx, sp

    mov ah, 0x0e
    mov al, bl
    int 0x10

    ; push cx
    ret

jmp $
times 510-($-$$) db 0
dw 0xaa55
