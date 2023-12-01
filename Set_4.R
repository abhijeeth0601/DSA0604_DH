# Data
customer_data <- data.frame(
  CustomerID = c(1, 2, 3),
  Age = c(28, 35, 42),
  Gender = c("Female", "Male", "Female"),
  Income = c(50000, 60000, 75000)
)

# A
# Create a bar chart for customer ages
library(ggplot2)
ggplot(customer_data, aes(x = as.factor(CustomerID), y = Age)) +
  geom_bar(stat = "identity", fill = "skyblue") +
  labs(title = "Distribution of Customer Ages",
       x = "Customer ID", y = "Age")

# B
# Count of customers by gender
gender_count <- table(customer_data$Gender)

# Generate a pie chart
pie(gender_count, labels = paste(names(gender_count), "(", gender_count, ")", sep = ""), 
    col = c("skyblue", "orange"), main = "Distribution of Customers by Gender")

# C
customer_data