/* src/startup.S */
    .global _start
    .section .text
_start:
    ldr sp, =_stack_top
    bl main
1:  b 1b

    .section .bss
    .space 1024
_stack_top: