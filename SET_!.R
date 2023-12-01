df <- data.frame(
  CustomerID =c(1,2,3,4,5),
  Age = c(25,30,35,28,40),
  SatisfactionScore = c(4,5,3,4,5)
)
df



hist(df$Age,main="distribution of customer ages",xlab = "Age",ylab="Frequency",col = "green",border = "red",xlim = c(25,40), ylim = c(0,3), breaks = 5)



score_counts <- table(df$SatisfactionScore)
pie(score_counts, labels = paste("Score", names(score_counts)), col = rainbow(length(score_counts)), main = "Distribution of Customer Satisfaction Scores")
legend("topright", legend = paste("Score", names(score_counts)), fill = rainbow(length(score_counts)))



df$Age_Group <- cut(df$Age, breaks = c(20, 30, 40, 50), labels = c("20-30", "31-40", "41-50"))
satisfaction_by_age_group <- table(df$Age_Group, df$SatisfactionScore)

# Convert the table into a matrix
satisfaction_matrix <- as.matrix(satisfaction_by_age_group)

# Create a stacked bar chart
barplot(satisfaction_matrix, beside = TRUE, col = rainbow(length(unique(df$SatisfactionScore))),
        main = "Distribution of Satisfaction Scores by Age Group",
        xlab = "Age Group", ylab = "Frequency", legend.text = TRUE)