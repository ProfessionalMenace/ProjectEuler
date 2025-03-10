# Problem: https://projecteuler.net/problem=2
function solve(maxima::Integer)
    ans = 0
    a = 1
    b = 1
    while(b <= maxima)
        tmp = b
        b = b + a
        a = tmp
        if b%2 == 0
            ans += b
        end
    end
    return ans
end

println(solve(4_000_000))

