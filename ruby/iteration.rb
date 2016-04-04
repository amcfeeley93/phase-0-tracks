# Release 1

#Declare Array & populate with data
colors = ["red", "yellow", "pink"]
#Declare Hash & populate with data
fruit = {"apple" =>"red", "banana" => "yellow", "grapefruit" => "pink"}

#Iterate through array with .each
fruit.each do |food, color|

puts "#{food} is #{color}."
end

#Iterate through array with .map!
colors.map! do |colors|
  puts colors
  colors.upcase
end

puts "After .map call:"
p colors

#Iterate through hash with .each

def favorite_colors
  puts "Colors are great!"
  yield("Red", "Blue", "Green")
end

favorite_colors { |color1, color2, color3| puts "These are our favorite colors, #{color1}, #{color2}, and #{color3}." }

# Release 2:
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
# 1.)
p numbers.delete_if {|num| num < 5}
# 2.)
p numbers.select { |num| num.even? }
# 3.)
p numbers.keep_if { |num| num.odd? }
# 4.)
p numbers.drop_while { |num| num < 9}