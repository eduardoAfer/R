# Write a R program to extract first 10 english letter in lower case and 
# last 10 letters in upper case and extract letters between 22nd to 24th 
# letters in upper case

extract_text <- function(aux){
  lower_10_L <- head(letters, 10)
  print(lower_10_L)
  
  upperLast10L <- tail(LETTERS, 10)
  print(upperLast10L)
  
  lettersFrom22to24 <- head(LETTERS[22:24])
  print(lettersFrom22to24)

}

  