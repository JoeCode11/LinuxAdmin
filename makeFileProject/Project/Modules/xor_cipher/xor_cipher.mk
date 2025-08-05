

XOR_CIPHER_DIR = /home/Joe/makeFileProject/Project/Modules/xor_cipher
APP_OBJ_DIR = /home/Joe/makeFileProject/Project/Application/out/gen
APP_LIB_DIR = /home/Joe/makeFileProject/Project/Application/out/libs

XOR_ENCRYPT_SRC = $(XOR_CIPHER_DIR)/src/xor_encrypt.c
XOR_DECRYPT_SRC = $(XOR_CIPHER_DIR)/src/xor_decrypt.c

XOR_ENCRYPT_OBJ = $(APP_OBJ_DIR)/xor_encrypt.o
XOR_DECRYPT_OBJ = $(APP_OBJ_DIR)/xor_decrypt.o

XOR_CIPHER_LIB = $(APP_LIB_DIR)/libxor_cipher.so

$(XOR_ENCRYPT_OBJ): $(XOR_ENCRYPT_SRC)
	mkdir -p $(APP_OBJ_DIR)
	gcc -fPIC -c $(XOR_ENCRYPT_SRC) -I$(XOR_CIPHER_DIR)/inc -o $(XOR_ENCRYPT_OBJ)

$(XOR_DECRYPT_OBJ): $(XOR_DECRYPT_SRC)
	mkdir -p $(APP_OBJ_DIR)
	gcc -fPIC -c $(XOR_DECRYPT_SRC) -I$(XOR_CIPHER_DIR)/inc -o $(XOR_DECRYPT_OBJ)

$(XOR_CIPHER_LIB): $(XOR_ENCRYPT_OBJ) $(XOR_DECRYPT_OBJ)
	mkdir -p $(APP_LIB_DIR)
	gcc -shared -o $(XOR_CIPHER_LIB) $(XOR_ENCRYPT_OBJ) $(XOR_DECRYPT_OBJ)
