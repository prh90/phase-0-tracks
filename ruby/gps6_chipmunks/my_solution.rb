# Virus Predictor

# I worked on this challenge [by myself, with: Sidah ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# Open the file named to connect and use the data
# Both are in same directory/ Imports the data from other file.
require_relative 'state_data'
# Require by itself needs a filepath in words more explicit way to connect files.

class VirusPredictor

# Takes arguements from hash and assigns them to instance variables
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

# Calls the both methods predicted_deaths and speed_of_spread
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

# We use this private method when we do not want certain methods to call other methods.
   private

# Checks information passed to match certain condition and save it into variable
# number of deaths and prints it to console
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      fraction =  0.4
    elsif @population_density >= 150
      fraction = 0.3
    elsif @population_density >= 100
      fraction = 0.2
    elsif @population_density >= 50
      fraction = 0.1
    else
      fraction = 0.05
    end

    number_of_deaths = (@population * fraction).floor

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

# Again checks information and meets certain conditions to assign to variable and
# prints information to console
  def speed_of_spread
    #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |state, info|
  virus_scan = VirusPredictor.new(state, info[:population_density], info[:population])
  virus_scan.virus_effects
end


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section
=begin
What are the differences between the two different hash syntaxes shown in the state_data file?
For one key we has a string and for the nest hash we had a symbol

What does require_relative do? How is it different from require?
Require by itself needs a filepath in words more explicit way to connect files.
Require_relative just needs a file name and will import data

What are some ways to iterate through a hash?
We used the .each method or we can use a .sort in a way.

When refactoring virus_effects, what stood out to you about the variables, if anything?
Trying to pass in instance variables when we didnt need to since they are available throughout the class

What concept did you most solidify in this challenge?
.each I desperately needed to brush up on it.
also hash(nested hash)
=end