# 🧠 Raspberry Pi 5 Bare-Metal Firmware Project 

Welcome! 
This repository includes my journey lerning bare-metal C programming and firmware development on my Raspberry Pi - form setting up a minimal toolchain to building real hardware-level projects. 

---

# Phase 1 - Foundations: Build System & LED Blink 

# Goal 
Set up a complete bare-metal enviornment so that C code can be compiled, linked and executed directly on the Raspberry Pi 5 without an operating system

# Project Structure 
| File | Purpose |
|------|----------|
| **`main.c`** | Entry point containing program logic (e.g., LED blink loop). |
| **`startup.s`** | Assembly startup file that initializes the stack, clears memory, and jumps to `main()`. |
| **`linker.ld`** | Linker script defining memory layout and section placement in RAM. |
| **`Makefile`** | Automates compiling (`arm-none-eabi-gcc`), linking, and generating `.elf` → `.bin`. |
| **`firmware.elf`** | Linked executable (for debugging and symbol inspection). |
| **`firmware.bin`** | Raw binary loaded and executed by the Raspberry Pi bootloader. |
| **`README.md`** | Documentation and roadmap (this file). |

# Components 
- Cross-compiler: 'arm-none0eabi-gcc'
- Platform: Raspberry Pi 5 (8 GB)
- Connection: SSH + UART (FTDI USBA_UART FT232RNL)
- Power Supply: Official 27 W Pi 5 supply

# Build Process 
1. Write C code ('main.c')
2. Compile -> '.o' using 'arm-none-eabi-gcc'. 
3. Link with 'linker.ld' to produce 'firmware.elf' 
4. Convert -> 'firmware.bin' for the Pi bootloader 
5. Copy to SD card or boot medium 
6. Run and observe hardware response 

# Key Concepts Learned 
- Cross-compiling for ARM 
- Boot flow: bootloader -> startup.s -> main().
- Memory layout via linker script 
- GPIO access and cleanup using 'libgpiod' 
- End-to-end build -> deploy -> run cycle on hardware 

---

# Phase 2 - Hardware Interaction & Perihperals 

# Goal 
Move from software setup to hardware-level C control - GPIO, timers, UART, sensors, and full system integration 


