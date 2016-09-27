# module Shout

#   def self.yell_angrily(words)
#     words + "!!!" + "(-_-)"
#   end

#   def self.yelling_happily(expression)
#     expression + "!!!" + ":))))"
#   end

# end
# Shout.yelling_happily("YAAAAAAAAYYYY")

module Shout
  def yelling(words, face)
    puts "#{words}!!! #{face}"
  end
  def real_talk(words)
    puts words + "!!!!" 
  end
end

class Pablo
  include Shout
end

class Work
  include Shout
end

mad = Pablo.new
mad.yelling("I HATE BEING CONFUSED", ":XXXXXXXX")
happy = Pablo.new
happy.yelling("I AM DONE WITH THIS EXERCISE", ":D")

tony = Work.new 
tony.real_talk("I LOVE SOCCER")


