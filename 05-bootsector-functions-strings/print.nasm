print_start:
    pusha
    mov ah, 0x0e
    jmp print_do

print_do:
    mov al, [bx]
    cmp al, 0
    je print_end

    int 0x10
    
    add bx, 1
    jmp print_do

print_end:
    popa
    ret
