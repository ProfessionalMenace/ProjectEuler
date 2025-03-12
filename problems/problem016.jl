# Problem: https://projecteuler.net/problem=16
function solve(x::Integer, y::Integer)
    return sum(digits(x^y))
end

println("Solution: ", solve(big(2), big(1000)))
