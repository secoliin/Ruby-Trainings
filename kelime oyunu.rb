
word =  "Beşiktaş"
guess = ""
guessCount = 0
guessLimit = 3
outofGuesses = false

while guess.downcase != word.downcase and !outofGuesses
  if guessCount < guessLimit
    print "Guess the word: "
    guess = gets.chomp()
    guessCount += 1
  else
    outofGuesses = true
  end
end

if outofGuesses
  puts "You lose!"
else
  puts "You win!"
end 