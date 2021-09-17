# return a combination of three symbols, with their probability
get_symbols <-function() {
  wheel <-c("DD", "7", "BBB", "BB", "B", "C", "0")
  sample(wheel, size = 3, replace = TRUE,
         prob =c(0.03, 0.03, 0.06, 0.1, 0.25, 0.01, 0.52))
}

# get the symbols in one play
symbols <-get_symbols()

# return true if all the values in vector symbols is equal
same <- symbols[1] == symbols[2] && symbols[2] == symbols[3]

bars <- symbols %in%c("B", "BB", "BBB")

#
scoare <- function(){
  if (same) {
    symbol <- symbols[1]
    if (symbol == "DD") {
      prize <- 800
    }elseif (symbol == "7") {
      prize <- 80
    }elseif (symbol == "BBB") {
      prize <- 40
    }elseif (symbol == "BB") {
      prize <- 5
    }elseif (symbol == "B") {
      prize <- 10
    }elseif (symbol == "C") {
      prize <- 10
    }elseif (symbol == "0") {
      prize <- 0
    }
  }
}

# function that get the combination of 
# the symbols and return the score 
play <-function() {
  #symbols <-get_symbols()
  print(symbols)
  score(symbols)
}