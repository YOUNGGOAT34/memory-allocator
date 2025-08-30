CC:=gcc
ASM:=nasm
ASMFLAGS:=-f elf64
FLAGS:=  -std=c2x -Wall -Wextra 

SRC:=$(wildcard *.c)
ASM_SRC:=$(wildcard *.asm)
OBJECTS:=$(SRC:.c=.o)
ASM_OBJECTS:=$(ASM_SRC:.asm=.o)

BUILD_DIR:=build
OBJECTS:=$(addprefix $(BUILD_DIR)/,$(OBJECTS) $(ASM_OBJECTS))

TARGET:=main
 
all: clean $(TARGET)

$(TARGET):$(OBJECTS)
			$(CC) -o $@ $^

$(BUILD_DIR)/%.o:%.c
			mkdir -p $(BUILD_DIR)
			$(CC) $(FLAGS) -c $< -o $@

$(BUILD_DIR)/%.o: %.asm
	mkdir -p $(BUILD_DIR)
	$(ASM) $(ASMFLAGS) $< -o $@

clean:
	rm -rf $(BUILD_DIR) $(TARGET)