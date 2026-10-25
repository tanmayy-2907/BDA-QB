df <- data.frame(
  course = c(1, 2, 3, 4, 5, 6),
  id = c(11, 12, 13, 14, 15, 16),
  class = c(1, 2, 1, 2, 1, 2),
  marks = c(56, 75, 48, 69, 84, 53)
)

# Create a subset of course less than 3 by using [ ] brackets 
subset1 <- df[df$course < 3, ]
print(subset1)

#create a subset where the course column is less than 3 or the class equals to 2 
#by using subset () function

subset2 <- subset(df, course < 3 | class == 2)
print(subset2)
