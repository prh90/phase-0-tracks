=begin
1.Ask for clients information 
 (Name, age, # of kids, desired theme, preferred color, matching rooms, specify if false)
2. Save info in a variable 
3. Use hash for Designer info
4. Ask if mistakes or change of mind
  a. if none then skip to end
  b. if so correct the desired input then end
5. Print data
=end

puts "--Please enter clients information--\n\n"

puts "Clients name: "
name = gets.chomp.to_s

puts "Clients age: "
age = gets.chomp.to_i

puts "Number of children: "
kids = gets.chomp.to_i

puts "Desired theme: "
theme = gets.chomp.to_s

puts "Matching rooms? (Yes/ No)"
matching = gets.chomp.to_s

if matching == "Yes".to_s
  then specify = nil
elsif matching == "no".to_s
  then  puts "Please specify room ideas: "
  specify = gets.chomp.to_s
end

designer_info = {
  "Name" => name,
  "Age" => age,
  "Kids" => kids,
  "Theme" => theme,
  "Matching" => matching,
  "Specify" => specify
}
p designer_info
