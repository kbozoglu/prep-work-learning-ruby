# Write a method that takes in a string and returns the number of
# letters that appear more than once in the string. You may assume
# the string contains only lowercase letters. Count the number of
# letters that repeat, not the number of times they repeat in the
# string.
#
# Difficulty: hard.

def num_repeats(string)
    
    num_of_repeated_nums = 0
    idx = 0
    
    while idx < string.length && string[idx] != " "
        idy = idx + 1
        count = 0
        
        while idy < string.length
            if string[idx] == string[idy]
                count += 1
                string[idy] = " " 
            end
            idy += 1
        end
        
        if count > 0
            num_of_repeated_nums +=1
        end
        
        idx += 1
    end 
    
    puts num_of_repeated_nums
    return num_of_repeated_nums
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.
#num_repeats("abdbcab")
begin
puts('num_repeats("abdbc") == 1: ' + (num_repeats('abdbc') == 1).to_s)

# one character is repeated
puts('num_repeats("aaa") == 1: ' + (num_repeats('aaa') == 1).to_s)
puts('num_repeats("abab") == 2: ' + (num_repeats('abab') == 2).to_s)
puts('num_repeats("cadac") == 2: ' + (num_repeats('cadac') == 2).to_s)
puts('num_repeats("abcde") == 0: ' + (num_repeats('abcde') == 0).to_s)
end