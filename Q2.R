# Q2. For any data-set visualize the following types of chart : Scatter-plot. Bubble Chart, Bar Chart , 
# Dot Plots ,Histogram ,Box Plot ,Pie Chart 

# Loading Built in datasets for this Program
data("iris")
data("airquality")
data("mtcars")

#Display top 6 rows
head(iris)
head(mtcars)
head(airquality)

# Display dataset structure
str(iris)
str(mtcars)
str(airquality)

#Scatter plot for IRIS
plot(
  iris$Sepal.Length,
  iris$Sepal.Width,
  main = "Sepal Length vs Sepal Width",
  xlab = "Sepal Length",
  ylab = "Sepal Width",
  col = iris$Species,
  pch = 19
)

legend(
  "topright",
  legend = levels(iris$Species),
  col = 1:3,
  pch = 19
)

#Bubble Chart
symbols(
  x = iris$Sepal.Length,
  y = iris$Sepal.Width,
  circles = iris$Petal.Length / 10,
  inches = 0.3,
  bg = as.numeric(iris$Species),
  fg = "yellow",
  xlab = "Sepal Length",
  ylab = "Sepal Width",
  main = "Bubble Chart"
)

legend(
  "topright",
  legend = levels(iris$Species),
  col = 1:3,
  pch = 19
)

#Bar chart
species_ct <- table(iris$Species) # table counts the occurrences of each distinct value in the input(iris$Species).
# returns 50,50,50 since there are 150 flowers with each species having 50 flowers in dataset

barplot(
  species_ct,
  main = "Count of Flowers by Species",
  xlab = "Species",
  ylab = "Count",
  col = c("skyblue", "orange", "lightgreen"),
  border = "black"
)

#Dot Plot
avg_length <- tapply(
  iris$Sepal.Length,
  iris$Species,
  mean
)

dotchart(
  avg_length,
  main = "Average Sepal Length by Species",
  xlab = "Average Sepal Length",
  pch = 19,
  color = c("red", "blue", "green")
)

#Histgoram
hist(
  iris$Sepal.Length,
  main = "Distribution of Sepal Length",
  xlab = "Sepal Length",
  ylab = "Frequency",
  col = "skyblue",
  border = "black"
)

#Box Plot
boxplot(
  Sepal.Length ~ Species,
  data = iris,
  main = "Sepal Length by Species",
  xlab = "Species",
  ylab = "Sepal Length",
  col = c("skyblue", "orange", "lightgreen")
)

#Pie Chart
pie(
  species_ct,
  labels = names(species_ct),
  main = "Distribution of Iris Species",
  col = c("skyblue", "orange", "lightgreen")
)
