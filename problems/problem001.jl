# Problem: https://projecteuler.net/problem=1
function solve(maxima::Integer)
    ans = 0
    for i in 1:maxima-1
        if i%3 == 0 || i%5 == 0
            ans += i
        end
    end
    return ans
end

@assert(solve(10) == 23)
println("Solution: ", solve(1000))
