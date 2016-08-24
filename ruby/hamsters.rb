puts "What is the hamster name ?"
name = gets.chomp

puts "On a scale from 1-10, what is the hamsters noise volume? (please enter a number)"
volume = gets.chomp.to_i

puts "What is the fur color ?"
fur = gets.chomp

puts "Is the hamster a good candidate ? (y/n)"
candidate = gets.chomp

puts "Estimated age of hamster"
age= gets.chomp.to_i

if age == "".to_i
  then age = nil
end

puts "Data"
puts "Name: #{name}"
puts "volume: #{volume}"
puts "Color fur: #{fur}"
puts "Good Candidate for adoption: #{candidate}"
puts "Estimated age: #{age}"
