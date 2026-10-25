#Q9. Analyse and visualize supermarket data using R.

supermarket_data <- data.frame(
  Product = c("Milk", "Bread", "Rice", "Milk", "Bread",
              "Rice", "Milk", "Bread", "Rice", "Milk"),
  Quantity = c(2, 3, 1, 4, 2, 5, 3, 4, 2, 1),
  Price = c(50, 30, 60, 50, 30, 60, 50, 30, 60, 50)
)

print(supermarket_data)

#aggregate() groups rows by a specified variable and applies a function to each group. 
#Here, it groups by Product and calculates the sum of Quantity.

#Analyse total quantity sold per product
total_qty_sold <- aggregate(
  Quantity ~ Product, # Aggregate quantity column according to Product col
  data = supermarket_data, #Where to take data for both cols
  FUN = sum # Aggregation method; FUN is the argument that tells aggregate() which function to apply.
)

print(total_qty_sold)

#Computing Revenue generated for each product
total_revenue <- aggregate(
  Price ~ Product, #Aggregate price col acc to prod col
  data = supermarket_data,
  FUN = sum
)

print(total_revenue)

#Plotting Quantities Sold
barplot(
  total_qty_sold$Quantity,
  names.arg = total_qty_sold$Product,
  main = "Supermarket Sales",
  xlab = "Products",
  ylab = "Quantities Sold",
  col = c("red","blue","green")
)

#Plotting Revenue
barplot(
  total_revenue$Price,
  names.arg = total_revenue$Product,
  main = "Supermarket Revenue",
  xlab = "Products",
  ylab = "Reveneu Generated",
  col = c("red","blue","green")
)


