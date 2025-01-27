#Label the five parts of this function:
  first_and_last <- function(s) { first_char <- substr(s, 1, 1) last_char <- substr(s, nchar(s), 1) result <- paste(first_char, last_char)
  } return(result)

#function name <- first and last
  #inputs
  #output value
  #do something
  #return (result)

#Match the function bodies on the left with the name that describes what they’re doing on the right.

#increment
   function(x) { result <- x + 1
  } return(result)
#double
  function(a) { result <- a * 2
  } return(result)
#hypotenuse length
  function(a, b) {
    c_squared <- a^2 + b^2 result <- sqrt(c_squared)
  } return(result)
  double hypotenuse_length increment

#Write a function that turns a vector into a palindrome. For example, it should turn 1 2 3 into 1 2 3 3 2 1. Hint: you’ll have to use a function called rev(). Choose a short but descriptive name for your function.
palindrome <- function(x) {
  result <- rev(x)
  return(result)
}

 # What value does the following code yield?
it yeilds 11
 # How could you change fish_mass so the code yields 12 instead?
fish_mass <- 6
 # How could you change the body of the function so the code yields 12?
rowth <- 3 + 0.2 * temp

    fish_mass <- 5
  temperature <- 20
  fish_growth <- function(mass, temp) {
    growth <- 2 + 0.2 * temp
    mass <- mass + growth
    return(mass)
    }
  fish_growth(fish_mass, temperature)

#In your own words, why does running this code generate an error?
    calc_volume <- function(height, width, depth) { area <- height * width
    volume <- area * depth
    } return(volume)
  vol <- calc_volume(3, 5, 1) area
#Running this code generates an error because it wasnt able to calculate the
#volume, the last line of code has the word area in the wrong spot.

#R represents missing data with the value NA. Say you’re doing an experiment and you miss the second observation. In R you can write that as c(1, NA, 3, 4).
#Most summary functions, like mean(), max(), and median(), have a parameter called na.rm.
#What does this parameter do? What is its default value? How would you get the maximum value of the vector c(1, NA, 3, 4)?
this parameter decides what to do with the missing value
the default value is FALSE
to get the max value you would use max()

