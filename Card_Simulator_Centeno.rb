# Ervin Centeno
# Adv. Programming Ruby HW2
# Black Jack Game Simulator

# This function generates a random number.
def randomNum()
  num = rand(1..10)
end

# This function adds all the numbers in the array and returns a value.
def sumCheck(array)
  arraySum = 0
  for i in array
    arraySum += i
  end
  return arraySum
end

card1, card2 = randomNum, randomNum
deck = [card1, card2]

puts "Welcome to the game of Black Jack!"

while sumCheck(deck) <= 16
  # This will prompt user input until sumCheck is over 16
  puts "Here are your cards: #{deck}"
  puts "The sum of your numbers is #{sumCheck(deck)}."
  if sumCheck(deck) <= 16
    puts "Would you like to draw a card?"
    drawAgain = gets.chomp
    if drawAgain != "Y" || sumCheck(deck) > 16
      break
    else
      deck.push(randomNum)
    end
  else
    break
  end
  puts "" # Adds spacing.
end

if sumCheck(deck) >= 21
  p deck
  puts "Your number total exceeds 21...Gameover"
else
  p deck
  puts "The sum of your cards is #{sumCheck(deck)}"
  if sumCheck(deck) > 16
    puts "It is over 16, I dont recommend drawing another card.."
  end
end
puts "Thanks for playing!"
