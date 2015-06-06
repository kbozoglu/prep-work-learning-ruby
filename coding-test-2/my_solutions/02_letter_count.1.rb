def letter_count(str)
    letter_hash = Hash.new(0)
    
    str.each_char do |char|
        if char != " "
            letter_hash[char] += 1
        end
    end
    
    return letter_hash
    
end

p letter_count("cat")
p letter_count("moon")
p letter_count("cats are fun")