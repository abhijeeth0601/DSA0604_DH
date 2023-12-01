library(ggplot2)

ggplot(mtcars,aes(x=wt,y=mpg)) + 
  geom_point(aes(color=factor(gear)))