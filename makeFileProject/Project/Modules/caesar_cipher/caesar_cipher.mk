


CAESAR_CIPHER_DIR = /home/Joe/makeFileProject/Project/Modules/caesar_cipher
APP_OBJ_DIR = /home/Joe/makeFileProject/Project/Application/out/gen
APP_LIB_DIR = /home/Joe/makeFileProject/Project/Application/out/libs

CAESAR_ENCRYPT_SRC = $(CAESAR_CIPHER_DIR)/src/caesar_encrypt.c
CAESAR_DECRYPT_SRC = $(CAESAR_CIPHER_DIR)/src/caesar_decrypt.c

CAESAR_ENCRYPT_OBJ = $(APP_OBJ_DIR)/caesar_encrypt.o
CAESAR_DECRYPT_OBJ = $(APP_OBJ_DIR)/caesar_decrypt.o

CAESAR_CIPHER_LIB = $(APP_LIB_DIR)/libcaesar_cipher.a

$(CAESAR_ENCRYPT_OBJ): $(CAESAR_ENCRYPT_SRC)
	mkdir -p $(APP_OBJ_DIR)
	gcc -c $(CAESAR_ENCRYPT_SRC) -I$(CAESAR_CIPHER_DIR)/inc -o $(CAESAR_ENCRYPT_OBJ)

$(CAESAR_DECRYPT_OBJ): $(CAESAR_DECRYPT_SRC)
	mkdir -p $(APP_OBJ_DIR)
	gcc -c $(CAESAR_DECRYPT_SRC) -I$(CAESAR_CIPHER_DIR)/inc -o $(CAESAR_DECRYPT_OBJ)

$(CAESAR_CIPHER_LIB): $(CAESAR_ENCRYPT_OBJ) $(CAESAR_DECRYPT_OBJ)
	mkdir -p $(APP_LIB_DIR)
	ar rcs $(CAESAR_CIPHER_LIB) $(CAESAR_ENCRYPT_OBJ) $(CAESAR_DECRYPT_OBJ)
