
all: build_native

clean:
	rm -rf .obj

build_native:
	gprbuild -P gnat/cgk.gpr

build_wasm:
	gprbuild -P gnat/cgk.gpr --target=llvm

build_all: build_native build_wasm
