
def build_array(a, b, c)
  return [a, b, c]
end

def add_to_array(original_array, a)
  return original_array << a
end

vegetables = []
  p vegetables

vegetables << "string bean"
vegetables << "carrot"
vegetables << "beet"
vegetables << "tomato"
vegetables << "pepper"
  p vegetables

vegetables.delete_at(2)
p vegetables

vegetables.insert(2, "favorites")
p vegetables

vegetables.shift
p vegetables

if vegetables.include?("favorites")
  puts "I love veggies!"
  else puts "Try again"
end


p build_array(1, "two", nil)
p add_to_array(vegetables, "test")
