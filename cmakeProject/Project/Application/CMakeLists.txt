add_executable(output app.c)

target_include_directories(output PRIVATE
    ${PROJECT_SOURCE_DIR}/Modules/caesar_cipher/inc
    ${PROJECT_SOURCE_DIR}/Modules/xor_cipher/inc
)

target_link_libraries(output
    caesar_cipher
    xor_cipher
)

set_target_properties(output PROPERTIES
    BUILD_RPATH "${CMAKE_LIBRARY_OUTPUT_DIRECTORY}"
)
