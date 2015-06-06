# Write a method that takes in a string. Your method should return the
# most common letter in the array, and a count of how many times it
# appears.
#
# Difficulty: medium.

def most_common_letter(string)

  idx = 0
  com_let = ""
  max = 0

  while idx < string.length
    
    num_of_let = 1
    idy = idx + 1
    
    while idy < string.length
      if string[idx] == string[idy]
        num_of_let = num_of_let + 1
      end
      idy += 1
    end
    
    if num_of_let > max
      max = num_of_let
      com_let = string[idx]
    end  

    idx += 1
  end
      puts [com_let, max]
  
  return [com_let, max]

end

most_common_letter("abbaaba")

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'most_common_letter("abca") == ["a", 2]: ' +
  (most_common_letter('abca') == ['a', 2]).to_s
)
puts(
  'most_common_letter("abbab") == ["b", 3]: ' +
  (most_common_letter('abbab') == ['b', 3]).to_s
)
