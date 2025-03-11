# Problem: https://projecteuler.net/problem=7
function solve(n::Integer)
    i = 3
    primes = [ 2 ]
    while length(primes) < n
        if all(i%p != 0 for p in primes)
            push!(primes, i)
        end
        i += 2
    end
    return last(primes)
end

println("Test: ", solve(6))
println("Solution: ", solve(10_001))
