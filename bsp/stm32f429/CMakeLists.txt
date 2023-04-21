set(sources
    system_stm32f4xx.c
)

target_sources(${elf_file} PUBLIC ${sources})

add_subdirectory(startup)
add_subdirectory(linker)