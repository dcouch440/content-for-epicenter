class Interface  
  def self.run_program
    intro
    how_to
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
      |-- How To Use? --                                    |
      | *Fallow The Prompt and enter the words              |
      |  you wish to test                                   |
      |-- How To Quit? --                                   |
      | *At any moment please enter END_APP                 |
      |  to get out of the program                          |
      |                                                     |
      |  To see these options again please enter GET_HELP   |
      |                                                     |
      |_________Thank you for using choosing Is It A?_______|
    HOW_TO
  end
  def self.tasks
    print "Enter Your First Word"
  end
  def self.get_input
    input = gets.chomp
    break if input == "END_APP"
    if input == "GET_HELP"
      how_to
    else
      input
    end
  end
end