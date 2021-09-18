# Write a R program to get the first n Fibonacci numbers

fibonacci <- function(n){
  fibonacci_aux <- numeric(n)
  fibonacci_aux[1] <- fibonacci_aux[2] <- 1
  for( i in 3:n) fibonacci_aux[i] <- fibonacci_aux[i -1] + fibonacci_aux[i -2]
  print(fibonacci_aux)
}


