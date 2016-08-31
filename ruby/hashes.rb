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
  :name => name,
  :age => age,
  :kids => kids,
  :theme => theme,
  :matching => matching,
  :other => specify
}
p designer_info

puts "\n\n\nCaught any mistakes? You can fix them by simply typing the desired area that needs to be changed (:name, :age, :kids, :theme, :matching) if no changes need to be made please enter 'none'"
fix = gets.chomp.to_s

if fix == "none"
  puts "Information was saved, Thank you!"
else
  puts "Enter new data #{fix}"
  update = gets.chomp
  designer_info[fix.to_sym] = update
end

p designer_info
