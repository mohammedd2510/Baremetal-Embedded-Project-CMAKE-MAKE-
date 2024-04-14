cmake_minimum_required(VERSION 3.27 )

# commands for using cross compiler
set(CMAKE_SYSTEM_NAME Generic )
set(CMAKE_TRY_COMPILE_TARGET_TYPE STATIC_LIBRARY)

#  C Compiler choosing commands
set(CMAKE_C_COMPILER arm-none-eabi-gcc CACHE STRING "C Compiler" FORCE)
set(CMAKE_OBJCOPY arm-none-eabi-objcopy CACHE STRING "arm-none-eabi-objcopy" FORCE )

# Setting Linker Script file Location
set (LD_SCRIPT "../STM32F401CCU6_LinkerScript.ld")

# Setting Compiler and Linker Flags
set(CMAKE_C_FLAGS "-mcpu=cortex-m4 -mthumb --specs=nano.specs  -mfloat-abi=soft  -w -g")
set(CMAKE_EXE_LINKER_FLAGS "-mcpu=cortex-m4 -mthumb   -mfloat-abi=soft -T ${LD_SCRIPT} -w -g")

#setting st-link flasher options
set(STL ST-LINK_CLI -c SWD)

# Setting Project Name
project(main)

# Parsing Source Files
file(GLOB_RECURSE SRC_FILES RELATIVE ${CMAKE_CURRENT_SOURCE_DIR} *.c)
string(REGEX REPLACE "build/[^;]+;?" "" SRC_FILES "${SRC_FILES}")

# Generating elf file Command
add_executable(${PROJECT_NAME}.elf ${SRC_FILES})

# Adding include Directories
target_include_directories(${PROJECT_NAME}.elf PUBLIC Inc/)

# Generating hex file Command
add_custom_target(build ALL DEPENDS ${PROJECT_NAME}.elf 
COMMAND arm-none-eabi-objcopy -O ihex ${PROJECT_NAME}.elf ${PROJECT_NAME}.hex
COMMENT "Generated Hex File: ${PROJECT_NAME}.hex")

# Flashing command
add_custom_target(flash DEPENDS build COMMAND ${STL} -P ${PROJECT_NAME}.hex -V -Rst)

#erasing command
add_custom_target(erase COMMAND ${STL} -ME)


# Cleaning
add_custom_target(_clean 
    COMMAND make clean
    COMMAND ${CMAKE_COMMAND} -E remove ${CMAKE_BINARY_DIR}/${PROJECT_NAME}.hex
    COMMENT "Cleaning Build Files"
)

