using Clang.cindex
using Clang.wrap_c

JULIAHOME=EnvHash()["JULIAHOME"]

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
    "../src/ls_common_h.jl",
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
        "../src/ls_" * replace(last(split(h, "/")), ".", "_")  * ".jl"
    end)

wc.options.wrap_structs = true
wrap_c.wrap_c_headers(wc, ["/usr/local/include/sodium.h"])

# generate export statements.....
# fe = open("lC_exports_h.jl", "w+")
# println(fe, "#   Generating exports")
# 
# fc = open("lC_curl_h.jl", "r")
# curljl = split(readall(fc), "\n")
# close(fc)
# 
# for e in curljl
#   m = match(r"^\s*\@c\s+[\w\:\{\}\_]+\s+(\w+)", e)
#   if (m != nothing) 
#    println (m.captures[1])
#     @printf fe "export %s\n"  m.captures[1]
#   end
# end
# 
# fc = open("lC_common_h.jl", "r")
# curljl = split(readall(fc), "\n")
# close(fc)
# 
# for e in curljl
#   m = match(r"^\s*\@ctypedef\s+(\w+)", e)
#   if (m != nothing) 
#    println(m.captures[1])
#     @printf fe "export %s\n"  m.captures[1]
#   else 
#     m = match(r"^\s*const\s+(\w+)", e)
#     if (m != nothing) 
#        println(m.captures[1])
#         @printf fe "export %s\n"  m.captures[1]
#     end
#   end
# end



#defines generated

f = open("../src/ls_defines_h.jl", "w+")
println(f, "#   Generating #define constants")

fe = open("../src/ls_exports_h.jl", "w+")
println(fe, "#   Generating exports")
for e in split(open(readall, "../src/ls_sodium_h.jl"))
  m = match(r"^\s*\@c\s+[\w\:\{\}\_]+\s+(\w+)", e)
  if (m != nothing)
    @printf fe "export %s\n"  m.captures[1]
  end
end

for e in split(open(readall, "../src/ls_common_h.jl"))
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



for fn in split(readall(`ls /usr/local/include/sodium/`))
    hashdefs = split(readall(`gcc -E -dD -P /usr/local/include/sodium/$fn`), "\n")
    for e in hashdefs
    m = match(r"^\s*#define\s+crypto_(\w+)\s+(.+)", e)
    if (m != nothing) 
#        println(m)
        c2 = replace (m.captures[2], "(unsigned long)", "")
        @printf f "const crypto_%-30s = %s\n"  m.captures[1]  c2
        @printf fe "export crypto_%s\n"  m.captures[1]
    end
    end
end



close(f)
close(fe)


