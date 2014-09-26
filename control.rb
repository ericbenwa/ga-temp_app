
puts "===================="
puts "Welcome to Ruby Weather Center"
puts "Written by Eric Benoit"
puts "===================="
puts

puts "What is the temperature today?"
inputted_temperature_f = gets.chomp
inputted_temperature_f = inputted_temperature_f.to_i

puts "Would you like weather in Celsius? Type 'n' for NO or 'y' for YES. \n"
user_wants_celsius = gets.chomp

if user_wants_celsius == "y"
	celsius_flag = true
	degrees_as = "C"
	todays_temperature = (inputted_temperature_f - 32) * 1.8
else
	celsius_flag = false
	degrees_as = "F"
	todays_temperature = inputted_temperature_f
end

response = "Hello, the temperature is #{todays_temperature}°#{degrees_as} \n" + "Our thoughts:"

case inputted_temperature_f
when 0..14
	puts response << "its cold, your frozen, boom"
when 15..30
	puts response << "holy fucking a it's cold"
when 31..45
	puts response << "still cold but walkable to a bar"
when 46..60
	puts response << "time to go swimming... right"
when 61..75
	puts response << "jeans and tshirt, heck yeah"
when 76..90
	puts response << "whoa there buddy"
else
	puts response << "beach mohn"
end


# celsius_flag = false

# puts "What is the temperature today?"
# user_temperature = gets.chomp

# if celsius_flag == true
# 	todays_temperature_c = user_temperature / -17.2222
# 	degrees_as = "°C"
# else
# 	todays_temperature_f = user_temperature
# 	degrees_as = "°F"
# end

# response = "Hello, the temperature is #{user_temperature}#{degrees_as} \n" + "Our thoughts:"

# todays_temperature_f = user_temperature.to_i
# todays_temperature_c = todays_temperature_f.to_i / -17.2222

# if celsius_flag == false
# 	response = "Hello, the temperature is #{todays_temperature_f}°F \n" + "Our thoughts:"
# else
# 	response = "Hello, the temperature is #{todays_temperature_c.round}°C \n" + "Our thoughts:"
# end

# if todays_temperature_f < 0
# 	puts "holy fuck it's cold"
# elsif todays_temperature_f < 15
# 	puts "still cold but walkable to a bar"
# elsif todays_temperature_f < 30
# 	puts "pleasantly cold"
# elsif todays_temperature_f < 45
# 	puts "scarf and beanie"
# elsif todays_temperature_f < 60
# 	puts "time to go swimming... right"
# elsif todays_temperature_f < 75
# 	puts "jeans and tshirt, heck yeah"
# elsif todays_temperature_f < 90
# 	puts "whoa there buddy"
# else todays_temperature_f >= 90
# 	puts "beach mohn"
# end