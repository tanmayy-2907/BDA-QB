emp_id <- c(1:5)
emp_name <- c("Rick", "Dan", "Michelle", "Ryan", "Gary") 
start_date <- c("2012-01-01", "2013-09-23", "2014-11-15", "2014-05-11", "2015-03-27")
emp_salary <- c(60000, 45000, 75000, 84000, 20000)

dataframe <- data.frame(
  ID = emp_id,
  Name = emp_name,
  Start_Date = start_date,
  Salary = emp_salary
)

str(dataframe)

summary(dataframe)

#Extracting 2 columns using dataframe[row condn, col condn] syntax
dataframe[, c("Name", "Salary")]

#Subset
red_salary <- dataframe[dataframe$Salary <= 60000, ]
print(red_salary)
