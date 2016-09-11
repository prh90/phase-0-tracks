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
  val.split.each do |x|
    grocery_list[x.to_sym] = 1
  end
  # val.split(" ").map{|x| list[x.to_sym] =1}
  return grocery_list
end



# Method to add an item to a list
# input: Takes list and new item to add
# steps: New item is assigned to grocery_list and default a quantity of 1
# output: New item was "milk" and it returned milk with the default qty

def add_item(grocery_list, item)
  grocery_list[item.to_sym] = 1
  # p grocery_list
end



# Method to remove an item from the list
# input: Takes list and item that needs to be removed
# steps: grocery_list is updated by matching matching the item given as an argument to an existing key, and using a delete method 
# output: Returns updated list

def del_item(grocery_list, item)
  grocery_list = grocery_list.delete_if {|key, value| key == item.to_sym}
  # p grocery_list
  return grocery_list
end




# Method to update the quantity of an item
# input: Takes list, item desired, qty desired 
# steps: update quantity by accessing key desired and setting equal to new quantity passed as argument
# output: returning updated list.
def quantity_update(grocery_list, item, quantity)
  grocery_list[item.to_sym] = quantity
  return grocery_list
end


# Method to print a list and make it look pretty
# input:Inputting create list methond due to it returning grocery_list hash
# steps: iterate through the hash using the .each method, printing the key and value for each item.
# output: A list of groceries outputted

def print_list(grocery_list)
  grocery_list.each {|item, quantity| puts "#{item.capitalize}, Qty: #{quantity}" } 
end


loop do
  puts "-------------------------------------------------"
  puts "\nEnter the number from the list you would like to add quantity (or type 'done'):\n"
  item_index = gets.chomp
  break if item_index.downcase == "done"
  food_indx = item_index.to_i
  puts "How much of this item would you like?"
  amount = gets.chomp.to_i
  add_quantity!(list, list.keys[food_indx], amount)
  
  print_list(list)
end