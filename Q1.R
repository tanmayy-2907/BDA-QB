# Q1. Write a R program to create a Data Frame which contain details of 5 employees and display summary of the data using R. 

# Create Vectors
emp_id <- c(01, 02, 03, 04, 05)
emp_name <- c("Tanmay", "Arpit", "Satyam", "Jatin", "Prathamesh")
emp_dept <- c("Marketing", "IT", "Sales", "IT", "Finance")
emp_sal <- c(30000, 45000, 35000, 45000, 40000)

# Create DataFrame
emp_df <- data.frame(
  Employee_ID = emp_id,
  Employee_Name = emp_name,
  Employee_Department = emp_dept,
  Employee_Salary = emp_sal
)

# Printing DataFrame & its Summary
print(emp_df)

summary(emp_df)
