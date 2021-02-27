class Anagram
  attr_reader :word_one, :word_two
  def initialize()
    @word_one = ''
    @word_two = ''
  end
  def set_words(word_one, word_two)
    @word_one = word_one == '' ? 'NO_INPUT' : word_one
    @word_two = word_two == '' ? 'NO_INPUT' : word_two
    self
  end
  def get_words
    [@word_one, @word_two].map{|w| w.gsub(/\s/, '')}
  end
  def has_no_input?
    (@word_one == 'NO_INPUT' || @word_two == 'NO_INPUT') ? true : false
  end
  def has_integer?
    word_one, word_two = get_words()
    (word_one.scan(/\d/) + word_two.scan(/\d/)).length > 0 ? true : false
  end
  def has_non_letter?
    'reach'
  end
  def has_no_vowel?
    ![@word_one, @word_two].map { |word| word.split(' ').all?(/[aeiouy]/i) }.all?
  end
  def is_antigram?
    matching_chars.length > 0 ? false : true
  end
  def is_anagram?
    matching_chars.length == get_words[0].length
  end
  def matching_chars
    word_one, word_two = get_words()
    word_one.scan(/[#{word_two}]/i).join('')
  end
end
