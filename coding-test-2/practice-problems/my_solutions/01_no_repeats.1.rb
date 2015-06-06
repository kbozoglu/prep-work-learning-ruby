def no_repeat?(year)
    
        arr_year = year.to_s.split('')
        if arr_year == arr_year.uniq
            return true
        else
            return false
        end
end


def no_repeats(yr1, yr2)
    result = []
    
    for year in yr1..yr2 
        if no_repeat?(year)
            result << year
        end
    end
    
    return result
end

p no_repeats(1234, 1234)
p no_repeats(1123, 1123)
p no_repeats(1980, 1987)