# Number to binary function
binaryconv <- function(n) {
  # intToBits() converts the integer into 32 logical bits (TRUE/FALSE).
  # as.integer() converts TRUE/FALSE into 1/0.
  # rev() reverses the bits into the usual binary order.
  # paste(..., collapse = "") joins all bits into one string without spaces.
  temp <- paste(rev(as.integer(intToBits(n))), collapse = "")
  
  # sub("^0+", "", temp) substitute one or more(+) leading(^) zeros with "" from the binary string.
  return(sub("^0+", "", temp))
}

# Hash function: 4n mod 32
hash_fn <- function(n) {
  return((4 * n) %% 32)
}

# User Input
n <- as.integer(readline("Enter No of Integers to input: "))
trailing_arr <- numeric(n)  # Creates a numeric vector containing n zeros.

for (i in 1:n) {
  val <- as.integer(readline(paste("Enter ", i, "number: ")))
  
  hash <- hash_fn(val)
  bin <- binaryconv(hash)
  
  # Counts trailing zeros by subtracting the length after removing
  # ending zeros from the original binary string's length.
  trailing_arr[i] <- nchar(bin) - nchar(sub("0+$", "", bin)) #0+$ - one or more zeroes at end of string
  
  cat("\nOriginal Value: ", val)
  cat("\nHash Value: ", hash)
  cat("\nBinary Hash: ", bin)
}

estimate <- max(trailing_arr)
distinct_elems <- 2^estimate

cat("\nMaximum Trailing Zeroes: ", estimate)
cat("\nEstimated Count of Distinct Elements: ", distinct_elems)