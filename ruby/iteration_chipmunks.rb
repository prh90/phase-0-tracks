def method_block
  puts "---inside method before the bock-----"
  yield("Pablo", "Roman")
  puts "---inside method after block----"
end
method_block {|name1, name2| puts "This is #{name1} and his middle name is #{name2}"}

cool_array = ["Batman", "Iron-man", "Deadpool", "Lazy-man"]
cool_array.each {|x| puts x}

puts #Put this here for spacing on gitbash

cool_array.map! do |x|
  puts x.upcase
end