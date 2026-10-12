
difficulty = nil

until ["easy", "medium", "hard"].include?(difficulty)
  puts "Choose a difficulty level (easy, medium, hard):"
  difficulty = gets.chomp.downcase
end

if difficulty == "easy"
  max_attempts = 10
  max_number = 50
elsif difficulty == "medium"
  max_attempts = 7
  max_number = 100
else
  max_attempts = 5
  max_number = 200
end

secret_number = rand(1..max_number)
guess = nil
attempts = 0

until guess == secret_number || attempts >= max_attempts
  puts "Guess a number between 1 and #{max_number}:"
  guess = gets.chomp.to_i

  next if guess < 1 || guess > max_number

  attempts += 1

  if guess < secret_number
    puts "Too low!"
  elsif guess > secret_number
    puts "Too high!"
  end

  if guess != secret_number
    difference = (secret_number - guess).abs

    if difference <= 5
      puts "You were very close!"
    elsif difference <= 10
      puts "You were close!"
    else
      puts "You were far off!"
    end
  end
end

if guess == secret_number
  puts "Congratulations! You guessed the secret number in #{attempts} attempts!"
else
  puts "Sorry, you've used all your attempts. The secret number was: #{secret_number}"
end
