mov bl, 'A'
call print

mov bl, 'B'
call print

mov bl, 'C'
call print

print:
    ; mov cx, sp

    pusha
    mov ah, 0x0e
    mov al, bl
    int 0x10

    ; push cx
    popa
    ret

jmp $
times 510-($-$$) db 0
dw 0xaa55
