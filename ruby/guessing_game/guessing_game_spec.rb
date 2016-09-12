#Rspec testing

require_relative 'guessing_game'

describe GuessingGame do 
  let(:game) {GuessingGame.new}

  it "Returns the word" do
    expect(game.word("Pablo")).to eq "Pablo"
  end

    it "returns the secret word array" do
    expect(game.new_arr("Pablo")).to eq ["p","a","b","l","o"] 
  end

      it "returns the guess count" do
    expect(game.guess_count).to eq 0 
  end

  it "returns the guess limit" do
    expect(game.guess_limit("pablo")).to eq 5 
  end
end

#I cant get it to work unfortunately