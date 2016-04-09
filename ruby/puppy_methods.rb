# 6.2 pairing 

=begin
class Puppy
  def initialize
    print "Initializing new puppy instance ..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
end

def speak (interger)
  interger.to_i
  interger.times {puts "woof"}
end

def roll_over 
  puts "*Rolls over*"
end

def dog_years (interger)
    interger = interger * 7  
    puts interger
end

def stay 
  puts "stay"
end

end


fido = Puppy.new
fido.speak (3)
fido.roll_over
fido.dog_years (3)
fido.stay
=end

class Football
  def initialize
    puts "Jets win the Superbowl"
  end

  def touchdown
    puts "Touchdown."
  end

  def field_goal(points)
    puts "They just scored #{points}"
  end


end

monday_night_football = []
integer = 0
while integer < 50
  tackle = Football.new
  integer += 1
monday_night_football << tackle
end
monday_night_football.each {|tackle|
  tackle.touchdown
  tackle.field_goal(3)
}


