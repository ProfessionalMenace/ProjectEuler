# Problem: https://projecteuler.net/problem=3
function largest_divisor(number::Integer)
    i = 2
    while i != number
        if number % i == 0
            number = div(number, i)
        end
        i += 1
    end
    return number
end

println("Solution: ", largest_divisor(600_851_475_143))
