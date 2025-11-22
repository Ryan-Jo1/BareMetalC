/* r4-linker.ld - Simple linker script for RA4M1 (Arduino R4 Minima) */

ENTRY(Reset_Handler)

MEMORY
{
  FLASH (rx) : ORIGIN = 0x00000000, LENGTH = 256K
  RAM   (rwx): ORIGIN = 0x20000000, LENGTH = 32K
}

/* Sections and placement */
SECTIONS
{
  /* Vector table and program code in flash */
  .text : 
  {
    KEEP(*(.isr_vector))    /* keep the vector table symbol section */
    *(.text*)               /* all .text sections */
    *(.rodata*)             /* read-only data */
  } > FLASH

  /* Initialized data goes in RAM but is stored in flash at load time */
  .data : AT(ADDR(.text) + SIZEOF(.text))
  {
    __data_load_start = LOADADDR(.data);
    __data_start__ = .;
    *(.data*)
    __data_end__ = .;
  } > RAM

  /* Uninitialized data (.bss) in RAM */
  .bss (NOLOAD) :
  {
    __bss_start__ = .;
    *(.bss*)
    *(COMMON)
    __bss_end__ = .;
  } > RAM

  /* symbol for stack top (end of RAM) */
  _estack = ORIGIN(RAM) + LENGTH(RAM);
}