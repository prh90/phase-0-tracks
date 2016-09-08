class Santa
  def initialize(name, gender, ethnicity)
    @name = name
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
    puts "\nInitializing Santa instance ..."
    puts "Hello #{@name}, and welcome to Santa World!"
    puts "You identify as #{@gender}"
    puts "You are #{@ethnicity}\n"
  
  end


  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)

    puts "That was a good #{cookie} cookie!"
  end

end



santas = []

example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_names = ["He-man", "", "Wookie", "Temeral", "Obi-wan", "Cosmos", "Caleb", "N/A"]
example_genders.length.times do |i|
  santas << Santa.new(example_names[i], example_genders[i], example_ethnicities[i])
end



# santa = Santa.new
# santa.speak
# santa.eat_milk_and_cookies("Oatmeal Raisin")