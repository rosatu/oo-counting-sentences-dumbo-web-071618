require 'pry'

class String

  def sentence?
    self.end_with?(".") && true
  end

  def question?
    self.end_with?("?") && true
  end

  def exclamation?
    self.end_with?("!") && true
  end

  def count_sentences
    delimiters = ['!', '?', "."]
    self.split(Regexp.union(delimiters)).reject {|string| string == ""}.count
  end
end
