# Main Directories
ROOT_DIR = /home/Joe/makeFileProject/Project
APP_DIR = $(ROOT_DIR)/Application
MODULES_DIR = $(ROOT_DIR)/Modules

# Modules Directories
CAESAR_CIPHER_DIR = $(MODULES_DIR)/caesar_cipher
XOR_CIPHER_DIR = $(MODULES_DIR)/xor_cipher

# Application Directories
APP_OUT_DIR = $(APP_DIR)/out
APP_OBJ_DIR = $(APP_OUT_DIR)/gen
APP_LIB_DIR = $(APP_OUT_DIR)/libs
APP_BIN = $(APP_DIR)/output

# Application Source files
APP_SRC = $(APP_DIR)/app.c

# Application Object files
APP_OBJ = $(APP_OBJ_DIR)/app.o

# Modules Library files
CAESAR_CIPHER_LIB = $(APP_LIB_DIR)/libcaesar_cipher.a
XOR_CIPHER_LIB = $(APP_LIB_DIR)/libxor_cipher.so

#include makefiles 
include $(CAESAR_CIPHER_DIR)/caesar_cipher.mk
include $(XOR_CIPHER_DIR)/xor_cipher.mk

.PHONY: all libs app

all: libs app

libs: $(CAESAR_CIPHER_LIB) $(XOR_CIPHER_LIB)

app: $(APP_OBJ) $(CAESAR_CIPHER_LIB) $(XOR_CIPHER_LIB)
	gcc -o $(APP_BIN) $(APP_OBJ) $(CAESAR_CIPHER_LIB) -L$(APP_LIB_DIR) -lxor_cipher

$(APP_OBJ_DIR):
	mkdir -p $(APP_OBJ_DIR)

$(APP_LIB_DIR):
	mkdir -p $(APP_LIB_DIR)

$(APP_OBJ): $(APP_SRC) | $(APP_OBJ_DIR)
	gcc -c $(APP_SRC) -I$(CAESAR_CIPHER_DIR)/inc -I$(XOR_CIPHER_DIR)/inc -o $(APP_OBJ)

$(APP_BIN): $(APP_OBJ) $(CAESAR_CIPHER_LIB) $(XOR_CIPHER_LIB)
	gcc -o $(APP_BIN) $(APP_OBJ) $(CAESAR_CIPHER_LIB) -L$(APP_LIB_DIR) -lxor_cipher

clean:
	rm -rf $(APP_OUT_DIR)
