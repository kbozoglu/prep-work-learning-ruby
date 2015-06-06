MORSE = {
  "a" => ".-",
  "b" => "-...",
  "c" => "-.-.",
  "d" => "-..",
  "e" => ".",
  "f" => "..-.",
  "g" => "--.",
  "h" => "....",
  "i" => "..",
  "j" => ".---",
  "k" => "-.-",
  "l" => ".-..",
  "m" => "--",
  "n" => "-.",
  "o" => "---",
  "p" => ".--.",
  "q" => "--.-",
  "r" => ".-.",
  "s" => "...",
  "t" => "-",
  "u" => "..-",
  "v" => "...-",
  "w" => ".--",
  "x" => "-..-",
  "y" => "-.--",
  "z" => "--.."
}

def morse_encode_word(word)
    encoded_word = []
    word.each_char do |char|
        encoded_word << MORSE[char]
    end
    return encoded_word.join(" ")
end

def morse_encode(str)
    str_arr = str.split(" ")
    coded_str_arr = []
    str_arr.each do |word|
        coded_str_arr << morse_encode_word(word)
    end
    return coded_str_arr.join("  ")
end

p morse_encode("q")
p morse_encode("cat")
p morse_encode("cat in hat")