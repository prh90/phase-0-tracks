# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yelling_happily(words)
#     words + "!!!" + " :("
#   end
# end

# puts Shout.yell_angrily("This hw is too long")
# puts Shout.yelling_happily("Im almost done")

module Shout
  def yell_happily(team, face)
    puts "Lets go #{team}!!! #{face}"
  end

  def yell_angrily(team)
    puts "You stink " + team + " !!!"
  end
end

class Cheer
  include Shout
end

class Boo
  include Shout
end

pablo = Cheer.new
pablo.yell_happily("Raiders", ":)")

rey = Boo.new
rey.yell_angrily("49ers")
