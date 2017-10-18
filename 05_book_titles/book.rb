class Book
attr_reader :title

  def title=(book_title)
    keep_small = ['a', 'an', 'the', 'and', 'to', 'for', 'and', 'but', 'from', 'by', 'of', 'in']
    book_title.capitalize!
    @title = book_title.gsub(/\w+/) {|word| keep_small.include?(word) ? word : word.capitalize}
  end

end


#function from Salil (github)