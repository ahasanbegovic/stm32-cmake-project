set(sources
    startup_stm32f429zitx.s
)

# add sources to elf file
target_sources(${elf_file} PUBLIC ${sources})