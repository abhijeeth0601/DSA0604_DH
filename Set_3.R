# Data for Quarterly Sales
sales_data <- data.frame(
  ProductID = c(1, 2, 3),
  ProductName = c("Product A", "Product B", "Product C"),
  JanuarySales = c(2000, 1500, 1200),
  FebruarySales = c(2200, 1800, 1400),
  MarchSales = c(2400, 1600, 1100)
)

# Reshape data for grouped bar chart
library(tidyr)
sales_data_long <- gather(sales_data, Month, Sales, -ProductID, -ProductName)

# Create grouped bar chart
library(ggplot2)
ggplot(sales_data_long, aes(x = ProductName, y = Sales, fill = Month)) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(title = "Quarterly Sales of Each Product",
       x = "Product Name", y = "Sales") +
  scale_fill_manual(values = c("JanuarySales" = "skyblue", "FebruarySales" = "orange", "MarchSales" = "green"))


# B

# C
sales_data