data1 <- c(6,7,8,9)
data2 <- c(1,2,4,5)

data3 <- c(data1,data2)
print(data3)

data4 <- paste(data1,data2)
print(data4)

# c() combines values into a single vector, 
# while paste() combines corresponding values into character strings.

# c() joins all elements into a single vector, increasing its length from 4 to 8.
# paste() combines corresponding elements into character strings, 
# producing 4 strings by default separated by a space.