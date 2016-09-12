class GuessingGame
  attr_reader :final_result
  attr_reader :game_over

  def initialize
    @word = word
    @game_over = false
    @guess_limit = word.length

  end

  def letter_check(guess)
    # Checks guess with word
    @guess_count += 1
    if word[index] == guess
      @game_over = true
    else
      false
    end
  end

  def user_switch(guess)
    # If user guesses correct continue
    # If user guesses wrong switch to other user
  end

  def letter_reveal(guess)
      # If user guesses correctly then the letter will be revealed.

  end

  def ret_message
    puts "You won! you guessed the word #{@word}"
    puts "You lost! it was so easy, it was #{@word}"
  end

  def final_result(guess)
    # Tracks if user won or lost and displays proper message
  end

end

puts "Welcome to the Word Guessing Game!"


puts "Please enter a word to start the game"
word = gets.chomp.split('')

game = GuessingGame.new(word)

