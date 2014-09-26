puts "=============================="
puts "Welcome to Ruby Weather Center"
puts "Written by Eric Benoit"
puts "=============================="
puts

puts "What is the temperature today?"
TEMPERATURE_F_INPUT = gets.chomp.to_i
# Needs error handling for checking user input is actually an integer.
puts "\r"

puts "Would you like the temperature in Celsius?\nType 'y' for Celsius or hit any key for Farenheit.\n"
celsius_user_input = gets.chomp
puts "\r"

if celsius_user_input == "yes" || celsius_user_input == "y" || celsius_user_input == "Y"
	CELSIUS_FLAG = true
	measurement = "C"
else
	CELSIUS_FLAG = false
	measurement = "F"
end

if CELSIUS_FLAG == true
	todays_temperature = (TEMPERATURE_F_INPUT - 32) * 1.8
else
	todays_temperature = TEMPERATURE_F_INPUT
end

response = "Hello, the temperature is #{todays_temperature.round}°#{measurement} \n" + "Our thoughts: "

case TEMPERATURE_F_INPUT
when -99..14
	# Not ideal for any temperature less than 0.
	puts response << "It's damn cold, your frozen, boom!"
when 15..30
	puts response << "Holy batman it is cold!"
when 31..45
	puts response << "Still cold but walkable to a bar."
when 46..60
	puts response << "Time to go swimming... right."
when 61..75
	puts response << "Jeans and tshirt, heck yeah!"
when 76..90
	puts response << "Whoa there buddy!"
else
	puts response << "Get to the beach mohn!"
end

puts "\r"