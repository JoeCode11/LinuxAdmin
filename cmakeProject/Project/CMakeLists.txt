

cmake_minimum_required(VERSION 3.10)
project(CipherApp C)

#output directories
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/out/libs)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/out/libs)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/out)

#modules
add_subdirectory(Modules/caesar_cipher)
add_subdirectory(Modules/xor_cipher)
add_subdirectory(Application)
