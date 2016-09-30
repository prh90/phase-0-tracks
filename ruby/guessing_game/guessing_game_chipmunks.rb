class GuessingGame
  def initialize(word)
    @word = word.downcase
    @arr = str.split('')
    @guess_limit = word.length
    @guess_count = 0
    @guesses = []
    @line_arr = []
    @word.length.times{@under_arr<< "_" }
    @win = false 
    @lose = false
  end

  def guess_input(guess)
    @guess_count += 1
    @guesses << guess.caplitalize
    puts "This is guess #{@guess_count} of #{@guess_limit}."
  end

  def comparing_guess(guess)
    @word.include? guess
  end

  def string(guess)
    @word.include? guess
  end

  def guess_check(guess)
    guess_array = guess.downcase.split("")
    



end