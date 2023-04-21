# Used linker file (just for testing)
set(LINKER_SCRIPT STM32F429ZITX_FLASH.ld)

# link with linker file
target_link_libraries(${elf_file} PUBLIC -T${LINKER_SCRIPT})