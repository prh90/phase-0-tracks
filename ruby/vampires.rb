
puts "What is your name?"
name = gets.chomp.to_s 

puts  "How old are you?"
age = gets.chomp.to_i

puts "What year were you born then?"
year = gets.chomp.to_i

puts "The cafeteria is serving garlic bread, would you like some? (yes/no)"
garlic = gets.chomp.to_s.downcase

puts "Would you like to enroll in the company’s health insurance? (yes/no)"
insurance = gets.chomp.to_s.downcase


current_year = 2016
age_check =  (current_year - year)

if name == "Drake Cula" || name == "Tu Fang"
  name = true
else 
  name = false
end

if age == age_check
  age = true
else
  age = false
end

if garlic == "yes"
  garlic = true 
elsif garlic == "no"
  garlic = false
end

if insurance == "yes"
  insurance = true 
elsif insurance == "no"
  insurance = false
end
  
case

when name == false && age == true && (garlic == true || insurance == true)
puts "Probably not a vampire"

when name == false && age == false && (garlic == false || insurance == false)
puts "Probably a vampire"

when (name == false && age == false && garlic == false && insurance == false)
puts "Almost certainly a vampire"

when name == true && age == true && (garlic == true && insurance == true)
puts "Definitely a vampire"

else
  puts "Results inconclusive."
end