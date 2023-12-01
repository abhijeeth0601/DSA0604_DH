# Data for employee years of service
employee_data <- data.frame(
  EmployeeID = c(1, 2, 3, 4, 5),
  Name = c("John Smith", "Jane Doe", "Robert Brown", "Sarah White", "Michael Lee"),
  Department = c("Sales", "HR", "Marketing", "Sales", "HR"),
  YearsOfService = c(5, 3, 7, 4, 2),
  PerformanceScore = c(85, 92, 78, 90, 76)
)

# Create a histogram for years of service
library(ggplot2)
ggplot(employee_data, aes(x = YearsOfService)) +
  geom_histogram(binwidth = 1, fill = "skyblue", color = "black") +
  labs(title = "Distribution of Employee Years of Service",   
       x = "Years of Service", y = "Frequency")


# B
# Aggregate overall performance scores
overall_scores <- aggregate(PerformanceScore ~ Department, employee_data, mean)

# Generate a pie chart for overall performance scores
ggplot(overall_scores, aes(x = "", y = PerformanceScore, fill = Department)) +
  geom_bar(stat = "identity", width = 1, color = "white") +
  coord_polar("y") +
  labs(title = "Distribution of Overall Performance Scores by Department") +
  geom_text(aes(label = paste(Department, ": ", PerformanceScore)), position = position_stack(vjust = 0.5))


# C
# Required Libraries (if not already installed)
# install.packages("tidytext")
# install.packages("wordcloud")

library(tidytext)
library(wordcloud)

# Example data for sentiment analysis
customer_feedback <- c("Great service, very helpful staff!", "Product quality needs improvement.",
                       "Excellent experience, highly recommended.")

# Create a data frame with the feedback
feedback_df <- data.frame(text = customer_feedback)

# Perform sentiment analysis
feedback_sentiments <- inner_join(get_sentiments("bing"), feedback_df, by = c("word" = "text"))

# Create a word cloud based on sentiment scores
set.seed(123)
wordcloud(words = feedback_sentiments$word, freq = 1, max.words = 50,
          colors = brewer.pal(8, "Dark2"))
