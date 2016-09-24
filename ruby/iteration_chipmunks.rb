def method_block
  puts "---inside method before the bock-----"
  yield("Pablo", "Roman")
  puts "---inside method after block----"
end
method_block {|name1, name2| puts "This is #{name1} and his middle name is #{name2}"}
 # ___________________________________________

puts "\nArray work\n"

cool_array = ["Batman", "Iron-man", "Deadpool", "Lazy-man"]
cool_array.each {|x| puts x}

puts #Put this here for spacing on gitbash

cool_array.map! do |x|
  puts x.upcase
end

puts #Put this here for spacing on gitbash
# ________________________________________________

movie_actor = {
  'Batman'=> 'Christian Bale',
  'Iron-man'=> 'Robert Downey Jr.',
  'Deadpool'=> 'Ryan Reynolds',
  'Lazy-man'=> 'Pablo Hernandez'
}
movie_actor.each{|key, value| puts "My fav movie is #{key} and my fav actor for that role was #{value}"}
# _______________________________________________

test_array = [ 1, 2, 34, 67, 23, 73, 5]

puts "\nArray before deletion"
p test_array

test_array.delete_if{|x| x <= 1}
puts "\nArray after deletion"
p test_array

puts "\nArray before keep"
p test_array

test_array.keep_if {|x| x > 3}
puts "\nArray after keep"
p test_array

puts "\nArray before select"
p test_array

result = test_array.select do |elem|
  elem < 70
end
puts "\nArray after select"
p result

puts "\nBefore remove"
p result

i = result.length
until result.length == 2 
  result.delete(result[i])
  i -= 1
end
puts "\nAfter remove"
p result
# __________________________________________________

