          global    _main
          section   .text

_main:
    mov ah, 0x0e ; tty mode

    mov bp, 0x8000 ; this is an address far away from 0x7c00 so that we don't get overwritten
    mov sp, bp ; if the stack is empty then sp points to bp

    mov al, bl ; 0x8000 - 2

    push 'A'

    push 'B'
    push 'C'

    pop bx

    pop bx

    pop bx
