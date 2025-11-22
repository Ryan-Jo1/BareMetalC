# Bare-Metal C Firmware Projects  
A multi-platform bare-metal firmware learning project built across two hardware systems:  
**Raspberry Pi 5 (BCM2712)** and **Arduino Uno R4 Minima (Renesas RA4M1)**.

This repository documents my progression from low-level ARM initialization on a complex SoC (Raspberry Pi 5) to real microcontroller development on the Arduino UNO R4 Minima.  
The goal is to build a complete, resume-ready firmware project for electrical/embedded engineering internships.

---

## 📌 Why This Repo Exists
I wanted to learn all about embedded systems starting at the bare hardware level.  
That means:
- no operating system  
- no Arduino libraries  
- no Linux  
- just **C, registers, memory maps, linker scripts, and startup code**.

This repo documents my full journey in learning embedded systems from the ground up. 

---

## 🧩 Project Structure
Bare Metal C/
├── arduino/
│   ├── main.c
│   ├── Makefile
│   ├── r4-linker.ld
│   └── startup.S
│
├── raspberrypi/
│   ├── src/
│   │   ├── link.ld
│   │   ├── main.c
│   │   └── startup.S
│   ├── firmware.bin
│   ├── firmware.elf
│   └── Makefile
│
└── README.md



---

## 🟥 Raspberry Pi 5 — Bare-Metal Phase (Completed)

# Build Process 
1. Write C code ('main.c')
2. Compile -> '.o' using 'arm-none-eabi-gcc'. 
3. Link with 'linker.ld' to produce 'firmware.elf' 
4. Convert -> 'firmware.bin' for the Pi bootloader 
5. Copy to SD card or boot medium 
6. Run and observe hardware response 

# ✔ What I learned:
- Cross-compiling for ARM 
- Boot flow: bootloader -> startup.s -> main().
- Memory layout via linker script 
- Direct GPIO register access on the BCM2712 SoC
- End-to-end build -> deploy -> run cycle on hardware 

The Raspberry Pi phase taught me the fundamentals needed to move into microcontroller-based firmware.

---

## 🟦 Arduino Uno R4 Minima — Microcontroller Firmware (Current Phase)

### ✔ Why I switched to Arduino R4
While the Raspberry Pi bare-metal work taught low-level ARM concepts, the Pi is a **full computer**, not a microcontroller.  
I wanted to learn how microcontrollers are used in real-world embedded systems and modern engineering workflows.

The Arduino R4 Minima uses a Renesas RA4M1 (ARM Cortex-M4F), making it ideal for:
- real firmware  
- timing-sensitive code  
- peripheral drivers  
- low-level hardware control  
- advanced EE-style projects (e.g., motor control, PID, sensor systems)

### ✔ What I’m doing on Arduino R4 now:
- Pure bare-metal ARM Cortex-M4 development  
- Custom startup code & linker script  
- Direct GPIO register programming  
- Timer/PWM configuration  
- UART communication  
- Interrupts  
- ADC sampling  
- A full final firmware project

---

## 🎓 What This Project Shows 
- Understanding of CPU startup and memory initialization  
- Ability to write firmware without frameworks or OS  
- Experience with linker scripts, stack setup, and interrupt vectors  
- Hardware-level GPIO, UART, ADC, PWM, and timers  
- Structured, multi-phase engineering workflow  
- Cross-platform embedded development (Pi + Cortex-M)

---

## 🧑‍💻 Tools Used
- `arm-none-eabi-gcc` (GNU ARM toolchain)  
- VS Code  
- Make build system  
- USB serial console  
- Logic analyzer (future)  
- SSH + UART (FTDI USBA_UART FT232RNL) 
- Raspberry Pi 5 (8gb) 
- Arduino UNO R4 MINIMA


---

## 📬 Contact
Open to discussing this project in interviews or messages.

---

## Open notes 
https://www.notion.so/Makefile-2b3f62d3c90e8001a23be23c4fab6d96?source=copy_link


