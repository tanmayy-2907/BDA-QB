# The following table shows the number of units of different products sold on different days:
#   Create five sample numeric vectors from this data visualize data using R.

# Create five numeric vectors

bread <- c(12, 3, 5, 11, 9)
milk <- c(21, 27, 18, 20, 15)
cola <- c(10, 1, 33, 6, 12)
chocolate <- c(6, 7, 4, 13, 12)
detergent <- c(5, 8, 12, 20, 23)

# Display
print(bread)
print(milk)
print(cola)
print(chocolate)
print(detergent)

barplot(
  bread,
  names.arg = c("Mon", "Tue", "Wed", "Thu", "Fri"), # Specifies x axis names for each bar
  xlab = "Days",
  ylab = "Units Sold",
  col = "skyblue",
  main = "Days VS Units Sold"
)

#visualising entire sales
sales <- rbind( #rbind converts vectors as rows of a matrix. Each vector becomes a row of a matrix (PS: Matrix not equal to DataFrame)
  #In dataFrame, each vector becomes a column
  
  Bread = bread,
  Milk = milk,
  Cola = cola,
  Chocalate = chocolate,
  Detergent = detergent
)

barplot(
  sales,
  xlab = "Days",
  ylab = "Units Sold",
  main = "Sales Distribution in a Week",
  names.arg = c("Mon", "Tue", "Wed", "Thur", "Fri"),
  col = c("red", "blue", "yellow", "green", "purple"),
  beside = TRUE
)

legend(
  "topright",
  legend = rownames(sales),
  fill = c("red", "blue", "yellow", "green", "purple"),
  cex = 0.7
)

