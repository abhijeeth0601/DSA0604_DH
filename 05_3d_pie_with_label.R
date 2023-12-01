# Getting the library.  
library(plotrix)  
# Creating data for the graph.  
x <- c(20, 65, 15, 50,45)  
labels <- c("India", "America", "Shri Lanka", "Nepal","Bhutan")  
pie_percent<- round(100*x/sum(x), 1)  

pie3D(x, labels = pie_percent, main = "Country Pie Chart",col = rainbow(length(x)))  
legend("topright", c("India", "America", "Shri Lanka", "Nepal","Bhutan"), cex = 0.5,  
       fill = rainbow(length(x)))  

