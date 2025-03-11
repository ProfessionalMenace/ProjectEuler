# Problem: https://projecteuler.net/problem=6
function solve(n::Integer)
    sum_of_squares = div(n*(n+1)*(2*n+1), 6)
    sum = div(n*(n+1), 2)
    return sum*sum - sum_of_squares
end

@assert(solve(10) == 2640)
println("Solution: ", solve(100))
