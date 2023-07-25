# small-assembly
Inspired by https://github.com/sourcedennis/small-hello-world

A simple `Hello, World` program shouldn't be that large. These are the smallest Linux executables I managed to create
without directly touching the ELF format (though `sstrip` does exactly that).

# Build Instructions
* Clone with `git clone --recurse-submodules https://github.com/beto-bit/small-assembly`.
* Run `make -C super-strip` to compile `sstrip`.

After that, run `make` with the different options:
* `main` - x86_64 executable, no aditional link flags, no stripped (8.9kB)
* `tiny_main` - x86_64 executable (223 bytes)
* `32main` - x86 executable (171 bytes)
