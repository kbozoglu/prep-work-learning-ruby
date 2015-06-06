class Book

  def title=(title)
    @title = title
  end


  def title
    capitalize_title(@title)
  end


  def capitalize_title(title)
    dwarf_words = ["a", "an", "and", "the", "in", "of"]
    arr = title.split(" ")

    capitalized_arr = []
    arr.each_with_index do |word, idx|
      if  idx == 0 || !(dwarf_words.include?(word))
        capitalized_arr << word.capitalize
      else
        capitalized_arr << word
      end
    end

    capitalized_arr.join(" ")
  end

end
