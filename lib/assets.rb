module Assets

  def self.intro()
    puts <<-INTRO
              _𝓘͟𝓼͟ ͟𝓘͟𝓽͟ ͟𝓐͟                           
              (, /  |                          
                /---| __   _   _   __  _  ___  
             ) /    |_/ (_(_(_(_/_/ (_(_(_// (_
            (_/_____________ .-/_______𝓒𝓱𝓮𝓬𝓴𝓮𝓻      
                            (_/
    INTRO
  end

  def self.how_to()
    puts <<-HOW_TO
       _____________________________________________________
      |  -- Welcome -------------------------------------   |
      | *This App Checks to see if your                     |
      |  word is an anagram or an antigram.                 |
      |                                                     |
      |  -- How To Use? ---------------------------------   |
      | *Fallow The Prompt and enter the words              |
      |  you wish to test.                                  |
      | *At the end of each combination you will be         |
      |  asked to quit or go again!                         |
      | *You have the option to enter a sentence too.       |
      | *You can also check to see if things are an.        |
      |  antigram.                                          |
      |                                                     |
      |  To see these options again please enter GET_HELP   |
      |                                                     |
      |_________Thank you for using choosing Is It A?_______|
    HOW_TO
  end
  
end