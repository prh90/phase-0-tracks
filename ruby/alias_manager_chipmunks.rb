=begin
1.Receive string
2. Split string and swap
3. join back together
=end

def name_swap(str)
  str.split(" ").reverse.map!{|i| i.capitalize}.join(" ")
end

=begin
1. Compare string to vowels
2. If a character matches last vowel reassign to first vowel
3. Else succeed through the vowels list
=end

def vowel_change(s)
  vowels = "aeiou"
  if s == "u" 
    vowels[0]
  else
    vowels[vowels.index(s).succ]
  end
end

=begin
1. Compare string to consonants
2. If a character matches last consonants reassign to first consonant
3. Else succeed through the consonant list
=end

def con_change(s)
  consonants = "bcdfghjklmnpqrstvwxyz"
  if s == "z" 
    consonants[0]
  else
    consonants[consonants.index(s).succ]
  end
end

=begin
1. Call each method to compare and store in new list
2. if none is matched then just add to list for example spacing
=end

def it_input(str)
  
  vowels = "aeiou"
  consonants = "bcdfghjklmnpqrstvwxyz"
  name_list="" 
  
  str.downcase.each_char{|s|  
    if vowels.include? s 
     name_list<<vowel_change(s) 
    elsif consonants.include? s 
     name_list<<con_change(s) 
    else 
    name_list << s 
    end
  }
  p name_swap(name_list)
end
=begin
1. Hash to store into
=end

final_name = {}

=begin
1. Ask user to input name to modify
2. Stores new name into hash for later use
3. continue process until user enters "quit"
=end

while true
  puts "Enter your name agent and enter 'quit' when done:"
  name = gets.chomp
  
  if name.downcase == "quit"
    break
  end
    final_name[name] = it_input(name) #stores new name into hash
end

=begin
1. Once break has been triggered it will move on to print all information stored in hash.
=end

final_name.each{
  |k,v| puts "#{k} is also known as #{v}" 
}