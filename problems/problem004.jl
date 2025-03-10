# Problem: https://projecteuler.net/problem=4
function is_palindrome(number::Integer)
    str = string(number)
    return str == reverse(str)
end

function solve(minima::Integer, maxima::Integer)
    ans = 0
    for i in minima:maxima
        for j in i:maxima
            prod = i*j
            if is_palindrome(prod) && prod > ans
                ans = prod
            end
        end
    end
    return ans
end

@assert(solve(11, 99) == 9009)
println("Solution: ", solve(101, 999))
