
# roll return the sum of two values of the dice
roll <- function(){
  # creating the die
  die <- 1:6
  
  # to generate a sample of 2 random values of the die
  dice <-sample(die, size = 2, replace = TRUE,
                prob =c(1/8, 1/8, 1/8, 1/8, 1/8, 3/8))
  sum(dice)
}

rolls <- replicate(10000, roll())
#qplot(rolls, binwidth = 1)


#creating the cards for the player 1
hand1 <-c("ace", "king", "queen", "jack", "ten", "spades", "spades",
          "spades", "spades", "spades")

matrix(hand1, nrow = 5)
matrix(hand1, ncol = 2)
dim(hand1) <-c(5, 2)

#creating the cards for the player 2
hand2 <-c("ace", "spades", "king", "spades", "queen", "spades", "jack",
          "spades", "ten", "spades")

matrix(hand2, nrow = 5, byrow = TRUE)
matrix(hand2, ncol = 2, byrow = TRUE)

#cards 
card <-list("ace", "hearts", 1)

#data frame that contain all the possible cards
deck <-data.frame(
  face =c("king", "queen", "jack", "ten", "nine", "eight", "seven", "six",
          "five", "four", "three", "two", "ace", "king", "queen", "jack", "ten",
          "nine", "eight", "seven", "six", "five", "four", "three", "two", "ace",
          "king", "queen", "jack", "ten", "nine", "eight", "seven", "six", "five",
          "four", "three", "two", "ace", "king", "queen", "jack", "ten", "nine",
          "eight", "seven", "six", "five", "four", "three", "two", "ace"),
  suit =c("spades", "spades", "spades", "spades", "spades", "spades",
          "spades", "spades", "spades", "spades", "spades", "spades", "spades",
          "clubs", "clubs", "clubs", "clubs", "clubs", "clubs", "clubs", "clubs",
          "clubs", "clubs", "clubs", "clubs", "clubs", "diamonds", "diamonds",
          "diamonds", "diamonds", "diamonds", "diamonds", "diamonds", "diamonds",
          "diamonds", "diamonds", "diamonds", "diamonds", "diamonds", "hearts",
          "hearts", "hearts", "hearts", "hearts", "hearts", "hearts", "hearts",
          "hearts", "hearts", "hearts", "hearts", "hearts"),
  value =c(13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 13, 12, 11, 10, 9, 8,
           7, 6, 5, 4, 3, 2, 1, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 13, 12, 11,
           10, 9, 8, 7, 6, 5, 4, 3, 2, 1)
)

#random number for select a different row each game
random_row <- sample(1:52, 1) 


#function that returns the first row of a data frame
deal <- function(cards){
  cards[random_row, ]
}

#deck with just a random row from original deck
deck2 <- deal(deck)
