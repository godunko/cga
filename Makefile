
all:
	gprbuild -P gnat/cgk.gpr

build_native:
	gprbuild -P gnat/cgk.gpr

build_wasm:
	gprbuild -P gnat/cgk.gpr --target=llvm

check_builds: build_native build_wasm
