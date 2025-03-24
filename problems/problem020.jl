# Problem: https://projecteuler.net/problem=20
function solve(num::Integer)
    return sum(digits(factorial(num)))
end

println("Solution: ", solve(big(100)))
