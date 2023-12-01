# Data
survey_data <- data.frame(
  SurveyID = c(1, 2, 3),
  Question1 = c("A", "B", "C"),
  Question2 = c("B", "A", "A"),
  Question3 = c("C", "D", "B")
)
# A
# Count of answers for Question 1
question1_counts <- table(survey_data$Question1)

# Create a grouped bar chart for Question 1 answers
barplot(question1_counts, col = "skyblue", xlab = "Answers", ylab = "Frequency",
        main = "Distribution of Answers for Question 1")
# B
# Reshape data for stacked bar chart
library(tidyr)
library(dplyr)

survey_data_long <- survey_data %>%
  gather(Question, Answer, -SurveyID)

# Count of responses for each question and answer
response_counts <- table(survey_data_long$Question, survey_data_long$Answer)

# Create a stacked bar chart for overall distribution of responses
barplot(response_counts, col = c("skyblue", "orange", "green", "purple"),
        xlab = "Questions", ylab = "Frequency", beside = TRUE,
        main = "Overall Distribution of Responses for All Questions")
legend("topright", legend = colnames(response_counts), fill = c("skyblue", "orange", "green", "purple"))

# C
# Display the table for survey response data
survey_data
