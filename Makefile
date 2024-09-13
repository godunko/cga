
all: build_native

clean:
	rm -rf .objs

build_native:
	gprbuild -P gnat/cgk_primitives.gpr
	gprbuild -P gnat/cgk_geometry.gpr
	gprbuild -P gnat/cgk_topology.gpr

build_wasm:
	gprbuild -P gnat/cgk_primitives.gpr --target=llvm
	gprbuild -P gnat/cgk_geometry.gpr --target=llvm
	gprbuild -P gnat/cgk_topology.gpr --target=llvm

build_all: build_native build_wasm
