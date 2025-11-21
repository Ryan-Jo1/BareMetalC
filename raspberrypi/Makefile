# Makefile
CROSS_COMPILE = arm-none-eabi-
CC  = $(CROSS_COMPILE)gcc
OBJCOPY = $(CROSS_COMPILE)objcopy

CFLAGS = -Wall -O2 -nostdlib -nostartfiles -ffreestanding

all: firmware.bin

firmware.elf: src/startup.S src/main.c src/link.ld
	$(CC) $(CFLAGS) -T src/link.ld src/startup.S src/main.c -o firmware.elf

firmware.bin: firmware.elf
	$(OBJCOPY) -O binary firmware.elf firmware.bin

clean:
	rm -f firmware.elf firmware.binq