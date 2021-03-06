=begin
1. Ask for the clients information
  -Name
  -Age 
  -# kids
  -Theme
  -Matching rooms?
  -Specify if user does not want matching rooms
2. Save new information into variables
3. Use logic to ask user if matching room or not else ask for new info
4. Have hash store information(designer info)
5. Ask if mistakes or change of mind
  a. if none then skip to end
  b. if so correct the desired input then end
6. Print data 
=end
puts "--Please enter clients information--"

puts "Enter clients name:"
name = gets.chomp

puts "Enter clients age:"
age = gets.chomp.to_i

puts "Enter number of children client has:"
kids = gets.chomp.to_i

puts "Enter clients desired theme:"
theme = gets.chomp

puts "Enter if client would like all rooms matching or not (yes/no)"
match = gets.chomp

if match.downcase == "yes"
  then specify = nil
elsif match.downcase == "no".to_s
  then  puts "Please specify room ideas: "
  specify = gets.chomp
end

designer_info = {
  :name => name,
  :age => age,
  :kids => kids,
  :decor_theme => theme,
  :match => match,
  :other => specify
}
designer_info.each do |key|
  puts "\n#{key}"
end

puts "\n\n\nCaught any mistakes? You can fix them by simply typing the desired area that needs to be changed (name, age, kids, decor_theme, match) if no changes need to be made please enter 'none'"
fix = gets.chomp.to_sym

if fix == :none
  puts "Thank you!"
elsif designer_info.include? fix
  puts "Enter new data #{fix}"
  update = gets.chomp
  designer_info[fix.to_sym] = update
else 
  puts "Sorry I did not understand."
end

designer_info.each do |key|
  puts "\n#{key}"
end

