# (B) Write the script in R to sort the values contained in the following vector in ascending order 
# and descending order: (23, 45, 10, 34, 89, 20, 67, 99). Demonstrate the output using graph.

numbers <- c(23, 45, 10, 34, 89, 20, 67, 99)

asc <- sort(numbers)
des <- sort(numbers, decreasing = TRUE)

print(asc)
print(des)

#Plot a bar chart
barplot(
  asc,
  main = "Numbers in Ascending Order",
  xlab = "Position",
  ylab = "Value",
  col = "skyblue"
)

barplot(
  des,
  main = "Descending Order",
  xlab = "Position",
  ylab = "Values",
  col = "skyblue"
)
