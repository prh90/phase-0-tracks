require 'sqlite3'
require 'date'

# Creating a database
db = SQLite3::Database.new("foodlist.db")
db.results_as_hash = true


# Create a table for information
create_table_cmd = <<-SQL 
  CREATE TABLE IF NOT EXISTS foodlist(
    id INTEGER PRIMARY KEY,
    date TEXT,
    food VARCHAR(255),
    calories INT
  )
SQL

db.execute(create_table_cmd)

def add_food(food)
  db.execute("INSERT INTO foodlist (food, calories) VALUES (? , ?)",[food])
end

