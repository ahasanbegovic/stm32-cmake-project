cmake_minimum_required (VERSION 3.26.3)

# set the build type
if(NOT CMAKE_BUILD_TYPE) 
    set(CMAKE_BUILD_TYPE Release)
endif(NOT CMAKE_BUILD_TYPE)

if(CMAKE_BUILD_TYPE MATCHES Debug)
  message("Debug build.")
elseif(CMAKE_BUILD_TYPE MATCHES Release)
  message("Release build.")
endif()

# set search path for CMake modules
set(CMAKE_MODULE_PATH ${CMAKE_SOURCE_DIR}/CMake/Modules)

# Project specific settings
set(application_name "stm32-cmake-template")

project (${application_name} C CXX ASM)

# STM32-specific settings
set(DEVICE_FAMILY STM32F429xx)

# Speed of external resonator
set(HSE_VALUE 8000000)

# Used linker file (just for testing)
get_filename_component(LINKER_SCRIPT bsp/linker/STM32F429ZITX_FLASH.ld ABSOLUTE)

# add libraries
add_subdirectory(bsp)

# add main project
add_subdirectory(app)