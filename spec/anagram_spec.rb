require('anagram')
require('rspec')
require('pry')

describe("Anagram") do
  describe("#has_vowel") do
    it("returns true if the word contains a vowel") do
      anagram = Anagram.new('word', 'word')
      expect(anagram.has_vowel?).to(eq(true))
    end
    it("returns false if the word does not contain a vowel") do
      anagram = Anagram.new('hbvc', 'hbvc')
      expect(anagram.has_vowel?).to(eq(false))
    end
  end
  describe("#get_words") do
    it("returns both words with the spaces removes") do
      anagram = Anagram.new('test space', 'test space two')
      expect(anagram.get_words).to(eq(['testspace','testspacetwo']))
    end
  end
end