module Utils
  def self.display_stats(app)
    "\nMatches: #{app.matching_chars.length}\nMatching Letters: #{app.matching_chars.split('').join(', ')}\n"
  end
  def self.done?
    print "\nHave Any Other Words?\nPlease say No if you are done!\nOtherwise.. Hit Enter.\nContinue?:"
    gets.chomp.downcase == 'no' && true
  end
end