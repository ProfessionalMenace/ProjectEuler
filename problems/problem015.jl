# Problem: https://projecteuler.net/problem=15
function solve(rows::Integer, columns::Integer)
    return factorial(rows+columns)÷(factorial(rows)*factorial(columns))
end

println("Solution: ", solve(big(20),big(20)))
