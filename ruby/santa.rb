class Santa

def initialize 
	print "initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    @age = 0 
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen" ]
end 

def speak 
	print "Ho, ho, ho! Haaappy holdidays!"
end 

def eat_milk_and_cookies (cookie_type)
	puts "That was a good #{cookie_type}!"
end

def celebrate_birthday
	@age += 1
end

def get_mad_at (reindeer_name)
	@reindeer_ranking.delete(reindeer_name)
	@reindeer_ranking.insert(-1, reindeer_name)
	@reindeer_ranking
end

santas []
example_genders = ["agender", "female", "bigender","male", "gender fluid", "N/A"]
example_ethnicities = ["black",  "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
until santas.length == 50
  santa = Santa.new(example_genders[rand(6)], example_ethnicities[rand(7)])
  santa.age = rand(140)
  santas << santa
end
puts ""
puts "There are now #{santas.length} Santas."
puts ""
puts "Print information on a Santa. For which Santa would you like info? Enter a number between 1 and 50."
n = gets.chomp
p santas"#{n}".to_i
