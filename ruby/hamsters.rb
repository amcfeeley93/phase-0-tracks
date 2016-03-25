puts "Whats the hamster's name?"
h_name = gets.chomp
puts "Whats the volume level on a scale of 1-10?"
vol_level = gets.chomp.to_i
puts "Whats the fur color?"
fur_color = gets.chomp

puts "Can hamster be adopted?"
adoptable = gets.chomp
case adoptable
when "yes"
puts "Great!"
when "no"
puts "Oh no!"
else puts "try again"
end

puts "How old is the hamster?"
h_age = gets.chomp.to_i
if h_age > 0
    puts "thanks!"
else
    h_age = "nil"
end
puts  "The hamster is named #{h_name} and has a volume level of #{vol_level} out of 10. It's fur color is #{fur_color} as well as being #{h_age} years old"
puts "Do we recommend this pet for adoption?"
puts "#{adoptable}."