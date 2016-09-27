# Method to create a list
<<<<<<< HEAD
 


# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # Create grocery list composed of a hash
  #   - insert item into an array
  #       - iterate through items store into key
  #       - split items into individual strings
  #       - each string will become a key inside of hash
  #   - insert quantity into array
  #       - store the array into the hash
  # 
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]

# Method to add an item to a list
# input: item name and optional quantity
# steps:
# output:


# Method to remove an item from the list
# input:
# steps:
# output:

# Method to update the quantity of an item
# input:
# steps:
# output:

# Method to print a list and make it look pretty
# input:
# steps:
# output:




def grocery_list!(list, food)
  list[food] = []
end

list = {}

def add_quantity!(list, food, quantity)
  list[food] << quantity
end
def delete_item!(list, food)
  list.delete_if{|key, value| key == food}
end
  
# User Interface
def print_list(list)
  list.keys.each_with_index{|item, index, quantity| puts "#{index} - #{item.capitalize}, qty:#{list[item]} #{quantity}" } 
end

# Lets user add to list
add_food = true

while add_food
  puts "-------------------------------------------------"
  puts "\nType the item you wish to add to the list(or type 'done'):\n"
  food = gets.chomp
  break if food.downcase == "done"
  
  grocery_list!(list, food)
  print_list(list)
  
end
=======
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
# Create an empty hash 
  # Empty array of string input
  # Split each element into separate strings
  # Each string will be stored as a key in the hash 
  # set default quantity(set equal to 1)
def create_list(val)
  grocery_list = {}
  val.split(' ').map{|x| grocery_list[x.to_sym] =1}
  grocery_list
end



# Method to add an item to a list
# input: Takes list and new item to add
# steps: New item is assigned to grocery_list and default a quantity of 1
# output: New item was "milk" and it returned milk with the default qty

def add_item(grocery_list, item)
  grocery_list[item.to_sym] = 1
end



# Method to remove an item from the list
# input: Takes list and item that needs to be removed
# steps: grocery_list is updated by matching matching the item given as an argument to an existing key, and using a delete method 
# output: Returns updated list

def del_item(grocery_list, item)
  grocery_list = grocery_list.delete_if {|key, value| key == item.to_sym}
end




# Method to update the quantity of an item
# input: Takes list, item desired, qty desired 
# steps: update quantity by accessing key desired and setting equal to new quantity passed as argument
# output: returning updated list.
def quantity_update(grocery_list, item, quantity)
  grocery_list[item.to_sym] = quantity
end


# Method to print a list and make it look pretty
# input:Inputting create list methond due to it returning grocery_list hash
# steps: iterate through the hash using the .each method, printing the key and value for each item.
# output: A list of groceries outputted

def print_list(grocery_list)
  grocery_list.each {|item, quantity| puts "#{item.capitalize}, Qty: #{quantity}" } 
end




# USER INTERFACE
puts "Please enter what items you wish to add to your list (or enter done)"
items = gets.chomp

u_list = create_list(items)
puts "\nYour list so far"
puts 
print_list(create_list(items))
>>>>>>> ruby


loop do
  puts "-------------------------------------------------"
<<<<<<< HEAD
  puts "\nEnter the number from the list you would like to add quantity (or type 'done'):\n"
  item_index = gets.chomp
  break if item_index.downcase == "done"
  food_indx = item_index.to_i
  puts "How much of this item would you like?"
  amount = gets.chomp.to_i
  add_quantity!(list, list.keys[food_indx], amount)
  
  print_list(list)
end
loop do
  puts "-------------------------------------------------"
  puts "\nEnter the number from the list you would like to delete (or type 'done'):\n"
  item_index_d = gets.chomp
  break if item_index_d.downcase == "done"
  food_indx_del = item_index_d.to_i

  delete_item!(list, list.keys[food_indx_del])
  puts "Item #{food_indx_del} has been deleted"
  print_list(list)
end
print_list(list)
=======
  puts "\nEnter the what you would like to do to your list? ('add' item, 'delete' item, 'update' quantity or just enter 'done'):\n"
  update = gets.chomp
  break if update.downcase == "done"
  
  if update.downcase == "add"
    puts "What would you like to add to your list?"
    add = gets.chomp
    add_item(u_list, add)
    p print_list(u_list)
  elsif update.downcase == "delete"
    puts "What would you like to delete from your list?"
    rem = gets.chomp
    del_item(u_list, rem)
    p print_list(u_list)
  elsif update.downcase == "update"
    puts "What item would you like to update the quantity to?"
    item = gets.chomp
    puts "What is your new quantity update for #{item}?"
    qty = gets.chomp.to_i
    quantity_update(u_list,item, qty)
    p print_list(u_list)
  else 
    puts "I don't understand please enter the correct option"
  end
end
print_list(u_list)
>>>>>>> ruby
