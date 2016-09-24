def method_block
  puts "---inside method before the bock-----"
  yield("Pablo", "Roman")
  puts "---inside method after block----"
end
method_block {|name1, name2| puts "This is #{name1} and his middle name is #{name2}"}