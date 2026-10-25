subject <- c(1,2,3,4,5,6)
class <- c(1,2,1,2,1,2)
marks <- c(56,75,48,69,84,53)

dataframe <- data.frame(
  Subject = subject,
  Class = class,
  Marks = marks
)

# Select subjects less than 4 using subset()
# # subset() selects rows that satisfy a condition
# df is the data frame being searched.
# Subject < 4 is the condition.

res1 <- subset(dataframe, Subject < 4)
print(res1)

#subject where the subject column is less than 3 and the class equals to 2 by using []brackets
#General Syntax: dataframe[row_condition, column_selection]

res2 <- dataframe[dataframe$Subject < 3 & dataframe$Class == 2, ]
print(res2)

#plotting the dataframe
barplot(
  dataframe$Marks,
  xlab = "Subjects",
  names.arg = c(1,2,3,4,5,6),
  ylab = "Marks",
  main = "Subject Vs Marks Scored",
  col = ifelse(dataframe$Class == 1, "red","blue")
)
legend(
  "topright",
  legend = unique(dataframe$Class), #Since Class is numeric, we use unique and not levels
  pch = 19,
  col = ifelse(dataframe$Class == 1, "red","blue")
  |> 
)
