# Creating data for the graph.  
x <- c(20, 65, 15, 50)  
labels <- c("India", "America", "Sri Lanka", "Nepal")  

# Plotting the chart.  
pie(x,labels,main="Country Pie chart",col=rainbow(length(x)))  
 
