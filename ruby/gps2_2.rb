# Method to create a list
def grocery_list(str)
  list = {

    :item1 => q1,
    :item2 => q2,
   
  }

  
  list[:items] << str.split

list.each do |k, v|
  grocery_list(item, quantity)
end

end
 


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




#str = "carrots apples cereal pizza carrots"

=begin
def list(str)
  # p str
  arr = str.split
  # p arr
  
  grocery_list = Hash.new(0)
  # p grocery_list
  
  arr.each do |x|
    grocery_list[x] += 1
  end
  return grocery_list
  
end

# list(str)
=end

def list
  grocery_list = {
  "lemonade": 2,
  "tomatoes": 3,
  "onions": 1,
  "ice cream": 4
  }
end

#print list method
def print_list(grocery_list)
  grocery_list.each {|item, quantity| puts "#{item.capitalize}, Qty: #{quantity}" } 
end

#print_list(list)

#item = "milk"

def add_item(str, item)
  # str << ' ' << string
  str << " #{item}"
  return str
end

#list(add_item(str, item))

del_string = "carrots"

def del_item(grocery_list, item)
  grocery_list = grocery_list.delete_if {|key, value| key == item}
  # p grocery_list
  return grocery_list
end
del_item(list(str), del_string)

item = "apples"
quantity = 5

def quantity_update(grocery_list, item, quantity)
  grocery_list[item] = quantity
  return grocery_list
end

quantity_update(list(str), item, quantity)








