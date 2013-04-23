using Clang.cindex
using Clang.wrap_c

JULIAHOME=EnvHash()["JULIAHOME"]
SODIUM_PATH = "/usr/local/include/sodium/"
SODIUM_TL = "/usr/local/include/sodium.h"
OUT_DIR = "../src/"

clang_includes = map(x->joinpath(JULIAHOME, x), [
  "deps/llvm-3.2/build/Release/lib/clang/3.2/include",
  "deps/llvm-3.2/include",
  "deps/llvm-3.2/include",
  "deps/llvm-3.2/build/include/",
  "deps/llvm-3.2/include/"
  ])
clang_extraargs = ["-D", "__STDC_LIMIT_MACROS", "-D", "__STDC_CONSTANT_MACROS"]

wc = wrap_c.init(
    ".",
    "$(OUT_DIR)ls_common_h.jl",
    clang_includes,
    clang_extraargs,
    (th, h) ->
    begin
        if search(h, "sodium") == 0:-1
            return false
        else
#            println("th : $th, h : $h")
            return true
        end
        true
    end,
    h -> "libsodium",
    h ->
    begin
#        println("filename for header : $h")
        "$(OUT_DIR)ls_" * replace(last(split(h, "/")), ".", "_")  * ".jl"
    end)

wc.options.wrap_structs = true
wrap_c.wrap_c_headers(wc, [SODIUM_TL])


f = open("$(OUT_DIR)ls_defines_h.jl", "w+")
println(f, "#   Generating #define constants")

fe = open("$(OUT_DIR)ls_exports_h.jl", "w+")
println(fe, "#   Generating exports")
for e in split(open(readall, "$(OUT_DIR)ls_sodium_h.jl"), "\n")
  m = match(r"^\s*\@c\s+[\w\:\{\}\_]+\s+(\w+)", e)
  if (m != nothing)
#    println(m)
    @printf fe "export %s\n"  m.captures[1]
  end
end

for e in split(open(readall, "$(OUT_DIR)ls_common_h.jl"), "\n")
  m = match(r"^\s*\@ctypedef\s+(\w+)", e)
  if (m != nothing)
#   println(m.captures[1])
    @printf fe "export %s\n"  m.captures[1]
  else
    m = match(r"^\s*const\s+(\w+)", e)
    if (m != nothing)
#       println(m.captures[1])
        @printf fe "export %s\n"  m.captures[1]
    end
  end
end


g_consts = Set()

for fn in split(readall(`ls $(SODIUM_PATH)`))
    hashdefs = split(readall(`gcc -E -dD -P $(SODIUM_PATH)$fn`), "\n")
    for e in hashdefs
        m = match(r"^\s*#define\s+crypto_(\w+)\s+(.+)", e)
        if (m != nothing)
    #        println(m.captures[2])
            if !(contains(g_consts, m.captures[1]))
                m2 = match(r"^\s*(\d+)([a-zA-Z]+)", m.captures[2])
                if m2 != nothing
                    println ("replacing $(m.captures[2]) with $(m2.captures[1])")
                    c2 = m2.captures[1]
                else
                    c2 = m.captures[2]
                end

                @printf f "const crypto_%-30s = %s\n"  m.captures[1]  c2
                @printf fe "export crypto_%s\n"  m.captures[1]

                add!(g_consts, m.captures[1])
            end
        end
    end
end



close(f)
close(fe)


