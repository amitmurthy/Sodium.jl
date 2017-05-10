Sodium
======

Thin Julia wrapper for [libsodium](http://labs.opendns.com/2013/03/06/announcing-sodium-a-new-cryptographic-library/), a cryptographic library.

gen/generate.jl generates the wrapper using Clang.jl

src/ls_* files are the generated files
src/Sodium.jl includes the generated files

USAGE
=====
- Call ```sodium_init()``` before any other sodium API call
- See test/basic_tests.jl for some simple use cases

TODO
====
- Provide a Julia type to represent keys/hashes
- struct crypto_generichash_blake2b_state is incorrectly generated (Clang.jl does not yet support fixed size arrays in structs).
- structs crypto_onetimeauth_poly1305_implementation and randombytes_implementation hold
  function pointers. Need a better way to access the same.










