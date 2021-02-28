require('anagram')
require('rspec')
require('pry')

describe("Anagram") do

  before(:each) do
    @app = Anagram.new
  end

  describe("#set_words") do
    
    it("sets the values of the word instances") do
      anagram_object = @app.set_words('word', 'word two')
      expect([anagram_object.word_one, anagram_object.word_two]).to(eq(['word', 'word two']))
    end

  end

  describe("#has_no_vowel") do

    it("returns true if the word contains a vowel") do
      expect(@app.set_words('word', 'word two').has_no_vowel?).to(eq(false))
    end

    it("returns false if the word does not contain a vowel") do
      expect(@app.set_words('hbvc', 'hbvc').has_no_vowel?).to(eq(true))
    end

    it("returns true if one of the words in a sentence does not contains a value") do
      expect(@app.set_words('dog cat yellow', 'apple seven hbvc').has_no_vowel?).to(eq(true))
    end

    it("returns false if  all of the words contain a vowel") do
      expect(@app.set_words('dog cat yellow', 'apple seven camera').has_no_vowel?).to(eq(false))
    end

  end

  describe("#get_words") do
    
    it("returns both words with the spaces removes") do
      expect(@app.set_words('test space', 'test space two').get_words).to(eq(['testspace','testspacetwo']))
    end
  end

  describe("#matching_chars") do
    
    it("returns the the chars that are a match") do
      expect(@app.set_words('cats', 'zap').matching_chars).to(eq('a'))
    end

    it("returns matching chars regardless of case") do
      expect(@app.set_words('cats', 'zAp').matching_chars).to(eq('a'))
    end

  end

  describe("#is_antigram?") do

    it("returns false if some chars match") do
      expect(@app.set_words('cats', 'zap').is_antigram?).to(eq(false))
    end

    it("returns true if no chars match") do 
      expect(@app.set_words('cats', 'zip').is_antigram?).to(eq(true))
    end

  end

  describe("#is_anagram?") do

    it("returns true if the words match all chars") do
      expect(@app.set_words('vile', 'evil').is_anagram?).to(eq(true))
    end

    it("return false if the words do not have a complete match") do 
      expect(@app.set_words('cats', 'zip').is_anagram?).to(eq(false))
    end

    it("returns true if two words combined are an anagram") do
      expect(@app.set_words('vile nap', 'evil pan').is_anagram?).to(eq(true))
    end

    it("returns false if two words combined are not an anagram") do
      expect(@app.set_words('vile nap zip', 'evil pan spoon').is_anagram?).to(eq(false))
    end

  end

  describe("#has_integer?") do

    it("should know if numbers are within the string") do
      expect(@app.set_words('cats', 'zip2').has_integer?).to(eq(true))
    end

    it("should know if numbers are not within the string") do
      expect(@app.set_words('cats', 'zip').has_integer?).to(eq(false))
    end  

  end

  describe("#has_no_input?") do

    it("should detect if there is no input") do
      expect(@app.set_words('', '').has_no_input?).to(eq(true))
    end

    it("should detect if there is no input on either of the inputs") do
      expect(@app.set_words('yellow', '').has_no_input?).to(eq(true))
    end

    it("should detect if there is inputs") do
      expect(@app.set_words('yellow', 'zap').has_no_input?).to(eq(false))
    end

  end

  describe("#has_non_letter?") do

    it("should detect if there are non letters in the words and return true if it does") do
    expect(@app.set_words('yellow', 'asd,,').has_non_letter?).to(eq(true))
    end

    it("should detect if there are non letters in the words and return false if it does not") do
      expect(@app.set_words('yellow', 'cats').has_non_letter?).to(eq(false))
    end

  end

end