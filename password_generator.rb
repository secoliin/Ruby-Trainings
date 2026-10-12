puts "=== PASSWORD GENERATOR === \n how many characters would you like your password to be?"
loop do
  begin
    length = Integer(gets.chomp)
    break if length > 0
    puts "Please enter a positive integer."
  rescue ArgumentError
    puts "Invalid input. Please enter a valid integer."
  end
end

puts "Would you like to include uppercase letters? (y/n)"
include_uppercase = gets.chomp.downcase == "y"
puts "Would you like to include lowercase letters? (y/n)"
include_lowercase = gets.chomp.downcase == "y"
puts "Would you like to include numbers? (y/n)"
include_numbers = gets.chomp.downcase == "y"
puts "Would you like to include special characters? (y/n)"
include_special = gets.chomp.downcase == "y"

characters = ""
include_uppercase ? characters += "ABCDEFGHIJKLMNOPQRSTUVWXYZ" : nil
include_lowercase ? characters += "abcdefghijklmnopqrstuvwxyz" : nil
include_numbers ? characters += "0123456789" : nil
include_special ? characters += "!@#$%^&*()_+-=[]{}|;:,.<>?/" : nil

characters_array = characters.chars
if length <= 0
puts "Password length must be greater than 0."
elsif characters.empty?
puts "You must select at least one character type"
else
password = Array.new(length) { characters_array.sample }.join
puts"Your generated password is: #{password}"
end

