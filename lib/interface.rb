require_relative('anagram')
require_relative('assets')
require_relative('utils')
class Interface
  include Assets
  include Utils
  @@app = Anagram.new

  def self.run_program()
    Assets.intro
    Assets.how_to
    tasks()
  end
  def self.tasks()
    loop do
      Utils.ask(@@app)
      stats = Utils.display_stats(@@app)
      if @@app.has_no_input?
        puts "\n\nLooks like you missed an input.\n"
      elsif @@app.has_integer?
        puts "\n\nHmm, try that again maybe. That input contains numbers..\n"
      elsif @@app.has_non_letter?
        puts "\n\nHmm, try that again maybe. That input contains something we are not looking for..\n"
      elsif @@app.has_no_vowel?
        puts "\n\nHmm Im not sure those are valid inputs.\n"
      elsif @@app.is_antigram?
        puts "\n\nOuch looks like nothing in those words matched.\n"
      elsif @@app.is_anagram?
        puts "\n\nCongrats, Thats an anagram! #{@@app.word_one} and #{@@app.word_two} are an anagram.\n#{stats}\n"
      else 
        puts "\n\nThe inputs given are not an anagram OR antigram.. Heres what im getting.\n#{stats}\n"
      end
      print "\nHave Any Other Words?\nPlease say No if you are done!\nOtherwise.. Hit Enter.\nContinue?:"
      break if Utils.done?()
    end
  end
end