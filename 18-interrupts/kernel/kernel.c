#include "../drivers/screen.h"
#include "util.h"
#include "../cpu/isr.h"
#include "../cpu/idt.h"

void main() {
    isr_install();
    /* Test the interrupts */
    __asm__ __volatile__("int $2");
    __asm__ __volatile__("int $3");

    // int *ip = (int *)malloc(100 * sizeof(int)); // 14 Page fault (pushes an error code)

    int a = 1/0; // 0 Division by zero exception
}
