# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # create a hash
  # store the string input into an array
  # use a loop to enter items from array into the hash
  # set default quantity = 1
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]

def grocery_list(str)
  list = {}
  list_arr = []
  list_arr = str.split(' ')
  list_arr.each do |food|
    list[food] = 1 
  end
 print_list(list)
end


# Method to add an item to a list
# input: item name and optional quantity
# steps: take a list and item as a parameter
# store into hash
# output: print the new list

def add_item(list, food, quantity = 1)
  list[food] = quantity
end


# Method to remove an item from the list
# input: take a list and item that you want to remove
# steps: find if item is on the list
# if it is on the list delete it
# if not return nil
# output: print new list

def del_item(list, food)
  list.delete_if {|key, value| key == food}
  print_list(list)
end


# Method to update the quantity of an item
# input: take list, item desired to update and quantity number
# steps: take item that needs to be updated and reassign value with quantity number
# output: print new list

def update_quantity(list, item, quantity)
 list[item] = quantity
 print_list(list)
end

# Method to print a list and make it look pretty
# input: take a list as parameter
# steps: use loop(.each) to print items
# print quantity first then item
# output: print new list
def print_list(list)
  list.each {|food, quantity| puts "#{food}, Qty: #{quantity}"}
end

puts list = grocery_list("apples oranges")
puts add_item(list, "yogurt")

print_list(list)
