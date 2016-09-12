class GuessingGame
  attr_reader :word, :guess_count, :game_over
  attr_reader :guess_count

  def initialize(word)
    @word = word #accessible throughout
    @game_over = false #does not end game until its true
    @guess_limit = word.length #limits the guessing to length of word
    @guess_count = 0 #starts counter at 0
    @user_guesses = [] #To save what the user entered
    @won = false
    @lost = false

  end

  def letter_check(guess)
    # Checks guess with word
    @guess_count += 1
    if word[index] == guess
      @game_over = true
    elsif
      @user_guesses << guess
    else
      false
    end
  end

  def letter_reveal(guess)
      # If user guesses correctly then the letter will be revealed.

  end

  def ret_message
    if @won == true
    puts "You won! you guessed the word #{@word} in #{@guess_count}"
    end
    if @lost == true
    puts "You lost! it was so easy, it was #{@word}"
    end
  end

  def final_result(guess)
    # Tracks if user won or lost and displays proper message
  end

end

puts "Welcome to the Word Guessing Game!"

puts "Please enter a word to start the game"
word = gets.chomp.split('')

game = GuessingGame.new(word)

