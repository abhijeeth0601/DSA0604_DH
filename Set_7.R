# Data
sales_data <- data.frame(
  Category = c("Electronics", "Clothing", "Appliances"),
  Sales = c(50000, 35000, 40000)
)

# Generate a pie chart for sales distribution
library(ggplot2)
ggplot(sales_data, aes(x = "", y = Sales, fill = Category)) +
  geom_bar(stat = "identity") +
  coord_polar("y") +
  labs(title = "Distribution of Sales Across Product Categories") +
  geom_text(aes(label = paste0(Category, ": $", Sales)), position = position_stack(vjust = 0.5))

# B
# Stages in sales conversion process
conversion_stages <- c("Stage 1", "Stage 2", "Stage 3")

# Data for sales conversion process for each category
conversion_data <- data.frame(
  Category = rep(sales_data$Category, each = length(conversion_stages)),
  Stage = rep(conversion_stages, times = nrow(sales_data)),
  Sales = sample(10000:30000, 9, replace = TRUE)
)

# Generate a bar chart for sales conversion process
ggplot(conversion_data, aes(x = Category, y = Sales, fill = Stage)) +
  geom_bar(stat = "identity", position = "stack") +
  labs(title = "Sales Conversion Process for Each Product Category",
       x = "Product Category", y = "Sales Amount", fill = "Stages") +
  scale_fill_brewer(palette = "Paired")

# C
sales_data