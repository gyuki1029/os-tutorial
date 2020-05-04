[org 0x7c00]
mov bx, AB
call print_start

AB:
    db 'AB', 0

CDE:
    db 'CDE', 0

; that's it! we can hang now
jmp $

; remember to include subroutines below the hang
%include "print.nasm"

; padding and magic number
times 510-($-$$) db 0
dw 0xaa55

