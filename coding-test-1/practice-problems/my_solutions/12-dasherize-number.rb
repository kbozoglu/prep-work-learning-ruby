# Write a method that takes in a number and returns a string, placing
# a single dash before and after each odd digit. There is one
# exception: don't start or end the string with a dash.
#
# You may wish to use the `%` modulo operation; you can see if a number
# is even if it has zero remainder when divided by two.
#
# Difficulty: medium.

def dasherize_number(num)
  s_num = num.to_s
  result = Array.new
  s_result = ""
  idx = 0
  while idx < s_num.length
    digit = s_num[idx].to_i
    
    if (digit%2 != 0)
      if idx == 0
        result[idx] = digit.to_s + "-"
      elsif idx == s_num.length-1
        result[idx] = "-" + digit.to_s 
      else
        result[idx] = "-" + digit.to_s + "-"
      end
    else
      result[idx] = digit.to_s
    end
  idx += 1
  end
  
  s_result = result.join
  s_result.gsub!(/--/, "-" )

  return s_result
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.


puts(
  'dasherize_number(203) == "20-3": ' +
  (dasherize_number(203) == '20-3').to_s
)
puts(
  'dasherize_number(303) == "3-0-3": ' +
  (dasherize_number(303) == '3-0-3').to_s
)
puts(
  'dasherize_number(333) == "3-3-3": ' +
  (dasherize_number(333) == '3-3-3').to_s
)
puts(
  'dasherize_number(3223) == "3-22-3": ' +
  (dasherize_number(3223) == '3-22-3').to_s
)
