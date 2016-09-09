class Santa
  attr_reader :ethnicity
  attr_accessor :age, :gender
  
  def initialize(gender, ethnicity)
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end
  
  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie} cookie!"
  end
  
  def celebrate_birthday
    @age += 1 
  end

  def get_mad_at(deer)
  @reindeer_ranking.delete(deer)
  @reindeer_ranking << deer
  end
  
 #   #Setter method
 # def gender=(new_gender)
 #  @gender = new_gender
 # end

  
 # #Getter method
 # def age 
 #  @age
 # end
  
 # def ethnicity
  # @ethnicity
 # end
end

he_man = Santa.new("Male", "Alien")
puts he_man.speak
puts he_man.eat_milk_and_cookies("Oatmeal Raisin")
p he_man.gender
p he_man.age
p he_man.celebrate_birthday
p he_man.get_mad_at("Vixen")
p he_man.gender=("Female")
p he_man.gender
p he_man.age=(5)
p he_man.celebrate_birthday


# santas = []

# # Sample code

# example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
# example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
# example_names = ["He-man", "Nae-nae", "Wookie", "Temeral", "Obi-wan", "Cosmos", "Caleb", "N/A"]
# example_deer = ["Vixen"]
# example_genders.length.times do |i|
#   santas << Santa.new(example_genders.sample, example_ethnicities.sample)
# end

example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]




10.times do
  ex = Santa.new(example_genders.sample, example_ethnicities.sample)
  ex_age = rand(140)
  puts "\nThis santa identifies as #{ex.gender}, ethinicity is #{ex.ethnicity} and is #{ex_age} years old.\n"
end