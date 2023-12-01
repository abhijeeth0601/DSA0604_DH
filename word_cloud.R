library(tm)
library(wordcloud)
text_data <- "R is a programming language and free software environment for statistical computing and graphics. It is widely used among statisticians and data miners for developing statistical software and data analysis"

# Create a word cloud
wordcloud(words = strsplit(text_data, " ")[[1]],
          min.freq = 1,
          scale = c(2, 0.5),
          colors = brewer.pal(8,"Dark2"))
