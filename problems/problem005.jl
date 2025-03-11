# Problem: https://projecteuler.net/problem=5
function solve(maxima::Integer)
    ans = 1
    for i in 2:maxima
        ans *= div(i, gcd(ans, i))
    end
    return ans
end

@assert(solve(10) == 2520)
println("Solution: ", solve(20))
