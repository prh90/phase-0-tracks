class GuessingGame
  attr_reader :word, :guess_count, :game_over, :user_guesses, :guess_array, :guess_limit
  attr_reader :guess_count

  def initialize(word)
    @word = word #accessible throughout
    @game_over = false #does not end game until its true
    @guess_limit = word.length #limits the guessing to length of word
    @guess_count = 0 #starts counter at 0
    @user_guesses = [] #To save what the user entered
    @under_array = []
    @word.times(@under_array << "_") #change the word with underscore
    @won = false
    @lost = false

  end

  def guess_store(guess)
    # Receives guess and stores it into array
    @guess_count += 1
    @user_guesses << guess.downcase

  end


  end

  def ret_message
    if @won == true
    puts "You won! you guessed the word #{@word} in #{@guess_count} guesses"
    end
    if @lost == true
    puts "You lost! it was so easy, it was #{@word}"
    end
  end

end

puts "Welcome to the Word Guessing Game!"
puts "Please enter a word to start the game"
word = gets.chomp.split('')

game = GuessingGame.new(word)

