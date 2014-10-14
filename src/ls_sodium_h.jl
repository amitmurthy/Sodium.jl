# Julia wrapper for header: /usr/local/include/sodium.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@c Int32 sodium_init () libsodium
@c Int32 crypto_auth_hmacsha512256 (Ptr{Uint8}, Ptr{Uint8}, Uint64, Ptr{Uint8}) libsodium
@c Int32 crypto_auth_hmacsha512256_verify (Ptr{Uint8}, Ptr{Uint8}, Uint64, Ptr{Uint8}) libsodium
@c size_t crypto_auth_bytes () libsodium
@c size_t crypto_auth_keybytes () libsodium
@c Ptr{Uint8} crypto_auth_primitive () libsodium
@c Int32 crypto_auth (Ptr{Uint8}, Ptr{Uint8}, Uint64, Ptr{Uint8}) libsodium
@c Int32 crypto_auth_verify (Ptr{Uint8}, Ptr{Uint8}, Uint64, Ptr{Uint8}) libsodium
@c Int32 crypto_auth_hmacsha256 (Ptr{Uint8}, Ptr{Uint8}, Uint64, Ptr{Uint8}) libsodium
@c Int32 crypto_auth_hmacsha256_verify (Ptr{Uint8}, Ptr{Uint8}, Uint64, Ptr{Uint8}) libsodium
@c Int32 crypto_box_curve25519xsalsa20poly1305 (Ptr{Uint8}, Ptr{Uint8}, Uint64, Ptr{Uint8}, Ptr{Uint8}, Ptr{Uint8}) libsodium
@c Int32 crypto_box_curve25519xsalsa20poly1305_open (Ptr{Uint8}, Ptr{Uint8}, Uint64, Ptr{Uint8}, Ptr{Uint8}, Ptr{Uint8}) libsodium
@c Int32 crypto_box_curve25519xsalsa20poly1305_keypair (Ptr{Uint8}, Ptr{Uint8}) libsodium
@c Int32 crypto_box_curve25519xsalsa20poly1305_beforenm (Ptr{Uint8}, Ptr{Uint8}, Ptr{Uint8}) libsodium
@c Int32 crypto_box_curve25519xsalsa20poly1305_afternm (Ptr{Uint8}, Ptr{Uint8}, Uint64, Ptr{Uint8}, Ptr{Uint8}) libsodium
@c Int32 crypto_box_curve25519xsalsa20poly1305_open_afternm (Ptr{Uint8}, Ptr{Uint8}, Uint64, Ptr{Uint8}, Ptr{Uint8}) libsodium
@c size_t crypto_box_publickeybytes () libsodium
@c size_t crypto_box_secretkeybytes () libsodium
@c size_t crypto_box_beforenmbytes () libsodium
@c size_t crypto_box_noncebytes () libsodium
@c size_t crypto_box_zerobytes () libsodium
@c size_t crypto_box_boxzerobytes () libsodium
@c size_t crypto_box_macbytes () libsodium
@c Ptr{Uint8} crypto_box_primitive () libsodium
@c Int32 crypto_box_keypair (Ptr{Uint8}, Ptr{Uint8}) libsodium
@c Int32 crypto_box_beforenm (Ptr{Uint8}, Ptr{Uint8}, Ptr{Uint8}) libsodium
@c Int32 crypto_box_afternm (Ptr{Uint8}, Ptr{Uint8}, Uint64, Ptr{Uint8}, Ptr{Uint8}) libsodium
@c Int32 crypto_box_open_afternm (Ptr{Uint8}, Ptr{Uint8}, Uint64, Ptr{Uint8}, Ptr{Uint8}) libsodium
@c Int32 crypto_box (Ptr{Uint8}, Ptr{Uint8}, Uint64, Ptr{Uint8}, Ptr{Uint8}, Ptr{Uint8}) libsodium
@c Int32 crypto_box_open (Ptr{Uint8}, Ptr{Uint8}, Uint64, Ptr{Uint8}, Ptr{Uint8}, Ptr{Uint8}) libsodium
@c Int32 crypto_core_hsalsa20 (Ptr{Uint8}, Ptr{Uint8}, Ptr{Uint8}, Ptr{Uint8}) libsodium
@c Int32 crypto_core_salsa20 (Ptr{Uint8}, Ptr{Uint8}, Ptr{Uint8}, Ptr{Uint8}) libsodium
@c Int32 crypto_core_salsa2012 (Ptr{Uint8}, Ptr{Uint8}, Ptr{Uint8}, Ptr{Uint8}) libsodium
@c Int32 crypto_core_salsa208 (Ptr{Uint8}, Ptr{Uint8}, Ptr{Uint8}, Ptr{Uint8}) libsodium
@c Int32 crypto_generichash_blake2b (Ptr{Uint8}, size_t, Ptr{Uint8}, Uint64, Ptr{Uint8}, size_t) libsodium
@c Int32 crypto_generichash_blake2b_init (Ptr{crypto_generichash_blake2b_state}, Ptr{Uint8}, size_t, size_t) libsodium
@c Int32 crypto_generichash_blake2b_update (Ptr{crypto_generichash_blake2b_state}, Ptr{Uint8}, Uint64) libsodium
@c Int32 crypto_generichash_blake2b_final (Ptr{crypto_generichash_blake2b_state}, Ptr{Uint8}, size_t) libsodium
@c size_t crypto_generichash_bytes_min () libsodium
@c size_t crypto_generichash_bytes_max () libsodium
@c size_t crypto_generichash_keybytes_min () libsodium
@c size_t crypto_generichash_keybytes_max () libsodium
@c size_t crypto_generichash_blockbytes () libsodium
@c Ptr{Uint8} crypto_generichash_primitive () libsodium
@c Int32 crypto_generichash (Ptr{Uint8}, size_t, Ptr{Uint8}, Uint64, Ptr{Uint8}, size_t) libsodium
@c Int32 crypto_generichash_init (Ptr{crypto_generichash_blake2b_state}, Ptr{Uint8}, size_t, size_t) libsodium
@c Int32 crypto_generichash_update (Ptr{crypto_generichash_blake2b_state}, Ptr{Uint8}, Uint64) libsodium
@c Int32 crypto_generichash_final (Ptr{crypto_generichash_blake2b_state}, Ptr{Uint8}, size_t) libsodium
@c Int32 crypto_hash_sha512 (Ptr{Uint8}, Ptr{Uint8}, Uint64) libsodium
@c Int32 crypto_hash (Ptr{Uint8}, Ptr{Uint8}, Uint64) libsodium
@c Int32 crypto_hash_sha256 (Ptr{Uint8}, Ptr{Uint8}, Uint64) libsodium
@c Int32 crypto_hashblocks_sha256 (Ptr{Uint8}, Ptr{Uint8}, Uint64) libsodium
@c Int32 crypto_hashblocks_sha512 (Ptr{Uint8}, Ptr{Uint8}, Uint64) libsodium
@c Ptr{Uint8} crypto_onetimeauth_poly1305_ref_implementation_name () libsodium
@c Int32 crypto_onetimeauth_poly1305_set_implementation (Ptr{crypto_onetimeauth_poly1305_implementation},) libsodium
@c Ptr{crypto_onetimeauth_poly1305_implementation} crypto_onetimeauth_pick_best_implementation () libsodium
@c Int32 crypto_onetimeauth_poly1305 (Ptr{Uint8}, Ptr{Uint8}, Uint64, Ptr{Uint8}) libsodium
@c Int32 crypto_onetimeauth_poly1305_verify (Ptr{Uint8}, Ptr{Uint8}, Uint64, Ptr{Uint8}) libsodium
@c size_t crypto_onetimeauth_bytes () libsodium
@c size_t crypto_onetimeauth_keybytes () libsodium
@c Ptr{Uint8} crypto_onetimeauth_primitive () libsodium
@c Int32 crypto_onetimeauth (Ptr{Uint8}, Ptr{Uint8}, Uint64, Ptr{Uint8}) libsodium
@c Int32 crypto_onetimeauth_verify (Ptr{Uint8}, Ptr{Uint8}, Uint64, Ptr{Uint8}) libsodium
@c Int32 crypto_scalarmult_curve25519 (Ptr{Uint8}, Ptr{Uint8}, Ptr{Uint8}) libsodium
@c Int32 crypto_scalarmult_curve25519_base (Ptr{Uint8}, Ptr{Uint8}) libsodium
@c size_t crypto_scalarmult_bytes () libsodium
@c size_t crypto_scalarmult_scalarbytes () libsodium
@c Ptr{Uint8} crypto_scalarmult_primitive () libsodium
@c Int32 crypto_scalarmult_base (Ptr{Uint8}, Ptr{Uint8}) libsodium
@c Int32 crypto_scalarmult (Ptr{Uint8}, Ptr{Uint8}, Ptr{Uint8}) libsodium
@c Int32 crypto_secretbox_xsalsa20poly1305 (Ptr{Uint8}, Ptr{Uint8}, Uint64, Ptr{Uint8}, Ptr{Uint8}) libsodium
@c Int32 crypto_secretbox_xsalsa20poly1305_open (Ptr{Uint8}, Ptr{Uint8}, Uint64, Ptr{Uint8}, Ptr{Uint8}) libsodium
@c size_t crypto_secretbox_keybytes () libsodium
@c size_t crypto_secretbox_noncebytes () libsodium
@c size_t crypto_secretbox_zerobytes () libsodium
@c size_t crypto_secretbox_boxzerobytes () libsodium
@c Ptr{Uint8} crypto_secretbox_primitive () libsodium
@c Int32 crypto_secretbox (Ptr{Uint8}, Ptr{Uint8}, Uint64, Ptr{Uint8}, Ptr{Uint8}) libsodium
@c Int32 crypto_secretbox_open (Ptr{Uint8}, Ptr{Uint8}, Uint64, Ptr{Uint8}, Ptr{Uint8}) libsodium
@c Int32 crypto_shorthash_siphash24 (Ptr{Uint8}, Ptr{Uint8}, Uint64, Ptr{Uint8}) libsodium
@c size_t crypto_shorthash_bytes () libsodium
@c size_t crypto_shorthash_keybytes () libsodium
@c Ptr{Uint8} crypto_shorthash_primitive () libsodium
@c Int32 crypto_shorthash (Ptr{Uint8}, Ptr{Uint8}, Uint64, Ptr{Uint8}) libsodium
@c Int32 crypto_sign_ed25519 (Ptr{Uint8}, Ptr{Uint64}, Ptr{Uint8}, Uint64, Ptr{Uint8}) libsodium
@c Int32 crypto_sign_ed25519_open (Ptr{Uint8}, Ptr{Uint64}, Ptr{Uint8}, Uint64, Ptr{Uint8}) libsodium
@c Int32 crypto_sign_ed25519_keypair (Ptr{Uint8}, Ptr{Uint8}) libsodium
@c Int32 crypto_sign_ed25519_seed_keypair (Ptr{Uint8}, Ptr{Uint8}, Ptr{Uint8}) libsodium
@c size_t crypto_sign_bytes () libsodium
@c size_t crypto_sign_publickeybytes () libsodium
@c size_t crypto_sign_secretkeybytes () libsodium
@c Ptr{Uint8} crypto_sign_primitive () libsodium
@c Int32 crypto_sign_seed_keypair (Ptr{Uint8}, Ptr{Uint8}, Ptr{Uint8}) libsodium
@c Int32 crypto_sign_keypair (Ptr{Uint8}, Ptr{Uint8}) libsodium
@c Int32 crypto_sign (Ptr{Uint8}, Ptr{Uint64}, Ptr{Uint8}, Uint64, Ptr{Uint8}) libsodium
@c Int32 crypto_sign_open (Ptr{Uint8}, Ptr{Uint64}, Ptr{Uint8}, Uint64, Ptr{Uint8}) libsodium
@c Int32 crypto_sign_edwards25519sha512batch (Ptr{Uint8}, Ptr{Uint64}, Ptr{Uint8}, Uint64, Ptr{Uint8}) libsodium
@c Int32 crypto_sign_edwards25519sha512batch_open (Ptr{Uint8}, Ptr{Uint64}, Ptr{Uint8}, Uint64, Ptr{Uint8}) libsodium
@c Int32 crypto_sign_edwards25519sha512batch_keypair (Ptr{Uint8}, Ptr{Uint8}) libsodium
@c Int32 crypto_stream_xsalsa20 (Ptr{Uint8}, Uint64, Ptr{Uint8}, Ptr{Uint8}) libsodium
@c Int32 crypto_stream_xsalsa20_xor (Ptr{Uint8}, Ptr{Uint8}, Uint64, Ptr{Uint8}, Ptr{Uint8}) libsodium
@c Int32 crypto_stream_xsalsa20_beforenm (Ptr{Uint8}, Ptr{Uint8}) libsodium
@c Int32 crypto_stream_xsalsa20_afternm (Ptr{Uint8}, Uint64, Ptr{Uint8}, Ptr{Uint8}) libsodium
@c Int32 crypto_stream_xsalsa20_xor_afternm (Ptr{Uint8}, Ptr{Uint8}, Uint64, Ptr{Uint8}, Ptr{Uint8}) libsodium
@c size_t crypto_stream_keybytes () libsodium
@c size_t crypto_stream_noncebytes () libsodium
@c Ptr{Uint8} crypto_stream_primitive () libsodium
@c Int32 crypto_stream (Ptr{Uint8}, Uint64, Ptr{Uint8}, Ptr{Uint8}) libsodium
@c Int32 crypto_stream_xor (Ptr{Uint8}, Ptr{Uint8}, Uint64, Ptr{Uint8}, Ptr{Uint8}) libsodium
@c Int32 crypto_stream_aes128ctr (Ptr{Uint8}, Uint64, Ptr{Uint8}, Ptr{Uint8}) libsodium
@c Int32 crypto_stream_aes128ctr_xor (Ptr{Uint8}, Ptr{Uint8}, Uint64, Ptr{Uint8}, Ptr{Uint8}) libsodium
@c Int32 crypto_stream_aes128ctr_beforenm (Ptr{Uint8}, Ptr{Uint8}) libsodium
@c Int32 crypto_stream_aes128ctr_afternm (Ptr{Uint8}, Uint64, Ptr{Uint8}, Ptr{Uint8}) libsodium
@c Int32 crypto_stream_aes128ctr_xor_afternm (Ptr{Uint8}, Ptr{Uint8}, Uint64, Ptr{Uint8}, Ptr{Uint8}) libsodium
@c Int32 crypto_stream_salsa20 (Ptr{Uint8}, Uint64, Ptr{Uint8}, Ptr{Uint8}) libsodium
@c Int32 crypto_stream_salsa20_xor (Ptr{Uint8}, Ptr{Uint8}, Uint64, Ptr{Uint8}, Ptr{Uint8}) libsodium
@c Int32 crypto_stream_salsa20_beforenm (Ptr{Uint8}, Ptr{Uint8}) libsodium
@c Int32 crypto_stream_salsa20_afternm (Ptr{Uint8}, Uint64, Ptr{Uint8}, Ptr{Uint8}) libsodium
@c Int32 crypto_stream_salsa20_xor_afternm (Ptr{Uint8}, Ptr{Uint8}, Uint64, Ptr{Uint8}, Ptr{Uint8}) libsodium
@c Int32 crypto_stream_salsa2012 (Ptr{Uint8}, Uint64, Ptr{Uint8}, Ptr{Uint8}) libsodium
@c Int32 crypto_stream_salsa2012_xor (Ptr{Uint8}, Ptr{Uint8}, Uint64, Ptr{Uint8}, Ptr{Uint8}) libsodium
@c Int32 crypto_stream_salsa2012_beforenm (Ptr{Uint8}, Ptr{Uint8}) libsodium
@c Int32 crypto_stream_salsa2012_afternm (Ptr{Uint8}, Uint64, Ptr{Uint8}, Ptr{Uint8}) libsodium
@c Int32 crypto_stream_salsa2012_xor_afternm (Ptr{Uint8}, Ptr{Uint8}, Uint64, Ptr{Uint8}, Ptr{Uint8}) libsodium
@c Int32 crypto_stream_salsa208 (Ptr{Uint8}, Uint64, Ptr{Uint8}, Ptr{Uint8}) libsodium
@c Int32 crypto_stream_salsa208_xor (Ptr{Uint8}, Ptr{Uint8}, Uint64, Ptr{Uint8}, Ptr{Uint8}) libsodium
@c Int32 crypto_stream_salsa208_beforenm (Ptr{Uint8}, Ptr{Uint8}) libsodium
@c Int32 crypto_stream_salsa208_afternm (Ptr{Uint8}, Uint64, Ptr{Uint8}, Ptr{Uint8}) libsodium
@c Int32 crypto_stream_salsa208_xor_afternm (Ptr{Uint8}, Ptr{Uint8}, Uint64, Ptr{Uint8}, Ptr{Uint8}) libsodium
@c Int32 crypto_verify_16 (Ptr{Uint8}, Ptr{Uint8}) libsodium
@c Int32 crypto_verify_32 (Ptr{Uint8}, Ptr{Uint8}) libsodium
@c Int32 randombytes_set_implementation (Ptr{randombytes_implementation},) libsodium
@c None randombytes (Ptr{Uint8}, Uint64) libsodium
@c Ptr{Uint8} randombytes_implementation_name () libsodium
@c uint32_t randombytes_random () libsodium
@c None randombytes_stir () libsodium
@c uint32_t randombytes_uniform (uint32_t,) libsodium
@c None randombytes_buf (Ptr{Void}, size_t) libsodium
@c Int32 randombytes_close () libsodium
@c Ptr{Uint8} randombytes_salsa20_implementation_name () libsodium
@c uint32_t randombytes_salsa20_random () libsodium
@c None randombytes_salsa20_random_stir () libsodium
@c uint32_t randombytes_salsa20_random_uniform (uint32_t,) libsodium
@c None randombytes_salsa20_random_buf (Ptr{Void}, size_t) libsodium
@c Int32 randombytes_salsa20_random_close () libsodium
@c Ptr{Uint8} randombytes_sysrandom_implementation_name () libsodium
@c uint32_t randombytes_sysrandom () libsodium
@c None randombytes_sysrandom_stir () libsodium
@c uint32_t randombytes_sysrandom_uniform (uint32_t,) libsodium
@c None randombytes_sysrandom_buf (Ptr{Void}, size_t) libsodium
@c Int32 randombytes_sysrandom_close () libsodium
@c Ptr{Uint8} _sodium_alignedcalloc (Ptr{Ptr{Uint8}}, size_t) libsodium
@c None sodium_memzero (Ptr{Void}, size_t) libsodium
@c Int32 sodium_memcmp (Ptr{Void}, Ptr{Void}, size_t) libsodium
@c Ptr{Uint8} sodium_version_string () libsodium
@c Int32 sodium_library_version_major () libsodium
@c Int32 sodium_library_version_minor () libsodium

