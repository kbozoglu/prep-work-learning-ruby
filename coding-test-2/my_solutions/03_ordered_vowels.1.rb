def ordered_vowel_word?(word)
    
    i = 0
    while i < word.length
        if word[i] == "a" || word[i] == "e" || word[i] == "i" || word[i] == "o" || word[i] == "u"
            j = i + 1
            while j < word.length
                if word[j] == "a" || word[j] == "e" || word[j] == "i" || word[j] == "o" || word[j] == "u"
                    if word[j].ord < word[i].ord
                        return false
                    end
                end
                j += 1
            end
        end
        i += 1
    end
    return true
end

def ordered_vowel_words(str)
    arr = str.split(" ")
    new_arr = []
    arr.each do |word|
        if ordered_vowel_word?(word)
            new_arr << word
        end
    end
    return new_arr.join(" ")
end

p ordered_vowel_words("amends")
p ordered_vowel_words("complicated")
p ordered_vowel_words("afoot")
p ordered_vowel_words("ham")
p ordered_vowel_words("crypt")
p ordered_vowel_words("o")
p ordered_vowel_words("tamely")
phrase = "this is a test of the vowel ordering system"
p ordered_vowel_words(phrase)