macro c(ret_type, func, arg_types, lib)
  local args_in = Any[ symbol(string('a',x)) for x in 1:length(arg_types.args) ]
  quote
    $(esc(func))($(args_in...)) = ccall( ($(string(func)), $(Expr(:quote, lib)) ), $ret_type, $arg_types, $(args_in...) )
  end
end

macro ctypedef(fake_t,real_t)
  quote
    typealias $fake_t $real_t
  end
end

type crypto_generichash_blake2b_state
  h::Void
  t::Void
  f::Void
  buf::Void
  buflen::size_t
  last_node::uint8_t
end
@ctypedef crypto_generichash_state crypto_generichash_blake2b_state
type crypto_onetimeauth_poly1305_implementation
  implementation_name::Ptr{Void}
  onetimeauth::Ptr{Void}
  onetimeauth_verify::Ptr{Void}
end
type randombytes_implementation
  implementation_name::Ptr{Void}
  random::Ptr{Void}
  stir::Ptr{Void}
  uniform::Ptr{Void}
  buf::Ptr{Void}
  close::Ptr{Void}
end
