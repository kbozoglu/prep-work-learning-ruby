def wonky_coins(n)
    if n == 0
            return 1
    else
        return wonky_coins(n / 2) + wonky_coins(n / 3) + wonky_coins(n / 4)
    end
    
end

p wonky_coins(1)
p wonky_coins(5)
p wonky_coins(6)