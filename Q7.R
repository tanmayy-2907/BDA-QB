  #Creating custom churn dataset 
churn_df <- data.frame(
  Customer_ID = 1:10,
  Churn = c("Yes", "No", "No", "Yes", "No",
            "No", "Yes", "No", "No", "Yes")
)

# Calculating Percentage of Churned & Not Churned Customers
churn_ct <- table(churn_df$Churn) #Returns ct of each unique value in Churn col

churn_pct <- prop.table(churn_ct) * 100 # Returns proportion of churn ct which on mul by 100 gives PCT

print(churn_pct)

# Plot
barplot(
  churn_ct,
  #Use names.arg when the vector has no meaningful names; 
  #omit it when the vector already has names (e.g., from table()).
  main = "Customer Churn Analysis",
  xlab = "Churn Status",
  ylab = "Customer Ct",
  col = c("skyblue","darkblue")
  
)

