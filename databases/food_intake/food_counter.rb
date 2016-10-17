require 'sqlite3'


# Creating a database
db = SQLite3::Database.new('foodlist.db')
db.results_as_hash = true


# Create a table for information
create_table_cmd = <<-SQL 
  CREATE TABLE IF NOT EXISTS foodlist(
    id INTEGER PRIMARY KEY,
    food VARCHAR(255),
    calories INT
  )
SQL
db.execute(create_table_cmd)


def add_food(db, food, calories)
  db.execute("INSERT INTO foodlist (food, calories) VALUES (?, ?)", [food, calories])
end

# Prints out the total amount of calories to keep track
def print_cals
  db.execute("select sum(calories) as MyColumnSum from foodlist")
  puts "Total calories is: #{cal_arr}"
end


input = nil
until input == 'exit'
  puts "Would you like to add a food?(Enter 'add' or 'exit' to exit app"
  input = gets.chomp
  if input.downcase == 'add'
    puts "What food would you like to log in?"
    food = gets.chomp
    puts "How many calories does that have?"
    cals = gets.chomp
    add_food(db, food, cals)
    p add_food
  end
end

if input == 'exit'
  puts "Thank you Goodbye!"
else
  print_cals
end

# Want to get user to input all food until done
# Then add all data from calories in the end to 
# show total intake. 

