class String
  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    words = self.split(/[.?!]/)
    sanitized_words = words.reject { |word| word.empty? }
    sanitized_words.count
  end
end
