class Anagram
  attr_reader :word_one, :word_two
  def initialize()
    @word_one = ''
    @word_two = ''
  end
  def set_words(word_one, word_two)
    @word_one = word_one
    @word_two = word_two
    self
  end
  def is_anagram?
    matching_chars.length == get_words[0].length
  end
  def is_antigram?
    matching_chars.length > 0 ? false : true
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
  def has_integers?
    
  end
end
