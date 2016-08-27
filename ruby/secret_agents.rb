=begin
Encryption

1. Take input string
2. While we have letters left
  a. Take the next available letter
    1. If that character is "_" do nothing
    2. Otherwise change to next letter in the alphabet
    3. Add it to a new string
    4. Return to 2.1

=end
puts "We will show you the encryption and decryption of your password"
  
puts "Enter password:"
u_password = gets.chomp


index = 0

26.times ??
=begin  
while index < u_password.length
  if 
    u_password[index] == "z"
    u_password[index] = "a" #we do not want to go into double alpha
  elsif
    u_password[index] == " "
    u_password[index] = " " #Finding specific letters"agent".index("a") "agent".index("z")

  elsif
    u_password[index] = u_password[index].next  #updates
  end
  index += 1 #increments
end
p u_password
=end

def encrypt(u_password)
  index = 0
  
  while index < u_password.length
  
  if 
    u_password[index] == "z"
    u_password[index] = "a" #we do not want to go into double alpha
    
  elsif
    u_password[index] == " "
    u_password[index] = " " #Finding specific letters"agent".index("a") "agent".index("z")
  elsif
    u_password[index] = u_password[index].next  #updates
  end
  index += 1 #increments
end
return u_password
end

def decrypt(u_password)
    index = 0
    alphabet = "abcdefghijklmnopqrstuvwxyz"
    lengthString = u_password.length 
    final_string = ""
    for i in 0..lengthString - 1
      if u_password[i] == " "
        final_string += " "
      else
      final_string += alphabet[(alphabet.index(u_password[i]) - 1) %26]
      end 
end
  return final_string

end 



puts "Would you like to encrypt or decrypt?"
choice = gets.chomp

if choice.downcase == "encrypt"
  puts "Enter password:"
  u_password = gets.chomp
  puts encrypt(u_password)
  puts "\nEncrypted!"
elsif choice.downcase == "decrypt"
  puts "Enter password:"
  u_password = gets.chomp
  puts decrypt(u_password)
  puts "\nDecrypted!"
else 
  puts "Sorry I do not understand please try again"
end




=begin
Decryption

1. Grab string
2. Take each letter of string
 1. For each letter, change it to the letter before it in the alphabet
 2. If it's a space character, leave it as is
3. Move to next letter until the end of the string
4. Save new string

=end