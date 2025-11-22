CROSS = arm-none-eabi-
CC = $(CROSS)gcc
OBJCOPY = $(CROSS)objcopy

CFLAGS = -mcpu=cortex-m4 -mthumb -O0 -ffreestanding -nostdlib -Wall
LDFLAGS = -T r4-linker.ld -nostdlib

SRC = main.c startup.S
OBJ = $(SRC:.c=.o)
OBJ := $(OBJ:.S=.o)

all: firmware.elf

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

firmware.elf: $(OBJ) r4-linker.ld
	$(CC) $(CFLAGS) $(OBJ) $(LDFLAGS) -o firmware.elf

firmware.bin: firmware.elf
	$(OBJCOPY) -O binary firmware.elf firmware.bin

clean:
	rm -f *.o firmware.elf firmware.bin