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
  def yell_happily(team)
    "lets go " + team + " !!!"
  end

  def yell_angrily(team)
    "You stink " + team + " !!!"
end

