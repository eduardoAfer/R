# Write a R program to print the numbers from 1 to n and print "Fizz" 
# for multiples of 3, print "Buzz" for multiples of 5, and print "FizzBuzz" 
# for multiples of both.

multi_3_5 <- function(n){
  aux <- list(seq(1, n))
  for(i in 1:n ){
    if(i %% 3 == 0 & i %% 5 == 0) print("FizzBuzz") 
    else if(i %% 3 == 0) print("Fizz")
    else if(i %% 5 == 0) print("Buzz")
    else print(i)
    
  }
}
print