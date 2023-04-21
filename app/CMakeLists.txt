# add the sources here
set(sources
    main.c
)

# add sources to elf file
target_sources(${elf_file} PUBLIC ${sources})
