using Base.Test
using Sodium

function parse_hexstring(s::String)
    out = zeros(Uint8, length(s)/2)
    for i in 1:length(s)/2
        offset = i * 2
        out[i] = parseint(s[offset-1:offset], 16)
    end
    out
end


hexstring(arr::Array{Uint8,1}) = join([@sprintf("%02.x", i) for i in arr])


@test 0 == sodium_init()

println("Testing with sodium library version : " * bytestring(sodium_version_string()))

tstr = "The quick brown fox jumps over the lazy dog"

print("Testing crypto_hash_sha256 : ")

out = zeros(Uint8, 32)

tstr_sha256 = "d7a8fbb307d7809469ca9abcb0082e4f8d5651e46d3cdb762d02d0bf37c9e592"
refval = parse_hexstring(tstr_sha256)

@test 0 == crypto_hash_sha256(out, tstr, length(tstr))
@test refval == out
println("PASSED")


print("Testing crypto_hash_sha512 : ")
tstr_sha512 = "07e547d9586f6a73f73fbac0435ed76951218fb7d0c8d788a309d785436bbb642e93a252a954f23912547d1e8a3b5ed6e1bfd7097821233fa0538f3db854fee6"
out = zeros(Uint8, 64)
@test 0 == crypto_hash_sha512(out, tstr, length(tstr))
refval = parse_hexstring(tstr_sha512)
@test refval == out
println("PASSED")


print("Testing crypto_auth_hmacsha256 : ")
tstr_hmacsha256 = "f7bc83f430538424b13298e6aa6fb143ef4d59a14946175997479dbc2d1a3cd8"
out = zeros(Uint8, 32)
key = zeros(Uint8, 32)
key[1] = 'k'
key[2] = 'e'
key[3] = 'y'

@test 0 == crypto_auth_hmacsha256(out, tstr, length(tstr), key)
refval = parse_hexstring(zeros(Uint8, 32), tstr_hmacsha256)
@test refval == out
println("PASSED")



