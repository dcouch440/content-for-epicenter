class Anagram
  def initialize(word_one, word_two)
    @word_one = word_one
    @word_two = word_two
  end
  def get_words
    [@word_one, @word_two].map{|w| w.gsub(/\s/, '')}
  end
  def has_vowel?
    [@word_one, @word_two].all?(/[aeiouy]/i)
  end
end