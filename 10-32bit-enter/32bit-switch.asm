[bits 16]
switch_to_pm:
    mov bx, MSG_SWITCH_TO_PM_START
    call print ; This will be written after the BIOS messages

    cli ; 1. disable interrupts
    lgdt [gdt_descriptor] ; 2. load the GDT descriptor
    mov eax, cr0
    or eax, 0x1 ; 3. set 32-bit mode bit in cr0
    mov cr0, eax
    jmp CODE_SEG:init_pm ; 4. far jump by using a different segment

[bits 32]
init_pm: ; we are now using 32-bit instructions
    mov ax, DATA_SEG ; 5. update the segment registers
    mov ds, ax
    mov ss, ax
    mov es, ax
    mov fs, ax
    mov gs, ax

    mov ebp, 0x90000 ; 6. update the stack right at the top of the free space
    mov esp, ebp

    call BEGIN_PM ; 7. Call a well-known label with useful code

MSG_SWITCH_TO_PM_START db "Start switch_to_pm", 0
MSG_SWITCH_TO_PM_END db "End switch_to_pm", 0

MSG_SWITCH_INIT_PM_START db "Start init_pm", 0
MSG_SWITCH_INIT_PM_END db "End init_pm", 0

hello: db "Hello world!",0

