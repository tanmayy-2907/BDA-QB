name <- c("Vivek", "Karan", "James", "Soham", "Renu",
           "Farah", "Hetal", "Mary", "Ganesh", "Krish")
salary <- c(21000, 55000, 67000, 50000, 54000,
            40000, 30000, 70000, 20000, 15000)

Emp_details <- data.frame(
  Name = name,
  Salary = salary
)

#New entries
name <- c("Amit", "Neha", "Rahul", "Priya", "Ankit")
salary = c(35000, 48000, 62000, 42000, 39000)

emp_details_new <- data.frame(
  Name = name,
  Salary = salary
)

#Joining both dataframes
Final <- rbind(Emp_details, emp_details_new)
print(Final)


#Plotting
barplot(
  Final$Salary,
  names.arg = Final$Name,
  xlab = "Employee Names",
  ylab = "Employee Salary",
  main = "Employee Salaries",
  col = "blue",
  las = 2, # Changes the orientation of names to vertical
  cex.names = 0.7 #Reduces text size of X axis names
)
