def echo(str)
  str
end

def shout(str)
  str.upcase
end

def repeat(str, n = 2)
  new_str = ""
  (n).times do |idx|
    new_str += str
    new_str += " " unless idx == n - 1
  end
  new_str
end

def start_of_word(str, n)
  str.slice(0, n)
end

def first_word(str)
  str.split[0]
end

def titleize(str)
  little_words = ["and", "or", "on", "the", "over", "a", "an", "of"]
  arr = str.split
  arr.each_with_index do |word, idx|
    word.capitalize! if !little_words.include?(word) || idx == 0
  end
  arr.join(" ")
end
