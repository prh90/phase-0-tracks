def vam_check
  puts "How many employees will be processed?"
  turns = gets.chomp.to_i 
  for i in 1 ..turns do 
    
    
    puts "\nWhat is your name?"
    name = gets.chomp.to_s 
    
    puts  "How old are you?"
    age = gets.chomp.to_i
    
    puts "What year were you born then?"
    year = gets.chomp.to_i
    
    puts "The cafeteria is serving garlic bread, would you like some? (yes/no)"
    garlic = gets.chomp.to_s
    
    puts "Would you like to enroll in the company’s health insurance? (yes/no)"
    insurance = gets.chomp.to_s
    
    
    current_year = 2016
    age_check =  (current_year - year)
    
    if name == "Drake Cula" || name == "Tu Fang"
      name = true
      
      else 
        name = false
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
    
    user_input = false
    until user_input
      puts "\nDo you have any allergies? Type -done- when complete."
      allergies = gets.chomp.to_s
        if allergies.downcase == "done" || allergies.downcase == "sunshine"
          user_input = true
        else puts "Please enter another allergy"
        end 
      end
    end
    
    
    case
    
    when name = true || user_input == true
      puts "Definitely a vampire"
    
    when name == false && (age == age_check) && (garlic == true || insurance == true)
      puts "Probably not a vampire"
  
    
    when name == false && (age != age_check) && (garlic == false && insurance == true) || (garlic == true && insurance == false)
      puts "Probably a vampire"

    when name == false && (age != age_check) && garlic == false && insurance == false
      puts "Almost certainly a vampire"

    when name == true && (age == age_check) && garlic == true && insurance == true || user_input == true
      puts "Definitely a vampire"

    else
      puts "Results inconclusive."
    end


end

vam_check()

puts "\n\nActually, never mind! What do these questions have to do with anything? Let's all be friends."
