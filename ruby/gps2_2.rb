# Method to create a list
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


loop do
  puts "-------------------------------------------------"
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