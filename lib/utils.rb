require_relative('assets')

module Utils
  include Assets
  
  def self.display_stats(app)
    "\nMatches: #{app.matching_chars.length}\nMatching Letters: #{app.matching_chars.split('').join(', ')}\n"
  end

  def self.ask(app)
    word_one = get_input("\nEnter Your First Word")
    word_two = get_input("Enter Your Second Word")
    app.set_words(word_one, word_two)
  end

  def self.get_input(request)
    print "#{request}: "
    input = gets.chomp
    if input == "GET_HELP"
      Assets.how_to()
      get_input(request)
    else
      input
    end
  end

  def self.done?()
    print "\nHave Any Other Words?\nPlease say No if you are done!\nOtherwise.. Hit Enter.\nContinue?:"
    gets.chomp.downcase == 'no' && true
  end
  
end