#Define 2 hash functions

hash_1 <- function(n){
  return (n %% 5)
}
hash_2 <- function(n){
  return(((2 * n ) + 3 ) %% 5)
}

bit_arr_size <- 5
bit_arr <- rep(0, bit_arr_size) #Repeats 0, 5 times

n <- as.integer(readline("Enter number of elements to insert: "))
input_vals<- numeric(n)

for(i in 1:n){
  input_vals[i] <- as.integer(readline(paste("Enter", i, "Number to insert: ")))
}

for (i in 1:n){
  a <- input_vals[i]
  
  temp1 <- hash_1(a) #compute hash value using hash1
  temp2 <- hash_2(a) #using hash2
  
  bit_arr[temp1 + 1] <- 1 #Since arrays are 1-indexed in R and hash returns 0 to 4, we do +1
  bit_arr[temp2 + 1] <- 1
  
  cat("Bit Array value is: ", bit_arr, "\n")
}

m <- as.integer(readline("Enter number of values to check: "))
check_vals <- numeric(m)

for(i in 1:m){
  check_vals[i] <- as.integer(readline(paste("Enter", i, "number to check: ")))
}

for (i in 1:m){
  b <- check_vals[i]
  
  temp1 <- hash_1(b) 
  temp2 <- hash_2(b) 
  
  if(bit_arr[temp1 + 1] != 1 || bit_arr[temp2 + 1] != 1){
    cat(b, "is not present in the array \n")
  }
  else{
    cat(b, "may be present in the array \n")
  }
  
}
