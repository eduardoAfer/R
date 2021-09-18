# Write a R program to create three vectors a,b,c with 3 integers. 
# Combine the three vectors to become a 3×3 matrix where each column 
# represents a vector. Print the content of the matrix.

vecToMatrix <- function(a, b, c){
  myMatrix <- cbind(a, b, c)
  print(myMatrix)
}