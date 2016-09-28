class Santa
  attr_reader :ethnicity, :reindeer_ranking
  attr_accessor :age, :gender

  def initialize(gender, ethnicity)
    puts "\nInitializing Santa instance ..."
    @gender = gender
    @ethnicity = ethnicity
    @age = 0
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(type)
    puts "That was a good #{type}"
  end

  def celebrate_birthday
    @age += 1
  end

  def get_mad_at(deer)
    @reindeer_ranking.delete(deer)
    @reindeer_ranking << deer
  end

 #Setter method
 #def gender=(new_gender)
 # @gender = new_gender
 #end

 #Getter method
 #def age 
 # @age
 #end
  
 #def ethnicity
 # @ethnicity
 #end
# ____________________________________________
# Driver code
# initialize()
# speak()
# eat_milk_and_cookies("Peanut butter cookie")
# ____________________________________________
end
# santas = []
# example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
# example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
# example_genders.length.times do |i|
#   santas << Santa.new(example_genders[i], example_ethnicities[i])
# end

# p santas
# ______________________________________________________

# lazy_man = Santa.new("No gender", "dotted")
# p lazy_man.speak
# p lazy_man.eat_milk_and_cookies("Peanut butter")
# p lazy_man.gender
# lazy_man.gender=("Female")
# p lazy_man.gender
# p lazy_man.age
# p lazy_man.celebrate_birthday
# p lazy_man.reindeer_ranking
# p lazy_man.get_mad_at("Vixen")
# p lazy_man.age=(5)
# p lazy_man.celebrate_birthday

example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

100.times do
  ex = Santa.new(example_genders.sample, example_ethnicities.sample)
  ex_age = rand(140)
  puts "This Santa identifies as #{ex.gender}, ethinicity is #{ex.ethnicity} and is #{ex_age} years old.\n"
end