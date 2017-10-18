def echo(string)
  return "#{string}"
end

def shout(string)
  return "#{string.upcase}"
end

def repeat(string, repeat_count = 2)
  return repeat_count.times.collect {string}.join(' ')
end

def start_of_word(string, num_letters_to_extract)
  return string[0..num_letters_to_extract-1]
end

def first_word(string)
  return "#{string.partition(" ").first}"
end

def titleize(str)
  str.capitalize!  # capitalize the first word in case it is part of the no words array
  words_no_cap = ["and", "or", "the", "over", "to", "the", "a", "but"]
  phrase = str.split(" ").map {|word| 
      if words_no_cap.include?(word) 
        word
      else
        word.capitalize
      end
    }.join(" ") # I replaced the "end" in "end.join(" ") with "}" because it wasn't working in Ruby 2.1.1
  phrase  # returns the phrase with all the excluded words  
end