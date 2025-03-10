function sequence(a::Integer, n::Integer)
    return sequence(mod(a^2, 998388889), n+1) 
end

sequence(102022661, 1)
