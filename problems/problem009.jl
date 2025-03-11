# Problem: https://projecteuler.net/problem=9
function solve(n::Integer)
    for a in 1:n-2
        b = a + 1
        while (a + b) < n
            c = n - a - b
            if (a*a + b*b) == c*c
                return a*b*c
            end
            b += 1
        end
    end
    return 0
end 

println("Solution: ", solve(1000))
