# Exercise 3: Vector and function practice

# Create a vector `marbles` with 6 different colors in it (representing marbles)
marbles <- c('blue', 'red', 'yellow', 'blue', 'red', 'red')

# Use the `sample` function to select a single marble
sample(marbles, 1)

# Write a function MarbleGame that does the following:
# - Takes in a `guess` of a marble color
# - Randomly samples a marble
# - Returns whether or not the person guessed accurately (preferrably a full phrase)
MarbleGame <- function(guess) {
  random.marble <- sample(marbles, 1)
  if (random.marble == guess)
    return("You guessed it correctly!")
  return("You lost.")
}

# Play the marble game!
MarbleGame('blue')

# Bonus: Play the marble game until you win, keeping track of how many tries you take
ifwin <- FALSE
tries <- 0
while(!ifwin) {
  tries <- tries + 1
  result <- MarbleGame('blue')
  if(result == "You won!")
    ifwin <- TRUE
}
print(tries)

## Double bonus(answer not provided): play the game 1000X (until you win) and track the average number of tries
# Is it what you expected based on the probability
