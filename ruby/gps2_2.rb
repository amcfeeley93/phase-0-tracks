# GPS 2.2 - Ruby

# Method to create a list

# Create blank hash for shopping list
shopping_list = {}

# puts "\nThe initial shopping list begins with these items: "
# puts shopping_list
# puts "\n\n"

# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
#     Takes in string
#     Break string apart into array
#     Create new hash with list of items and quantities
#     Set default quantities for items to 0
#     Print the list to the console
# output:  hash

def create_list (shopping_list)
  new_list_array = shopping_list.split(" ")
  new_list_hash = Hash[ new_list_array.collect { | item | [ item, 0 ] } ]
end

shopping_list = create_list("carrots apples cereal pizza")

# Print out the current shopping list
puts "\n\n"
puts "The first shopping list is created with a string of items, all with default quantity 0: "
puts shopping_list
puts "\n\n"


# Blank out the shopping list and start fresh
shopping_list = {}

# Method to add an item to a list
# input: item name and optional quantity
# steps: Add item to hash and return the hash
# output: hash

def add_item (shopping_list, item, number)
    shopping_list[item] = number
    return shopping_list
end

# Add new items and quantity to existing shopping list
#   Lemonade, qty: 2
#   Tomatoes, qty: 3
#   Onions, qty: 1
#   Ice Cream, qty: 4

add_item(shopping_list, "Lemonade", 2)
add_item(shopping_list, "Tomatoes", 3)
add_item(shopping_list, "Onions", 1)
add_item(shopping_list, "Ice Cream", 4)

# Print out the current shopping list
puts "New shopping list created, and new items added with specified quantities: "
puts shopping_list
puts "\n\n"


# Method to remove an item from the list
# input: the item to be removed
# steps:
#     Check to see IF item exists
#     IF item exists, remove it
#     Return the hash
# output: hash

def remove_item (shopping_list, item)
    shopping_list.delete(item)
    return shopping_list
end

remove_item(shopping_list, "Lemonade")

# Print out the current shopping list
puts "Removed item (Lemonade) from shopping list: "
puts shopping_list
puts "\n\n"


# Method to update the quantity of an item
# input: item to update and the number
# steps:
#     Assign item and number to variables
#     Check to see IF item exits
#     IF item exists, update the item number
#     Update quantity
#     Return the hash
# output: hash

def update_quantity (shopping_list, item, number)
    shopping_list[item] = number
    return shopping_list
end

update_quantity(shopping_list, "Ice Cream", 1)

# Print out the current shopping list
puts "Update quantity of item (Ice Cream to 1), from the shopping list: "
puts shopping_list
puts "\n\n"


# Method to print a list and make it look pretty
# input: pass in the list (or hash)
# steps:
#     Assign hash to variable name
#     Print out the hash
# output: hash

def print_list (hash)
    hash.each {|key, value| puts " Qty: #{value}   Item: #{key.capitalize}" }
end

# Print out the final shopping list, make it pretty
puts "------------------------------------------"
puts " Final Shopping List:"
puts "------------------------------------------"
print_list(shopping_list)
puts "\n\n"

