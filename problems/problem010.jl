# Problem: https://projecteuler.net/problem=10
function solve(n::Integer)
    numbers = collect(1:n-1)
    len = length(numbers)
    numbers[1] = 0

    for i in 2:len
        if numbers[i] == 0 continue end
        j = 2
        while i*j <= len
            numbers[i*j] = 0
            j += 1
        end
    end
    return sum(numbers)
end

@assert(solve(10) == 17)
println("Solution: ", solve(2_000_000))
