
client_details = []

# Input client's information

puts "What's the client's name?"
client_name = gets.chomp.to_s

puts "What's client's age?"
client_age = gets.chomp.to_i

puts "How many children does the client have?"
client_children = gets.chomp.to_i

puts "What's the client's decor theme?"
decor_theme = gets.chomp.to_s

client_info = {name: client_name, age: client_age, children: client_children, theme: decor_theme}

# Print hash back out to screen
puts client_info

#Confirm the client wants to submit details
puts "Is everything correct? (y/n)"
info_correct = gets.chomp

#If it's correct, then print information.
if info_correct == "y"
  puts client_info

#If it's not correct, then ask what information is wrong.
else
  puts "Which section is incorrect? (name, age, children, decor theme)"
  incorrect_field = gets.chomp

  #Ask what the correct information is.
  puts "What's the correct information?"
  correct_info = gets.chomp

  #push the correct information into the incorrect section
  corrected_client_info = {incorrect_field.to_sym => correct_info}
  puts corrected_client_info

  #Merge new info with old info
  puts client_details.merge(corrected_client_info)
end
puts "Client details have been stored."

