# Problem: https://projecteuler.net/problem=17
# This is more fun to implement than just using a calculator

const lookup_20 = ["", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten",
    "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
const lookup_tens = ["", "", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]

function convert_to_words(num::Integer)
    modulus = num%100
    rvalue = ""

    if num == 1000
        return "onethousand"
    end
    
    if num > 99
        rvalue *= lookup_20[num÷100 + 1] * "hundred" * if (modulus != 0) "and" else "" end
    end
 
    if modulus < 20
        return rvalue * lookup_20[modulus + 1]
    else
        return rvalue * lookup_tens[modulus÷10 + 1] * lookup_20[modulus%10 + 1]
    end
end

function solve()
    result = 0
    for i in 1:1000
        result += length(convert_to_words(i))
    end
    return result
end

println("Solution: ", solve())
