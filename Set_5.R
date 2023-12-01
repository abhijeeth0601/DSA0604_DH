# Data
employee_data <- data.frame(
  EmployeeID = c(1, 2, 3),
  Department = c("Sales", "HR", "Marketing"),
  YearsOfService = c(5, 3, 7),
  PerformanceScore = c(85, 92, 78)
)

# A
# Create a line chart for performance trend over time
library(ggplot2)
ggplot(employee_data, aes(x = YearsOfService, y = PerformanceScore, group = 1)) +
  geom_line(color = "blue") +
  labs(title = "Performance Trend of Employees Over Time",
       x = "Years of Service", y = "Performance Score")


# B
# Count of employees by department
department_count <- table(employee_data$Department)

# Generate a bar chart
barplot(department_count, col = "skyblue", xlab = "Department", ylab = "Number of Employees",
        main = "Distribution of Employees Across Departments")



# C
employee_data