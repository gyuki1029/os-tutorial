mov ah, 0x0e ; tty mode
mov al, 4
int 0x10

; mov ax, 4
cmp al, 4    ; if ax = 4
je ax_is_four  ; do something (by jumping to that label)
jmp else       ; else, do another thing
jmp endif      ; finally, resume the normal flow

ax_is_four:
    mov al, 'B'
    int 0x10
    jmp endif

else:
    mov al, 'C'
    int 0x10
    jmp endif  ; not actually necessary but printed here for completeness

endif:
    mov al, 'D'
    int 0x10

jmp $
times 510-($-$$) db 0
dw 0xaa55
