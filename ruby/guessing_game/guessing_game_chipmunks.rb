class GuessingGame
  attr_reader :word,  :new_arr, :guesses, :under_arr,  :guess_limit, :guess_count
    attr_accessor :guess_count
    
    def initialize(word)
      @word = word.downcase
      @new_arr = word.downcase.split('')
      @guess_limit = word.length 
      @guesses = []
      @guess_count = 0 
      @under_arr = []
      @word.length.times{@under_arr<< "_" }
      @win = false 
      @lose = false
    end
    
    def guess_input(guess)
      @guess_count += 1 
      @guesses << guess.capitalize
      puts "This is guess #{@guess_count} of #{@guess_limit}."
    end
    
    def comparing_str(guess)
      @guesses.include? guess
    end
    
    def string(guess)
      @word.include? guess
    end
    
    def check(guess, guesses, under_Arr)
      guess_arr = guess.downcase.split("")
      for i in 0..guess_arr.length-1
        for j in 0..guesses.length-1
            if guesses[j] == guess_arr[i]
              under_arr[j] = guess_arr[i]
            end
          end    
        end
      @under_arr =  under_Arr 
    end
    
    def under_Arr(under_arr)
      under_arr.each{|x| print x,' '}
      puts ""
    end 
    
    def end_game(new_arr, under_Arr)
      if under_Arr == new_arr
        @win = true
      elsif  @guess_count >= @guess_limit
        @lose = true 
      end
      @win or @lose
    end 
    
    def final_message
      if @win == true
      puts "You won and it took you #{@guess_count} guesses. You found the word #{@word.capitalize}."
      elsif @lose == true
      puts "You reached the max amount of guesses, #{@guess_limit}, Unfortunately you didn't guess the word which was #{@word.capitalize}" 
      end
    end
end 
puts "Welcome to the word guessing game!!"
puts "\nPlayer 1 please enter the word that Player2 needs to guess"
user_word = gets.chomp 

game = GuessingGame.new(user_word)

loop do
  puts "Player2 lets do this!"  
  puts "Enter your guess:"
  guess =gets.chomp
  if game.comparing_str(guess)
    puts "You already guessed that! Try again"
  elsif game.string(guess)
    game.check(guess, game.new_arr, game.under_arr)
    puts "Correct"
    game.guess_input(guess)
  else
    puts "Incorrect"
    game.guess_input(guess)
  end
  game.under_Arr(game.under_arr)
  break if game.end_game(game.new_arr, game.under_arr)
end
game.final_message