# Problem: https://projecteuler.net/problem=21
function d(num::Integer) 
    return sum(filter(x -> num%x == 0, collect(1:num-1)))
end

function solve(num::Integer)
    list = [d(x) for x in 1:num]
    list[1] = 1
    result = 0
    for (i, x) in enumerate(list) 
        if x != i && x <= num && list[x] == i
            println("$i, $x")
            result += x
        end
    end
    return result
end

@assert(220 == d(d(220)))
println("Solution: ", solve(10_000))
