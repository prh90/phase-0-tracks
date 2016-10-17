require 'sqlite3'

# Creating a database
db = Sqlite3::Database.new("foodlist.db")
db.results_as_hash = true

create_table_cmd = <<-SQL 
  CREATE TABLE IF NOT EXISTS foodlist(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    calories INT
  )
SQL
