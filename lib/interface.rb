require_relative('anagram')

class Interface
  @@app = Anagram.new
  def self.run_program
    intro
    how_to
    task
  end
  def self.intro
    puts <<-INTRO
              _𝓘͟𝓼͟ ͟𝓘͟𝓽͟ ͟𝓐͟                           
              (, /  |                          
                /---| __   _   _   __  _  ___  
              ) /    |_/ (_(_(_(_/_/ (_(_(_// (_
             (_/_____________ .-/_______𝓒𝓱𝓮𝓬𝓴𝓮𝓻      
                             (_/
    INTRO
  end
  def self.how_to
    puts <<-HOW_TO
        _____________________________________________________
      | -- Welcome --                                       |
      | *This App Checks to see if your                     |
      |  word is an anagram or an antigram                  |
      |                                                     |
      |-- How To Use? --                                    |
      | *Fallow The Prompt and enter the words              |
      |  you wish to test                                   |
      | *At the end of each combination you will be         |
      |  asked to quite or go again!                        |
      |                                                     |
      |  To see these options again please enter GET_HELP   |
      |                                                     |
      |_________Thank you for using choosing Is It A?_______|


    HOW_TO
  end
  def self.task
    loop do
      ask
      stats = "
          Matches: #{@@app.matching_chars.length}
          Matching Letters: #{@@app.matching_chars.split('').join(', ')}
      "

      if !@@app.has_vowel?
        puts "Hmm Im not sure those are valid inputs"
      elsif @@app.is_antigram?
        puts "Ouch looks like nothing in those words matched"
      elsif @@app.is_anagram?
        puts <<-IS_ANAGRAM 
          Congrats, Thats an anagram! #{@@app.word_one} and #{@@app.word_two} are an anagram.

          #{stats}

        IS_ANAGRAM
      else 
        puts <<-DEFAULT
          The inputs given are not an anagram OR antigram.. Heres what im getting

          #{stats}

        DEFAULT
      end
      print "
              Have Any Other Words?
        Please say No if you are done!
              Otherwise.. Hit Enter.
        Continue?:"
      break if gets.chomp.downcase == 'no'
    end
  end
  def self.ask
    word_one = get_input("Enter Your First Word")
    word_two = get_input("Enter Your Second Word")
    @@app.set_words(word_one, word_two)
  end
  def self.get_input(ask)
    request = ask
    print "
        #{request}:
    "
    input = gets.chomp
    if input == "GET_HELP"
      how_to
      get_input(request)
    else
      input
    end
  end
end