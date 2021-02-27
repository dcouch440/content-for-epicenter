require('anagram')
require('rspec')
require('pry')

describe("Anagram") do
  describe("#set_words") do
    it("sets the values of the word instances") do
      anagram = Anagram.new.set_words('word', 'word two')
      expect([anagram.word_one, anagram.word_two]).to(eq(['word', 'word two']))
    end
  end
  describe("#has_no_vowel") do
    it("returns true if the word contains a vowel") do
      expect(Anagram.new.set_words('word', 'word two').has_no_vowel?).to(eq(false))
    end
    it("returns false if the word does not contain a vowel") do
      expect(Anagram.new.set_words('hbvc', 'hbvc').has_no_vowel?).to(eq(true))
    end
  end
  describe("#get_words") do
    it("returns both words with the spaces removes") do
      expect(Anagram.new.set_words('test space', 'test space two').get_words).to(eq(['testspace','testspacetwo']))
    end
  end
  describe("#matching_chars") do
    it("returns the the chars that are a match") do
      expect(Anagram.new.set_words('cats', 'zap').matching_chars).to(eq('a'))
    end
    it("returns matching chars regardless of case") do
      expect(Anagram.new.set_words('cats', 'zAp').matching_chars).to(eq('a'))
    end
  end
  describe("#is_antigram?") do
    it("returns false if some chars match") do
      expect(Anagram.new.set_words('cats', 'zap').is_antigram?).to(eq(false))
    end
    it("returns true if no chars match") do 
      expect(Anagram.new.set_words('cats', 'zip').is_antigram?).to(eq(true))
    end
  end
  describe("#is_anagram?") do
    it("returns true if the words match all chars") do
      expect(Anagram.new.set_words('vile', 'evil').is_anagram?).to(eq(true))
    end
    it("return false if the words do not have a complete match") do 
      expect(Anagram.new.set_words('cats', 'zip').is_anagram?).to(eq(false))
    end
    it("returns true if two words combined are an anagram") do
      expect(Anagram.new.set_words('vile nap', 'evil pan').is_anagram?).to(eq(true))
    end
    it("returns false if two words combined are not an anagram") do
      expect(Anagram.new.set_words('vile nap zip', 'evil pan spoon').is_anagram?).to(eq(false))
    end
  end
  describe("#has_integer?") do
    it("should know if numbers are within the string") do
      expect(Anagram.new.set_words('cats', 'zip2').has_integer?).to(eq(true))
    end
    it("should know if numbers are not within the string") do
      expect(Anagram.new.set_words('cats', 'zip').has_integer?).to(eq(false))
    end   
  end
  describe("#has_no_input?") do
    it("should detect if there is no input") do
      expect(Anagram.new.set_words('', '').has_no_input?).to(eq(true))
    end
    it("should detect if there is no input on either of the inputs") do
      expect(Anagram.new.set_words('yellow', '').has_no_input?).to(eq(true))
    end
    it("should detect if there is inputs") do
      expect(Anagram.new.set_words('yellow', 'zap').has_no_input?).to(eq(false))
    end
  end
end