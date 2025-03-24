# Problem: https://projecteuler.net/problem=19
using Printf
const Months = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
const DaysOfWeek = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]

function solve()
    @assert(sum(Months) == 365)
    result = 0
    day_of_week = 1 # Tuesday
    for year in 1901:2000
        is_leap_year = year%4 == 0 && (year%100 != 0 || year%400 == 0)
        for (month_number, month_days) in enumerate(Months)
            if day_of_week == 6 # 7th day = Sunday
                result += 1
                @printf("%c%4d-%02d-01 is a %s\n", if (is_leap_year) 'L' else ' ' end, year, month_number, DaysOfWeek[day_of_week + 1])
            end
            day_of_week += month_days
            if month_number == 2 && is_leap_year
                day_of_week += 1
            end
            day_of_week %= 7
        end
    end
    return result
end

println("Solution: ", solve())
