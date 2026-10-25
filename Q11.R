bread <- c(12, 3, 5, 11, 9)
milk <- c(21, 27, 18, 20, 15)
cola <- c(10, 1, 33, 6, 12)
chocolate <- c(6, 7, 4, 13, 12)
detergent <- c(5, 8, 12, 20, 23)


sales <- data.frame(
  Bread = bread,
  Milk = milk,
  Cola = cola,
  Chocolate = chocolate,
  Detergent = detergent,
  row.names = c("Monday", "Tuesday", "Wednesday",
                "Thursday", "Friday")
)

print(sales)

barplot(
  t(as.matrix(sales)),
  beside = TRUE,
  main = "Product Sales Across Five Days",
  xlab = "Day",
  ylab = "Units Sold",
  col = c("skyblue", "orange", "lightgreen", "pink", "gold"),
  legend.text = TRUE,
  names.arg = rownames(sales)
)
