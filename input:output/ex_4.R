# Write a R program to get all prime numbers up to 
# a given number (based on the sieve of Eratosthenes).

primes <- function(n) {
  if (n >= 2) {
    x <- seq(2, n)
    prime_nums <- c() # empty vector
    for (i in seq(2, n)) {
      if (any(x == i)) {
        prime_nums <- c(prime_nums, i)
        x <- c(x[(x %% i) != 0], i)
      }
    }
    return(prime_nums)
  }
  else{
    stop("Input number should be at least 2.")
  }
} 