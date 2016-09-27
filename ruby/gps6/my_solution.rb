# Virus Predictor

# I worked on this challenge [by myself, with: Guide ].
# We spent [1.5] hours on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data'
# Both files are in the Same directory in this case. 
# Imports the data from the other file to run.

class VirusPredictor
# Only accessible inside class
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end


  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

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


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

STATE_DATA.each do |key, value|
  state = VirusPredictor.new(key, value[:population_density], value[:population])
  state.virus_effects
end


#=======================================================================
# Reflection Section
=begin
What are the differences between the two different hash syntaxes shown in the state_data file?
String and symbol

What does require_relative do? How is it different from require?
require relative is relative to the code you already have.
require itself is loading a file that if specifically tailored for your code

What are some ways to iterate through a hash?
.each method
or a .sort method

When refactoring virus_effects, what stood out to you about the variables, if anything?
That they did not have to be present. It was excess code.

What concept did you most solidify in this challenge?
The question is what didn't receive help on that helped me better understand.
More about accessor/ reader, refactor, instance variable, global, class, require_relative.
This whole exercise was a boost to my learning.
  

  
=end