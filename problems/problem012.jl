# Problem: https://projecteuler.net/problem=12
function divisors(num::Integer)
    ans = 1
    i = 2
    while num != 1
        power = 0
        while num%i == 0
            power += 1
            num = div(num, i)
        end
        ans *= power + 1
        i += 1
    end
    return ans
end

function solve(n::Integer)
    num = 3
    inc = 2
    while divisors(num) <= n
        inc += 1
        num += inc
    end
    return num
end

@assert(solve(5) == 28)
println("Solution: ", solve(500))
