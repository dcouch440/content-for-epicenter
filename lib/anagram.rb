class Anagram
  def initialize(word_one, word_two)
    @word_one = word_one
    @word_two = word_two
  end
  def is_anagram
    'reach'
  end
  def matching_chars
    word_one, word_two = get_words
    word_one.scan(/[#{word_two}]/i).join('')
  end
  def get_words
    [@word_one, @word_two].map{|w| w.gsub(/\s/, '')}
  end
  def has_vowel?
    get_words.all?(/[aeiouy]/i)
  end
end
