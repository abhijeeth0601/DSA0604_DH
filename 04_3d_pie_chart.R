# Getting the library.  
library(plotrix)  
# Creating data for the graph.  
x <- c(20, 65, 15, 50,45)  
labels <- c("India", "America", "Shri Lanka", "Nepal","Bhutan")  

pie3D(x,labels = labels,explode = 0.1, main = "Country Pie Chart")  

