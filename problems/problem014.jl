# Problem: https://projecteuler.net/problem=14
# This is faster without memoization for 1e6 values. Oh well...
function collatz(num::Int, lookup_table::Dict{Int, Int})
    if num == 1
        return 0
    end
    if haskey(lookup_table, num)
        return lookup_table[num]
    end
    if num%2 == 0
        steps = 1 + collatz(num ÷ 2, lookup_table)
    else
        steps = 1 + collatz(3*num + 1, lookup_table)
    end
    lookup_table[num] = steps
    return steps
end

function solve(num::Int)
    collatz_cashe = Dict{Int,Int}()
    maxima_steps = 0
    maxima_val = 0
    for i in 1:num
        steps = collatz(i, collatz_cashe)
        if steps > maxima_steps
            maxima_steps = steps
            maxima_val = i
        end
    end
    return maxima_val
end

println("Solution: ", solve(1_000_000))
