Sodium
======

Thin Julia wrapper for libsodium

gen/generate.jl generates the wrapper using Clang.jl

src/ls_* files are the generated files
src/Sodium.jl includes the generated files

Other than the struct definition for crypto_generichash_blake2b_state which is incorrectly
generated (Clang.jl does not yet support fixed size arrays in structs), everything else seems OK


TODO
====
- struct crypto_generichash_blake2b_state is incorrectly generated.
- Tests to be added










