# Analyse and visualize Loan data using R. 
# Creating sample loan dataframe
loan_data <- data.frame(
  Loan_ID = 1:10,
  Gender = c("Male", "Female", "Male", "Male", "Female",
             "Male", "Female", "Male", "Female", "Male"),
  Income = c(50000, 40000, 60000, 35000, 45000,
             70000, 30000, 55000, 48000, 65000),
  Loan_Amount = c(200000, 150000, 250000, 100000, 180000,
                  300000, 120000, 220000, 160000, 280000),
  Loan_Status = c("Approved", "Approved", "Rejected", "Approved",
                  "Rejected", "Approved", "Rejected", "Approved",
                  "Approved", "Rejected")
)

loan_status_ct <- table(loan_data$Loan_Status)
print(loan_status_ct)

loan_pct <- prop.table(loan_status_ct) * 100
print(loan_pct)


#Plotting loan status using a bar chart
barplot(
  loan_status_ct,
  xlab = "Loan Status",
  ylab = "Count",
  main = "Approved & Rejected Loans Count",
  col = "skyblue"
)

pie(loan_status_ct,
    col = c("skyblue", "darkblue"),
    main = "Loan Approvals & Rejections",
    labels = paste(
      names(loan_status_ct),
      round(loan_status_ct / sum(loan_status_ct) * 100), "%"
    )
)
# Scatter plot of income vs loan amount
plot(
  loan_data$Income,
  loan_data$Loan_Amount,
  main = "Income vs Loan Amount",
  xlab = "Income (Rs.)",
  ylab = "Loan Amount (Rs.)",
  col = ifelse(
    loan_data$Loan_Status == "Approved", "blue", "red"
  ),
  pch = 19
)

legend(
  "topright",
  legend = unique(loan_data$Loan_Status),
  # A factor stores categorical data with defined levels; 
  #use factor() to convert a character vector and levels() to retrieve its categories.
  col = c("blue", "red"),
  pch = 19,
  cex = 0.7,
)
