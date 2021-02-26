class Anagram
  def initialize(word_one, word_two)
    @word_one = word_one
    @word_two = word_two
  end
  def has_vowel?
    [@word_one, @word_two].all?(/[aeiou]/)
  end
end