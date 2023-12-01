# plot(x,y,main,xlab,ylab,xlim,ylim,axes)

data <- mtcars[,c('wt','mpg','drat')]

plot(x=data$wt,
     y=data$mpg,
     xlab="Weight",
     ylab="Milage per Gallon",
     xlim=c(2.5,5),
     ylim=c(15,30),
     main="Weight vs Milage")