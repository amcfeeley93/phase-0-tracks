# def favorite_colors
#   puts "Colors are great!"
#   yield("Red", "Blue", "Green")
# end

# favorite_colors { |color1, color2, color3| puts "These are our favorite colors, #{color1}, #{color2}, and #{color3}." }

colors = ["red", "yellow", "pink"]
colors.map! do |colors|
  puts colors
  colors.upcase
end

puts "After .map call:"
p colors

fruit = {"apple" =>"red", "banana" => "yellow", "grapefruit" => "pink"}

fruit.each do |food, color|

puts "#{food} is #{color}."
end


