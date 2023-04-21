.PHONY: build

build: 
	mkdir -p build && \
	cd build && \
	cmake -G "Unix Makefiles" -D "CMAKE_TOOLCHAIN_FILE=../cmake-tools/gnu-arm-toolchain.cmake" ../ && \
	make

clean:
	rm -r build

load:
	STM32_Programmer_CLI.exe -c port=SWD freq=4000 -w ./build/app/stm32-cmake-template.elf 0x08000000