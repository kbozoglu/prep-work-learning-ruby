def word_unscrambler(str, arr)
    anagrams = []
    arr.each do |word|
        if str.chars.sort.join == word.chars.sort.join
            anagrams << word
        end
    end
    return anagrams
end

p word_unscrambler("turn", ["numb", "turn", "runt", "nurt"])
p word_unscrambler("cat", ["tom"])
p word_unscrambler("cat", ["tic", "toc", "tac", "toe"])
