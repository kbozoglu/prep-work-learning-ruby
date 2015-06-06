def translate(str)
  arr = str.split(" ")
  translated_arr = []

  arr.each do |word|
    if word[0].ord >= 65 && word[0].ord <= 90   # check if the word capital
      word.downcase!
      translated_arr << piggy(word).capitalize  # I wanted it to be capital also after translation
    else
    translated_arr << piggy(word)
    end
  end
  translated_arr.join(" ")
end


def piggy(word)
  vowels = ["a", "e", "i", "o", "u"]
  if vowels.include?(word[0])
    piggy_word = word + "ay"
  elsif word[0,2] == "qu" #phoneme
    piggy_word = word[2, word.length - 2] + "quay"
  elsif word[1,2] == "qu"  
    piggy_word = word[3, word.length - 3] + word[0,3] + "ay"
  else
    idx = 0
    word.each_char do |ch|
      break if vowels.include?(ch)
      idx += 1
    end
    piggy_word = word[idx, word.length - idx] + word[0, idx] + "ay"
  end
  piggy_word
end
