counter = 0

puts "How many employees?"
employees = gets.chomp.to_i


while counter < employees

  puts "What's your name?"
  name = gets.chomp

  puts "How old are you?"
  age = gets.chomp.to_i
  puts "What year were you born in?"
  y_o_b = gets.chomp.to_i

  puts "Would you like us to order you garlic bread? (y/n)"
  garlic_bread = gets.chomp

  puts "Would you like to enroll in our company’s health insurance plan? (y/n)"
  health_insurance = gets.chomp

  loop do
    puts "One at a time, list your allergies. (press 'enter' after each; type 'done' when finished)"
    allergy = gets.chomp
    if allergy == "sunshine"
      sunshine = true
    end
    break if allergy == "done" || allergy == "sunshine"
  end


  case garlic_bread
  when "y"
    garlic_bread = true
  when "n"
    garlic_bread = false
  end

  case health_insurance
  when "y"
    health_insurance = true
  when "n"
    health_insurance = false
  end

  if age == (2016 - y_o_b) || (2016 - (y_o_b + 1))
    trueage = true
  else trueage = false
  end

  sunshine = false

  if sunshine
    vampire = "Probably a vampire"
  elsif (trueage && (garlic_bread || health_insurance)) || (!trueage && (!garlic_bread || !health_insurance))
    vampire = "Probably not a vampire"
  elsif !trueage && !garlic_bread && !health_insurance
    vampire = "Almost certainly a vampire"
  elsif name == "Drake Cula" || name == "Tu Fang"
    vampire = "Definitely a vampire"
  else
    vampire = "Incomplete "
  end

  p vampire

  counter += 1
end

p "Actually, never mind! What do these questions have to do with anything? Let's all be friends."

