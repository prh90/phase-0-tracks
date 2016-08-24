puts "What is your name?"
name = gets.chomp.to_s 

puts  "How old are you?"
age = gets.chomp.to_i

puts "What year were you born then?"
year = gets.chomp.to_i

puts "The cafeteria is serving garlic bread, would you like some? (yes/no)"
garlic = gets.chomp.to_s

puts "Would you like to enroll in the company’s health insurance? (yes/no)"
insurance = gets.chomp.to_s

current_year = 2016
age_check =  current_year - year

if (age == age_check) && (garlic || insurance)
  print "#{name} is probably not a vampire"
else
  print "#{name} is most likely a vampire"
end
