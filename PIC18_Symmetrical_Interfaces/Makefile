CC = xc8
RM = rm -rf
SRC_DIR = src
LIB_DIR = lib
BUILD_DIR = build

CHIP = 18F47K40

default:
	$(CC) --chip=$(CHIP) --outdir=$(BUILD_DIR) $(SRC_DIR)/main.c

clean:
	$(RM) $(BUILD_DIR)/*

