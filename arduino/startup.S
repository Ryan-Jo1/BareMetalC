.syntax unified
.cpu cortex-m4
.thumb

/* External symbol: top of stack defined in linker script */
.extern _estack

/* Vector table */
.section .isr_vector, "a", %progbits
.word _estack            /* Initial stack pointer */
.word Reset_Handler      /* Reset handler */

/* Reset handler */
.text
.global Reset_Handler
Reset_Handler:
    /* For now, do nothing but jump to main */
    bl main

LoopForever:
    b LoopForever