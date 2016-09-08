# Method to create a list
 


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